package com.tencent.qnet.core;

/* JADX INFO: loaded from: classes.dex */
public class NatSession2 {
    public int BytesSent;
    public long LastNanoTime;
    public int LocalIP;
    public int LocalPort;
    public int PacketSent;
    public int RemoteIP;
    public int RemotePort;
    private int m_key;

    public NatSession2(int i, int i2, int i3, int i4) {
        this.LocalIP = i;
        this.LocalPort = i2;
        this.RemoteIP = i3;
        this.RemotePort = i4;
        this.m_key = this.LocalIP * this.LocalPort * this.RemoteIP * this.RemotePort;
    }

    public int getKey() {
        return this.m_key;
    }
}
