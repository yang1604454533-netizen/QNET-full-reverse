package com.mysql.fabric;

/* JADX INFO: loaded from: classes.dex */
public class ShardIndex {
    private String bound;
    private String groupName;
    private Integer shardId;

    public ShardIndex(String str, Integer num, String str2) {
        this.bound = str;
        this.shardId = num;
        this.groupName = str2;
    }

    public String getBound() {
        return this.bound;
    }

    public Integer getShardId() {
        return this.shardId;
    }

    public String getGroupName() {
        return this.groupName;
    }
}
