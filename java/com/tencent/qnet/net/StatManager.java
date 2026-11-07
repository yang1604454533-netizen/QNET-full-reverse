package com.tencent.qnet.net;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public class StatManager {
    public static StatManager Instance = new StatManager();
    public int InCount;
    public int InSize;
    public SparseArray<Info> IpInfo = new SparseArray<>();
    public int OutCount;
    public int OutSize;

    private StatManager() {
    }

    public class Info {
        public int InCount;
        public int InSize;
        public int OutCount;
        public int OutSize;

        public Info() {
        }
    }

    public void reset() {
        this.InCount = 0;
        this.InSize = 0;
        this.OutCount = 0;
        this.OutSize = 0;
        this.IpInfo.clear();
    }

    public int get_main_ip() {
        int i = this.InSize;
        int i2 = this.OutSize;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < this.IpInfo.size(); i5++) {
            int iKeyAt = this.IpInfo.keyAt(i5);
            Info infoValueAt = this.IpInfo.valueAt(i5);
            int i6 = infoValueAt.OutSize + infoValueAt.InSize;
            if (i6 > i3) {
                i4 = iKeyAt;
                i3 = i6;
            }
        }
        return i4;
    }

    public void InPackage(int i, int i2) {
        Info info = this.IpInfo.get(i);
        if (info == null) {
            info = new Info();
            this.IpInfo.append(i, info);
        }
        info.InCount++;
        info.InSize += i2;
        this.InCount++;
        this.InSize += i2;
    }

    public void OutPackage(int i, int i2) {
        Info info = this.IpInfo.get(i);
        if (info == null) {
            info = new Info();
            this.IpInfo.append(i, info);
        }
        info.OutCount++;
        info.OutSize += i2;
        this.OutCount++;
        this.OutSize += i2;
    }
}
