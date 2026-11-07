package com.mysql.fabric.jdbc;

import com.mysql.fabric.FabricCommunicationException;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ConnectionImpl;
import com.mysql.jdbc.ExceptionInterceptor;
import com.mysql.jdbc.MySQLConnection;
import com.mysql.jdbc.NonRegisteringDriver;
import com.mysql.jdbc.SQLError;
import java.sql.SQLException;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
public class ErrorReportingExceptionInterceptor implements ExceptionInterceptor {
    private String fabricHaGroup;
    private String hostname;
    private String port;

    @Override // com.mysql.jdbc.Extension
    public void destroy() {
    }

    @Override // com.mysql.jdbc.ExceptionInterceptor
    public SQLException interceptException(SQLException sQLException, Connection connection) {
        MySQLConnection mySQLConnection = (MySQLConnection) connection;
        if (ConnectionImpl.class.isAssignableFrom(mySQLConnection.getMultiHostSafeProxy().getClass())) {
            return null;
        }
        try {
            return ((FabricMySQLConnectionProxy) mySQLConnection.getMultiHostSafeProxy()).interceptException(sQLException, connection, this.fabricHaGroup, this.hostname, this.port);
        } catch (FabricCommunicationException e) {
            return SQLError.createSQLException("Failed to report error to Fabric.", SQLError.SQL_STATE_COMMUNICATION_LINK_FAILURE, e, (ExceptionInterceptor) null);
        }
    }

    @Override // com.mysql.jdbc.Extension
    public void init(Connection connection, Properties properties) throws SQLException {
        this.hostname = properties.getProperty(NonRegisteringDriver.HOST_PROPERTY_KEY);
        this.port = properties.getProperty(NonRegisteringDriver.PORT_PROPERTY_KEY);
        this.fabricHaGroup = properties.getProperty("connectionAttributes").replaceAll("^.*\\bfabricHaGroup:(.+)\\b.*$", "$1");
    }
}
