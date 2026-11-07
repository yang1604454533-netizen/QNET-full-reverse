package com.mysql.fabric;

import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public class RangeShardMapping extends ShardMapping {

    private static class RangeShardIndexSorter implements Comparator<ShardIndex> {
        public static final RangeShardIndexSorter instance = new RangeShardIndexSorter();

        private RangeShardIndexSorter() {
        }

        @Override // java.util.Comparator
        public int compare(ShardIndex shardIndex, ShardIndex shardIndex2) {
            return Integer.valueOf(Integer.parseInt(shardIndex2.getBound())).compareTo(Integer.valueOf(Integer.parseInt(shardIndex.getBound())));
        }
    }

    public RangeShardMapping(int i, ShardingType shardingType, String str, Set<ShardTable> set, Set<ShardIndex> set2) {
        super(i, shardingType, str, set, new TreeSet(RangeShardIndexSorter.instance));
        this.shardIndices.addAll(set2);
    }

    @Override // com.mysql.fabric.ShardMapping
    protected ShardIndex getShardIndexForKey(String str) {
        Integer.valueOf(-1);
        Integer numValueOf = Integer.valueOf(Integer.parseInt(str));
        for (ShardIndex shardIndex : this.shardIndices) {
            if (numValueOf.intValue() >= Integer.valueOf(shardIndex.getBound()).intValue()) {
                return shardIndex;
            }
        }
        return null;
    }
}
