package com.tencent.open.utils;

import com.mysql.jdbc.StatementImpl;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public final class m implements Cloneable {
    private int a;

    public m(byte[] bArr) {
        this(bArr, 0);
    }

    public m(byte[] bArr, int i) {
        this.a = (bArr[i + 1] << 8) & 65280;
        this.a += bArr[i] & StatementImpl.USES_VARIABLES_UNKNOWN;
    }

    public m(int i) {
        this.a = i;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof m) && this.a == ((m) obj).b();
    }

    public byte[] a() {
        return new byte[]{(byte) (this.a & 255), (byte) ((this.a & 65280) >> 8)};
    }

    public int b() {
        return this.a;
    }

    public int hashCode() {
        return this.a;
    }
}
