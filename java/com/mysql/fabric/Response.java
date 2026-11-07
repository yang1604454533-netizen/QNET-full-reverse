package com.mysql.fabric;

import com.mysql.fabric.proto.xmlrpc.ResultSetParser;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Response {
    private String errorMessage;
    private String fabricUuid;
    private int protocolVersion;
    private List<Map<String, ?>> resultSet;
    private int ttl;

    public Response(List<?> list) throws FabricCommunicationException {
        this.protocolVersion = ((Integer) list.get(0)).intValue();
        if (this.protocolVersion != 1) {
            throw new FabricCommunicationException("Unknown protocol version: " + this.protocolVersion);
        }
        this.fabricUuid = (String) list.get(1);
        this.ttl = ((Integer) list.get(2)).intValue();
        this.errorMessage = (String) list.get(3);
        if ("".equals(this.errorMessage)) {
            this.errorMessage = null;
        }
        List list2 = (List) list.get(4);
        if (list2.size() > 0) {
            Map map = (Map) list2.get(0);
            this.resultSet = new ResultSetParser().parse((Map) map.get("info"), (List) map.get("rows"));
        }
    }

    public int getProtocolVersion() {
        return this.protocolVersion;
    }

    public String getFabricUuid() {
        return this.fabricUuid;
    }

    public int getTtl() {
        return this.ttl;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public List<Map<String, ?>> getResultSet() {
        return this.resultSet;
    }
}
