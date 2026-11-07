package com.mysql.fabric;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class ShardMapping {
    private String globalGroupName;
    private int mappingId;
    protected Set<ShardIndex> shardIndices;
    protected Set<ShardTable> shardTables;
    private ShardingType shardingType;

    protected abstract ShardIndex getShardIndexForKey(String str);

    public ShardMapping(int i, ShardingType shardingType, String str, Set<ShardTable> set, Set<ShardIndex> set2) {
        this.mappingId = i;
        this.shardingType = shardingType;
        this.globalGroupName = str;
        this.shardTables = set;
        this.shardIndices = set2;
    }

    public String getGroupNameForKey(String str) {
        return getShardIndexForKey(str).getGroupName();
    }

    public int getMappingId() {
        return this.mappingId;
    }

    public ShardingType getShardingType() {
        return this.shardingType;
    }

    public String getGlobalGroupName() {
        return this.globalGroupName;
    }

    public Set<ShardTable> getShardTables() {
        return Collections.unmodifiableSet(this.shardTables);
    }

    public Set<ShardIndex> getShardIndices() {
        return Collections.unmodifiableSet(this.shardIndices);
    }
}
