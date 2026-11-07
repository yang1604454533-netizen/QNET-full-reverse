package com.mysql.fabric.hibernate;

import com.mysql.fabric.FabricCommunicationException;
import com.mysql.fabric.FabricConnection;
import com.mysql.fabric.Server;
import com.mysql.fabric.ServerGroup;
import com.mysql.fabric.ServerMode;
import com.mysql.fabric.ShardMapping;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import org.hibernate.service.jdbc.connections.spi.MultiTenantConnectionProvider;

/* JADX INFO: loaded from: classes.dex */
public class FabricMultiTenantConnectionProvider implements MultiTenantConnectionProvider {
    private static final long serialVersionUID = 1;
    private String database;
    private FabricConnection fabricConnection;
    private ServerGroup globalGroup;
    private String password;
    private ShardMapping shardMapping;
    private String table;
    private String user;

    public boolean isUnwrappableAs(Class cls) {
        return false;
    }

    public boolean supportsAggressiveRelease() {
        return false;
    }

    public <T> T unwrap(Class<T> cls) {
        return null;
    }

    public FabricMultiTenantConnectionProvider(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        try {
            this.fabricConnection = new FabricConnection(str, str6, str7);
            this.database = str2;
            this.table = str3;
            this.user = str4;
            this.password = str5;
            this.shardMapping = this.fabricConnection.getShardMapping(this.database, this.table);
            this.globalGroup = this.fabricConnection.getServerGroup(this.shardMapping.getGlobalGroupName());
        } catch (FabricCommunicationException e) {
            throw new RuntimeException(e);
        }
    }

    private Connection getReadWriteConnectionFromServerGroup(ServerGroup serverGroup) throws SQLException {
        for (Server server : serverGroup.getServers()) {
            if (ServerMode.READ_WRITE.equals(server.getMode())) {
                return DriverManager.getConnection(String.format("jdbc:mysql://%s:%s/%s", server.getHostname(), Integer.valueOf(server.getPort()), this.database), this.user, this.password);
            }
        }
        throw new SQLException("Unable to find r/w server for chosen shard mapping in group " + serverGroup.getName());
    }

    public Connection getAnyConnection() throws SQLException {
        return getReadWriteConnectionFromServerGroup(this.globalGroup);
    }

    public Connection getConnection(String str) throws SQLException {
        return getReadWriteConnectionFromServerGroup(this.fabricConnection.getServerGroup(this.shardMapping.getGroupNameForKey(str)));
    }

    public void releaseAnyConnection(Connection connection) throws SQLException {
        try {
            connection.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void releaseConnection(String str, Connection connection) throws SQLException {
        releaseAnyConnection(connection);
    }
}
