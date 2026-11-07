package com.mysql.fabric.jdbc;

import com.mysql.fabric.FabricConnection;
import com.mysql.jdbc.JDBC4ClientInfoProvider;
import com.mysql.jdbc.JDBC4MySQLConnection;
import com.mysql.jdbc.ReplicationConnection;
import java.sql.Array;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.NClob;
import java.sql.SQLClientInfoException;
import java.sql.SQLException;
import java.sql.SQLXML;
import java.sql.Struct;
import java.util.Iterator;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
public class JDBC4FabricMySQLConnectionProxy extends FabricMySQLConnectionProxy implements JDBC4FabricMySQLConnection, FabricMySQLConnectionProperties {
    private static final long serialVersionUID = 5845485979107347258L;
    private FabricConnection fabricConnection;

    public JDBC4FabricMySQLConnectionProxy(Properties properties) throws SQLException {
        super(properties);
    }

    @Override // java.sql.Connection, com.mysql.jdbc.JDBC4MySQLConnection
    public Blob createBlob() {
        try {
            transactionBegun();
            return getActiveConnection().createBlob();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // java.sql.Connection, com.mysql.jdbc.JDBC4MySQLConnection
    public Clob createClob() {
        try {
            transactionBegun();
            return getActiveConnection().createClob();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // java.sql.Connection, com.mysql.jdbc.JDBC4MySQLConnection
    public NClob createNClob() {
        try {
            transactionBegun();
            return getActiveConnection().createNClob();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // java.sql.Connection, com.mysql.jdbc.JDBC4MySQLConnection
    public SQLXML createSQLXML() throws SQLException {
        transactionBegun();
        return getActiveConnection().createSQLXML();
    }

    @Override // java.sql.Connection, com.mysql.jdbc.JDBC4MySQLConnection
    public void setClientInfo(Properties properties) throws SQLClientInfoException {
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setClientInfo(properties);
        }
    }

    @Override // java.sql.Connection, com.mysql.jdbc.JDBC4MySQLConnection
    public void setClientInfo(String str, String str2) throws SQLClientInfoException {
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setClientInfo(str, str2);
        }
    }

    @Override // java.sql.Connection, com.mysql.jdbc.JDBC4MySQLConnection
    public Array createArrayOf(String str, Object[] objArr) throws SQLException {
        return getActiveConnection().createArrayOf(str, objArr);
    }

    @Override // java.sql.Connection, com.mysql.jdbc.JDBC4MySQLConnection
    public Struct createStruct(String str, Object[] objArr) throws SQLException {
        transactionBegun();
        return getActiveConnection().createStruct(str, objArr);
    }

    @Override // com.mysql.jdbc.JDBC4MySQLConnection
    public JDBC4ClientInfoProvider getClientInfoProviderImpl() throws SQLException {
        return ((JDBC4MySQLConnection) getActiveConnection()).getClientInfoProviderImpl();
    }
}
