package com.mysql.fabric;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class FabricStateResponse<T> {
    private T data;
    private long expireTimeMillis;
    private int secsTtl;

    public FabricStateResponse(T t, int i) {
        this.data = t;
        this.secsTtl = i;
        this.expireTimeMillis = System.currentTimeMillis() + TimeUnit.SECONDS.toMillis(i);
    }

    public FabricStateResponse(T t, int i, long j) {
        this.data = t;
        this.secsTtl = i;
        this.expireTimeMillis = j;
    }

    public T getData() {
        return this.data;
    }

    public int getTtl() {
        return this.secsTtl;
    }

    public long getExpireTimeMillis() {
        return this.expireTimeMillis;
    }
}
