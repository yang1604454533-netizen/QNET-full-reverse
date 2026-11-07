package muhua.new5;

import com.mysql.jdbc.MysqlErrorNumbers;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.tls.CipherSuite;

/* JADX INFO: renamed from: muhua.new5.⁣⁤⁠⁠⁠⁠, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public class C0029 {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f14short = {3312, 3318, 3314};

    /* JADX INFO: renamed from: ⁤⁠⁠, reason: not valid java name and contains not printable characters */
    public static int f15 = 26;

    /* JADX INFO: renamed from: ⁠⁠⁤⁠⁣, reason: not valid java name and contains not printable characters */
    public static String m373(short[] sArr, int i, int i2, int i3) {
        String str = "ۧۥۡ";
        short s = 0;
        int i4 = 0;
        char[] cArr = null;
        int i5 = 0;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1747804) {
                case 97:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۤۨۧ";
                        continue;
                    }
                    break;
                case 98:
                    str = "ۥ۠ۧ";
                    continue;
                case 229:
                    i5 = 0 - ((0 - i4) - 1);
                    if (C0032.m436() <= 0) {
                        str = "ۥۡۨ";
                    } else {
                        str = "ۡۡۤ";
                        continue;
                    }
                    break;
                case 440:
                    s = sArr[0 - ((0 - i) - i4)];
                    str = "ۦۢ۟";
                    continue;
                case MysqlErrorNumbers.ER_FOREIGN_DATA_STRING_INVALID_CANT_CREATE /* 1432 */:
                    str = "ۣ۠۠";
                    i4 = i5;
                    continue;
                case 4446:
                    break;
                case 4543:
                case 7450:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۥۧۥ";
                    } else {
                        continue;
                    }
                    break;
                case 4752:
                    str = "ۧۥۡ";
                    continue;
                case 5599:
                    if (i4 < i2) {
                        str = "۠۠ۤ";
                    }
                    break;
                case 5872:
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                        str = "ۣۢۡ";
                        i4 = 0;
                    } else {
                        str = "ۥۧۥ";
                        i4 = 0;
                        continue;
                    }
                    break;
                case 6425:
                    return new String(cArr);
                case 27391:
                    cArr[i4] = (char) (((s ^ (-1)) & i3) | ((i3 ^ (-1)) & s));
                    str = "۠ۧ۠";
                    continue;
                case 28319:
                    cArr = new char[i2];
                    if (C0026.m329() > 0) {
                        str = "ۣ۠ۡ";
                    } else {
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            str = C0025.m186() >= 0 ? "ۡ۟۟" : "ۢ۟ۢ";
        }
    }

    /* JADX INFO: renamed from: ⁠⁠⁤⁠⁤, reason: not valid java name and contains not printable characters */
    public static int m374() {
        String str = "ۢۨۧ";
        int iIntValue = 0;
        int iIntValue2 = 0;
        short[] sArrM379 = null;
        Object[] objArr = null;
        int iM479 = 0;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1751715) {
                case 2053:
                    str = C0026.m329() > 0 ? "ۢۨۧ" : "۟ۨ۠";
                    break;
                case 2498:
                    objArr = new Object[2];
                    str = "۠ۤۥ";
                    break;
                case 4380:
                    objArr[1] = new Integer(9122659);
                    if (C0025.m186() < 0) {
                        str = "۠ۤۨ";
                    }
                    break;
                case 4546:
                    objArr[0] = new Integer(310812);
                    if (C0025.m186() < 0) {
                        str = "۠ۧۦ";
                    } else {
                        C0033.m706();
                        str = "۠ۨۡ";
                    }
                    break;
                case 4551:
                    sArrM379 = m379();
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۦۢۥ";
                    } else {
                        C0025.m186();
                    }
                    break;
                case 5125:
                    return ((-1753394) & iM479) | ((iM479 ^ (-1)) & 1753393);
                case 5533:
                    iIntValue = ((Integer) objArr[1]).intValue();
                    str = "ۦۡۥ";
                    break;
                case 31498:
                    iIntValue2 = ((Integer) objArr[0]).intValue();
                    str = "ۡۥۢ";
                    break;
                case 31529:
                    iM479 = C0032.m479(C0032.m513(sArrM379, 0, ((iIntValue ^ (-1)) & 9122656) | ((-9122657) & iIntValue), ((iIntValue2 ^ (-1)) & 308234) | ((-308235) & iIntValue2)));
                    str = "ۡ۠ۥ";
                    break;
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁠⁠⁣⁤, reason: not valid java name and contains not printable characters */
    public static int m375(Object obj) {
        return C0025.m216(obj);
    }

    /* JADX INFO: renamed from: ⁣⁠⁠⁣⁤, reason: not valid java name and contains not printable characters */
    public static Class<?> m376(String str) throws ClassNotFoundException {
        return C0024.m62(str);
    }

    /* JADX INFO: renamed from: ⁣⁠⁠⁣⁤, reason: not valid java name and contains not printable characters */
    public static String m377(short[] sArr, int i, int i2, int i3) {
        String str = "ۦۤۤ";
        short s = 0;
        int i4 = 0;
        char[] cArr = null;
        int i5 = 0;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1753450) {
                case CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA /* 140 */:
                    cArr = new char[i2];
                    str = "ۥۧ";
                    continue;
                case MysqlErrorNumbers.ER_WARN_TOO_MANY_RECORDS /* 1262 */:
                    i5 = 1 - (0 - i4);
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                        str = "ۨۢۨ";
                    } else {
                        str = "۟ۤ۟";
                        continue;
                    }
                    break;
                case 2060:
                case 31490:
                    if (C0026.m329() <= 0) {
                        str = "ۧۥۢ";
                    } else {
                        str = "۟ۨۡ";
                        continue;
                    }
                    break;
                case 2119:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        str = "ۧۥۡ";
                    } else {
                        str = "ۦۤۤ";
                        continue;
                    }
                    break;
                case 26325:
                    break;
                case 26352:
                    if (C0033.m706() <= 0) {
                        str = "ۧۧۥ";
                        i4 = i5;
                    } else {
                        str = "ۡۦ۠";
                        i4 = i5;
                        continue;
                    }
                    break;
                case 26994:
                    if (i4 < i2) {
                        str = C0024.m165xf0c433e8() <= 0 ? "۟ۥ۟" : "ۢ۟ۦ";
                    }
                    break;
                case 27382:
                    str = "۟ۨۡ";
                    i4 = 0;
                    continue;
                case 28171:
                    cArr[i4] = (char) (((s ^ (-1)) & i3) | ((i3 ^ (-1)) & s));
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                        str = "ۢۢ۟";
                    } else {
                        str = "ۣۧ۠";
                        continue;
                    }
                    break;
                case 28209:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۨۤۢ";
                        continue;
                    }
                    break;
                case 28401:
                    return new String(cArr);
                case 29475:
                    s = sArr[i4 - (0 - i)];
                    if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۡۦۦ";
                        continue;
                    }
                    break;
                case 1711560:
                    str = "۠ۦۢ";
                    continue;
                default:
                    continue;
            }
            if (C0025.m186() >= 0) {
                C0025.m186();
            } else {
                str = "ۡۨۢ";
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:166:0x02a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x029d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:205:0x02cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:0x02c7 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0042. Please report as an issue. */
    /* JADX INFO: renamed from: ⁣⁠⁠⁤⁣⁣, reason: not valid java name and contains not printable characters */
    public static String m378(String str) {
        String strM634 = null;
        String strM635 = null;
        String str2 = null;
        String str3 = null;
        int i = 0;
        String strM224 = null;
        StringBuffer stringBufferM577 = null;
        String strM225 = null;
        int iM447 = 0;
        int iM448 = 0;
        int i2 = 0;
        byte b = 0;
        char cM133 = 0;
        int iM84 = 0;
        String str4 = "ۣۨۥ";
        int i3 = 0;
        String str5 = null;
        int i4 = 0;
        String str6 = null;
        int i5 = 0;
        ByteArrayOutputStream byteArrayOutputStream = null;
        int i6 = 0;
        byte[] bArrM214 = null;
        int length = 0;
        int iM85 = 0;
        while (true) {
            switch (C0033.m669((Object) str4) ^ 1752614) {
                case 47:
                case 4537:
                    if (C0033.m706() > 0) {
                        str4 = "۠ۢ۟";
                    }
                    break;
                case MysqlErrorNumbers.ER_TOO_MANY_KEY_PARTS /* 1070 */:
                case 31713:
                    if (C0032.m436() > 0) {
                        str4 = "ۦۤۢ";
                    }
                    break;
                case MysqlErrorNumbers.ER_CHECK_NO_SUCH_TABLE /* 1177 */:
                    break;
                case MysqlErrorNumbers.ER_CANT_UPDATE_WITH_READLOCK /* 1223 */:
                    int iM675 = (int) (C0033.m675() * ((double) 10));
                    strM225 = C0025.m224(C0033.m677(stringBufferM577, (iM675 & (i5 ^ (-1))) | ((iM675 ^ (-1)) & i5)));
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        str4 = "ۦۣ۟";
                    }
                    break;
                case 1986:
                    i4 = 0;
                    str4 = "ۦۦۤ";
                    str3 = strM635;
                    break;
                case 2052:
                    if (C0033.m706() <= 0) {
                        iM84 = i3;
                    } else {
                        str4 = "ۦۤۢ";
                        iM84 = i3;
                    }
                    break;
                case 2093:
                    if (C0033.m706() <= 0) {
                        i6 = i;
                    } else {
                        str4 = "۠ۢ۟";
                        i6 = i;
                    }
                    break;
                case 2244:
                    str4 = "۟ۥۦ";
                    i6 = i2;
                    break;
                case 3143:
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                    } else {
                        str4 = "ۧۥۥ";
                    }
                    break;
                case 3431:
                    if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                        i5 = i4;
                    } else {
                        str4 = "۟۠ۧ";
                        i5 = i4;
                    }
                    break;
                case 3448:
                    iM447 = C0032.m447(str5, C0024.m133(str, i6)) << 4;
                    iM448 = C0032.m447(str5, C0024.m133(str, 1 - (0 - i6)));
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                        str4 = "ۣ۟۠";
                    } else {
                        str4 = "ۦۦۢ";
                    }
                    break;
                case 3451:
                    str4 = C0026.m329() <= 0 ? "ۨۡۧ" : "ۦۣۢ";
                    break;
                case 4271:
                    strM635 = C0033.m634();
                    str4 = "ۤ۠۠";
                    str2 = strM634;
                    break;
                case 4291:
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                    } else {
                        str4 = "ۣۨۥ";
                    }
                    break;
                case 5312:
                    length = bArrM214.length;
                    str4 = "ۡۥ";
                    break;
                case 5435:
                    if (i6 >= C0024.m84(str)) {
                        bArrM214 = C0025.m214(byteArrayOutputStream);
                        str4 = "۠۠ۦ";
                    } else {
                        str4 = C0033.m706() <= 0 ? "ۡۧۨ" : "ۢۨۤ";
                    }
                    break;
                case 6400:
                    if (i5 >= 15) {
                        byteArrayOutputStream = new ByteArrayOutputStream(C0024.m84(str) / 2);
                        str4 = C0032.m436() <= 0 ? "ۥ۠۠" : "ۣۣ۟";
                    } else {
                        str4 = "ۣۧۤ";
                    }
                    break;
                case 6470:
                case 30477:
                    if (C0026.m329() > 0) {
                        str4 = "۟۠ۧ";
                    }
                    break;
                case 6489:
                    i = 0;
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        str4 = "ۣ۟ۧ";
                    }
                    break;
                case 6522:
                    bArrM214[-1] = (byte) (((b ^ (-1)) & cM133) | ((cM133 ^ (-1)) & b));
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                        str4 = "ۣۡ";
                    } else {
                        str4 = "ۣ۟ۤ";
                    }
                    break;
                case 6533:
                case 1729233:
                    str4 = C0025.m186() >= 0 ? "۟ۦۧ" : "۟ۦۣ";
                    break;
                case 6566:
                    if (C0026.m329() > 0) {
                        str4 = "ۨ۟";
                    }
                    break;
                case 6587:
                    str4 = "ۣ۟ۢ";
                    break;
                case 6630:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                        str4 = "ۢۤۡ";
                    } else {
                        str4 = "ۥۣۧ";
                    }
                    break;
                case 6650:
                    if (length <= 0) {
                        str4 = "ۣ۠۟";
                    } else if (C0026.m329() <= 0) {
                    }
                    break;
                case 30572:
                    i3 = 0;
                    strM634 = C0033.m634();
                    if (C0026.m329() > 0) {
                        str4 = "ۡ۟ۧ";
                    }
                    break;
                case 30722:
                    break;
                case 31529:
                    str4 = "ۣۧۤ";
                    break;
                case 31534:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                        str6 = strM225;
                        str5 = strM224;
                    } else {
                        str4 = "۟ۤۢ";
                        str6 = strM225;
                        str5 = strM224;
                    }
                    break;
                case 31628:
                    if (C0033.m706() <= 0) {
                    }
                    break;
                case 31662:
                    strM224 = C0025.m224(C0033.m577(C0033.m577(new StringBuffer(), str5), C0025.m305(i5)));
                    stringBufferM577 = C0033.m577(new StringBuffer(), str6);
                    if (C0033.m706() > 0) {
                        str4 = "ۤۨۥ";
                    }
                    break;
                case 31746:
                    if (C0032.m436() <= 0) {
                        str6 = str3;
                        str5 = str2;
                    } else {
                        str4 = "ۢۧۦ";
                        str6 = str3;
                        str5 = str2;
                    }
                    break;
                case 31748:
                    C0033.m683(byteArrayOutputStream, (iM447 ^ iM448) | (iM447 & iM448));
                    i2 = (i6 - 8) + 2 + 8;
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        str4 = "ۣۦۥ";
                    }
                    break;
                case 31801:
                    iM84 = 0 - ((0 - C0024.m84(C0033.m634())) - 1);
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                    } else {
                        str4 = "ۢ۠۟";
                    }
                    break;
                case 32620:
                    i5 = (i5 - 9) + 1 + 9;
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        str4 = "ۧ۟۠";
                    }
                    break;
                case 32706:
                    str4 = iM84 >= bArrM214.length ? "ۤۧۢ" : "ۦۦ۟";
                    break;
                case 32739:
                    b = bArrM214[-1];
                    cM133 = C0024.m133(str6, (-1) % iM85);
                    str4 = "۟ۢ۟";
                    break;
                case 1729026:
                    iM85 = C0024.m84(str6);
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        str4 = "۟ۦۣ";
                    }
                    break;
                default:
                    break;
            }
            return new String(bArrM214);
        }
    }

    /* JADX INFO: renamed from: 狗侮辱垃圾这词呢, reason: contains not printable characters */
    public static short[] m379() {
        String str = "ۧۡۥ";
        short[] sArr = null;
        short[] sArr2 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1750664) {
                case 104:
                    if (C0025.m186() >= 0) {
                        str = "ۦ۠";
                        sArr = sArr2;
                    } else {
                        str = "ۦ۟۟";
                        sArr = sArr2;
                        continue;
                    }
                    break;
                case 2231:
                case 3145:
                    if (C0032.m436() <= 0) {
                        str = "۠ۡۦ";
                    } else {
                        str = "ۦ۟۟";
                        continue;
                    }
                    break;
                case 4375:
                    str = "ۧۡۥ";
                    continue;
                case 6176:
                    break;
                case 7639:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۤۧۤ";
                    } else {
                        continue;
                    }
                    break;
                case 29635:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۨۦۡ";
                    }
                    break;
                case 29878:
                    str = "ۦۡۧ";
                    continue;
                case 30468:
                    str = "ۣ۠ۤ";
                    sArr = null;
                    continue;
                case 30670:
                    return sArr;
                case 32555:
                    sArr2 = f14short;
                    if (C0032.m436() > 0) {
                        str = "ۣۦۣ";
                    } else {
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            str = "ۦۧ۟";
        }
    }
}
