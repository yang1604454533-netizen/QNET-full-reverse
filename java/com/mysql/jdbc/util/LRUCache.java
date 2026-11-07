package com.mysql.jdbc.util;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class LRUCache extends LinkedHashMap<Object, Object> {
    private static final long serialVersionUID = 1;
    protected int maxElements;

    public LRUCache(int i) {
        super(i, 0.75f, true);
        this.maxElements = i;
    }

    @Override // java.util.LinkedHashMap
    protected boolean removeEldestEntry(Map.Entry<Object, Object> entry) {
        return size() > this.maxElements;
    }
}
