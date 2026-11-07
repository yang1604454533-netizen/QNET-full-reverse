package com.tencent.open.utils;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public final class l implements Cloneable {
    private long a;

    public l(long j) {
        this.a = j;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof l) && this.a == ((l) obj).b();
    }

    public byte[] a() {
        return new byte[]{(byte) (this.a & 255), (byte) ((this.a & 65280) >> 8), (byte) ((this.a & 16711680) >> 16), (byte) ((this.a & 4278190080L) >> 24)};
    }

    public long b() {
        return this.a;
    }

    public int hashCode() {
        return (int) this.a;
    }
}
