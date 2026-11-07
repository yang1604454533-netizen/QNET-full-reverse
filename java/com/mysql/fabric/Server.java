package com.mysql.fabric;

/* JADX INFO: loaded from: classes.dex */
public class Server implements Comparable<Server> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private String groupName;
    private String hostname;
    private ServerMode mode;
    private int port;
    private ServerRole role;
    private String uuid;
    private double weight;

    public Server(String str, String str2, String str3, int i, ServerMode serverMode, ServerRole serverRole, double d) {
        this.groupName = str;
        this.uuid = str2;
        this.hostname = str3;
        this.port = i;
        this.mode = serverMode;
        this.role = serverRole;
        this.weight = d;
    }

    public String getGroupName() {
        return this.groupName;
    }

    public String getUuid() {
        return this.uuid;
    }

    public String getHostname() {
        return this.hostname;
    }

    public int getPort() {
        return this.port;
    }

    public ServerMode getMode() {
        return this.mode;
    }

    public ServerRole getRole() {
        return this.role;
    }

    public double getWeight() {
        return this.weight;
    }

    public String getHostPortString() {
        return this.hostname + ":" + this.port;
    }

    public boolean isMaster() {
        return this.role == ServerRole.PRIMARY;
    }

    public boolean isSlave() {
        return this.role == ServerRole.SECONDARY || this.role == ServerRole.SPARE;
    }

    public String toString() {
        return String.format("Server[%s, %s:%d, %s, %s, weight=%s]", this.uuid, this.hostname, Integer.valueOf(this.port), this.mode, this.role, Double.valueOf(this.weight));
    }

    public boolean equals(Object obj) {
        if (obj instanceof Server) {
            return ((Server) obj).getUuid().equals(getUuid());
        }
        return false;
    }

    public int hashCode() {
        return getUuid().hashCode();
    }

    @Override // java.lang.Comparable
    public int compareTo(Server server) {
        return getUuid().compareTo(server.getUuid());
    }
}
