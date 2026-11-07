package muhua.new5;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import com.mysql.jdbc.MysqlErrorNumbers;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.Key;
import java.util.Iterator;
import java.util.Map;
import javax.crypto.Cipher;
import org.bouncycastle.crypto.tls.CipherSuite;

/* JADX INFO: renamed from: muhua.new5.⁠⁣⁤⁣⁣⁣, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public class C0027 {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f10short = {314, 1515};

    /* JADX INFO: renamed from: ⁠⁠⁣⁠⁤⁣, reason: not valid java name and contains not printable characters */
    public static int f11 = -70;

    /* JADX INFO: renamed from: ۟ۙۚ, reason: not valid java name and contains not printable characters */
    public static short[] m332() {
        String str = "۟ۤ۠";
        short[] sArr = null;
        short[] sArr2 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1753452) {
                case MysqlErrorNumbers.ER_PRIMARY_CANT_HAVE_NULL /* 1171 */:
                    str = "ۡۥ۟";
                    continue;
                case MysqlErrorNumbers.ER_SLAVE_MUST_STOP /* 1198 */:
                case 30575:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۥۧ۠";
                    } else {
                        continue;
                    }
                    break;
                case 2155:
                    sArr2 = f10short;
                    str = "ۥۦۡ";
                    continue;
                case 2278:
                    break;
                case 26359:
                    if (C0032.m436() <= 0) {
                        break;
                    } else if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۨۡ۠";
                    }
                    break;
                case 28238:
                    str = "۟ۤ۠";
                    continue;
                case 28247:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                        sArr = null;
                    } else {
                        str = "ۣۤ";
                        sArr = null;
                        continue;
                    }
                    break;
                case 32524:
                    str = "ۥۧ۠";
                    sArr = sArr2;
                    continue;
                case 32530:
                    return sArr;
                case 1711373:
                    if (C0025.m186() < 0) {
                        str = "ۣ۟۟";
                    } else {
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0033.m706() > 0) {
                str = "ۧۧ۟";
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0015 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x0003 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x0003 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x000b. Please report as an issue. */
    /* JADX INFO: renamed from: ⁠⁠⁣⁠⁠⁠, reason: not valid java name and contains not printable characters */
    public static void m333(Object obj, boolean z) {
        Float fValueOf = null;
        String str = "ۣۢ";
        while (true) {
            switch (C0033.m669((Object) str) ^ 1751617) {
                case 1988:
                    if (C0026.m329() > 0) {
                        str = "ۢ۠ۢ";
                    }
                    break;
                case 2085:
                    break;
                case 2339:
                    fValueOf = Float.valueOf(C0026.m330("5THPNAEdOrz"));
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۣ۟ۡ";
                    }
                    break;
                case 4417:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۨۨ";
                    }
                    break;
                case 7424:
                    System.out.println(fValueOf);
                    str = C0025.m186() >= 0 ? "۟ۥۦ" : "ۢ۠ۢ";
                    break;
                case 7619:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        str = "۠ۦ۠";
                    } else {
                        str = "ۣۢ";
                    }
                    break;
                case 32676:
                    C0033.m716((Field) obj, z);
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                        str = "ۤۧۨ";
                    } else {
                        str = "ۨۨ";
                    }
                    break;
                case 1730078:
                    if (C0033.m609() <= 0) {
                        if (C0024.m165xf0c433e8() > 0) {
                            str = "ۧۦۤ";
                        }
                    } else if (C0024.m165xf0c433e8() > 0) {
                        str = "ۨۨ";
                    }
                    break;
                case 1730369:
                    if (C0032.m436() <= 0) {
                        str = C0033.m706() <= 0 ? "ۨۡۨ" : "ۢۨۨ";
                    } else if (C0026.m329() > 0) {
                        str = "ۢ۠ۢ";
                    }
                    break;
                default:
                    break;
            }
            return;
        }
    }

    /* JADX INFO: renamed from: ⁠⁠⁣⁠⁣⁣, reason: not valid java name and contains not printable characters */
    public static String m334(Object obj) {
        String str = "ۡ۟۠";
        String str2 = null;
        String strM462 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1747749) {
                case CipherSuite.TLS_DHE_RSA_WITH_SEED_CBC_SHA /* 154 */:
                    str = "ۧۤ۟";
                    str2 = null;
                    continue;
                case MysqlErrorNumbers.ER_VIEW_FRM_NO_USER /* 1447 */:
                    if (C0033.m609() < 0) {
                        str = C0025.m186() >= 0 ? "ۢۥۧ" : "۟ۦۤ";
                    }
                    break;
                case 3320:
                    strM462 = C0032.m462((String) obj);
                    str = "ۣۢ۠";
                    continue;
                case 5415:
                case 27247:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۢۨ۟";
                        continue;
                    }
                    break;
                case 6177:
                    if (C0026.m329() <= 0) {
                        str = "ۡۥ";
                    } else {
                        str = "ۡ۟۠";
                        continue;
                    }
                    break;
                case 6268:
                    return str2;
                case 6464:
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                        str = "۟ۨ۠";
                        str2 = strM462;
                    } else {
                        str = "ۢۨ۟";
                        str2 = strM462;
                        continue;
                    }
                    break;
                case 28295:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۥۣ۠";
                        continue;
                    }
                    break;
                case 28358:
                    break;
                case 1734469:
                    str = "۠ۧۦ";
                    continue;
                default:
                    continue;
            }
            str = "ۣۣ";
        }
    }

    /* JADX INFO: renamed from: ⁠⁠⁣⁠⁣⁤, reason: not valid java name and contains not printable characters */
    public static String m335(Object obj) {
        String str = "۠ۥۣ";
        String str2 = null;
        String strM527 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1751497) {
                case MysqlErrorNumbers.ER_ALTER_INFO /* 1088 */:
                    return str2;
                case 2770:
                    str = "ۥۣ۟";
                    str2 = strM527;
                    continue;
                case 3917:
                    if (C0032.m436() <= 0) {
                        str = "ۡۦۦ";
                    } else {
                        str = "۠ۥۣ";
                        continue;
                    }
                    break;
                case 4791:
                    if (C0033.m609() < 0) {
                        str = "ۡ۟۠";
                    }
                    break;
                case 5934:
                    str = "ۡ۠ۤ";
                    continue;
                case 5963:
                    strM527 = C0032.m527((ByteArrayOutputStream) obj);
                    str = "ۢۦ۟";
                    continue;
                case 5996:
                    if (C0026.m329() <= 0) {
                        str2 = null;
                    } else {
                        str = "۟ۧۧ";
                        str2 = null;
                        continue;
                    }
                    break;
                case 7734:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str = "۟ۦۣ";
                    } else {
                        str = "ۡۧ";
                        continue;
                    }
                    break;
                case 7860:
                case 1730031:
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                        str = "ۥ۟ۦ";
                    } else {
                        str = "ۥۣ۟";
                        continue;
                    }
                    break;
                case 31629:
                    break;
                default:
                    continue;
            }
            str = "ۡۢۨ";
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x006b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x005d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x0005 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x000d. Please report as an issue. */
    /* JADX INFO: renamed from: ⁠⁠⁤⁣⁣, reason: not valid java name and contains not printable characters */
    public static void m336(Object obj) {
        String strM546 = null;
        Object obj2 = "۟۠ۡ";
        while (true) {
            switch (C0033.m669(obj2) ^ 1749819) {
                case 91:
                    strM546 = C0032.m546("WhZuzWcTRUHs9kW");
                    obj2 = "۠ۧ۟";
                    break;
                case 5147:
                    if (C0033.m596() > 0) {
                        obj2 = "ۣۨۨ";
                    } else {
                        obj2 = C0026.m329() <= 0 ? "۟۠ۢ" : "ۡۥۧ";
                    }
                    break;
                case 6275:
                    System.out.println(strM546);
                    obj2 = "ۨۧۨ";
                    break;
                case 7270:
                    if (C0026.m329() <= 0) {
                    }
                    break;
                case 7288:
                    if (C0025.m186() >= 0) {
                        obj2 = C0032.m436() <= 0 ? "ۤۤۡ" : "ۢۨۦ";
                    } else if (C0026.m329() > 0) {
                        obj2 = "ۨۧۨ";
                    }
                    break;
                case 28955:
                    obj2 = "۟۠ۡ";
                    break;
                case 31448:
                    C0032.m495((Activity) obj);
                    if (C0032.m436() > 0) {
                        obj2 = "ۡۥۧ";
                    }
                    break;
                case 31474:
                    break;
                case 1732422:
                    if (C0026.m329() > 0) {
                        obj2 = "ۨۧۨ";
                    }
                    break;
                default:
                    break;
            }
            return;
        }
    }

    /* JADX INFO: renamed from: ⁠⁠⁤⁤⁣, reason: not valid java name and contains not printable characters */
    public static void m337(Object obj, Object obj2) {
        String str = "ۢۧۧ";
        while (true) {
            switch (C0033.m669((Object) str) ^ 1748702) {
                case MysqlErrorNumbers.ER_WARN_CANT_DROP_DEFAULT_KEYCACHE /* 1438 */:
                    if (C0026.m329() > 0) {
                        str = "ۢۧۧ";
                    } else {
                        continue;
                    }
                    break;
                case 4924:
                    break;
                case 6170:
                    return;
                case 7580:
                    if (C0024.m138() < 0) {
                        break;
                    } else if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۦۥۥ";
                    }
                    break;
                case 27864:
                    C0032.m470((Context) obj, (Intent) obj2);
                    if (C0024.m165xf0c433e8() <= 0) {
                        str = "۟ۡۦ";
                    } else {
                        str = "ۣۥۦ";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0026.m329() <= 0) {
                C0025.m186();
            } else {
                str = "ۣۥۦ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁠⁣⁠, reason: not valid java name and contains not printable characters */
    public static String m338(Object obj) {
        String str = "ۢ۟ۡ";
        String str2 = null;
        String strM142 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1748827) {
                case MysqlErrorNumbers.ER_SUBQUERY_NO_1_ROW /* 1242 */:
                    strM142 = C0024.m142((Context) obj);
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                        str = "ۤۤۢ";
                    } else {
                        str = "ۢۤۢ";
                        continue;
                    }
                    break;
                case 4793:
                    break;
                case 6483:
                case 7170:
                    if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                        str = "۠ۢۦ";
                    } else {
                        str = "ۢۨ۠";
                        continue;
                    }
                    break;
                case 6532:
                    str = "ۨ۟ۧ";
                    str2 = null;
                    continue;
                case 6533:
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                    } else {
                        str = "ۢ۟ۡ";
                        continue;
                    }
                    break;
                case 7169:
                    return str2;
                case 7455:
                    if (C0024.m138() < 0) {
                        break;
                    } else if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "۠ۥۦ";
                    }
                    break;
                case 7611:
                    if (C0033.m706() <= 0) {
                        str = "ۥۢۤ";
                        str2 = strM142;
                    } else {
                        str = "ۢۨ۠";
                        str2 = strM142;
                        continue;
                    }
                    break;
                case 26162:
                    str = "ۣۦۢ";
                    continue;
                case 26507:
                    if (C0033.m706() > 0) {
                        str = "ۢۨ۟";
                    } else {
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            str = "ۨۤۥ";
        }
    }

    /* JADX INFO: renamed from: ⁠⁣⁤⁣⁤⁠, reason: not valid java name and contains not printable characters */
    public static Method m339(Object obj, Object obj2, Object obj3) {
        Object obj4 = "ۢۡۥ";
        Method method = null;
        Method methodM692 = null;
        while (true) {
            switch (C0033.m669(obj4) ^ 56384) {
                case CipherSuite.TLS_DH_RSA_WITH_AES_256_GCM_SHA384 /* 161 */:
                    if (C0025.m186() >= 0) {
                        obj4 = "ۡۨۨ";
                    } else {
                        obj4 = "ۨۨ۟";
                        continue;
                    }
                    break;
                case 1709223:
                case 1709471:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                        obj4 = "ۥۦ۠";
                    } else {
                        obj4 = "ۢۦۦ";
                        continue;
                    }
                    break;
                case 1711589:
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                        method = methodM692;
                    } else {
                        obj4 = "ۢۦۦ";
                        method = methodM692;
                        continue;
                    }
                    break;
                case 1728938:
                    methodM692 = C0033.m692((Class) obj, (String) obj2, (Class[]) obj3);
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                    } else {
                        obj4 = "ۦۢۡ";
                        continue;
                    }
                    break;
                case 1730246:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        obj4 = "ۣ۟ۤ";
                        continue;
                    }
                    break;
                case 1732130:
                    break;
                case 1732294:
                    if (C0033.m596() <= 0) {
                        break;
                    } else if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                    } else {
                        obj4 = "ۥۢۧ";
                    }
                    break;
                case 1732450:
                    return method;
                case 1733353:
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        obj4 = "ۢۡۥ";
                        continue;
                    }
                    break;
                case 1735616:
                    obj4 = "ۧۨ";
                    method = null;
                    continue;
                default:
                    continue;
            }
            obj4 = C0033.m706() <= 0 ? "۠ۡۡ" : "ۤۥۧ";
        }
    }

    /* JADX INFO: renamed from: ⁣⁠⁤⁤⁤⁣, reason: not valid java name and contains not printable characters */
    public static int m340() {
        int iM479 = C0032.m479(C0025.m192());
        return ((iM479 ^ (-1)) & 1752674) | ((-1752675) & iM479);
    }

    /* JADX INFO: renamed from: ⁣⁣⁠⁠⁣⁤, reason: not valid java name and contains not printable characters */
    public static Object m341(Object obj) {
        Object obj2 = "ۨۧۧ";
        Object obj3 = null;
        Object objM209 = null;
        while (true) {
            switch (C0033.m669(obj2) ^ 1755615) {
                case 23:
                    if (C0033.m609() < 0) {
                        obj2 = "ۧۢ۟";
                    }
                    break;
                case 123:
                case 26490:
                    obj2 = "۠ۦۡ";
                    continue;
                case 3068:
                    obj2 = "۠ۦۡ";
                    obj3 = objM209;
                    continue;
                case 3259:
                    objM209 = C0025.m209((Map.Entry) obj);
                    if (C0026.m329() > 0) {
                        obj2 = "ۦۦۣ";
                    } else {
                        continue;
                    }
                    break;
                case 3312:
                    if (C0025.m186() >= 0) {
                        obj2 = "ۣ۠ۡ";
                    } else {
                        obj2 = "ۨۦۢ";
                        continue;
                    }
                    break;
                case 25156:
                    return obj3;
                case 26430:
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                        obj2 = "ۨۧ";
                    } else {
                        obj2 = "ۨۧۧ";
                        continue;
                    }
                    break;
                case 29817:
                    break;
                case 32698:
                    if (C0033.m706() <= 0) {
                        obj2 = "ۣۨۦ";
                        obj3 = null;
                    } else {
                        obj2 = "ۧ۠ۨ";
                        obj3 = null;
                        continue;
                    }
                    break;
                case 32731:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj2 = "ۣۢۤ";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            obj2 = C0024.m165xf0c433e8() <= 0 ? "ۣۣۣ" : "ۣ۟۠";
        }
    }

    /* JADX INFO: renamed from: ⁣⁣⁠⁤⁤⁣, reason: not valid java name and contains not printable characters */
    public static char m342(Object obj, int i) {
        String str = "ۦ۠۟";
        char c = 0;
        char cM290 = 0;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1752583) {
                case 38:
                    str = "ۢۨۢ";
                    continue;
                case 929:
                    cM290 = C0025.m290((String) obj, i);
                    str = "ۢۦ۠";
                    continue;
                case 2051:
                case 3419:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str = "ۤۦۧ";
                    } else {
                        str = "ۣ۠۠";
                        continue;
                    }
                    break;
                case 2084:
                    return c;
                case 2333:
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                        str = "۠ۡۢ";
                    } else {
                        str = "ۦ۟ۡ";
                        continue;
                    }
                    break;
                case 3355:
                    str = "ۣ۠۠";
                    c = cM290;
                    continue;
                case 31683:
                    break;
                case 32591:
                    if (C0026.m329() <= 0) {
                        str = "ۦۤ۠";
                        c = 0;
                    } else {
                        str = "ۥۤ۠";
                        c = 0;
                        continue;
                    }
                    break;
                case 32610:
                    if (C0025.m226() > 0) {
                        str = "ۥ۠ۡ";
                    }
                    break;
                case 32737:
                    if (C0033.m706() > 0) {
                        str = "ۦ۠۟";
                    } else {
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0033.m706() <= 0) {
                C0024.m165xf0c433e8();
                str = "ۣۣۤ";
            } else {
                str = "ۣۨ۟";
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:194:0x005f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x03a3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:214:0x03df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:225:0x03ef A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:226:0x03ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:239:0x03d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:241:0x03cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:248:0x0388 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:250:0x0383 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:261:0x004c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:265:0x004c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:288:0x004c A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0055. Please report as an issue. */
    /* JADX INFO: renamed from: ⁣⁣⁤⁤⁤⁣, reason: not valid java name and contains not printable characters */
    public static String m343(String str) {
        String strM634 = null;
        String str2 = null;
        String strM635 = null;
        int i = 0;
        int i2 = 0;
        String strM93 = null;
        int i3 = 0;
        Object[] objArr = null;
        String str3 = null;
        int i4 = 0;
        int i5 = 0;
        short[] sArrM465 = null;
        int i6 = 0;
        int i7 = 0;
        int iM84 = 0;
        String str4 = null;
        StringBuffer stringBuffer = null;
        int i8 = 0;
        String str5 = null;
        String strM260 = null;
        Object obj = "ۤ۠ۧ";
        byte[] bArrM214 = null;
        String strM636 = null;
        int i9 = 0;
        int i10 = 0;
        String str6 = null;
        ByteArrayOutputStream byteArrayOutputStream = null;
        while (true) {
            switch (C0033.m669(obj) ^ 1748677) {
                case 101:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۡۦۨ";
                    }
                    break;
                case 348:
                    strM635 = C0033.m634();
                    if (C0026.m329() <= 0) {
                        obj = "ۦۤۡ";
                        str2 = strM634;
                    } else {
                        obj = "ۢۡۦ";
                        str2 = strM634;
                    }
                    break;
                case 385:
                    if (C0032.m436() <= 0) {
                        obj = "ۥۡ۠";
                        iM84 = i10;
                    } else {
                        obj = "۟۠ۦ";
                        iM84 = i10;
                    }
                    break;
                case 408:
                    int iIntValue = ((Integer) objArr[0]).intValue();
                    strM93 = C0024.m93(sArrM465, 0, 1, (iIntValue & (-6634403)) | ((iIntValue ^ (-1)) & 6634402));
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        obj = "ۣۨۤ";
                    }
                    break;
                case 410:
                    obj = "۟ۥ";
                    break;
                case 422:
                    String strM224 = C0025.m224(C0033.m577(C0033.m577(new StringBuffer(), str3), C0025.m305(i4)));
                    StringBuffer stringBufferM577 = C0033.m577(new StringBuffer(), str6);
                    int iM675 = (int) (C0033.m675() * ((double) 10));
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                        str4 = strM224;
                        stringBuffer = stringBufferM577;
                        i8 = iM675;
                        obj = "ۣۨۡ";
                    } else {
                        str4 = strM224;
                        stringBuffer = stringBufferM577;
                        i8 = iM675;
                        obj = "ۧۧۡ";
                    }
                    break;
                case MysqlErrorNumbers.ER_TOO_MANY_KEYS /* 1069 */:
                    obj = "ۣۤۢ";
                    i4 = i;
                    break;
                case MysqlErrorNumbers.ER_SP_STORE_FAILED /* 1307 */:
                    if (C0026.m329() <= 0) {
                        strM636 = strM260;
                    } else {
                        obj = "ۢۤ";
                        strM636 = strM260;
                    }
                    break;
                case MysqlErrorNumbers.ER_AMBIGUOUS_FIELD_TERM /* 1475 */:
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                        obj = "ۣۡۦ";
                    } else {
                        obj = "ۣۣۣ";
                    }
                    break;
                case MysqlErrorNumbers.ER_PARTITION_CLAUSE_ON_NONPARTITIONED /* 1747 */:
                    i10 = 0;
                    strM634 = C0033.m634();
                    if (C0025.m186() < 0) {
                        obj = "ۡۨ۠";
                    }
                    break;
                case 2471:
                    obj = "ۣۨۡ";
                    str6 = str5;
                    str3 = str4;
                    break;
                case 2500:
                    if (C0033.m706() <= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۧۡۢ";
                    }
                    break;
                case 2509:
                    iM84 = C0024.m84(C0033.m634()) + 1;
                    obj = "ۡۦۤ";
                    break;
                case 2528:
                    if (iM84 >= bArrM214.length) {
                        if (C0024.m165xf0c433e8() <= 0) {
                            C0026.m329();
                        } else {
                            obj = "ۦ۟ۥ";
                        }
                    } else if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                        obj = "۠ۤۤ";
                    } else {
                        obj = "۟۟ۨ";
                    }
                    break;
                case 4292:
                    if (i5 >= C0024.m84(str)) {
                        bArrM214 = C0025.m214(byteArrayOutputStream);
                        sArrM465 = C0032.m465();
                        obj = "ۡۦۢ";
                    } else if (C0033.m706() > 0) {
                        obj = "ۢۢۥ";
                    }
                    break;
                case 4321:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        obj = "ۥ۠ۤ";
                    }
                    break;
                case 4903:
                case 6383:
                    if (C0025.m186() < 0) {
                        obj = "ۢۨ۟";
                    }
                    break;
                case 4939:
                    short[] sArrM466 = C0032.m465();
                    int iIntValue2 = ((Integer) objArr[1]).intValue();
                    strM260 = C0025.m260(sArrM466, 1, 1, (iIntValue2 & (-8065299)) | ((iIntValue2 ^ (-1)) & 8065298));
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                    } else {
                        obj = "۠ۨۦ";
                    }
                    break;
                case 4961:
                    obj = "ۢۦۣ";
                    break;
                case 4968:
                case 1733923:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "۟۠ۦ";
                    }
                    break;
                case 4972:
                    strM636 = C0033.m634();
                    if (C0024.m84(strM636) == 0) {
                        if (C0024.m165xf0c433e8() <= 0) {
                            C0024.m165xf0c433e8();
                        } else {
                            obj = "ۥ۟ۨ";
                        }
                    } else if (C0025.m186() < 0) {
                        obj = "ۢۨ۟";
                    }
                    break;
                case 5150:
                    obj = "ۣۢۢ";
                    i7 = i3;
                    break;
                case 5254:
                    if (i4 >= 15) {
                        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(C0024.m84(str) / 2);
                        i2 = 0;
                        if (C0026.m329() <= 0) {
                            byteArrayOutputStream = byteArrayOutputStream2;
                            obj = "ۨۨۢ";
                        } else {
                            byteArrayOutputStream = byteArrayOutputStream2;
                            obj = "ۢۦ۟";
                        }
                    } else if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۡۦۨ";
                    }
                    break;
                case 5306:
                case 7642:
                    if (C0025.m186() < 0) {
                        obj = "ۥۣ۟";
                    }
                    break;
                case 5934:
                    objArr = new Object[]{new Integer(6634233), new Integer(8066200)};
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                    } else {
                        obj = "۟ۨ۟";
                    }
                    break;
                case 6211:
                    if (C0033.m706() > 0) {
                        obj = "ۢۢۥ";
                    }
                    break;
                case 6214:
                case 1733573:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۣۢۢ";
                    }
                    break;
                case 6617:
                    if (C0026.m329() > 0) {
                        obj = "ۡ۠";
                    }
                    break;
                case 7234:
                    i = 0;
                    if (C0032.m436() <= 0) {
                        str6 = strM635;
                        str3 = str2;
                    } else {
                        obj = "۠۠ۨ";
                        str6 = strM635;
                        str3 = str2;
                    }
                    break;
                case 7264:
                    int iM447 = C0032.m447(str3, C0024.m133(str, i5)) << 4;
                    int iM448 = C0032.m447(str3, C0024.m133(str, i5 + 1));
                    C0033.m683(byteArrayOutputStream, (iM447 & iM448) | (iM447 ^ iM448));
                    obj = "ۡۥ";
                    break;
                case 7270:
                    if (i7 >= i6) {
                        if (C0033.m706() > 0) {
                            obj = "ۡۥۨ";
                        }
                    } else if (C0033.m706() <= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۧۡۢ";
                    }
                    break;
                case 7343:
                case 1733338:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                        obj = "ۣۣۡ";
                    } else {
                        obj = "ۣۤۢ";
                    }
                    break;
                case 7580:
                    if (C0024.m84(strM636) <= 0) {
                        int iM85 = C0024.m84(strM636);
                        int iM86 = C0024.m84(str6);
                        if (C0024.m165xf0c433e8() <= 0) {
                            C0033.m706();
                            i6 = iM85;
                            i9 = iM86;
                            obj = "۟ۡۦ";
                        } else {
                            i6 = iM85;
                            i9 = iM86;
                            obj = "ۦ۠۠";
                        }
                    } else if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        obj = "ۥ۠ۤ";
                    }
                    break;
                case 7646:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        i5 = i2;
                    } else {
                        obj = "ۥۣ۟";
                        i5 = i2;
                    }
                    break;
                case 26530:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                        obj = "۠۟ۡ";
                        strM636 = strM93;
                    } else {
                        obj = "ۢۨ۟";
                        strM636 = strM93;
                    }
                    break;
                case 26820:
                    String strM225 = C0025.m224(C0033.m677(stringBuffer, ((i8 ^ (-1)) & i4) | ((i4 ^ (-1)) & i8)));
                    int i11 = i4 + 1;
                    if (C0025.m186() >= 0) {
                        i4 = i11;
                        str5 = strM225;
                        obj = "ۨۨۧ";
                    } else {
                        i4 = i11;
                        str5 = strM225;
                        obj = "۟ۢۥ";
                    }
                    break;
                case 27533:
                    byte b = bArrM214[i7];
                    char cM133 = C0024.m133(str6, i7 % i9);
                    bArrM214[i7] = (byte) ((b & (cM133 ^ (-1))) | ((b ^ (-1)) & cM133));
                    obj = "ۣ۟";
                    break;
                case 27597:
                    obj = "ۤ۠ۧ";
                    break;
                case 28553:
                    break;
                case 28579:
                    i3 = 0;
                    if (C0026.m329() > 0) {
                        obj = "ۤۨ۟";
                    }
                    break;
                case 28590:
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                        obj = "۠ۤۤ";
                    } else {
                        obj = "۟۟ۨ";
                    }
                    break;
                case 1733255:
                    if (C0025.m186() < 0) {
                        obj = "ۣ۠ۧ";
                    }
                    break;
                case 1733345:
                    int i12 = i5 + 2;
                    if (C0026.m329() <= 0) {
                        i5 = i12;
                        obj = "ۣۣۨ";
                    } else {
                        i5 = i12;
                        obj = "ۥ۠۟";
                    }
                    break;
                case 1733921:
                    i7 = (i7 - 19) + 1 + 19;
                    obj = "۠ۡۧ";
                    break;
                default:
                    break;
            }
            return new String(bArrM214);
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁠⁠⁠⁤, reason: not valid java name and contains not printable characters */
    public static void m344(Object obj, int i, Object obj2) {
        String str = "ۣۥۨ";
        while (true) {
            switch (C0033.m669((Object) str) ^ 1750686) {
                case 88:
                    if (C0033.m596() >= 0) {
                        str = C0032.m436() <= 0 ? "۠ۢۨ" : "ۤۦۥ";
                    }
                    break;
                case 446:
                    if (C0025.m186() >= 0) {
                        str = "ۤۦ۠";
                    } else {
                        str = "ۣۥۨ";
                        continue;
                    }
                    break;
                case 3132:
                    break;
                case 3133:
                    C0032.m477((Cipher) obj, i, (Key) obj2);
                    str = "ۨۡۡ";
                    continue;
                case 32662:
                    return;
                default:
                    continue;
            }
            str = "ۨۡۡ";
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁠⁠⁣, reason: not valid java name and contains not printable characters */
    public static InputStream m345(Object obj, Object obj2) {
        String str = "ۣ۟ۤ";
        InputStream inputStream = null;
        InputStream inputStreamM676 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1752522) {
                case MysqlErrorNumbers.ER_MTS_CHANGE_MASTER_CANT_RUN_WITH_GAPS /* 1802 */:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۢۨۢ";
                    } else {
                        continue;
                    }
                    break;
                case 3010:
                    if (C0033.m609() > 0) {
                        break;
                    } else if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        str = "ۨۨ";
                    }
                    break;
                case 3734:
                    str = "ۧۦۧ";
                    inputStream = null;
                    continue;
                case 3754:
                    if (C0032.m436() > 0) {
                        str = "ۣ۟ۤ";
                    } else {
                        continue;
                    }
                    break;
                case 3881:
                case 30734:
                    str = "ۧۨۤ";
                    continue;
                case 5836:
                    if (C0026.m329() <= 0) {
                        C0026.m329();
                        str = "ۦۧۨ";
                        inputStream = inputStreamM676;
                    } else {
                        str = "ۧۨۤ";
                        inputStream = inputStreamM676;
                        continue;
                    }
                    break;
                case 30754:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str = "ۦۦۧ";
                    } else {
                        str = "ۢۤۥ";
                        continue;
                    }
                    break;
                case 30895:
                    break;
                case 31721:
                    return inputStream;
                case 1728714:
                    inputStreamM676 = C0033.m676((AssetManager) obj, (String) obj2);
                    str = "۠ۡۧ";
                    continue;
                default:
                    continue;
            }
            if (C0032.m436() > 0) {
                str = "ۣۤۧ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁣⁠⁣⁤⁣, reason: not valid java name and contains not printable characters */
    public static Object m346(Object obj) {
        String str = "ۣ۠۟";
        Object obj2 = null;
        Object objM629 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1746878) {
                case 30:
                    return obj2;
                case 62:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str = "ۧۥ";
                        obj2 = objM629;
                    } else {
                        str = "۟ۤۥ";
                        obj2 = objM629;
                        continue;
                    }
                    break;
                case 97:
                case 28342:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                    } else {
                        str = "۟ۤۥ";
                        continue;
                    }
                    break;
                case 3202:
                    if (C0024.m138() < 0) {
                        break;
                    } else if (C0033.m706() <= 0) {
                        C0032.m436();
                        str = "ۣۤ۟";
                    } else {
                        str = "ۤۦ";
                    }
                    break;
                case 4378:
                    break;
                case 4575:
                    if (C0024.m165xf0c433e8() <= 0) {
                        obj2 = null;
                    } else {
                        str = "ۦۡۦ";
                        obj2 = null;
                        continue;
                    }
                    break;
                case 5376:
                    str = "ۣۢ۠";
                    continue;
                case 26165:
                    str = "ۨۡۡ";
                    continue;
                case 28530:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str = "ۢ۟ۨ";
                    } else {
                        str = "ۣ۠۟";
                        continue;
                    }
                    break;
                case 1735484:
                    objM629 = C0033.m629((Iterator) obj);
                    str = "ۣ۟ۤ";
                    continue;
                default:
                    continue;
            }
            str = "ۣۢ۟";
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁤⁣⁠⁣⁠, reason: not valid java name and contains not printable characters */
    public static void m347(Object obj) {
        Object obj2 = "ۢۨ۟";
        while (true) {
            switch (C0033.m669(obj2) ^ 56293) {
                case 1708686:
                    if (C0026.m329() > 0) {
                        obj2 = "ۢۨ۟";
                    } else {
                        continue;
                    }
                    break;
                case 1708750:
                    C0032.m557((Application) obj);
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                    } else {
                        obj2 = "۠۟۠";
                        continue;
                    }
                    break;
                case 1730748:
                    if (C0024.m138() <= 0) {
                        break;
                    } else if (C0033.m706() > 0) {
                        obj2 = "ۨۢۥ";
                    }
                    break;
                case 1730851:
                    break;
                case 1732900:
                    return;
                default:
                    continue;
            }
            obj2 = C0032.m436() <= 0 ? "ۤۡۤ" : "۠۟۠";
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁤⁣⁠⁤⁤, reason: not valid java name and contains not printable characters */
    public static short[] m348() {
        String str = "ۣ۠ۤ";
        short[] sArr = null;
        short[] sArrM332 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1752547) {
                case MysqlErrorNumbers.ER_FK_COLUMN_NOT_NULL /* 1830 */:
                    str = "ۣ۠ۤ";
                    continue;
                case MysqlErrorNumbers.ER_BINLOG_UNSAFE_FULLTEXT_PLUGIN /* 1889 */:
                    if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                        str = "ۥۥۦ";
                        sArr = null;
                    } else {
                        str = "ۡۥۣ";
                        sArr = null;
                        continue;
                    }
                    break;
                case 1917:
                case 4893:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۡۤ۠";
                    } else {
                        continue;
                    }
                    break;
                case 4828:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        str = "ۡۦ۠";
                    } else {
                        str = "ۤۦ۠";
                        continue;
                    }
                    break;
                case 4862:
                    return sArr;
                case 5820:
                    if (C0024.m138() >= 0) {
                        str = "۟۟ۢ";
                    }
                    break;
                case 6881:
                    sArrM332 = m332();
                    str = "ۧۦۡ";
                    continue;
                case 30721:
                    if (C0024.m165xf0c433e8() <= 0) {
                        sArr = sArrM332;
                    } else {
                        str = "ۡۤ۠";
                        sArr = sArrM332;
                        continue;
                    }
                    break;
                case 30891:
                    break;
                case 30894:
                    if (C0033.m706() > 0) {
                        str = "ۤۥۣ";
                    } else {
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0025.m186() < 0) {
                str = "ۧۡۧ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁤⁣⁤⁠⁤, reason: not valid java name and contains not printable characters */
    public static String m349(short[] sArr, int i, int i2, int i3) {
        String str = "۠۠ۢ";
        short s = 0;
        int i4 = 0;
        char[] cArr = null;
        int i5 = 0;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1748610) {
                case MysqlErrorNumbers.ER_WRONG_OUTER_JOIN /* 1120 */:
                    cArr = new char[i2];
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                        str = "ۣۨۥ";
                    } else {
                        str = "ۣۤۨ";
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_CANT_FIND_DL_ENTRY /* 1127 */:
                    str = "ۥۣۨ";
                    i4 = i5;
                    continue;
                case MysqlErrorNumbers.ER_UNKNOWN_TARGET_BINLOG /* 1373 */:
                    str = "۠۠ۢ";
                    continue;
                case MysqlErrorNumbers.ER_LOAD_FROM_FIXED_SIZE_ROWS_TO_VAR /* 1409 */:
                    cArr[i4] = (char) (((s ^ (-1)) & i3) | ((i3 ^ (-1)) & s));
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        str = "ۧۥۥ";
                    } else {
                        str = "ۨ۟۠";
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_CANT_CREATE_USER_WITH_GRANT /* 1410 */:
                    str = "ۢۧۧ";
                    i4 = 0;
                    continue;
                case MysqlErrorNumbers.ER_ADMIN_WRONG_MRG_TABLE /* 1472 */:
                    s = sArr[0 - ((0 - i) - i4)];
                    if (C0026.m329() > 0) {
                        str = "۠ۡۤ";
                    } else {
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_DROP_FILEGROUP_FAILED /* 1529 */:
                    return new String(cArr);
                case 4232:
                    if (C0026.m329() <= 0) {
                        str = "ۣۣۥ";
                    } else {
                        str = "ۤۡۥ";
                        continue;
                    }
                    break;
                case 5258:
                case 5961:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۢۧۧ";
                        continue;
                    }
                    break;
                case 5323:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                        str = "ۡ۟ۥ";
                    } else {
                        str = "۠ۡۡ";
                        continue;
                    }
                    break;
                case 7616:
                    if (i4 >= i2) {
                        break;
                    } else if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        str = "ۣ۠ۥ";
                    }
                    break;
                case 26187:
                    i5 = i4 + 1;
                    str = "۠۠ۥ";
                    continue;
                case 26597:
                    break;
                default:
                    continue;
            }
            if (C0026.m329() > 0) {
                str = "۠ۥ۠";
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0083 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x007c A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x000d. Please report as an issue. */
    /* JADX INFO: renamed from: ⁣⁤⁤⁤⁣⁣⁣, reason: not valid java name and contains not printable characters */
    public static void m350(Object obj, boolean z) {
        Double dValueOf = null;
        Object obj2 = "ۣۥۢ";
        while (true) {
            switch (C0033.m669(obj2) ^ 1746818) {
                case 88:
                    obj2 = "ۣۥۢ";
                    break;
                case 124:
                    if (C0033.m706() <= 0) {
                        if (C0025.m186() >= 0) {
                            C0032.m436();
                        } else {
                            obj2 = "۟۠ۦ";
                        }
                    } else if (C0026.m329() <= 0) {
                        C0025.m186();
                        obj2 = "ۣۨۦ";
                    } else {
                        obj2 = "۟ۡۧ";
                    }
                    break;
                case CipherSuite.TLS_DH_anon_WITH_AES_256_GCM_SHA384 /* 167 */:
                    dValueOf = Double.valueOf(C0033.m607("dPdL5iBqSLbiwQV7TZfYNx"));
                    obj2 = "ۧۦ۠";
                    break;
                case 199:
                    break;
                case 4418:
                    if (C0024.m138() >= 0) {
                        obj2 = C0032.m436() <= 0 ? "ۨۨۦ" : "ۦۡ۠";
                    } else {
                        obj2 = "۟ۧۦ";
                    }
                    break;
                case 5249:
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                        obj2 = "ۣۨۦ";
                    } else {
                        obj2 = "۟ۡۧ";
                    }
                    break;
                case 6621:
                    obj2 = "۟ۧۦ";
                    break;
                case 25187:
                    System.out.println(dValueOf);
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                        obj2 = "ۢۤ";
                    } else {
                        obj2 = "۟ۡۧ";
                    }
                    break;
                case 26119:
                    C0033.m604((Method) obj, z);
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        obj2 = "۟ۧۦ";
                    }
                    break;
                default:
                    break;
            }
            return;
        }
    }

    /* JADX INFO: renamed from: ⁤⁤⁠⁠⁤, reason: not valid java name and contains not printable characters */
    public static boolean m351() {
        String str = "۠ۨ۟";
        boolean z = false;
        boolean zM503 = false;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1748645) {
                case 69:
                case 27459:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۥۡۢ";
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_VIEW_NO_INSERT_FIELD_LIST /* 1394 */:
                    if (C0033.m609() < 0) {
                        str = "ۧۤۨ";
                    }
                    break;
                case MysqlErrorNumbers.ER_BINLOG_UNSAFE_WRITE_AUTOINC_SELECT /* 1722 */:
                    break;
                case 4963:
                    return z;
                case 6318:
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                        str = "۟ۨۧ";
                    } else {
                        str = "۠ۨ۟";
                        continue;
                    }
                    break;
                case 27406:
                    zM503 = C0032.m503();
                    if (C0033.m706() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۡۥ";
                        continue;
                    }
                    break;
                case 27599:
                    str = "ۧۦۥ";
                    continue;
                case 1733178:
                    str = "ۧۢۥ";
                    z = false;
                    continue;
                case 1733249:
                    str = "ۥۡۢ";
                    z = zM503;
                    continue;
                case 1733280:
                    str = "ۥۤ";
                    continue;
                default:
                    continue;
            }
            if (C0032.m436() <= 0) {
                C0033.m706();
            } else {
                str = "۠ۥ";
            }
        }
    }
}
