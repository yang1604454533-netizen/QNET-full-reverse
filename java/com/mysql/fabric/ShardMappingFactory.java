package com.mysql.fabric;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class ShardMappingFactory {
    public ShardMapping createShardMapping(int i, ShardingType shardingType, String str, Set<ShardTable> set, Set<ShardIndex> set2) {
        switch (shardingType) {
            case RANGE:
                return new RangeShardMapping(i, shardingType, str, set, set2);
            case HASH:
                return new HashShardMapping(i, shardingType, str, set, set2);
            default:
                throw new IllegalArgumentException("Invalid ShardingType");
        }
    }
}
