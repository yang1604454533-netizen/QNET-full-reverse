package com.mysql.fabric.jdbc;

import com.mysql.jdbc.NonRegisteringDriver;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.SQLException;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
public class FabricMySQLDataSource extends MysqlDataSource implements FabricMySQLConnectionProperties {
    private static final Driver driver;
    private static final long serialVersionUID = 1;
    private String fabricPassword;
    private String fabricProtocol = "http";
    private boolean fabricReportErrors = false;
    private String fabricServerGroup;
    private String fabricShardKey;
    private String fabricShardTable;
    private String fabricUsername;

    static {
        try {
            driver = new FabricMySQLDriver();
        } catch (Exception e) {
            throw new RuntimeException("Can create driver", e);
        }
    }

    @Override // com.mysql.jdbc.jdbc2.optional.MysqlDataSource
    protected Connection getConnection(Properties properties) throws SQLException {
        String string;
        if (!this.explicitUrl) {
            StringBuilder sb = new StringBuilder(FabricMySQLDriver.FABRIC_URL_PREFIX);
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
        Properties fabricURL = ((FabricMySQLDriver) driver).parseFabricURL(string, null);
        fabricURL.remove(NonRegisteringDriver.DBNAME_PROPERTY_KEY);
        fabricURL.remove(NonRegisteringDriver.HOST_PROPERTY_KEY);
        fabricURL.remove(NonRegisteringDriver.PORT_PROPERTY_KEY);
        for (String str : fabricURL.keySet()) {
            properties.setProperty(str, fabricURL.getProperty(str));
        }
        if (this.fabricShardKey != null) {
            properties.setProperty(FabricMySQLDriver.FABRIC_SHARD_KEY_PROPERTY_KEY, this.fabricShardKey);
        }
        if (this.fabricShardTable != null) {
            properties.setProperty(FabricMySQLDriver.FABRIC_SHARD_TABLE_PROPERTY_KEY, this.fabricShardTable);
        }
        if (this.fabricServerGroup != null) {
            properties.setProperty(FabricMySQLDriver.FABRIC_SERVER_GROUP_PROPERTY_KEY, this.fabricServerGroup);
        }
        properties.setProperty(FabricMySQLDriver.FABRIC_PROTOCOL_PROPERTY_KEY, this.fabricProtocol);
        if (this.fabricUsername != null) {
            properties.setProperty(FabricMySQLDriver.FABRIC_USERNAME_PROPERTY_KEY, this.fabricUsername);
        }
        if (this.fabricPassword != null) {
            properties.setProperty(FabricMySQLDriver.FABRIC_PASSWORD_PROPERTY_KEY, this.fabricPassword);
        }
        properties.setProperty(FabricMySQLDriver.FABRIC_REPORT_ERRORS_PROPERTY_KEY, Boolean.toString(this.fabricReportErrors));
        return driver.connect(string, properties);
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public void setFabricShardKey(String str) {
        this.fabricShardKey = str;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public String getFabricShardKey() {
        return this.fabricShardKey;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public void setFabricShardTable(String str) {
        this.fabricShardTable = str;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public String getFabricShardTable() {
        return this.fabricShardTable;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public void setFabricServerGroup(String str) {
        this.fabricServerGroup = str;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public String getFabricServerGroup() {
        return this.fabricServerGroup;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public void setFabricProtocol(String str) {
        this.fabricProtocol = str;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public String getFabricProtocol() {
        return this.fabricProtocol;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public void setFabricUsername(String str) {
        this.fabricUsername = str;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public String getFabricUsername() {
        return this.fabricUsername;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public void setFabricPassword(String str) {
        this.fabricPassword = str;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public String getFabricPassword() {
        return this.fabricPassword;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public void setFabricReportErrors(boolean z) {
        this.fabricReportErrors = z;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public boolean getFabricReportErrors() {
        return this.fabricReportErrors;
    }
}
