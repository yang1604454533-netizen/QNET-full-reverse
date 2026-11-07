package com.tencent.qnet.tcpip;

import android.support.v4.view.ViewCompat;
import com.mysql.jdbc.StatementImpl;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes.dex */
public class CommonMethods {
    public static int hton(int i) {
        return ((i << 24) & ViewCompat.MEASURED_STATE_MASK) | ((i >> 24) & 255) | ((i >> 8) & 65280) | ((i << 8) & 16711680);
    }

    public static short htons(short s) {
        int i = s & 65535;
        return (short) ((i >> 8) | (i << 8));
    }

    public static int ntoh(int i) {
        return ((i << 24) & ViewCompat.MEASURED_STATE_MASK) | ((i >> 24) & 255) | ((i >> 8) & 65280) | ((i << 8) & 16711680);
    }

    public static short ntohs(short s) {
        int i = s & 65535;
        return (short) ((i >> 8) | (i << 8));
    }

    public static InetAddress ipIntToInet4Address(int i) {
        byte[] bArr = new byte[4];
        writeInt(bArr, 0, i);
        try {
            return Inet4Address.getByAddress(bArr);
        } catch (UnknownHostException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String ipIntToString(int i) {
        return String.format("%s.%s.%s.%s", Integer.valueOf((i >> 24) & 255), Integer.valueOf((i >> 16) & 255), Integer.valueOf((i >> 8) & 255), Integer.valueOf(i & 255));
    }

    public static String ipBytesToString(byte[] bArr) {
        return String.format("%s.%s.%s.%s", Integer.valueOf(bArr[0] & StatementImpl.USES_VARIABLES_UNKNOWN), Integer.valueOf(bArr[1] & StatementImpl.USES_VARIABLES_UNKNOWN), Integer.valueOf(bArr[2] & StatementImpl.USES_VARIABLES_UNKNOWN), Integer.valueOf(bArr[3] & StatementImpl.USES_VARIABLES_UNKNOWN));
    }

    public static int ipBytesToint(byte[] bArr) {
        return ((bArr[0] & StatementImpl.USES_VARIABLES_UNKNOWN) << 24) + ((bArr[1] & StatementImpl.USES_VARIABLES_UNKNOWN) << 16) + ((bArr[2] & StatementImpl.USES_VARIABLES_UNKNOWN) << 8) + (bArr[3] & StatementImpl.USES_VARIABLES_UNKNOWN);
    }

    public static int ipStringToInt(String str) {
        String[] strArrSplit = str.split("\\.");
        return Integer.parseInt(strArrSplit[3]) | (Integer.parseInt(strArrSplit[0]) << 24) | (Integer.parseInt(strArrSplit[1]) << 16) | (Integer.parseInt(strArrSplit[2]) << 8);
    }

    public static int readInt(byte[] bArr, int i) {
        return (bArr[i + 3] & StatementImpl.USES_VARIABLES_UNKNOWN) | ((bArr[i] & StatementImpl.USES_VARIABLES_UNKNOWN) << 24) | ((bArr[i + 1] & StatementImpl.USES_VARIABLES_UNKNOWN) << 16) | ((bArr[i + 2] & StatementImpl.USES_VARIABLES_UNKNOWN) << 8);
    }

    public static short readShort(byte[] bArr, int i) {
        return (short) ((bArr[i + 1] & StatementImpl.USES_VARIABLES_UNKNOWN) | ((bArr[i] & StatementImpl.USES_VARIABLES_UNKNOWN) << 8));
    }

    public static void writeInt(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    public static void writeShort(byte[] bArr, int i, short s) {
        bArr[i] = (byte) (s >> 8);
        bArr[i + 1] = (byte) s;
    }

    public static short checksum(long j, byte[] bArr, int i, int i2) {
        long j2 = getsum(bArr, i, i2);
        while (true) {
            long j3 = j + j2;
            j2 = j3 >> 16;
            if (j2 <= 0) {
                return (short) (~j3);
            }
            j = j3 & 65535;
        }
    }

    public static long getsum(byte[] bArr, int i, int i2) {
        long j = 0;
        while (i2 > 1) {
            j += (long) (readShort(bArr, i) & 65535);
            i += 2;
            i2 -= 2;
        }
        return i2 > 0 ? j + ((long) ((bArr[i] & StatementImpl.USES_VARIABLES_UNKNOWN) << 8)) : j;
    }

    public static boolean ComputeIPChecksum(IPHeader iPHeader) {
        short crc = iPHeader.getCrc();
        iPHeader.setCrc((short) 0);
        short sChecksum = checksum(0L, iPHeader.m_Data, iPHeader.m_Offset, iPHeader.getHeaderLength());
        iPHeader.setCrc(sChecksum);
        return crc == sChecksum;
    }

    public static boolean ComputeTCPChecksum(IPHeader iPHeader, TCPHeader tCPHeader) {
        ComputeIPChecksum(iPHeader);
        int totalLength = iPHeader.getTotalLength() - iPHeader.getHeaderLength();
        if (totalLength < 0) {
            return false;
        }
        long protocol = getsum(iPHeader.m_Data, iPHeader.m_Offset + 12, 8) + ((long) (iPHeader.getProtocol() & StatementImpl.USES_VARIABLES_UNKNOWN)) + ((long) totalLength);
        short crc = tCPHeader.getCrc();
        tCPHeader.setCrc((short) 0);
        short sChecksum = checksum(protocol, tCPHeader.m_Data, tCPHeader.m_Offset, totalLength);
        tCPHeader.setCrc(sChecksum);
        return crc == sChecksum;
    }

    public static boolean ComputeUDPChecksum(IPHeader iPHeader, UDPHeader uDPHeader) {
        ComputeIPChecksum(iPHeader);
        int totalLength = iPHeader.getTotalLength() - iPHeader.getHeaderLength();
        if (totalLength < 0) {
            return false;
        }
        long protocol = getsum(iPHeader.m_Data, iPHeader.m_Offset + 12, 8) + ((long) (iPHeader.getProtocol() & StatementImpl.USES_VARIABLES_UNKNOWN)) + ((long) totalLength);
        short crc = uDPHeader.getCrc();
        uDPHeader.setCrc((short) 0);
        short sChecksum = checksum(protocol, uDPHeader.m_Data, uDPHeader.m_Offset, totalLength);
        uDPHeader.setCrc(sChecksum);
        return crc == sChecksum;
    }

    public static boolean ComputeICMPChecksum(IPHeader iPHeader, ICMPHeader iCMPHeader) {
        ComputeIPChecksum(iPHeader);
        int totalLength = iPHeader.getTotalLength() - iPHeader.getHeaderLength();
        if (totalLength < 0) {
            return false;
        }
        short crc = iCMPHeader.getCrc();
        iCMPHeader.setCrc((short) 0);
        short sChecksum = checksum(0L, iCMPHeader.m_data, iCMPHeader.m_offset, totalLength);
        iCMPHeader.setCrc(sChecksum);
        return crc == sChecksum;
    }
}
