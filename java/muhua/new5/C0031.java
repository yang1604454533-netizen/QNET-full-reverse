package muhua.new5;

import android.app.Activity;
import android.app.Application;
import android.app.Instrumentation;
import android.content.Context;
import android.os.Bundle;
import com.mysql.jdbc.MysqlErrorNumbers;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Field;
import java.util.Iterator;
import javax.crypto.Cipher;
import org.bouncycastle.crypto.tls.CipherSuite;

/* JADX INFO: renamed from: muhua.new5.⁣⁤⁣⁣⁣⁣, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public class C0031 {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f18short = {187, 133, 129};

    /* JADX INFO: renamed from: ⁣⁣⁣⁣⁣⁤, reason: not valid java name and contains not printable characters */
    public static int f19 = 22;

    /* JADX INFO: renamed from: ۢ۫ۚۜ, reason: not valid java name and contains not printable characters */
    public static short[] m397() {
        String str = "ۥۡۦ";
        short[] sArr = null;
        short[] sArr2 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1747936) {
                case MysqlErrorNumbers.ER_BAD_FT_COLUMN /* 1283 */:
                    break;
                case 3262:
                    return sArr;
                case 4488:
                    if (C0032.m436() <= 0) {
                        sArr = sArr2;
                    } else {
                        str = "۟ۢۡ";
                        sArr = sArr2;
                        continue;
                    }
                    break;
                case 5635:
                    if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                        str = "ۤۤۥ";
                    } else {
                        str = "ۢۧۢ";
                        continue;
                    }
                    break;
                case 5674:
                    if (C0032.m436() >= 0) {
                        str = "ۦۥۣ";
                    }
                    break;
                case 6365:
                case 28096:
                    str = "۟ۢۡ";
                    continue;
                case 6537:
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                        sArr = null;
                    } else {
                        str = "ۥۢ۠";
                        sArr = null;
                        continue;
                    }
                    break;
                case 25388:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                        str = "ۣ۠۟";
                    } else {
                        str = "ۥۡۦ";
                        continue;
                    }
                    break;
                case 27108:
                    sArr2 = f18short;
                    if (C0033.m706() <= 0) {
                        str = "ۤۤۦ";
                    } else {
                        str = "ۤۤۨ";
                        continue;
                    }
                    break;
                case 27178:
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۢ۠ۧ";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            str = "ۦۣۧ";
        }
    }

    /* JADX INFO: renamed from: ⁠⁠⁠⁠⁣, reason: not valid java name and contains not printable characters */
    public static int m398() {
        int iM479 = 0;
        int i = 0;
        int iIntValue = 0;
        short[] sArrM397 = null;
        Object[] objArr = null;
        Object obj = "ۧۥۦ";
        while (true) {
            switch (C0033.m669(obj) ^ 1751616) {
                case 33:
                    objArr[0] = new Integer(2653819);
                    if (C0025.m186() < 0) {
                        obj = "۠۟";
                    } else {
                        C0033.m706();
                        obj = "۠ۨۧ";
                    }
                    break;
                case MysqlErrorNumbers.ER_CANT_DROP_FIELD_OR_KEY /* 1091 */:
                    objArr[1] = new Integer(4619701);
                    obj = "ۤۤۡ";
                    break;
                case 2085:
                    obj = "ۧۥۦ";
                    break;
                case 2213:
                    return (1746809 & iM479) | ((iM479 ^ (-1)) & (-1746810));
                case 2400:
                    iIntValue = ((Integer) objArr[1]).intValue();
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۨۧ";
                    } else {
                        C0032.m436();
                    }
                    break;
                case 32648:
                    objArr = new Object[2];
                    obj = "ۥۣۡ";
                    break;
                case 1728959:
                    sArrM397 = m397();
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۢۦۤ";
                    } else {
                        C0026.m329();
                    }
                    break;
                case 1730078:
                    iM479 = C0032.m479(C0033.m639(sArrM397, 0, ((i ^ (-1)) & 2653816) | ((-2653817) & i), ((iIntValue ^ (-1)) & 4619217) | ((-4619218) & iIntValue)));
                    obj = "ۢۤۧ";
                    break;
                case 1730239:
                    int iIntValue2 = ((Integer) objArr[0]).intValue();
                    if (C0024.m165xf0c433e8() > 0) {
                        i = iIntValue2;
                        obj = "ۣۡ";
                    } else {
                        C0026.m329();
                        i = iIntValue2;
                        obj = "ۥۣۡ";
                    }
                    break;
            }
        }
    }

    /* JADX INFO: renamed from: ⁠⁠⁠⁠⁤, reason: not valid java name and contains not printable characters */
    public static StringBuffer m399(Object obj, int i) {
        String str = "ۥۥۧ";
        StringBuffer stringBuffer = null;
        StringBuffer stringBufferM637 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1748832) {
                case MysqlErrorNumbers.ER_TOO_LONG_IDENT /* 1059 */:
                    break;
                case MysqlErrorNumbers.ER_NEW_ABORTING_CONNECTION /* 1184 */:
                case 5480:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۥ۟۠";
                        continue;
                    }
                    break;
                case 1917:
                    str = "ۥ۟۠";
                    stringBuffer = stringBufferM637;
                    continue;
                case 4391:
                    if (C0033.m609() < 0) {
                        str = C0025.m186() >= 0 ? "ۥ۟ۨ" : "ۨ۟۠";
                    }
                    break;
                case 4838:
                    return stringBuffer;
                case 5481:
                    str = "ۥۥۧ";
                    continue;
                case 6557:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                        stringBuffer = null;
                    } else {
                        str = "ۣۧۨ";
                        stringBuffer = null;
                        continue;
                    }
                    break;
                case 7233:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۣۧۡ";
                    } else {
                        continue;
                    }
                    break;
                case 26537:
                    stringBufferM637 = C0033.m637((StringBuffer) obj, i);
                    str = "۟ۨۦ";
                    continue;
                case 27372:
                    str = "۠ۧۧ";
                    continue;
                default:
                    continue;
            }
            if (C0033.m706() > 0) {
                str = "ۢۦۥ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁠⁠⁠⁤, reason: not valid java name and contains not printable characters */
    public static Class m400(Object obj) {
        String str = "ۢۧ۠";
        Class cls = null;
        Class clsM62 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1748612) {
                case MysqlErrorNumbers.ER_INSIDE_TRANSACTION_PREVENTS_SWITCH_SQL_LOG_BIN /* 1694 */:
                    break;
                case 2553:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                        str = "۟۟ۦ";
                    } else {
                        str = "ۢۢ۟";
                        continue;
                    }
                    break;
                case 4132:
                case 5960:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                        str = "ۧۥۥ";
                    } else {
                        str = "۟ۨ";
                        continue;
                    }
                    break;
                case 7170:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۢۧ۠";
                        continue;
                    }
                    break;
                case 7195:
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                        str = "۟۟ۧ";
                        cls = null;
                    } else {
                        str = "ۨۦۧ";
                        cls = null;
                        continue;
                    }
                    break;
                case 7557:
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                        cls = clsM62;
                    } else {
                        str = "۟ۨ";
                        cls = clsM62;
                        continue;
                    }
                    break;
                case 7615:
                    if (C0025.m226() <= 0) {
                        break;
                    } else if (C0033.m706() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۦۦۧ";
                    }
                    break;
                case 26413:
                    str = "ۤ۟ۧ";
                    continue;
                case 27811:
                    clsM62 = C0024.m62((String) obj);
                    str = "ۢۥۤ";
                    continue;
                case 1733997:
                    return cls;
                default:
                    continue;
            }
            if (C0033.m706() <= 0) {
                C0026.m329();
            } else {
                str = "ۣ۟ۡ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁠⁠⁣⁠⁠⁠, reason: not valid java name and contains not printable characters */
    public static byte[] m401(Object obj) {
        Object obj2 = "ۣۧ۟";
        byte[] bArr = null;
        byte[] bArrM267 = null;
        while (true) {
            switch (C0033.m669(obj2) ^ 1753700) {
                case 771:
                    bArrM267 = C0025.m267((ByteArrayOutputStream) obj);
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        obj2 = "ۤۡ۟";
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_SQL_SLAVE_SKIP_COUNTER_NOT_SETTABLE_IN_GTID_MODE /* 1858 */:
                    return bArr;
                case 1925:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj2 = "ۢ۟ۧ";
                    } else {
                        continue;
                    }
                    break;
                case 2023:
                    if (C0025.m226() <= 0) {
                        break;
                    } else if (C0033.m706() <= 0) {
                        C0033.m706();
                    } else {
                        obj2 = "ۦ۠ۡ";
                    }
                    break;
                case 26105:
                    break;
                case 28718:
                    if (C0032.m436() <= 0) {
                        bArr = null;
                    } else {
                        obj2 = "ۤۦ۠";
                        bArr = null;
                        continue;
                    }
                    break;
                case 30822:
                    obj2 = "ۧ۠۟";
                    bArr = bArrM267;
                    continue;
                case 30970:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj2 = "ۥۥ";
                    } else {
                        continue;
                    }
                    break;
                case 31650:
                    obj2 = "ۣۧ۟";
                    continue;
                case 31656:
                case 1711812:
                    obj2 = "ۧ۠۟";
                    continue;
                default:
                    continue;
            }
            obj2 = "ۧۦ۠";
        }
    }

    /* JADX INFO: renamed from: ⁠⁠⁣⁠⁣⁣, reason: not valid java name and contains not printable characters */
    public static Field m402(Object obj, Object obj2) {
        String str = "ۧۥۣ";
        Field field = null;
        Field fieldM449 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1746935) {
                case 2282:
                    return field;
                case 2289:
                    if (C0032.m436() > 0) {
                        str = "ۧۥۣ";
                    } else {
                        continue;
                    }
                    break;
                case 2385:
                    if (C0026.m329() <= 0) {
                        C0026.m329();
                        str = "ۣ۟ۨ";
                    } else {
                        str = "ۢۥ۟";
                        continue;
                    }
                    break;
                case 4403:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                        field = null;
                    } else {
                        str = "ۡ۠ۥ";
                        field = null;
                        continue;
                    }
                    break;
                case 5387:
                case 28337:
                    str = "ۡۤ۠";
                    continue;
                case 7540:
                    break;
                case 25138:
                    if (C0025.m226() >= 0) {
                        str = "ۨ۟۠";
                    }
                    break;
                case 25245:
                    str = "ۡۤ۠";
                    field = fieldM449;
                    continue;
                case 26064:
                    str = "ۣۥۦ";
                    continue;
                case 28478:
                    fieldM449 = C0032.m449((Class) obj, (String) obj2);
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                        str = "ۧ۠ۧ";
                    } else {
                        str = "ۧۢۥ";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0024.m165xf0c433e8() <= 0) {
                C0032.m436();
                str = "ۦۢۡ";
            } else {
                str = "ۦۦۧ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁠⁠⁣⁤⁣⁤, reason: not valid java name and contains not printable characters */
    public static String m403() {
        String str = "ۥۡ";
        String str2 = null;
        String strM518 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1746819) {
                case CipherSuite.TLS_DH_anon_WITH_AES_256_GCM_SHA384 /* 167 */:
                case 2079:
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                        str = "ۡۦۤ";
                    } else {
                        str = "ۥ۠ۤ";
                        continue;
                    }
                    break;
                case 192:
                    strM518 = C0032.m518();
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۤۦۥ";
                        continue;
                    }
                    break;
                case 253:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۨۧۡ";
                    } else {
                        continue;
                    }
                    break;
                case 4363:
                    break;
                case 4521:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۥۡ";
                    } else {
                        continue;
                    }
                    break;
                case 6698:
                    return str2;
                case 7456:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                        str2 = strM518;
                    } else {
                        str = "ۥ۠ۤ";
                        str2 = strM518;
                        continue;
                    }
                    break;
                case 26054:
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                        str = "۠ۢۦ";
                    } else {
                        str = "ۣۡۨ";
                        continue;
                    }
                    break;
                case 28225:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str2 = null;
                    } else {
                        str = "ۦۧۦ";
                        str2 = null;
                        continue;
                    }
                    break;
                case 1735455:
                    if (C0033.m609() >= 0) {
                        break;
                    } else if (C0033.m706() > 0) {
                        str = "۟ۡۥ";
                    }
                    break;
                default:
                    continue;
            }
            str = "ۣ۟ۢ";
        }
    }

    /* JADX INFO: renamed from: ⁠⁠⁤⁣⁤⁤, reason: not valid java name and contains not printable characters */
    public static byte[] m404(Object obj, Object obj2) {
        String str = "ۥۤۧ";
        byte[] bArr = null;
        byte[] bArrM253 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1755556) {
                case 35:
                case 3085:
                    if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "۟۟۟";
                        continue;
                    }
                    break;
                case 334:
                    if (C0026.m329() <= 0) {
                        str = "ۣۣ۟";
                    } else {
                        str = "ۥۤۧ";
                        continue;
                    }
                    break;
                case 2119:
                    bArrM253 = C0025.m253((application5) obj, (byte[]) obj2);
                    str = "ۣۥۧ";
                    continue;
                case 3171:
                    break;
                case 28324:
                    if (C0025.m186() >= 0) {
                        str = "ۦ۠ۧ";
                    } else {
                        str = "ۤ۟ۡ";
                        continue;
                    }
                    break;
                case 28507:
                    return bArr;
                case 28770:
                    if (C0033.m706() <= 0) {
                        bArr = null;
                    } else {
                        str = "ۥ۠ۢ";
                        bArr = null;
                        continue;
                    }
                    break;
                case 29699:
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        str = "ۧۤۦ";
                        continue;
                    }
                    break;
                case 30604:
                    if (C0025.m226() >= 0) {
                        str = "ۦۤۡ";
                    }
                    break;
                case 32609:
                    str = "۟۟۟";
                    bArr = bArrM253;
                    continue;
                default:
                    continue;
            }
            str = C0033.m706() <= 0 ? "ۥ۟۟" : "۟۟۠";
        }
    }

    /* JADX INFO: renamed from: ⁠⁣⁤⁣⁣⁤, reason: not valid java name and contains not printable characters */
    public static Cipher m405(Object obj) {
        Object obj2 = "۠ۢ";
        Cipher cipher = null;
        Cipher cipherM506 = null;
        while (true) {
            switch (C0033.m669(obj2) ^ 1747903) {
                case 97:
                    cipherM506 = C0032.m506((String) obj);
                    if (C0025.m186() < 0) {
                        obj2 = "ۨۥ";
                    } else {
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_NET_PACKETS_OUT_OF_ORDER /* 1156 */:
                    return cipher;
                case 3227:
                    break;
                case 5756:
                case 27190:
                    obj2 = "ۡۥ۟";
                    continue;
                case 6651:
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                        obj2 = "ۤۥ۠";
                    } else {
                        obj2 = "ۣۧ۠";
                        continue;
                    }
                    break;
                case 7491:
                    obj2 = "ۦۣ";
                    cipher = null;
                    continue;
                case 27191:
                    if (C0026.m329() > 0) {
                        obj2 = "۠ۢ";
                    } else {
                        continue;
                    }
                    break;
                case 1734402:
                    if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj2 = "ۦۡۤ";
                        continue;
                    }
                    break;
                case 1734466:
                    if (C0032.m436() <= 0) {
                        cipher = cipherM506;
                    } else {
                        obj2 = "ۡۥ۟";
                        cipher = cipherM506;
                        continue;
                    }
                    break;
                case 1734589:
                    if (C0025.m226() > 0) {
                        obj2 = "۠ۨۦ";
                    }
                    break;
                default:
                    continue;
            }
            obj2 = "ۢ۟ۡ";
        }
    }

    /* JADX INFO: renamed from: ⁠⁣⁤⁣⁤⁠, reason: not valid java name and contains not printable characters */
    public static Context m406(Object obj) {
        String str = "ۣۨ۠";
        Context context = null;
        Context contextM611 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 56443) {
                case 1709360:
                    break;
                case 1709372:
                    contextM611 = C0033.m611((Application) obj);
                    str = "ۥۡۤ";
                    continue;
                case 1710451:
                case 1730232:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۡۢۤ";
                        continue;
                    }
                    break;
                case 1728947:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                        context = contextM611;
                    } else {
                        str = "ۡۢۤ";
                        context = contextM611;
                        continue;
                    }
                    break;
                case 1730201:
                    if (C0025.m186() >= 0) {
                        str = "ۢۤۧ";
                    } else {
                        str = "ۤۧۦ";
                        continue;
                    }
                    break;
                case 1731292:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str = "ۡ۟ۤ";
                    } else {
                        str = "ۣۡۧ";
                        continue;
                    }
                    break;
                case 1731424:
                    if (C0033.m609() <= 0) {
                        str = "ۣۨۢ";
                    }
                    break;
                case 1733272:
                    return context;
                case 1733502:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                        context = null;
                    } else {
                        str = "ۤۨۦ";
                        context = null;
                        continue;
                    }
                    break;
                case 1733604:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۣۨ۠";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            str = "ۣۤۨ";
        }
    }

    /* JADX INFO: renamed from: ⁠⁤⁠⁠⁤, reason: not valid java name and contains not printable characters */
    public static void m407(Object obj, Object obj2, Object obj3) {
        String str = "ۧۡۨ";
        while (true) {
            switch (C0033.m669((Object) str) ^ 1755368) {
                case 24:
                    break;
                case 2348:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                        str = "۠ۧۦ";
                    } else {
                        str = "ۧۡۨ";
                        continue;
                    }
                    break;
                case 2698:
                    C0025.m265((Field) obj, obj2, obj3);
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                        str = "ۣۣۡ";
                    } else {
                        str = "ۦ۟";
                        continue;
                    }
                    break;
                case 3494:
                    if (C0024.m138() <= 0) {
                        break;
                    } else if (C0026.m329() > 0) {
                        str = "ۦۨۤ";
                    }
                    break;
                case 1709137:
                    return;
                default:
                    continue;
            }
            str = "ۦ۟";
        }
    }

    /* JADX INFO: renamed from: ⁠⁤⁠⁣⁣, reason: not valid java name and contains not printable characters */
    public static byte[] m408(Object obj) {
        Object obj2 = "۠ۨۨ";
        byte[] bArr = null;
        byte[] bArrM136 = null;
        while (true) {
            switch (C0033.m669(obj2) ^ 1752520) {
                case 852:
                case 4745:
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                    } else {
                        obj2 = "ۦۥ۟";
                        continue;
                    }
                    break;
                case 919:
                    break;
                case 2827:
                    bArrM136 = C0024.m136((String) obj);
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        obj2 = "ۡۤۡ";
                        continue;
                    }
                    break;
                case 4822:
                    obj2 = "ۦۥ۟";
                    bArr = bArrM136;
                    continue;
                case 5672:
                    if (C0025.m226() <= 0) {
                        break;
                    } else if (C0025.m186() < 0) {
                        obj2 = "ۣۥۥ";
                    }
                    break;
                case 6709:
                    if (C0033.m706() <= 0) {
                        C0032.m436();
                    } else {
                        obj2 = "ۦۡ۟";
                        continue;
                    }
                    break;
                case 6837:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                    } else {
                        obj2 = "۠ۨۨ";
                        continue;
                    }
                    break;
                case 31820:
                    if (C0032.m436() <= 0) {
                        obj2 = "ۥۨۨ";
                        bArr = null;
                    } else {
                        obj2 = "۟ۤ";
                        bArr = null;
                        continue;
                    }
                    break;
                case 32712:
                    return bArr;
                case 1730093:
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj2 = "ۡۥۥ";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            obj2 = C0025.m186() >= 0 ? "ۢۢ" : "۟ۧۥ";
        }
    }

    /* JADX INFO: renamed from: ⁣⁠⁠⁤⁤⁣, reason: not valid java name and contains not printable characters */
    public static boolean m409(Object obj, Object obj2) {
        String str = "۟ۤ۠";
        boolean z = false;
        boolean zM65 = false;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1751743) {
                case MysqlErrorNumbers.ER_BAD_TABLE_ERROR /* 1051 */:
                    if (C0033.m706() <= 0) {
                        str = "ۧ۟ۧ";
                        z = false;
                    } else {
                        str = "۠ۥۣ";
                        z = false;
                        continue;
                    }
                    break;
                case 3168:
                    if (C0026.m329() <= 0) {
                        str = "ۧۥۨ";
                        z = zM65;
                    } else {
                        str = "۟ۡۤ";
                        z = zM65;
                        continue;
                    }
                    break;
                case 4545:
                    str = "ۦ۟۟";
                    continue;
                case 5598:
                case 31737:
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                        str = "۟ۦۣ";
                    } else {
                        str = "۟ۡۤ";
                        continue;
                    }
                    break;
                case 7460:
                    if (C0033.m609() > 0) {
                        break;
                    } else if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۨۤۢ";
                    }
                    break;
                case 7677:
                    return z;
                case 29657:
                    zM65 = C0024.m65((String) obj, obj2);
                    str = "ۣۦۢ";
                    continue;
                case 32753:
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                        str = "ۦۡۢ";
                    } else {
                        str = "ۥۨۧ";
                        continue;
                    }
                    break;
                case 32757:
                    break;
                case 1728856:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                    } else {
                        str = "۟ۤ۠";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0026.m329() > 0) {
                str = "ۧۡۨ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁠⁣⁣⁣⁣, reason: not valid java name and contains not printable characters */
    public static void m410(Object obj, Object obj2, Object obj3) {
        String str = "۠ۤ۠";
        while (true) {
            switch (C0033.m669((Object) str) ^ 1749854) {
                case 3419:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                        str = "ۣۡ";
                    } else {
                        str = "۠ۤ۠";
                        continue;
                    }
                    break;
                case 6146:
                    if (C0033.m596() > 0) {
                        str = C0025.m186() >= 0 ? "۠ۨۧ" : "ۣۧ۟";
                    }
                    break;
                case 6585:
                    return;
                case 29370:
                    break;
                case 30429:
                    C0032.m425MHHX((Instrumentation) obj, (Activity) obj2, (Bundle) obj3);
                    if (C0025.m186() >= 0) {
                        str = "ۨ۠ۢ";
                    } else {
                        str = "۠۠ۧ";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0032.m436() > 0) {
                str = "۠۠ۧ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁠⁤⁤⁤⁠, reason: not valid java name and contains not printable characters */
    public static void m411() {
        String str = "ۡۥۨ";
        while (true) {
            switch (C0033.m669((Object) str) ^ 1753419) {
                case CipherSuite.TLS_DHE_DSS_WITH_AES_128_GCM_SHA256 /* 162 */:
                    C0025.m215();
                    if (C0032.m436() > 0) {
                        str = "ۣۢ۟";
                    } else {
                        continue;
                    }
                    break;
                case 875:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                        str = "ۣ۠ۧ";
                    } else {
                        str = "ۡۥۨ";
                        continue;
                    }
                    break;
                case 2087:
                    break;
                case 28175:
                    if (C0024.m138() < 0) {
                        break;
                    } else if (C0024.m165xf0c433e8() > 0) {
                        str = "ۦۤۧ";
                    }
                    break;
                case 29453:
                    return;
                default:
                    continue;
            }
            if (C0033.m706() > 0) {
                str = "ۣۢ۟";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁣⁣⁣⁣⁣, reason: not valid java name and contains not printable characters */
    public static Class m412(Object obj, Object obj2) {
        String str = "ۡۦۣ";
        Class cls = null;
        Class clsM198 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1755617) {
                case 238:
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۣۡۢ";
                        continue;
                    }
                    break;
                case 2120:
                    return cls;
                case 3304:
                    break;
                case 26303:
                    if (C0024.m138() < 0) {
                        break;
                    } else if (C0024.m165xf0c433e8() > 0) {
                        str = "۟ۧ۠";
                    }
                    break;
                case 28185:
                    clsM198 = C0025.m198((ClassLoader) obj, (String) obj2);
                    str = "ۤۢۤ";
                    continue;
                case 29639:
                    str = "ۦۢۥ";
                    cls = clsM198;
                    continue;
                case 29730:
                case 1709541:
                    if (C0033.m706() <= 0) {
                        str = "ۤۦۡ";
                    } else {
                        str = "ۦۢۥ";
                        continue;
                    }
                    break;
                case 29807:
                    if (C0025.m186() < 0) {
                        str = "ۡۦۣ";
                    } else {
                        continue;
                    }
                    break;
                case 32677:
                    if (C0024.m165xf0c433e8() <= 0) {
                        cls = null;
                    } else {
                        str = "ۧۥ";
                        cls = null;
                        continue;
                    }
                    break;
                case 1709375:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        str = "ۥۡ۟";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0024.m165xf0c433e8() > 0) {
                str = "ۨۡۨ";
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:143:0x0245 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:145:0x0240 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:0x0265 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:173:0x025e A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0042. Please report as an issue. */
    /* JADX INFO: renamed from: ⁣⁣⁤⁤⁤⁠, reason: not valid java name and contains not printable characters */
    public static String m413(String str) {
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
        String str4 = "ۣ۟ۨ";
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
            switch (C0033.m669((Object) str4) ^ 1753511) {
                case 998:
                    i4 = 0;
                    str4 = "۟ۥۤ";
                    str3 = strM635;
                    break;
                case MysqlErrorNumbers.ER_CANT_OPEN_LIBRARY /* 1126 */:
                case 28382:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        str4 = "ۣۧۢ";
                    }
                    break;
                case MysqlErrorNumbers.ER_WRONG_VALUE_FOR_VAR /* 1231 */:
                    str4 = iM84 >= bArrM214.length ? "۠ۥۣ" : "ۨۨ۠";
                    break;
                case MysqlErrorNumbers.ER_WARN_TOO_MANY_RECORDS /* 1262 */:
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                        str4 = "ۡۢۧ";
                    } else {
                        str4 = "ۣ۟ۤ";
                    }
                    break;
                case MysqlErrorNumbers.ER_WARN_NULL_TO_NOTNULL /* 1263 */:
                    iM85 = C0024.m84(str6);
                    str4 = "ۣ۠ۤ";
                    break;
                case 1925:
                    bArrM214[-1] = (byte) (((b ^ (-1)) & cM133) | ((cM133 ^ (-1)) & b));
                    if (C0024.m165xf0c433e8() > 0) {
                        str4 = "ۡۤ۠";
                    }
                    break;
                case 2114:
                    length = bArrM214.length;
                    str4 = "ۧۡۢ";
                    break;
                case 2119:
                    iM84 = (C0024.m84(C0033.m634()) - 8) + 1 + 8;
                    str4 = "۠۠ۥ";
                    break;
                case 2380:
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                    } else {
                        str4 = "ۤۤۨ";
                    }
                    break;
                case 26137:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                        str6 = str3;
                        str5 = str2;
                    } else {
                        str4 = "ۣۢۧ";
                        str6 = str3;
                        str5 = str2;
                    }
                    break;
                case 26147:
                    i3 = 0;
                    strM634 = C0033.m634();
                    if (C0025.m186() < 0) {
                        str4 = "۟۠۠";
                    }
                    break;
                case 26151:
                    strM224 = C0025.m224(C0033.m577(C0033.m577(new StringBuffer(), str5), C0025.m305(i5)));
                    stringBufferM577 = C0033.m577(new StringBuffer(), str6);
                    if (C0024.m165xf0c433e8() > 0) {
                        str4 = "۟۟۠";
                    }
                    break;
                case 26279:
                    int iM675 = (int) (C0033.m675() * ((double) 10));
                    strM225 = C0025.m224(C0033.m677(stringBufferM577, (iM675 & (i5 ^ (-1))) | ((iM675 ^ (-1)) & i5)));
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                    } else {
                        str4 = "ۣۨ۠";
                    }
                    break;
                case 26296:
                    strM635 = C0033.m634();
                    str4 = "ۦۧۢ";
                    str2 = strM634;
                    break;
                case 27262:
                    C0033.m683(byteArrayOutputStream, (iM447 ^ iM448) | (iM447 & iM448));
                    i2 = 2 - (0 - i6);
                    str4 = "ۣۢۡ";
                    break;
                case 27353:
                    break;
                case 27355:
                case 27356:
                    if (C0024.m165xf0c433e8() > 0) {
                        str4 = "ۣ۠ۤ";
                    }
                    break;
                case 27384:
                    if (length > 0) {
                        str4 = "ۡۢۥ";
                    } else if (C0026.m329() > 0) {
                        str4 = "۟ۧ";
                    }
                    break;
                case 27458:
                    str4 = "ۡۧ۟";
                    break;
                case 28197:
                    str4 = "ۡۢۥ";
                    break;
                case 28313:
                case 30656:
                    str4 = "ۥۥۣ";
                    break;
                case 28346:
                    if (C0033.m706() > 0) {
                        str4 = "۠ۥ۠";
                    }
                    break;
                case 28483:
                    b = bArrM214[-1];
                    cM133 = C0024.m133(str6, (-1) % iM85);
                    str4 = "ۣۧۨ";
                    break;
                case 28536:
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                        str6 = strM225;
                        str5 = strM224;
                    } else {
                        str4 = "ۥ۠ۦ";
                        str6 = strM225;
                        str5 = strM224;
                    }
                    break;
                case 29438:
                    break;
                case 29475:
                    if (C0026.m329() <= 0) {
                        i6 = i2;
                    } else {
                        str4 = "ۣۤ";
                        i6 = i2;
                    }
                    break;
                case 30396:
                    i5 = 1 - (0 - i5);
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str4 = "ۡۢ۠";
                    }
                    break;
                case 30670:
                case 32642:
                    str4 = "۠ۦ";
                    break;
                case 30671:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str4 = "ۦۧۧ";
                        i5 = i4;
                    } else {
                        str4 = "۠ۦ";
                        i5 = i4;
                    }
                    break;
                case 31695:
                    iM447 = C0032.m447(str5, C0024.m133(str, i6)) << 4;
                    iM448 = C0032.m447(str5, C0024.m133(str, (i6 - 17) + 1 + 17));
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        str4 = "۠ۨۡ";
                    }
                    break;
                case 31756:
                    str4 = "ۣۢۨ";
                    break;
                case 32709:
                    if (C0033.m706() > 0) {
                        str4 = "ۣ۟ۨ";
                    }
                    break;
                case 32739:
                    str4 = "ۥۥۣ";
                    i6 = i;
                    break;
                case 32740:
                    if (i6 >= C0024.m84(str)) {
                        bArrM214 = C0025.m214(byteArrayOutputStream);
                        str4 = "ۨۨۥ";
                    } else if (C0033.m706() <= 0) {
                        C0026.m329();
                    } else {
                        str4 = "ۤۤۨ";
                    }
                    break;
                case 1710671:
                    str4 = "ۣۧۢ";
                    iM84 = i3;
                    break;
                case 1711521:
                    if (i5 >= 15) {
                        byteArrayOutputStream = new ByteArrayOutputStream(C0024.m84(str) / 2);
                        str4 = C0024.m165xf0c433e8() <= 0 ? "ۨۨ۟" : "ۡ۠";
                    } else if (C0025.m186() >= 0) {
                        C0033.m706();
                        str4 = "ۡۢۧ";
                    } else {
                        str4 = "ۣ۟ۤ";
                    }
                    break;
                case 1711544:
                    i = 0;
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                        str4 = "ۦۡۢ";
                    } else {
                        str4 = "ۥۥۤ";
                    }
                    break;
                case 1711558:
                    if (C0033.m706() > 0) {
                        str4 = "ۡۥۢ";
                    }
                    break;
                default:
                    break;
            }
            return new String(bArrM214);
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁠⁠⁠⁤, reason: not valid java name and contains not printable characters */
    public static ClassLoader m414(Object obj) {
        String str = "۟۠۠";
        ClassLoader classLoader = null;
        ClassLoader classLoaderM620 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1754378) {
                case 783:
                    str = "۟۠۠";
                    continue;
                case MysqlErrorNumbers.ER_WRONG_VALUE_FOR_VAR /* 1231 */:
                case 28204:
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                        str = "ۥۦۣ";
                    } else {
                        str = "۠ۥۢ";
                        continue;
                    }
                    break;
                case 3085:
                    classLoaderM620 = C0033.m620((Application) obj);
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                        str = "ۧۡۡ";
                    } else {
                        str = "ۣۨ۟";
                        continue;
                    }
                    break;
                case 25109:
                    if (C0033.m596() >= 0) {
                        str = "ۨۡ۠";
                    }
                    break;
                case 28203:
                    str = "ۣۧ۠";
                    classLoader = null;
                    continue;
                case 28279:
                    return classLoader;
                case 29200:
                    str = "۠ۥۢ";
                    classLoader = classLoaderM620;
                    continue;
                case 29686:
                    if (C0026.m329() <= 0) {
                        str = "۟ۢۢ";
                    } else {
                        str = "ۦۣۢ";
                        continue;
                    }
                    break;
                case 30536:
                    break;
                case 31636:
                    if (C0033.m706() > 0) {
                        str = "ۣ۠ۢ";
                    } else {
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            str = "ۥۨۡ";
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁣⁠⁣⁣⁣, reason: not valid java name and contains not printable characters */
    public static boolean m415(Object obj) {
        String str = "ۣۡۢ";
        boolean z = false;
        boolean zM58 = false;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1750569) {
                case MysqlErrorNumbers.ER_WRONG_TABLE_NAME /* 1103 */:
                    break;
                case 2092:
                    if (C0032.m436() > 0) {
                        str = "ۣۡۢ";
                    } else {
                        continue;
                    }
                    break;
                case 2189:
                    zM58 = C0024.m58((Iterator) obj);
                    if (C0032.m436() <= 0) {
                        str = "ۤ۠ۤ";
                    } else {
                        str = "ۦ۟ۦ";
                        continue;
                    }
                    break;
                case 3043:
                case 4372:
                    if (C0032.m436() > 0) {
                        str = "ۤۦ";
                    } else {
                        continue;
                    }
                    break;
                case 4034:
                    if (C0025.m186() < 0) {
                        str = "ۥۡۦ";
                    } else {
                        continue;
                    }
                    break;
                case 6347:
                    if (C0033.m609() >= 0) {
                        break;
                    } else if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        str = "ۥۨۧ";
                    }
                    break;
                case 7656:
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۨۧۧ";
                        continue;
                    }
                    break;
                case 30564:
                    str = "ۤۦ";
                    z = zM58;
                    continue;
                case 32737:
                    str = "ۤ۠ۧ";
                    z = false;
                    continue;
                case 1731243:
                    return z;
                default:
                    continue;
            }
            if (C0026.m329() > 0) {
                str = "۠ۧۨ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁤⁣⁠⁠⁣, reason: not valid java name and contains not printable characters */
    public static String m416(short[] sArr, int i, int i2, int i3) {
        String str = "۟۠۠";
        short s = 0;
        int i4 = 0;
        char[] cArr = null;
        int i5 = 0;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1753572) {
                case 65:
                    s = sArr[i - (0 - i4)];
                    str = "۠۟ۤ";
                    continue;
                case 954:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "۠ۨۥ";
                        continue;
                    }
                    break;
                case 987:
                    return new String(cArr);
                case 2151:
                    if (i4 >= i2) {
                        break;
                    } else if (C0026.m329() > 0) {
                        str = "ۦۢۡ";
                    }
                    break;
                case 2220:
                    break;
                case 26336:
                    if (C0033.m706() <= 0) {
                        C0032.m436();
                        i4 = 0;
                    } else {
                        str = "ۨۥ۠";
                        i4 = 0;
                        continue;
                    }
                    break;
                case 26363:
                    cArr = new char[i2];
                    if (C0025.m186() < 0) {
                        str = "ۣۢۤ";
                    } else {
                        continue;
                    }
                    break;
                case 27193:
                case 30531:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        str = "ۨۥ۠";
                        continue;
                    }
                    break;
                case 27425:
                    cArr[i4] = (char) (((s ^ (-1)) & i3) | ((i3 ^ (-1)) & s));
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۥۢ۠";
                        continue;
                    }
                    break;
                case 28376:
                    if (C0033.m706() <= 0) {
                        str = "ۣ۟ۤ";
                    } else {
                        str = "۟۠۠";
                        continue;
                    }
                    break;
                case 30593:
                    str = "۟۟ۤ";
                    continue;
                case 31751:
                    i5 = i4 + 0 + 1 + 0;
                    if (C0026.m329() > 0) {
                        str = "ۥۥۡ";
                    } else {
                        continue;
                    }
                    break;
                case 32677:
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                        i4 = i5;
                    } else {
                        str = "ۦۨ۠";
                        i4 = i5;
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0032.m436() <= 0) {
                C0033.m706();
            } else {
                str = "ۦۧ۠";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁤⁣⁤⁤⁤, reason: not valid java name and contains not printable characters */
    public static int m417(Object obj, int i) {
        String str = "ۨۥۧ";
        int i2 = 0;
        int iM246 = 0;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1747649) {
                case 344:
                    str = "ۣۣۤ";
                    continue;
                case 481:
                case 25412:
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                    } else {
                        str = "ۣۧۧ";
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_ILLEGAL_HA /* 1031 */:
                    str = "ۨۥۧ";
                    continue;
                case MysqlErrorNumbers.ER_SUBPARTITION_ERROR /* 1500 */:
                    iM246 = C0025.m246((String) obj, i);
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                        str = "۟ۤۧ";
                    } else {
                        str = "ۨۨۤ";
                        continue;
                    }
                    break;
                case 4228:
                    break;
                case 7267:
                    if (C0025.m186() >= 0) {
                        i2 = 0;
                    } else {
                        str = "ۣۨۤ";
                        i2 = 0;
                        continue;
                    }
                    break;
                case 7618:
                    return i2;
                case 25381:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                        i2 = iM246;
                    } else {
                        str = "ۣۧۧ";
                        i2 = iM246;
                        continue;
                    }
                    break;
                case 25419:
                    if (C0024.m138() > 0) {
                        str = "ۡۤ۠";
                    }
                    break;
                case 25480:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                    } else {
                        str = "۠ۢۢ";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            str = C0032.m436() <= 0 ? "ۧۡ۟" : "۠ۦ۟";
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁤⁤⁣⁣, reason: not valid java name and contains not printable characters */
    public static void m418(Object obj) {
        String str = "ۧۧۨ";
        while (true) {
            switch (C0033.m669((Object) str) ^ 1754565) {
                case 973:
                    if (C0024.m138() < 0) {
                        break;
                    } else if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۢ۟ۤ";
                    }
                    break;
                case 992:
                    return;
                case 28324:
                    break;
                case 29511:
                    str = "ۧۧۨ";
                    continue;
                case 30594:
                    C0032.m420x708a5c42((Application) obj);
                    str = "ۧۨۦ";
                    continue;
                default:
                    continue;
            }
            if (C0032.m436() <= 0) {
                C0026.m329();
            } else {
                str = "ۧۨۦ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁤⁠⁤⁠, reason: not valid java name and contains not printable characters */
    public static void m419(Object obj, Object obj2, int i, int i2) {
        String str = "۠ۡ۟";
        while (true) {
            switch (C0033.m669((Object) str) ^ 56416) {
                case CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA256 /* 184 */:
                    str = "۠ۡ۟";
                    continue;
                case 1709322:
                    return;
                case 1730244:
                    C0025.m257((ByteArrayOutputStream) obj, (byte[]) obj2, i, i2);
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                        str = "ۥۥ۠";
                    } else {
                        str = "ۨۤۦ";
                        continue;
                    }
                    break;
                case 1731263:
                    break;
                case 1734302:
                    if (C0025.m226() <= 0) {
                        break;
                    } else if (C0032.m436() > 0) {
                        str = "ۤۦۦ";
                    }
                    break;
                default:
                    continue;
            }
            if (C0032.m436() <= 0) {
                C0024.m165xf0c433e8();
            } else {
                str = "ۨۤۦ";
            }
        }
    }
}
