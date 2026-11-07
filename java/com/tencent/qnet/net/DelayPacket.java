package com.tencent.qnet.net;

/* JADX INFO: compiled from: DelayThread.java */
/* JADX INFO: loaded from: classes.dex */
class DelayPacket implements Comparable<DelayPacket> {
    public byte[] Packet;
    public long SendTime;

    public DelayPacket(byte[] bArr, long j) {
        this.Packet = bArr;
        this.SendTime = j;
    }

    @Override // java.lang.Comparable
    public int compareTo(DelayPacket delayPacket) {
        if (this.SendTime < delayPacket.SendTime) {
            return -1;
        }
        return this.SendTime > delayPacket.SendTime ? 1 : 0;
    }
}
