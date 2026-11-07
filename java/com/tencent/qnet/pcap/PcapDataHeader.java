package com.tencent.qnet.pcap;

import com.tencent.qnet.tcpip.CommonMethods;

/* JADX INFO: loaded from: classes.dex */
public class PcapDataHeader {
    private byte[] m_data = new byte[16];

    private void init() {
    }

    public byte[] getBuff() {
        return this.m_data;
    }

    public PcapDataHeader() {
        init();
    }

    public void writeTimestamp() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        CommonMethods.writeInt(this.m_data, 0, CommonMethods.hton((int) (jCurrentTimeMillis / 1000)));
        CommonMethods.writeInt(this.m_data, 4, CommonMethods.hton(((int) (jCurrentTimeMillis % 1000)) * 1000));
    }

    public void writeLen(int i) {
        int i2 = i + EthernetHeader.ETHERNET_HEADER_LEN;
        CommonMethods.writeInt(this.m_data, 8, CommonMethods.hton(i2));
        CommonMethods.writeInt(this.m_data, 12, CommonMethods.hton(i2));
    }
}
