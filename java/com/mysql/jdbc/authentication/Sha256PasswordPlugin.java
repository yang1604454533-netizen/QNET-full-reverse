package com.mysql.jdbc.authentication;

import com.mysql.jdbc.AuthenticationPlugin;
import com.mysql.jdbc.Buffer;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ExceptionInterceptor;
import com.mysql.jdbc.ExportControlled;
import com.mysql.jdbc.Messages;
import com.mysql.jdbc.MySQLConnection;
import com.mysql.jdbc.SQLError;
import com.mysql.jdbc.Security;
import com.mysql.jdbc.StringUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
public class Sha256PasswordPlugin implements AuthenticationPlugin {
    public static String PLUGIN_NAME = "sha256_password";
    private Connection connection;
    private String password = null;
    private String seed = null;
    private boolean publicKeyRequested = false;
    private String publicKeyString = null;

    @Override // com.mysql.jdbc.AuthenticationPlugin
    public boolean isReusable() {
        return true;
    }

    @Override // com.mysql.jdbc.AuthenticationPlugin
    public boolean requiresConfidentiality() {
        return false;
    }

    @Override // com.mysql.jdbc.Extension
    public void init(Connection connection, Properties properties) throws SQLException {
        this.connection = connection;
        String serverRSAPublicKeyFile = this.connection.getServerRSAPublicKeyFile();
        if (serverRSAPublicKeyFile != null) {
            this.publicKeyString = readRSAKey(this.connection, serverRSAPublicKeyFile);
        }
    }

    @Override // com.mysql.jdbc.Extension
    public void destroy() {
        this.password = null;
        this.seed = null;
        this.publicKeyRequested = false;
    }

    @Override // com.mysql.jdbc.AuthenticationPlugin
    public String getProtocolPluginName() {
        return PLUGIN_NAME;
    }

    @Override // com.mysql.jdbc.AuthenticationPlugin
    public void setAuthenticationParameters(String str, String str2) {
        this.password = str2;
    }

    @Override // com.mysql.jdbc.AuthenticationPlugin
    public boolean nextAuthenticationStep(Buffer buffer, List<Buffer> list) throws SQLException {
        list.clear();
        if (this.password == null || this.password.length() == 0 || buffer == null) {
            list.add(new Buffer(new byte[]{0}));
        } else if (((MySQLConnection) this.connection).getIO().isSSLEstablished()) {
            try {
                Buffer buffer2 = new Buffer(StringUtils.getBytes(this.password, this.connection.getPasswordCharacterEncoding()));
                buffer2.setPosition(buffer2.getBufLength());
                int bufLength = buffer2.getBufLength();
                buffer2.writeByte((byte) 0);
                buffer2.setBufLength(bufLength + 1);
                buffer2.setPosition(0);
                list.add(buffer2);
            } catch (UnsupportedEncodingException unused) {
                throw SQLError.createSQLException(Messages.getString("Sha256PasswordPlugin.3", new Object[]{this.connection.getPasswordCharacterEncoding()}), SQLError.SQL_STATE_GENERAL_ERROR, (ExceptionInterceptor) null);
            }
        } else if (this.connection.getServerRSAPublicKeyFile() != null) {
            this.seed = buffer.readString();
            list.add(new Buffer(encryptPassword(this.password, this.seed, this.connection, this.publicKeyString)));
        } else {
            if (!this.connection.getAllowPublicKeyRetrieval()) {
                throw SQLError.createSQLException(Messages.getString("Sha256PasswordPlugin.2"), SQLError.SQL_STATE_UNABLE_TO_CONNECT_TO_DATASOURCE, this.connection.getExceptionInterceptor());
            }
            if (this.publicKeyRequested && buffer.getBufLength() > 20) {
                list.add(new Buffer(encryptPassword(this.password, this.seed, this.connection, buffer.readString())));
                this.publicKeyRequested = false;
            } else {
                this.seed = buffer.readString();
                list.add(new Buffer(new byte[]{1}));
                this.publicKeyRequested = true;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.mysql.jdbc.Connection] */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.mysql.jdbc.Connection] */
    /* JADX WARN: Type inference failed for: r5v3, types: [com.mysql.jdbc.MySQLConnection] */
    private static byte[] encryptPassword(String str, String str2, Connection connection, String str3) throws SQLException {
        int i = 1;
        int length = 0;
        try {
            byte[] bytesNullTerminated = str != null ? StringUtils.getBytesNullTerminated(str, connection.getPasswordCharacterEncoding()) : new byte[]{0};
            i = new byte[bytesNullTerminated.length];
            byte[] bytes = str2.getBytes();
            length = bytesNullTerminated.length;
            Security.xorString(bytesNullTerminated, i, bytes, length);
            connection = (MySQLConnection) connection;
            return ExportControlled.encryptWithRSAPublicKey(i, ExportControlled.decodeRSAPublicKey(str3, connection.getExceptionInterceptor()), connection.getExceptionInterceptor());
        } catch (UnsupportedEncodingException unused) {
            Object[] objArr = new Object[i];
            objArr[length] = connection.getPasswordCharacterEncoding();
            throw SQLError.createSQLException(Messages.getString("Sha256PasswordPlugin.3", objArr), SQLError.SQL_STATE_GENERAL_ERROR, (ExceptionInterceptor) null);
        }
    }

    private static String readRSAKey(Connection connection, String str) throws Throwable {
        byte[] bArr = new byte[2048];
        BufferedInputStream bufferedInputStream = null;
        try {
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(new File(str).getCanonicalPath()));
                try {
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        int i = bufferedInputStream2.read(bArr);
                        if (i != -1) {
                            sb.append(StringUtils.toAsciiString(bArr, 0, i));
                        } else {
                            String string = sb.toString();
                            try {
                                bufferedInputStream2.close();
                                return string;
                            } catch (Exception e) {
                                throw SQLError.createSQLException(Messages.getString("Sha256PasswordPlugin.1"), SQLError.SQL_STATE_GENERAL_ERROR, e, connection.getExceptionInterceptor());
                            }
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    if (connection.getParanoid()) {
                        throw SQLError.createSQLException(Messages.getString("Sha256PasswordPlugin.0", new Object[]{""}), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, connection.getExceptionInterceptor());
                    }
                    throw SQLError.createSQLException(Messages.getString("Sha256PasswordPlugin.0", new Object[]{"'" + str + "'"}), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, e, connection.getExceptionInterceptor());
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream = bufferedInputStream2;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (Exception e3) {
                            throw SQLError.createSQLException(Messages.getString("Sha256PasswordPlugin.1"), SQLError.SQL_STATE_GENERAL_ERROR, e3, connection.getExceptionInterceptor());
                        }
                    }
                    throw th;
                }
            } catch (IOException e4) {
                e = e4;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
