package com.tencent.qnet.core;

import com.mysql.jdbc.StatementImpl;
import com.tencent.connect.common.Constants;
import com.tencent.qnet.tcpip.CommonMethods;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class HttpHostHeaderParser {
    public static String parseHost(byte[] bArr, int i, int i2) {
        try {
            switch (bArr[i]) {
                case 22:
                    return getSNI(bArr, i, i2);
                case 67:
                case 68:
                case 71:
                case 72:
                case 79:
                case 80:
                case 84:
                    return getHttpHost(bArr, i, i2);
                default:
                    return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            LocalVpnService.Instance.writeLog("Error: parseHost:%s", e);
            return null;
        }
    }

    static String getHttpHost(byte[] bArr, int i, int i2) {
        String[] strArrSplit = new String(bArr, i, i2).split("\\r\\n");
        String str = strArrSplit[0];
        if (!str.startsWith(Constants.HTTP_GET) && !str.startsWith(Constants.HTTP_POST) && !str.startsWith("HEAD") && !str.startsWith("OPTIONS")) {
            return null;
        }
        for (int i3 = 1; i3 < strArrSplit.length; i3++) {
            String[] strArrSplit2 = strArrSplit[i3].split(":");
            if (strArrSplit2.length == 2) {
                String strTrim = strArrSplit2[0].toLowerCase(Locale.ENGLISH).trim();
                String strTrim2 = strArrSplit2[1].trim();
                if ("host".equals(strTrim)) {
                    return strTrim2;
                }
            }
        }
        return null;
    }

    static String getSNI(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = i + i2;
        if (i2 <= 43 || bArr[i] != 22) {
            System.err.println("Bad TLS Client Hello packet.");
            return null;
        }
        int i8 = i + 43;
        int i9 = i8 + 1;
        if (i9 > i7 || (i4 = (i3 = i9 + (bArr[i8] & 255)) + 2) > i7 || (i6 = (i5 = i4 + (CommonMethods.readShort(bArr, i3) & 65535)) + 1) > i7) {
            return null;
        }
        int i10 = i6 + (bArr[i5] & 255);
        if (i10 == i7) {
            System.err.println("TLS Client Hello packet doesn't contains SNI info.(offset == limit)");
            return null;
        }
        int i11 = i10 + 2;
        if (i11 > i7) {
            return null;
        }
        if ((CommonMethods.readShort(bArr, i10) & 65535) + i11 > i7) {
            System.err.println("TLS Client Hello packet is incomplete.");
            return null;
        }
        while (i11 + 4 <= i7) {
            int i12 = i11 + 1;
            int i13 = bArr[i11] & StatementImpl.USES_VARIABLES_UNKNOWN;
            int i14 = i12 + 1;
            int i15 = bArr[i12] & StatementImpl.USES_VARIABLES_UNKNOWN;
            int i16 = CommonMethods.readShort(bArr, i14) & 65535;
            int i17 = i14 + 2;
            if (i13 == 0 && i15 == 0 && i16 > 5) {
                int i18 = i17 + 5;
                int i19 = i16 - 5;
                if (i18 + i19 > i7) {
                    return null;
                }
                return new String(bArr, i18, i19);
            }
            i11 = i17 + i16;
        }
        System.err.println("TLS Client Hello packet doesn't contains Host field info.");
        return null;
    }
}
