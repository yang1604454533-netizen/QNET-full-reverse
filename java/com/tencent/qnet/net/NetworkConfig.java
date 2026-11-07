package com.tencent.qnet.net;

import com.tencent.qnet.tcpip.IPHeader;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class NetworkConfig {
    public static final int TCP = 1;
    public static final int UDP = 2;
    private static NetworkConfig s_instance = new NetworkConfig();
    public int InBandwidth;
    public int InDelay;
    public int InDelayBias;
    public int InLoss;
    public int InPass;
    public int InRate;
    public int OutBandwidth;
    public int OutDelay;
    public int OutDelayBias;
    public int OutLoss;
    public int OutPass;
    public int OutRate;
    public int Protocol;
    private Random m_rand = new Random();
    private int m_upIndex = 0;
    private byte[] m_upRand = new byte[10000];
    private int m_downIndex = 0;
    private byte[] m_downRand = new byte[10000];

    private NetworkConfig() {
        this.m_rand.nextBytes(this.m_upRand);
        this.m_rand.nextBytes(this.m_downRand);
    }

    public static NetworkConfig Instnace() {
        return s_instance;
    }

    public boolean IsUpDelay() {
        return this.OutDelay > 0;
    }

    public boolean IsDownDelay() {
        return this.InDelay > 0;
    }

    public boolean isUDPActive() {
        return (this.Protocol & 2) > 0;
    }

    public boolean isTCPActive() {
        return (this.Protocol & 1) > 0;
    }

    public boolean HasUpConfig() {
        return this.OutDelay > 0 || this.OutLoss > 0 || this.OutRate > 0;
    }

    public void updateIndex(boolean z) {
        if (z) {
            if (this.m_upIndex >= this.m_upRand.length) {
                this.m_upIndex = 0;
                this.m_rand.nextBytes(this.m_upRand);
                return;
            }
            return;
        }
        if (this.m_downIndex >= this.m_downRand.length) {
            this.m_downIndex = 0;
            this.m_rand.nextBytes(this.m_downRand);
        }
    }

    public boolean needDrop(boolean z) {
        updateIndex(z);
        if (z) {
            int i = this.OutLoss;
            int i2 = this.OutPass;
            int i3 = this.OutRate;
            int i4 = this.m_upIndex;
            this.m_upIndex = i4 + 1;
            return needDropInternal(i, i2, i3, i4, this.m_upRand);
        }
        int i5 = this.InLoss;
        int i6 = this.InPass;
        int i7 = this.InRate;
        int i8 = this.m_downIndex;
        this.m_downIndex = i8 + 1;
        return needDropInternal(i5, i6, i7, i8, this.m_downRand);
    }

    public int getDelay(boolean z) {
        updateIndex(z);
        int i = 0;
        if (z) {
            if (this.OutDelayBias > 0 && (this.m_upRand[this.m_upIndex] & IPHeader.UDP) == 0) {
                i = this.OutDelayBias;
            }
            return this.OutDelay + i;
        }
        if (this.InDelayBias > 0 && (this.m_downRand[this.m_downIndex] & IPHeader.UDP) == 0) {
            i = this.InDelayBias;
        }
        return this.InDelay + i;
    }

    private boolean needDropInternal(int i, int i2, int i3, int i4, byte[] bArr) {
        int i5 = i + i2;
        if (i5 > 0 && System.currentTimeMillis() % ((long) i5) > i2) {
            return true;
        }
        if (i3 > 0) {
            int i6 = (int) (i3 * 1.28f);
            if (bArr[i4] <= i6 && bArr[i4] >= (-i6)) {
                return true;
            }
        }
        return false;
    }
}
