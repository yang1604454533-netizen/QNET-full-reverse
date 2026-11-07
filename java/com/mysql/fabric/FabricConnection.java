package com.mysql.fabric;

import com.mysql.fabric.proto.xmlrpc.XmlRpcClient;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class FabricConnection {
    private XmlRpcClient client;
    private long serverGroupsExpiration;
    private int serverGroupsTtl;
    private long shardMappingsExpiration;
    private int shardMappingsTtl;
    private Map<String, ShardMapping> shardMappingsByTableName = new HashMap();
    private Map<String, ServerGroup> serverGroupsByName = new HashMap();

    public Set<String> getFabricHosts() {
        return null;
    }

    public String getInstanceUuid() {
        return null;
    }

    public int getVersion() {
        return 0;
    }

    public FabricConnection(String str, String str2, String str3) throws FabricCommunicationException {
        this.client = new XmlRpcClient(str, str2, str3);
        refreshState();
    }

    public FabricConnection(Set<String> set, String str, String str2) throws FabricCommunicationException {
        throw new UnsupportedOperationException("Multiple connections not supported.");
    }

    public int refreshState() throws FabricCommunicationException {
        FabricStateResponse<Set<ServerGroup>> serverGroups = this.client.getServerGroups();
        FabricStateResponse<Set<ShardMapping>> shardMappings = this.client.getShardMappings();
        this.serverGroupsExpiration = serverGroups.getExpireTimeMillis();
        this.serverGroupsTtl = serverGroups.getTtl();
        for (ServerGroup serverGroup : serverGroups.getData()) {
            this.serverGroupsByName.put(serverGroup.getName(), serverGroup);
        }
        this.shardMappingsExpiration = shardMappings.getExpireTimeMillis();
        this.shardMappingsTtl = shardMappings.getTtl();
        for (ShardMapping shardMapping : shardMappings.getData()) {
            for (ShardTable shardTable : shardMapping.getShardTables()) {
                this.shardMappingsByTableName.put(shardTable.getDatabase() + "." + shardTable.getTable(), shardMapping);
            }
        }
        return 0;
    }

    public int refreshStatePassive() {
        try {
            return refreshState();
        } catch (FabricCommunicationException unused) {
            this.serverGroupsExpiration = System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(this.serverGroupsTtl);
            this.shardMappingsExpiration = System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(this.shardMappingsTtl);
            return 0;
        }
    }

    public ServerGroup getServerGroup(String str) {
        if (isStateExpired()) {
            refreshStatePassive();
        }
        return this.serverGroupsByName.get(str);
    }

    public ShardMapping getShardMapping(String str, String str2) {
        if (isStateExpired()) {
            refreshStatePassive();
        }
        return this.shardMappingsByTableName.get(str + "." + str2);
    }

    public boolean isStateExpired() {
        return System.currentTimeMillis() > this.shardMappingsExpiration || System.currentTimeMillis() > this.serverGroupsExpiration;
    }

    public XmlRpcClient getClient() {
        return this.client;
    }
}
