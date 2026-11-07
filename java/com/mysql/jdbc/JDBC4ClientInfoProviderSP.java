package com.mysql.jdbc;

import java.sql.ResultSet;
import java.sql.SQLClientInfoException;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
public class JDBC4ClientInfoProviderSP implements JDBC4ClientInfoProvider {
    java.sql.PreparedStatement getClientInfoBulkSp;
    java.sql.PreparedStatement getClientInfoSp;
    java.sql.PreparedStatement setClientInfoSp;

    @Override // com.mysql.jdbc.JDBC4ClientInfoProvider
    public synchronized void initialize(java.sql.Connection connection, Properties properties) throws SQLException {
        String identifierQuoteString = connection.getMetaData().getIdentifierQuoteString();
        String property = properties.getProperty("clientInfoSetSPName", "setClientInfo");
        String property2 = properties.getProperty("clientInfoGetSPName", "getClientInfo");
        String property3 = properties.getProperty("clientInfoGetBulkSPName", "getClientInfoBulk");
        String property4 = properties.getProperty("clientInfoCatalog", "");
        if ("".equals(property4)) {
            property4 = connection.getCatalog();
        }
        this.setClientInfoSp = ((Connection) connection).clientPrepareStatement("CALL " + identifierQuoteString + property4 + identifierQuoteString + "." + identifierQuoteString + property + identifierQuoteString + "(?, ?)");
        this.getClientInfoSp = ((Connection) connection).clientPrepareStatement("CALL" + identifierQuoteString + property4 + identifierQuoteString + "." + identifierQuoteString + property2 + identifierQuoteString + "(?)");
        this.getClientInfoBulkSp = ((Connection) connection).clientPrepareStatement("CALL " + identifierQuoteString + property4 + identifierQuoteString + "." + identifierQuoteString + property3 + identifierQuoteString + "()");
    }

    @Override // com.mysql.jdbc.JDBC4ClientInfoProvider
    public synchronized void destroy() throws SQLException {
        if (this.setClientInfoSp != null) {
            this.setClientInfoSp.close();
            this.setClientInfoSp = null;
        }
        if (this.getClientInfoSp != null) {
            this.getClientInfoSp.close();
            this.getClientInfoSp = null;
        }
        if (this.getClientInfoBulkSp != null) {
            this.getClientInfoBulkSp.close();
            this.getClientInfoBulkSp = null;
        }
    }

    @Override // com.mysql.jdbc.JDBC4ClientInfoProvider
    public synchronized Properties getClientInfo(java.sql.Connection connection) throws SQLException {
        Properties properties;
        ResultSet resultSet;
        Throwable th;
        properties = new Properties();
        try {
            this.getClientInfoBulkSp.execute();
            resultSet = this.getClientInfoBulkSp.getResultSet();
            while (resultSet.next()) {
                try {
                    properties.setProperty(resultSet.getString(1), resultSet.getString(2));
                } catch (Throwable th2) {
                    th = th2;
                    if (resultSet != null) {
                        resultSet.close();
                    }
                    throw th;
                }
            }
            if (resultSet != null) {
                resultSet.close();
            }
        } catch (Throwable th3) {
            resultSet = null;
            th = th3;
        }
        return properties;
    }

    @Override // com.mysql.jdbc.JDBC4ClientInfoProvider
    public synchronized String getClientInfo(java.sql.Connection connection, String str) throws SQLException {
        String string;
        ResultSet resultSet = null;
        try {
            try {
                this.getClientInfoSp.setString(1, str);
                this.getClientInfoSp.execute();
                ResultSet resultSet2 = this.getClientInfoSp.getResultSet();
                try {
                    string = resultSet2.next() ? resultSet2.getString(1) : null;
                    if (resultSet2 != null) {
                        resultSet2.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    resultSet = resultSet2;
                    if (resultSet != null) {
                        resultSet.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        return string;
    }

    @Override // com.mysql.jdbc.JDBC4ClientInfoProvider
    public synchronized void setClientInfo(java.sql.Connection connection, Properties properties) throws SQLClientInfoException {
        try {
            Enumeration<?> enumerationPropertyNames = properties.propertyNames();
            while (enumerationPropertyNames.hasMoreElements()) {
                String str = (String) enumerationPropertyNames.nextElement();
                setClientInfo(connection, str, properties.getProperty(str));
            }
        } catch (SQLException e) {
            SQLClientInfoException sQLClientInfoException = new SQLClientInfoException();
            sQLClientInfoException.initCause(e);
            throw sQLClientInfoException;
        }
    }

    @Override // com.mysql.jdbc.JDBC4ClientInfoProvider
    public synchronized void setClientInfo(java.sql.Connection connection, String str, String str2) throws SQLClientInfoException {
        try {
            this.setClientInfoSp.setString(1, str);
            this.setClientInfoSp.setString(2, str2);
            this.setClientInfoSp.execute();
        } catch (SQLException e) {
            SQLClientInfoException sQLClientInfoException = new SQLClientInfoException();
            sQLClientInfoException.initCause(e);
            throw sQLClientInfoException;
        }
    }
}
