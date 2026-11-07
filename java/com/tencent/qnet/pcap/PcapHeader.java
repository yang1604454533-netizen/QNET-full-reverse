package com.tencent.qnet.pcap;

import com.tencent.qnet.tcpip.CommonMethods;

/* JADX INFO: loaded from: classes.dex */
public class PcapHeader {
    private static PcapHeader s_instance = new PcapHeader();
    private byte[] m_data = new byte[24];

    public static PcapHeader getDefault() {
        return s_instance;
    }

    public byte[] getBuff() {
        return this.m_data;
    }

    private PcapHeader() {
        init();
    }

    private void init() {
        writeMagic();
        writeMajorVersion();
        writeMinorVersion();
        writeThisZone();
        writeSigFigs();
        writeSnapLen();
        writeLinkType();
    }

    private void writeMagic() {
        CommonMethods.writeInt(this.m_data, 0, CommonMethods.hton(-1582119980));
    }

    private void writeMajorVersion() {
        CommonMethods.writeShort(this.m_data, 4, CommonMethods.htons((short) 2));
    }

    private void writeMinorVersion() {
        CommonMethods.writeShort(this.m_data, 6, CommonMethods.htons((short) 4));
    }

    private void writeThisZone() {
        CommonMethods.writeInt(this.m_data, 8, CommonMethods.hton(0));
    }

    private void writeSigFigs() {
        CommonMethods.writeInt(this.m_data, 12, CommonMethods.hton(0));
    }

    private void writeSnapLen() {
        CommonMethods.writeInt(this.m_data, 16, CommonMethods.hton(262144));
    }

    private void writeLinkType() {
        CommonMethods.writeInt(this.m_data, 20, CommonMethods.hton(113));
    }
}
