package com.mysql.fabric.proto.xmlrpc;

import com.mysql.fabric.FabricCommunicationException;
import com.mysql.fabric.FabricStateResponse;
import com.mysql.fabric.Response;
import com.mysql.fabric.Server;
import com.mysql.fabric.ServerGroup;
import com.mysql.fabric.ServerMode;
import com.mysql.fabric.ServerRole;
import com.mysql.fabric.ShardIndex;
import com.mysql.fabric.ShardMapping;
import com.mysql.fabric.ShardMappingFactory;
import com.mysql.fabric.ShardTable;
import com.mysql.fabric.ShardingType;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class XmlRpcClient {
    private static final String FIELD_ADDRESS = "address";
    private static final String FIELD_COLUMN_NAME = "column_name";
    private static final String FIELD_GLOBAL_GROUP_ID = "global_group_id";
    private static final String FIELD_GROUP_ID = "group_id";
    private static final String FIELD_HOST = "host";
    private static final String FIELD_LOWER_BOUND = "lower_bound";
    private static final String FIELD_MAPPING_ID = "mapping_id";
    private static final String FIELD_MODE = "mode";
    private static final String FIELD_PORT = "port";
    private static final String FIELD_RESULT = "result";
    private static final String FIELD_SCHEMA_NAME = "schema_name";
    private static final String FIELD_SERVER_UUID = "server_uuid";
    private static final String FIELD_SHARD_ID = "shard_id";
    private static final String FIELD_STATUS = "status";
    private static final String FIELD_TABLE_NAME = "table_name";
    private static final String FIELD_TYPE_NAME = "type_name";
    private static final String FIELD_WEIGHT = "weight";
    private static final String METHOD_DUMP_FABRIC_NODES = "dump.fabric_nodes";
    private static final String METHOD_DUMP_SERVERS = "dump.servers";
    private static final String METHOD_DUMP_SHARD_INDEX = "dump.shard_index";
    private static final String METHOD_DUMP_SHARD_MAPS = "dump.shard_maps";
    private static final String METHOD_DUMP_SHARD_TABLES = "dump.shard_tables";
    private static final String METHOD_GROUP_ADD = "group.add";
    private static final String METHOD_GROUP_CREATE = "group.create";
    private static final String METHOD_GROUP_DESTROY = "group.destroy";
    private static final String METHOD_GROUP_LOOKUP_GROUPS = "group.lookup_groups";
    private static final String METHOD_GROUP_PROMOTE = "group.promote";
    private static final String METHOD_GROUP_REMOVE = "group.remove";
    private static final String METHOD_SHARDING_ADD_SHARD = "sharding.add_shard";
    private static final String METHOD_SHARDING_ADD_TABLE = "sharding.add_table";
    private static final String METHOD_SHARDING_CREATE_DEFINITION = "sharding.create_definition";
    private static final String METHOD_SHARDING_LOOKUP_SERVERS = "sharding.lookup_servers";
    private static final String METHOD_THREAT_REPORT_ERROR = "threat.report_error";
    private static final String METHOD_THREAT_REPORT_FAILURE = "threat.report_failure";
    private static final String THREAT_REPORTER_NAME = "MySQL Connector/J";
    private XmlRpcMethodCaller methodCaller;

    public XmlRpcClient(String str, String str2, String str3) throws FabricCommunicationException {
        this.methodCaller = new InternalXmlRpcMethodCaller(str);
        if (str2 == null || "".equals(str2) || str3 == null) {
            return;
        }
        this.methodCaller = new AuthenticatedXmlRpcMethodCaller(this.methodCaller, str, str2, str3);
    }

    private static Server unmarshallServer(Map<String, ?> map) throws FabricCommunicationException {
        ServerMode serverMode;
        ServerRole serverRole;
        int iIntValue;
        String str;
        try {
            if (Integer.class.equals(map.get(FIELD_MODE).getClass())) {
                ServerMode fromConstant = ServerMode.getFromConstant((Integer) map.get(FIELD_MODE));
                ServerRole fromConstant2 = ServerRole.getFromConstant((Integer) map.get("status"));
                serverMode = fromConstant;
                serverRole = fromConstant2;
                str = (String) map.get(FIELD_HOST);
                iIntValue = ((Integer) map.get(FIELD_PORT)).intValue();
            } else {
                ServerMode serverModeValueOf = ServerMode.valueOf((String) map.get(FIELD_MODE));
                ServerRole serverRoleValueOf = ServerRole.valueOf((String) map.get("status"));
                String[] strArrSplit = ((String) map.get(FIELD_ADDRESS)).split(":");
                String str2 = strArrSplit[0];
                serverMode = serverModeValueOf;
                serverRole = serverRoleValueOf;
                iIntValue = Integer.valueOf(strArrSplit[1]).intValue();
                str = str2;
            }
            return new Server((String) map.get(FIELD_GROUP_ID), (String) map.get(FIELD_SERVER_UUID), str, iIntValue, serverMode, serverRole, ((Double) map.get(FIELD_WEIGHT)).doubleValue());
        } catch (Exception e) {
            throw new FabricCommunicationException("Unable to parse server definition", e);
        }
    }

    private static Set<Server> toServerSet(List<Map<String, ?>> list) throws FabricCommunicationException {
        HashSet hashSet = new HashSet();
        Iterator<Map<String, ?>> it = list.iterator();
        while (it.hasNext()) {
            hashSet.add(unmarshallServer(it.next()));
        }
        return hashSet;
    }

    private Response errorSafeCallMethod(String str, Object[] objArr) throws FabricCommunicationException {
        Response response = new Response(this.methodCaller.call(str, objArr));
        if (response.getErrorMessage() == null) {
            return response;
        }
        throw new FabricCommunicationException("Call failed to method `" + str + "':\n" + response.getErrorMessage());
    }

    public Set<String> getFabricNames() throws FabricCommunicationException {
        Response responseErrorSafeCallMethod = errorSafeCallMethod(METHOD_DUMP_FABRIC_NODES, new Object[0]);
        HashSet hashSet = new HashSet();
        for (Map<String, ?> map : responseErrorSafeCallMethod.getResultSet()) {
            hashSet.add(map.get(FIELD_HOST) + ":" + map.get(FIELD_PORT));
        }
        return hashSet;
    }

    public Set<String> getGroupNames() throws FabricCommunicationException {
        HashSet hashSet = new HashSet();
        Iterator<Map<String, ?>> it = errorSafeCallMethod(METHOD_GROUP_LOOKUP_GROUPS, null).getResultSet().iterator();
        while (it.hasNext()) {
            hashSet.add((String) it.next().get(FIELD_GROUP_ID));
        }
        return hashSet;
    }

    public ServerGroup getServerGroup(String str) throws FabricCommunicationException {
        Set<ServerGroup> data = getServerGroups(str).getData();
        if (data.size() == 1) {
            return data.iterator().next();
        }
        return null;
    }

    public Set<Server> getServersForKey(String str, int i) throws FabricCommunicationException {
        return toServerSet(errorSafeCallMethod(METHOD_SHARDING_LOOKUP_SERVERS, new Object[]{str, Integer.valueOf(i)}).getResultSet());
    }

    public FabricStateResponse<Set<ServerGroup>> getServerGroups(String str) throws FabricCommunicationException {
        Response responseErrorSafeCallMethod = errorSafeCallMethod(METHOD_DUMP_SERVERS, new Object[]{0, str});
        HashMap map = new HashMap();
        Iterator<Map<String, ?>> it = responseErrorSafeCallMethod.getResultSet().iterator();
        while (it.hasNext()) {
            Server serverUnmarshallServer = unmarshallServer(it.next());
            if (map.get(serverUnmarshallServer.getGroupName()) == null) {
                map.put(serverUnmarshallServer.getGroupName(), new HashSet());
            }
            ((Set) map.get(serverUnmarshallServer.getGroupName())).add(serverUnmarshallServer);
        }
        HashSet hashSet = new HashSet();
        for (Map.Entry entry : map.entrySet()) {
            hashSet.add(new ServerGroup((String) entry.getKey(), (Set) entry.getValue()));
        }
        return new FabricStateResponse<>(hashSet, responseErrorSafeCallMethod.getTtl());
    }

    public FabricStateResponse<Set<ServerGroup>> getServerGroups() throws FabricCommunicationException {
        return getServerGroups("");
    }

    private FabricStateResponse<Set<ShardTable>> getShardTables(int i) throws FabricCommunicationException {
        Response responseErrorSafeCallMethod = errorSafeCallMethod(METHOD_DUMP_SHARD_TABLES, new Object[]{0, String.valueOf(i)});
        HashSet hashSet = new HashSet();
        for (Map<String, ?> map : responseErrorSafeCallMethod.getResultSet()) {
            hashSet.add(new ShardTable((String) map.get(FIELD_SCHEMA_NAME), (String) map.get(FIELD_TABLE_NAME), (String) map.get(FIELD_COLUMN_NAME)));
        }
        return new FabricStateResponse<>(hashSet, responseErrorSafeCallMethod.getTtl());
    }

    private FabricStateResponse<Set<ShardIndex>> getShardIndices(int i) throws FabricCommunicationException {
        Response responseErrorSafeCallMethod = errorSafeCallMethod(METHOD_DUMP_SHARD_INDEX, new Object[]{0, String.valueOf(i)});
        HashSet hashSet = new HashSet();
        for (Map<String, ?> map : responseErrorSafeCallMethod.getResultSet()) {
            hashSet.add(new ShardIndex((String) map.get(FIELD_LOWER_BOUND), Integer.valueOf(((Integer) map.get(FIELD_SHARD_ID)).intValue()), (String) map.get(FIELD_GROUP_ID)));
        }
        return new FabricStateResponse<>(hashSet, responseErrorSafeCallMethod.getTtl());
    }

    public FabricStateResponse<Set<ShardMapping>> getShardMappings(String str) throws FabricCommunicationException {
        Response responseErrorSafeCallMethod = errorSafeCallMethod(METHOD_DUMP_SHARD_MAPS, new Object[]{0, str});
        long jCurrentTimeMillis = System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(responseErrorSafeCallMethod.getTtl());
        int ttl = responseErrorSafeCallMethod.getTtl();
        HashSet hashSet = new HashSet();
        for (Map<String, ?> map : responseErrorSafeCallMethod.getResultSet()) {
            int iIntValue = ((Integer) map.get(FIELD_MAPPING_ID)).intValue();
            ShardingType shardingTypeValueOf = ShardingType.valueOf((String) map.get(FIELD_TYPE_NAME));
            String str2 = (String) map.get(FIELD_GLOBAL_GROUP_ID);
            FabricStateResponse<Set<ShardTable>> shardTables = getShardTables(iIntValue);
            FabricStateResponse<Set<ShardIndex>> shardIndices = getShardIndices(iIntValue);
            if (shardTables.getExpireTimeMillis() < jCurrentTimeMillis) {
                jCurrentTimeMillis = shardTables.getExpireTimeMillis();
            }
            if (shardIndices.getExpireTimeMillis() < jCurrentTimeMillis) {
                jCurrentTimeMillis = shardIndices.getExpireTimeMillis();
            }
            hashSet.add(new ShardMappingFactory().createShardMapping(iIntValue, shardingTypeValueOf, str2, shardTables.getData(), shardIndices.getData()));
        }
        return new FabricStateResponse<>(hashSet, ttl, jCurrentTimeMillis);
    }

    public FabricStateResponse<Set<ShardMapping>> getShardMappings() throws FabricCommunicationException {
        return getShardMappings("");
    }

    public void createGroup(String str) throws FabricCommunicationException {
        errorSafeCallMethod(METHOD_GROUP_CREATE, new Object[]{str});
    }

    public void destroyGroup(String str) throws FabricCommunicationException {
        errorSafeCallMethod(METHOD_GROUP_DESTROY, new Object[]{str});
    }

    public void createServerInGroup(String str, String str2, int i) throws FabricCommunicationException {
        errorSafeCallMethod(METHOD_GROUP_ADD, new Object[]{str, str2 + ":" + i});
    }

    public int createShardMapping(ShardingType shardingType, String str) throws FabricCommunicationException {
        return ((Integer) errorSafeCallMethod(METHOD_SHARDING_CREATE_DEFINITION, new Object[]{shardingType.toString(), str}).getResultSet().get(0).get(FIELD_RESULT)).intValue();
    }

    public void createShardTable(int i, String str, String str2, String str3) throws FabricCommunicationException {
        errorSafeCallMethod(METHOD_SHARDING_ADD_TABLE, new Object[]{Integer.valueOf(i), str + "." + str2, str3});
    }

    public void createShardIndex(int i, String str) throws FabricCommunicationException {
        errorSafeCallMethod(METHOD_SHARDING_ADD_SHARD, new Object[]{Integer.valueOf(i), str, "ENABLED"});
    }

    public void addServerToGroup(String str, String str2, int i) throws FabricCommunicationException {
        errorSafeCallMethod(METHOD_GROUP_ADD, new Object[]{str, str2 + ":" + i});
    }

    public void removeServerFromGroup(String str, String str2, int i) throws FabricCommunicationException {
        errorSafeCallMethod(METHOD_GROUP_REMOVE, new Object[]{str, str2 + ":" + i});
    }

    public void promoteServerInGroup(String str, String str2, int i) throws FabricCommunicationException {
        for (Server server : getServerGroup(str).getServers()) {
            if (server.getHostname().equals(str2) && server.getPort() == i) {
                errorSafeCallMethod(METHOD_GROUP_PROMOTE, new Object[]{str, server.getUuid()});
                return;
            }
        }
    }

    public void reportServerError(Server server, String str, boolean z) throws FabricCommunicationException {
        String str2 = METHOD_THREAT_REPORT_ERROR;
        if (z) {
            str2 = METHOD_THREAT_REPORT_FAILURE;
        }
        errorSafeCallMethod(str2, new Object[]{server.getUuid(), THREAT_REPORTER_NAME, str});
    }
}
