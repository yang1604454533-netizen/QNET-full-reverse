package com.tencent.qnet.pcap;

import com.tencent.qnet.tcpip.CommonMethods;
import com.tencent.qnet.tcpip.IPHeader;

/* JADX INFO: loaded from: classes.dex */
public class EthernetHeader {
    public static int ETHERNET_HEADER_LEN = 16;
    private static EthernetHeader s_instance = new EthernetHeader();
    private byte[] m_data = new byte[ETHERNET_HEADER_LEN];

    public static EthernetHeader getDefault() {
        return s_instance;
    }

    public byte[] getBuff() {
        return this.m_data;
    }

    private EthernetHeader() {
        init();
    }

    private void init() {
        writePackType();
        writeAddrType();
        writeAddrLen();
        writeMac();
        writeUnused();
        writeProtocol();
    }

    private void writePackType() {
        CommonMethods.writeShort(this.m_data, 0, (short) 0);
    }

    private void writeAddrType() {
        CommonMethods.writeShort(this.m_data, 2, (short) 1);
    }

    private void writeAddrLen() {
        CommonMethods.writeShort(this.m_data, 4, (short) 6);
    }

    private void writeMac() {
        CommonMethods.writeShort(this.m_data, 6, (short) -21846);
        CommonMethods.writeShort(this.m_data, 8, (short) -21846);
        CommonMethods.writeShort(this.m_data, 10, (short) -21846);
    }

    private void writeUnused() {
        CommonMethods.writeShort(this.m_data, 12, (short) 0);
    }

    private void writeProtocol() {
        CommonMethods.writeShort(this.m_data, 14, IPHeader.IP);
    }
}
