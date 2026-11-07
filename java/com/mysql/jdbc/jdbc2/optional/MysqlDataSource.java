package com.mysql.jdbc.jdbc2.optional;

import com.mysql.jdbc.ConnectionPropertiesImpl;
import com.mysql.jdbc.ExceptionInterceptor;
import com.mysql.jdbc.Messages;
import com.mysql.jdbc.NonRegisteringDriver;
import com.mysql.jdbc.SQLError;
import com.tencent.open.SocialConstants;
import java.io.PrintWriter;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;
import javax.naming.NamingException;
import javax.naming.Reference;
import javax.naming.Referenceable;
import javax.naming.StringRefAddr;
import javax.sql.DataSource;

/* JADX INFO: loaded from: classes.dex */
public class MysqlDataSource extends ConnectionPropertiesImpl implements DataSource, Referenceable, Serializable {
    protected static final NonRegisteringDriver mysqlDriver;
    static final long serialVersionUID = -5515846944416881264L;
    protected transient PrintWriter logWriter = null;
    protected String databaseName = null;
    protected String encoding = null;
    protected String hostName = null;
    protected String password = null;
    protected String profileSql = "false";
    protected String url = null;
    protected String user = null;
    protected boolean explicitUrl = false;
    protected int port = 3306;

    @Override // javax.sql.CommonDataSource
    public int getLoginTimeout() {
        return 0;
    }

    @Override // javax.sql.CommonDataSource
    public void setLoginTimeout(int i) throws SQLException {
    }

    static {
        try {
            mysqlDriver = new NonRegisteringDriver();
        } catch (Exception unused) {
            throw new RuntimeException("Can not load Driver class com.mysql.jdbc.Driver");
        }
    }

    @Override // javax.sql.DataSource
    public Connection getConnection() throws SQLException {
        return getConnection(this.user, this.password);
    }

    @Override // javax.sql.DataSource
    public Connection getConnection(String str, String str2) throws SQLException {
        Properties properties = new Properties();
        if (str != null) {
            properties.setProperty(NonRegisteringDriver.USER_PROPERTY_KEY, str);
        }
        if (str2 != null) {
            properties.setProperty(NonRegisteringDriver.PASSWORD_PROPERTY_KEY, str2);
        }
        exposeAsProperties(properties);
        return getConnection(properties);
    }

    public void setDatabaseName(String str) {
        this.databaseName = str;
    }

    public String getDatabaseName() {
        return this.databaseName != null ? this.databaseName : "";
    }

    @Override // javax.sql.CommonDataSource
    public void setLogWriter(PrintWriter printWriter) throws SQLException {
        this.logWriter = printWriter;
    }

    @Override // javax.sql.CommonDataSource
    public PrintWriter getLogWriter() {
        return this.logWriter;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public void setPort(int i) {
        this.port = i;
    }

    public int getPort() {
        return this.port;
    }

    public void setPortNumber(int i) {
        setPort(i);
    }

    public int getPortNumber() {
        return getPort();
    }

    public void setPropertiesViaRef(Reference reference) throws SQLException {
        super.initializeFromRef(reference);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.naming.NamingException */
    public Reference getReference() throws NamingException {
        Reference reference = new Reference(getClass().getName(), "com.mysql.jdbc.jdbc2.optional.MysqlDataSourceFactory", (String) null);
        reference.add(new StringRefAddr(NonRegisteringDriver.USER_PROPERTY_KEY, getUser()));
        reference.add(new StringRefAddr(NonRegisteringDriver.PASSWORD_PROPERTY_KEY, this.password));
        reference.add(new StringRefAddr("serverName", getServerName()));
        reference.add(new StringRefAddr("port", "" + getPort()));
        reference.add(new StringRefAddr("databaseName", getDatabaseName()));
        reference.add(new StringRefAddr(SocialConstants.PARAM_URL, getUrl()));
        reference.add(new StringRefAddr("explicitUrl", String.valueOf(this.explicitUrl)));
        try {
            storeToRef(reference);
            return reference;
        } catch (SQLException e) {
            throw new NamingException(e.getMessage());
        }
    }

    public void setServerName(String str) {
        this.hostName = str;
    }

    public String getServerName() {
        return this.hostName != null ? this.hostName : "";
    }

    public void setURL(String str) {
        setUrl(str);
    }

    public String getURL() {
        return getUrl();
    }

    public void setUrl(String str) {
        this.url = str;
        this.explicitUrl = true;
    }

    public String getUrl() {
        if (!this.explicitUrl) {
            return "jdbc:mysql://" + getServerName() + ":" + getPort() + "/" + getDatabaseName();
        }
        return this.url;
    }

    public void setUser(String str) {
        this.user = str;
    }

    public String getUser() {
        return this.user;
    }

    protected Connection getConnection(Properties properties) throws SQLException {
        String string;
        if (!this.explicitUrl) {
            StringBuilder sb = new StringBuilder("jdbc:mysql://");
            if (this.hostName != null) {
                sb.append(this.hostName);
            }
            sb.append(":");
            sb.append(this.port);
            sb.append("/");
            if (this.databaseName != null) {
                sb.append(this.databaseName);
            }
            string = sb.toString();
        } else {
            string = this.url;
        }
        Properties url = mysqlDriver.parseURL(string, null);
        if (url == null) {
            throw SQLError.createSQLException(Messages.getString("MysqlDataSource.BadUrl", new Object[]{string}), SQLError.SQL_STATE_CONNECTION_FAILURE, (ExceptionInterceptor) null);
        }
        url.remove(NonRegisteringDriver.DBNAME_PROPERTY_KEY);
        url.remove(NonRegisteringDriver.HOST_PROPERTY_KEY);
        url.remove(NonRegisteringDriver.PORT_PROPERTY_KEY);
        for (String str : url.keySet()) {
            properties.setProperty(str, url.getProperty(str));
        }
        return mysqlDriver.connect(string, properties);
    }
}
