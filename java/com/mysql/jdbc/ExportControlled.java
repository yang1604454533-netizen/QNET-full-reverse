package com.mysql.jdbc;

import com.mysql.jdbc.util.Base64Decoder;
import com.tencent.qnet.core.CommandUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.URL;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyFactory;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertPathValidator;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.PKIXCertPathValidatorResult;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Properties;
import javax.crypto.Cipher;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes.dex */
public class ExportControlled {
    private static final String SQL_STATE_BAD_SSL_PARAMS = "08000";

    protected static boolean enabled() {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00e0  */
    protected static void transformSocketToSSLSocket(MysqlIO mysqlIO) throws SQLException {
        StandardSSLSocketFactory standardSSLSocketFactory = new StandardSSLSocketFactory(getSSLSocketFactoryDefaultOrConfigured(mysqlIO), mysqlIO.socketFactory, mysqlIO.mysqlConnection);
        try {
            ArrayList arrayList = null;
            mysqlIO.mysqlConnection = standardSSLSocketFactory.connect(mysqlIO.host, mysqlIO.port, null);
            ArrayList arrayList2 = new ArrayList();
            List listAsList = Arrays.asList(((SSLSocket) mysqlIO.mysqlConnection).getSupportedProtocols());
            for (String str : (mysqlIO.versionMeetsMinimum(5, 6, 0) && Util.isEnterpriseEdition(mysqlIO.getServerVersion())) ? new String[]{"TLSv1.2", "TLSv1.1", "TLSv1"} : new String[]{"TLSv1.1", "TLSv1"}) {
                if (listAsList.contains(str)) {
                    arrayList2.add(str);
                }
            }
            ((SSLSocket) mysqlIO.mysqlConnection).setEnabledProtocols((String[]) arrayList2.toArray(new String[0]));
            String enabledSSLCipherSuites = mysqlIO.connection.getEnabledSSLCipherSuites();
            boolean z = true;
            if (enabledSSLCipherSuites != null && enabledSSLCipherSuites.length() > 0) {
                arrayList = new ArrayList();
                List listAsList2 = Arrays.asList(((SSLSocket) mysqlIO.mysqlConnection).getEnabledCipherSuites());
                for (String str2 : enabledSSLCipherSuites.split("\\s*,\\s*")) {
                    if (listAsList2.contains(str2)) {
                        arrayList.add(str2);
                    }
                }
            } else {
                if ((mysqlIO.versionMeetsMinimum(5, 5, 45) && !mysqlIO.versionMeetsMinimum(5, 6, 0)) || ((mysqlIO.versionMeetsMinimum(5, 6, 26) && !mysqlIO.versionMeetsMinimum(5, 7, 0)) || mysqlIO.versionMeetsMinimum(5, 7, 6))) {
                    if (Util.getJVMVersion() >= 8) {
                        z = false;
                    }
                } else if (Util.getJVMVersion() < 8) {
                    z = false;
                }
                if (z) {
                    arrayList = new ArrayList();
                    for (String str3 : ((SSLSocket) mysqlIO.mysqlConnection).getEnabledCipherSuites()) {
                        if (!z || (str3.indexOf("_DHE_") <= -1 && str3.indexOf("_DH_") <= -1)) {
                            arrayList.add(str3);
                        }
                    }
                }
            }
            if (arrayList != null) {
                ((SSLSocket) mysqlIO.mysqlConnection).setEnabledCipherSuites((String[]) arrayList.toArray(new String[0]));
            }
            ((SSLSocket) mysqlIO.mysqlConnection).startHandshake();
            if (mysqlIO.connection.getUseUnbufferedInput()) {
                mysqlIO.mysqlInput = mysqlIO.mysqlConnection.getInputStream();
            } else {
                mysqlIO.mysqlInput = new BufferedInputStream(mysqlIO.mysqlConnection.getInputStream(), 16384);
            }
            mysqlIO.mysqlOutput = new BufferedOutputStream(mysqlIO.mysqlConnection.getOutputStream(), 16384);
            mysqlIO.mysqlOutput.flush();
            mysqlIO.socketFactory = standardSSLSocketFactory;
        } catch (IOException e) {
            throw SQLError.createCommunicationsException(mysqlIO.connection, mysqlIO.getLastPacketSentTimeMs(), mysqlIO.getLastPacketReceivedTimeMs(), e, mysqlIO.getExceptionInterceptor());
        }
    }

    public static class StandardSSLSocketFactory implements SocketFactory, SocketMetadata {
        private final Socket existingSocket;
        private final SocketFactory existingSocketFactory;
        private SSLSocket rawSocket = null;
        private final SSLSocketFactory sslFact;

        public StandardSSLSocketFactory(SSLSocketFactory sSLSocketFactory, SocketFactory socketFactory, Socket socket) {
            this.sslFact = sSLSocketFactory;
            this.existingSocketFactory = socketFactory;
            this.existingSocket = socket;
        }

        @Override // com.mysql.jdbc.SocketFactory
        public Socket afterHandshake() throws IOException {
            this.existingSocketFactory.afterHandshake();
            return this.rawSocket;
        }

        @Override // com.mysql.jdbc.SocketFactory
        public Socket beforeHandshake() throws IOException {
            return this.rawSocket;
        }

        @Override // com.mysql.jdbc.SocketFactory
        public Socket connect(String str, int i, Properties properties) throws IOException {
            this.rawSocket = (SSLSocket) this.sslFact.createSocket(this.existingSocket, str, i, true);
            return this.rawSocket;
        }

        @Override // com.mysql.jdbc.SocketMetadata
        public boolean isLocallyConnected(ConnectionImpl connectionImpl) throws SQLException {
            return SocketMetadata.Helper.isLocallyConnected(connectionImpl);
        }
    }

    private ExportControlled() {
    }

    public static class X509TrustManagerWrapper implements X509TrustManager {
        private CertificateFactory certFactory;
        private X509TrustManager origTm;
        private CertPathValidator validator;
        private PKIXParameters validatorParams;
        private boolean verifyServerCert;

        public X509TrustManagerWrapper(X509TrustManager x509TrustManager, boolean z) throws CertificateException {
            this.origTm = null;
            this.verifyServerCert = false;
            this.certFactory = null;
            this.validatorParams = null;
            this.validator = null;
            this.origTm = x509TrustManager;
            this.verifyServerCert = z;
            if (z) {
                try {
                    HashSet hashSet = new HashSet();
                    for (X509Certificate x509Certificate : x509TrustManager.getAcceptedIssuers()) {
                        hashSet.add(new TrustAnchor(x509Certificate, null));
                    }
                    this.validatorParams = new PKIXParameters(hashSet);
                    this.validatorParams.setRevocationEnabled(false);
                    this.validator = CertPathValidator.getInstance("PKIX");
                    this.certFactory = CertificateFactory.getInstance("X.509");
                } catch (Exception e) {
                    throw new CertificateException(e);
                }
            }
        }

        public X509TrustManagerWrapper() {
            this.origTm = null;
            this.verifyServerCert = false;
            this.certFactory = null;
            this.validatorParams = null;
            this.validator = null;
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return this.origTm != null ? this.origTm.getAcceptedIssuers() : new X509Certificate[0];
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            for (X509Certificate x509Certificate : x509CertificateArr) {
                x509Certificate.checkValidity();
            }
            if (this.validatorParams != null) {
                new X509CertSelector().setSerialNumber(x509CertificateArr[0].getSerialNumber());
                try {
                    ((PKIXCertPathValidatorResult) this.validator.validate(this.certFactory.generateCertPath(Arrays.asList(x509CertificateArr)), this.validatorParams)).getTrustAnchor().getTrustedCert().checkValidity();
                } catch (InvalidAlgorithmParameterException e) {
                    throw new CertificateException(e);
                } catch (CertPathValidatorException e2) {
                    throw new CertificateException(e2);
                }
            }
            if (this.verifyServerCert) {
                this.origTm.checkServerTrusted(x509CertificateArr, str);
            }
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            this.origTm.checkClientTrusted(x509CertificateArr, str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v35 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v40 */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v42, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v58 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v9, types: [java.io.InputStream] */
    private static SSLSocketFactory getSSLSocketFactoryDefaultOrConfigured(MysqlIO mysqlIO) throws Throwable {
        KeyManager[] keyManagers;
        InputStream inputStreamOpenStream;
        KeyStore keyStore;
        String clientCertificateKeyStoreUrl = mysqlIO.connection.getClientCertificateKeyStoreUrl();
        String clientCertificateKeyStorePassword = mysqlIO.connection.getClientCertificateKeyStorePassword();
        String clientCertificateKeyStoreType = mysqlIO.connection.getClientCertificateKeyStoreType();
        String trustCertificateKeyStoreUrl = mysqlIO.connection.getTrustCertificateKeyStoreUrl();
        String trustCertificateKeyStorePassword = mysqlIO.connection.getTrustCertificateKeyStorePassword();
        String trustCertificateKeyStoreType = mysqlIO.connection.getTrustCertificateKeyStoreType();
        if (StringUtils.isNullOrEmpty(clientCertificateKeyStoreUrl)) {
            clientCertificateKeyStoreUrl = System.getProperty("javax.net.ssl.keyStore");
            clientCertificateKeyStorePassword = System.getProperty("javax.net.ssl.keyStorePassword");
            clientCertificateKeyStoreType = System.getProperty("javax.net.ssl.keyStoreType");
            if (StringUtils.isNullOrEmpty(clientCertificateKeyStoreType)) {
                clientCertificateKeyStoreType = "JKS";
            }
            if (!StringUtils.isNullOrEmpty(clientCertificateKeyStoreUrl)) {
                try {
                    new URL(clientCertificateKeyStoreUrl);
                } catch (MalformedURLException unused) {
                    clientCertificateKeyStoreUrl = "file:" + clientCertificateKeyStoreUrl;
                }
            }
        }
        if (StringUtils.isNullOrEmpty(trustCertificateKeyStoreUrl)) {
            trustCertificateKeyStoreUrl = System.getProperty("javax.net.ssl.trustStore");
            trustCertificateKeyStorePassword = System.getProperty("javax.net.ssl.trustStorePassword");
            trustCertificateKeyStoreType = System.getProperty("javax.net.ssl.trustStoreType");
            if (StringUtils.isNullOrEmpty(trustCertificateKeyStoreType)) {
                trustCertificateKeyStoreType = "JKS";
            }
            if (!StringUtils.isNullOrEmpty(trustCertificateKeyStoreUrl)) {
                try {
                    new URL(trustCertificateKeyStoreUrl);
                } catch (MalformedURLException unused2) {
                    trustCertificateKeyStoreUrl = "file:" + trustCertificateKeyStoreUrl;
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
            InputStream inputStream = null;
            ?? r11 = 0;
            try {
                if (StringUtils.isNullOrEmpty(clientCertificateKeyStoreUrl)) {
                    keyManagers = null;
                } else {
                    try {
                        if (StringUtils.isNullOrEmpty(clientCertificateKeyStoreType)) {
                            keyManagers = null;
                            inputStreamOpenStream = null;
                        } else {
                            KeyStore keyStore2 = KeyStore.getInstance(clientCertificateKeyStoreType);
                            URL url = new URL(clientCertificateKeyStoreUrl);
                            char[] charArray = clientCertificateKeyStorePassword == null ? new char[0] : clientCertificateKeyStorePassword.toCharArray();
                            inputStreamOpenStream = url.openStream();
                            try {
                                keyStore2.load(inputStreamOpenStream, charArray);
                                keyManagerFactory.init(keyStore2, charArray);
                                keyManagers = keyManagerFactory.getKeyManagers();
                            } catch (MalformedURLException unused3) {
                                throw SQLError.createSQLException(clientCertificateKeyStoreUrl + " does not appear to be a valid URL.", SQL_STATE_BAD_SSL_PARAMS, 0, false, mysqlIO.getExceptionInterceptor());
                            } catch (IOException e) {
                                e = e;
                                SQLException sQLExceptionCreateSQLException = SQLError.createSQLException("Cannot open " + clientCertificateKeyStoreUrl + " [" + e.getMessage() + "]", SQL_STATE_BAD_SSL_PARAMS, 0, false, mysqlIO.getExceptionInterceptor());
                                sQLExceptionCreateSQLException.initCause(e);
                                throw sQLExceptionCreateSQLException;
                            } catch (KeyStoreException e2) {
                                e = e2;
                                throw SQLError.createSQLException("Could not create KeyStore instance [" + e.getMessage() + "]", SQL_STATE_BAD_SSL_PARAMS, 0, false, mysqlIO.getExceptionInterceptor());
                            } catch (NoSuchAlgorithmException e3) {
                                e = e3;
                                throw SQLError.createSQLException("Unsupported keystore algorithm [" + e.getMessage() + "]", SQL_STATE_BAD_SSL_PARAMS, 0, false, mysqlIO.getExceptionInterceptor());
                            } catch (UnrecoverableKeyException unused4) {
                                throw SQLError.createSQLException("Could not recover keys from client keystore.  Check password?", SQL_STATE_BAD_SSL_PARAMS, 0, false, mysqlIO.getExceptionInterceptor());
                            } catch (CertificateException unused5) {
                                throw SQLError.createSQLException("Could not load client" + clientCertificateKeyStoreType + " keystore from " + clientCertificateKeyStoreUrl, mysqlIO.getExceptionInterceptor());
                            } catch (Throwable th) {
                                th = th;
                                inputStream = inputStreamOpenStream;
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException unused6) {
                                    }
                                }
                                throw th;
                            }
                        }
                        if (inputStreamOpenStream != null) {
                            try {
                                inputStreamOpenStream.close();
                            } catch (IOException unused7) {
                            }
                        }
                    } catch (MalformedURLException unused8) {
                    } catch (IOException e4) {
                        e = e4;
                    } catch (KeyStoreException e5) {
                        e = e5;
                    } catch (NoSuchAlgorithmException e6) {
                        e = e6;
                    } catch (UnrecoverableKeyException unused9) {
                    } catch (CertificateException unused10) {
                    }
                }
                try {
                    try {
                        ?? IsNullOrEmpty = StringUtils.isNullOrEmpty(trustCertificateKeyStoreUrl);
                        try {
                            if (IsNullOrEmpty != 0 || StringUtils.isNullOrEmpty(trustCertificateKeyStoreType)) {
                                IsNullOrEmpty = 0;
                                keyStore = null;
                            } else {
                                InputStream inputStreamOpenStream2 = new URL(trustCertificateKeyStoreUrl).openStream();
                                char[] charArray2 = trustCertificateKeyStorePassword == null ? new char[0] : trustCertificateKeyStorePassword.toCharArray();
                                KeyStore keyStore3 = KeyStore.getInstance(trustCertificateKeyStoreType);
                                keyStore3.load(inputStreamOpenStream2, charArray2);
                                IsNullOrEmpty = inputStreamOpenStream2;
                                keyStore = keyStore3;
                            }
                            trustManagerFactory.init(keyStore);
                            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                            boolean verifyServerCertificate = mysqlIO.connection.getVerifyServerCertificate();
                            for (TrustManager x509TrustManagerWrapper : trustManagers) {
                                if (x509TrustManagerWrapper instanceof X509TrustManager) {
                                    x509TrustManagerWrapper = new X509TrustManagerWrapper((X509TrustManager) x509TrustManagerWrapper, verifyServerCertificate);
                                }
                                arrayList.add(x509TrustManagerWrapper);
                            }
                            if (IsNullOrEmpty != 0) {
                                try {
                                    IsNullOrEmpty.close();
                                } catch (IOException unused11) {
                                }
                            }
                            if (arrayList.size() == 0) {
                                arrayList.add(new X509TrustManagerWrapper());
                            }
                            try {
                                SSLContext sSLContext = SSLContext.getInstance("TLS");
                                sSLContext.init(keyManagers, (TrustManager[]) arrayList.toArray(new TrustManager[arrayList.size()]), null);
                                return sSLContext.getSocketFactory();
                            } catch (KeyManagementException e7) {
                                throw SQLError.createSQLException("KeyManagementException: " + e7.getMessage(), SQL_STATE_BAD_SSL_PARAMS, 0, false, mysqlIO.getExceptionInterceptor());
                            } catch (NoSuchAlgorithmException unused12) {
                                throw SQLError.createSQLException("TLS is not a valid SSL protocol.", SQL_STATE_BAD_SSL_PARAMS, 0, false, mysqlIO.getExceptionInterceptor());
                            }
                        } catch (MalformedURLException unused13) {
                            throw SQLError.createSQLException(trustCertificateKeyStoreUrl + " does not appear to be a valid URL.", SQL_STATE_BAD_SSL_PARAMS, 0, false, mysqlIO.getExceptionInterceptor());
                        } catch (IOException e8) {
                            e = e8;
                            SQLException sQLExceptionCreateSQLException2 = SQLError.createSQLException("Cannot open " + trustCertificateKeyStoreType + " [" + e.getMessage() + "]", SQL_STATE_BAD_SSL_PARAMS, 0, false, mysqlIO.getExceptionInterceptor());
                            sQLExceptionCreateSQLException2.initCause(e);
                            throw sQLExceptionCreateSQLException2;
                        } catch (KeyStoreException e9) {
                            e = e9;
                            throw SQLError.createSQLException("Could not create KeyStore instance [" + e.getMessage() + "]", SQL_STATE_BAD_SSL_PARAMS, 0, false, mysqlIO.getExceptionInterceptor());
                        } catch (NoSuchAlgorithmException e10) {
                            e = e10;
                            throw SQLError.createSQLException("Unsupported keystore algorithm [" + e.getMessage() + "]", SQL_STATE_BAD_SSL_PARAMS, 0, false, mysqlIO.getExceptionInterceptor());
                        } catch (CertificateException unused14) {
                            throw SQLError.createSQLException("Could not load trust" + trustCertificateKeyStoreType + " keystore from " + trustCertificateKeyStoreUrl, SQL_STATE_BAD_SSL_PARAMS, 0, false, mysqlIO.getExceptionInterceptor());
                        } catch (Throwable th2) {
                            th = th2;
                            r11 = IsNullOrEmpty;
                            if (r11 != 0) {
                                try {
                                    r11.close();
                                } catch (IOException unused15) {
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (MalformedURLException unused16) {
                } catch (IOException e11) {
                    e = e11;
                } catch (KeyStoreException e12) {
                    e = e12;
                } catch (NoSuchAlgorithmException e13) {
                    e = e13;
                } catch (CertificateException unused17) {
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (NoSuchAlgorithmException unused18) {
            throw SQLError.createSQLException("Default algorithm definitions for TrustManager and/or KeyManager are invalid.  Check java security properties file.", SQL_STATE_BAD_SSL_PARAMS, 0, false, mysqlIO.getExceptionInterceptor());
        }
    }

    public static boolean isSSLEstablished(MysqlIO mysqlIO) {
        return SSLSocket.class.isAssignableFrom(mysqlIO.mysqlConnection.getClass());
    }

    public static RSAPublicKey decodeRSAPublicKey(String str, ExceptionInterceptor exceptionInterceptor) throws SQLException {
        try {
            if (str == null) {
                throw new SQLException("key parameter is null");
            }
            int iIndexOf = str.indexOf(CommandUtil.COMMAND_LINE_END) + 1;
            return (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64Decoder.decode(str.getBytes(), iIndexOf, str.indexOf("-----END PUBLIC KEY-----") - iIndexOf)));
        } catch (Exception e) {
            throw SQLError.createSQLException("Unable to decode public key", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, e, exceptionInterceptor);
        }
    }

    public static byte[] encryptWithRSAPublicKey(byte[] bArr, RSAPublicKey rSAPublicKey, ExceptionInterceptor exceptionInterceptor) throws SQLException {
        try {
            Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA-1AndMGF1Padding");
            cipher.init(1, rSAPublicKey);
            return cipher.doFinal(bArr);
        } catch (Exception e) {
            throw SQLError.createSQLException(e.getMessage(), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, e, exceptionInterceptor);
        }
    }
}
