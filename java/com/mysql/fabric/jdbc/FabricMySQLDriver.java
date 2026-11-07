package com.mysql.fabric.jdbc;

import com.mysql.jdbc.NonRegisteringDriver;
import com.mysql.jdbc.Util;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public class FabricMySQLDriver extends NonRegisteringDriver implements Driver {
    public static final String FABRIC_PASSWORD_PROPERTY_KEY = "fabricPassword";
    public static final String FABRIC_PROTOCOL_PROPERTY_KEY = "fabricProtocol";
    public static final String FABRIC_REPORT_ERRORS_PROPERTY_KEY = "fabricReportErrors";
    public static final String FABRIC_SERVER_GROUP_PROPERTY_KEY = "fabricServerGroup";
    public static final String FABRIC_SHARD_KEY_PROPERTY_KEY = "fabricShardKey";
    public static final String FABRIC_SHARD_TABLE_PROPERTY_KEY = "fabricShardTable";
    public static final String FABRIC_URL_PREFIX = "jdbc:mysql:fabric://";
    public static final String FABRIC_USERNAME_PROPERTY_KEY = "fabricUsername";

    static {
        try {
            DriverManager.registerDriver(new FabricMySQLDriver());
        } catch (SQLException e) {
            throw new RuntimeException("Can't register driver", e);
        }
    }

    @Override // com.mysql.jdbc.NonRegisteringDriver, java.sql.Driver
    public Connection connect(String str, Properties properties) throws SQLException {
        Properties fabricURL = parseFabricURL(str, properties);
        if (fabricURL == null) {
            return null;
        }
        fabricURL.setProperty(FABRIC_PROTOCOL_PROPERTY_KEY, "http");
        if (Util.isJdbc4()) {
            try {
                return (Connection) Util.handleNewInstance(Class.forName("com.mysql.fabric.jdbc.JDBC4FabricMySQLConnectionProxy").getConstructor(Properties.class), new Object[]{fabricURL}, null);
            } catch (Exception e) {
                throw ((SQLException) new SQLException(e.getMessage()).initCause(e));
            }
        }
        return new FabricMySQLConnectionProxy(fabricURL);
    }

    @Override // com.mysql.jdbc.NonRegisteringDriver, java.sql.Driver
    public boolean acceptsURL(String str) throws SQLException {
        return parseFabricURL(str, null) != null;
    }

    Properties parseFabricURL(String str, Properties properties) throws SQLException {
        if (str.startsWith(FABRIC_URL_PREFIX)) {
            return super.parseURL(str.replaceAll("fabric:", ""), properties);
        }
        return null;
    }

    public Logger getParentLogger() throws SQLException {
        throw new SQLException("no logging");
    }
}
