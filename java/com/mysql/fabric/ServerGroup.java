package com.mysql.fabric;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class ServerGroup {
    private String name;
    private Set<Server> servers;

    public ServerGroup(String str, Set<Server> set) {
        this.name = str;
        this.servers = set;
    }

    public String getName() {
        return this.name;
    }

    public Set<Server> getServers() {
        return this.servers;
    }

    public Server getMaster() {
        for (Server server : this.servers) {
            if (server.getRole() == ServerRole.PRIMARY) {
                return server;
            }
        }
        return null;
    }

    public Server getServer(String str) {
        for (Server server : this.servers) {
            if (server.getHostPortString().equals(str)) {
                return server;
            }
        }
        return null;
    }

    public String toString() {
        return String.format("Group[name=%s, servers=%s]", this.name, this.servers);
    }
}
