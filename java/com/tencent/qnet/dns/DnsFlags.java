package com.tencent.qnet.dns;

/* JADX INFO: loaded from: classes.dex */
public class DnsFlags {
    public boolean AA;
    public int OpCode;
    public boolean QR;
    public boolean RA;
    public boolean RD;
    public int Rcode;
    public boolean TC;
    public int Zero;

    public static DnsFlags Parse(short s) {
        int i = s & 65535;
        DnsFlags dnsFlags = new DnsFlags();
        dnsFlags.QR = ((i >> 7) & 1) == 1;
        dnsFlags.OpCode = (i >> 3) & 15;
        dnsFlags.AA = ((i >> 2) & 1) == 1;
        dnsFlags.TC = ((i >> 1) & 1) == 1;
        dnsFlags.RD = (i & 1) == 1;
        dnsFlags.RA = (i >> 15) == 1;
        dnsFlags.Zero = (i >> 12) & 7;
        dnsFlags.Rcode = (i >> 8) & 15;
        return dnsFlags;
    }

    public short ToShort() {
        int i = ((this.QR ? 1 : 0) << 7) | 0 | ((this.OpCode & 15) << 3) | ((this.AA ? 1 : 0) << 2) | ((this.TC ? 1 : 0) << 1) | (this.RD ? 1 : 0);
        return (short) ((i == true ? 1 : 0) | ((this.RA ? 1 : 0) << 15) | ((this.Zero & 7) << 12) | ((this.Rcode & 15) << 8));
    }
}
