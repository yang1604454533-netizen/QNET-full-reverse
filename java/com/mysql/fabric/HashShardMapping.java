package com.mysql.fabric;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public class HashShardMapping extends ShardMapping {
    private static final MessageDigest md5Hasher;

    private static class ReverseShardIndexSorter implements Comparator<ShardIndex> {
        public static final ReverseShardIndexSorter instance = new ReverseShardIndexSorter();

        private ReverseShardIndexSorter() {
        }

        @Override // java.util.Comparator
        public int compare(ShardIndex shardIndex, ShardIndex shardIndex2) {
            return shardIndex2.getBound().compareTo(shardIndex.getBound());
        }
    }

    static {
        try {
            md5Hasher = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public HashShardMapping(int i, ShardingType shardingType, String str, Set<ShardTable> set, Set<ShardIndex> set2) {
        super(i, shardingType, str, set, new TreeSet(ReverseShardIndexSorter.instance));
        this.shardIndices.addAll(set2);
    }

    @Override // com.mysql.fabric.ShardMapping
    protected ShardIndex getShardIndexForKey(String str) {
        String upperCase;
        synchronized (md5Hasher) {
            upperCase = new BigInteger(1, md5Hasher.digest(str.getBytes())).toString(16).toUpperCase();
        }
        for (int i = 0; i < 32 - upperCase.length(); i++) {
            upperCase = "0" + upperCase;
        }
        for (ShardIndex shardIndex : this.shardIndices) {
            if (shardIndex.getBound().compareTo(upperCase) <= 0) {
                return shardIndex;
            }
        }
        return this.shardIndices.iterator().next();
    }
}
