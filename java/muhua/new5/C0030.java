package muhua.new5;

import android.content.Context;
import android.content.res.AssetManager;
import com.mysql.jdbc.MysqlErrorNumbers;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import org.bouncycastle.crypto.tls.CipherSuite;

/* JADX INFO: renamed from: muhua.new5.⁣⁤⁠⁠⁣⁠, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public class C0030 {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f16short = {1152, 1215, 1209};

    /* JADX INFO: renamed from: ⁠⁣⁣⁠⁣⁠, reason: not valid java name and contains not printable characters */
    public static boolean f17;

    /* JADX INFO: renamed from: ۠ۢۡ, reason: not valid java name and contains not printable characters */
    public static short[] m380() {
        String str = "ۥ۟";
        short[] sArr = null;
        short[] sArr2 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 56512) {
                case 62:
                    str = "ۨ۠ۧ";
                    sArr = null;
                    continue;
                case 90:
                    if (C0033.m706() > 0) {
                        str = "ۧ۠ۦ";
                    }
                    break;
                case 96:
                case 1733125:
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                        str = "۟ۢۧ";
                    } else {
                        str = "ۥۦۧ";
                        continue;
                    }
                    break;
                case 1709103:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۥۥ";
                    } else {
                        continue;
                    }
                    break;
                case 1710573:
                    sArr2 = f16short;
                    if (C0026.m329() > 0) {
                        str = "ۡ۠ۦ";
                    } else {
                        continue;
                    }
                    break;
                case 1711498:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str = "ۤ۟ۥ";
                    } else {
                        str = "ۥ۟";
                        continue;
                    }
                    break;
                case 1729190:
                    return sArr;
                case 1732505:
                    if (C0032.m436() > 0) {
                        str = "ۨۦ";
                    } else {
                        continue;
                    }
                    break;
                case 1733223:
                    str = "ۥۦۧ";
                    sArr = sArr2;
                    continue;
                case 1733537:
                    break;
                default:
                    continue;
            }
            str = "ۢۨ۟";
        }
    }

    /* JADX INFO: renamed from: ⁠⁠⁠⁠⁤, reason: not valid java name and contains not printable characters */
    public static byte[] m381(Object obj, Object obj2) {
        String str = "ۥ۠۠";
        byte[] bArr = null;
        byte[] bArrM238 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1752546) {
                case 42:
                    str = "ۣۨۤ";
                    continue;
                case 71:
                    if (C0024.m138() >= 0) {
                        str = "ۡۢۥ";
                    }
                    break;
                case 1921:
                case 29867:
                    str = "۠ۤۤ";
                    continue;
                case 4870:
                    bArrM238 = C0025.m238((application5) obj, (byte[]) obj2);
                    str = "۠۟ۥ";
                    continue;
                case 5628:
                    str = "ۥۡۤ";
                    bArr = null;
                    continue;
                case 5762:
                    return bArr;
                case 5924:
                    str = "۠ۤۤ";
                    bArr = bArrM238;
                    continue;
                case 5926:
                    if (C0025.m186() < 0) {
                        str = "ۥ۠۠";
                    } else {
                        continue;
                    }
                    break;
                case 30862:
                    break;
                case 1728893:
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                    } else {
                        str = "۟ۨۧ";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0033.m706() <= 0) {
                C0026.m329();
            } else {
                str = "ۥۤ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁠⁠⁠⁣⁣⁤, reason: not valid java name and contains not printable characters */
    public static Object m382(Object obj, Object obj2, Object obj3) {
        String str = "ۡ۠ۡ";
        Object obj4 = null;
        Object objM83 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1746967) {
                case 936:
                    break;
                case 971:
                    objM83 = C0024.m83((Method) obj, obj2, (Object[]) obj3);
                    str = "ۢ۠۟";
                    continue;
                case MysqlErrorNumbers.ER_BINLOG_UNSAFE_CREATE_IGNORE_SELECT /* 1717 */:
                    if (C0033.m609() < 0) {
                        str = "۠ۨۤ";
                    }
                    break;
                case 4021:
                    return obj4;
                case 4076:
                case 4695:
                    if (C0026.m329() > 0) {
                        str = "۟ۤۧ";
                    } else {
                        continue;
                    }
                    break;
                case 5554:
                    str = "ۡ۠ۡ";
                    continue;
                case 6774:
                    if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                        obj4 = objM83;
                    } else {
                        str = "۟ۤۧ";
                        obj4 = objM83;
                        continue;
                    }
                    break;
                case 27931:
                    if (C0032.m436() <= 0) {
                        obj4 = null;
                    } else {
                        str = "ۣۧۧ";
                        obj4 = null;
                        continue;
                    }
                    break;
                case 28060:
                    str = "ۣ۟ۧ";
                    continue;
                case 1733834:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۧ۟ۤ";
                    } else {
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            str = "ۧۤ";
        }
    }

    /* JADX INFO: renamed from: ⁠⁠⁣⁤⁤⁣, reason: not valid java name and contains not printable characters */
    public static boolean m383(Object obj, Object obj2) {
        Object obj3 = "ۡۢۤ";
        boolean z = false;
        boolean zM190 = false;
        while (true) {
            switch (C0033.m669(obj3) ^ 56293) {
                case MysqlErrorNumbers.ER_MUST_CHANGE_PASSWORD /* 1820 */:
                    return z;
                case 1710762:
                case 1728866:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                    } else {
                        obj3 = "ۨۡ";
                        continue;
                    }
                    break;
                case 1711712:
                    if (C0032.m436() > 0) {
                        obj3 = "ۣ۠ۢ";
                    } else {
                        continue;
                    }
                    break;
                case 1729059:
                    obj3 = "ۨۡ";
                    z = zM190;
                    continue;
                case 1729957:
                    zM190 = C0025.m190((ArrayList) obj, obj2);
                    if (C0032.m436() > 0) {
                        obj3 = "ۤ۟ۡ";
                    } else {
                        continue;
                    }
                    break;
                case 1732032:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                        z = false;
                    } else {
                        obj3 = "ۣ۠۠";
                        z = false;
                        continue;
                    }
                    break;
                case 1732698:
                    break;
                case 1732824:
                    if (C0032.m436() <= 0) {
                        obj3 = "ۣ۠ۧ";
                    } else {
                        obj3 = "ۦ۟ۨ";
                        continue;
                    }
                    break;
                case 1733631:
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        obj3 = "ۡۢۤ";
                        continue;
                    }
                    break;
                case 1733894:
                    if (C0025.m226() <= 0) {
                        break;
                    } else if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj3 = "ۥۥ۠";
                    }
                    break;
                default:
                    continue;
            }
            obj3 = "ۣۧۡ";
        }
    }

    /* JADX INFO: renamed from: ⁠⁣⁣⁠⁣⁠, reason: not valid java name and contains not printable characters */
    public static byte[] m384(Object obj) {
        Object obj2 = "ۣ۟ۧ";
        byte[] bArr = null;
        byte[] bArrM134 = null;
        while (true) {
            switch (C0033.m669(obj2) ^ 1749795) {
                case 96:
                    obj2 = "ۣ۟ۧ";
                    continue;
                case 320:
                case 1732423:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                        obj2 = "ۧۤۡ";
                    } else {
                        obj2 = "ۧ۟ۢ";
                        continue;
                    }
                    break;
                case 450:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                    } else {
                        obj2 = "ۦۤۤ";
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_TOO_LONG_BODY /* 1437 */:
                    bArrM134 = C0024.m134((String) obj);
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                    } else {
                        obj2 = "ۤۥۥ";
                        continue;
                    }
                    break;
                case 2471:
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                        bArr = bArrM134;
                    } else {
                        obj2 = "ۧ۟ۢ";
                        bArr = bArrM134;
                        continue;
                    }
                    break;
                case 5336:
                    if (C0033.m609() < 0) {
                        obj2 = C0024.m165xf0c433e8() <= 0 ? "ۦۧ" : "ۣۥ۠";
                    }
                    break;
                case 7299:
                    break;
                case 29381:
                    obj2 = "۠ۦ";
                    bArr = null;
                    continue;
                case 30249:
                    return bArr;
                case 1732389:
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                    } else {
                        obj2 = "ۣۧ";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            obj2 = "ۣۢۤ";
        }
    }

    /* JADX INFO: renamed from: ⁠⁤⁣, reason: not valid java name and contains not printable characters */
    public static String m385(Object obj) {
        String str = "۟ۧۤ";
        String str2 = null;
        String strM593 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1750786) {
                case 419:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۥۣ۟";
                    } else {
                        continue;
                    }
                    break;
                case 2307:
                    if (C0033.m706() <= 0) {
                        str = "۟ۦۥ";
                        str2 = null;
                    } else {
                        str = "ۡۢۢ";
                        str2 = null;
                        continue;
                    }
                    break;
                case 2735:
                case 32361:
                    if (C0025.m186() < 0) {
                        str = "ۤۡۦ";
                    } else {
                        continue;
                    }
                    break;
                case 2762:
                    if (C0033.m706() > 0) {
                        str = "۟ۧۤ";
                    } else {
                        continue;
                    }
                    break;
                case 3339:
                    return str2;
                case 4350:
                    if (C0025.m226() > 0) {
                        str = "ۧۨ";
                    }
                    break;
                case 6271:
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                        str = "ۢۡۨ";
                        str2 = strM593;
                    } else {
                        str = "ۤۡۦ";
                        str2 = strM593;
                        continue;
                    }
                    break;
                case 6627:
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۥ۠ۨ";
                        continue;
                    }
                    break;
                case 30047:
                    break;
                case 1731555:
                    strM593 = C0033.m593((byte[]) obj);
                    str = "ۣۡۧ";
                    continue;
                default:
                    continue;
            }
            str = "ۣۤۢ";
        }
    }

    /* JADX INFO: renamed from: ⁠⁤⁣⁠⁣⁣, reason: not valid java name and contains not printable characters */
    public static byte[] m386(Object obj, Object obj2) {
        Object obj3 = "ۨ۟ۥ";
        byte[] bArr = null;
        byte[] bArrM496 = null;
        while (true) {
            switch (C0033.m669(obj3) ^ 1754564) {
                case 999:
                    obj3 = "ۨ۟ۥ";
                    continue;
                case 1957:
                case 27300:
                    obj3 = "ۥۤۤ";
                    continue;
                case 3180:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        obj3 = "ۦۣۨ";
                        continue;
                    }
                    break;
                case 3338:
                    if (C0033.m609() >= 0) {
                        break;
                    } else if (C0032.m436() <= 0) {
                        C0026.m329();
                        obj3 = "ۦۣ۟";
                    } else {
                        obj3 = "ۥۥ";
                    }
                    break;
                case 29568:
                    break;
                case 29574:
                    obj3 = "ۤ۠ۧ";
                    continue;
                case 31713:
                    return bArr;
                case 31791:
                    if (C0025.m186() >= 0) {
                        bArr = null;
                    } else {
                        obj3 = "ۨۦۦ";
                        bArr = null;
                        continue;
                    }
                    break;
                case 1710436:
                    bArrM496 = C0032.m496((Cipher) obj, (byte[]) obj2);
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj3 = "۠ۦ";
                        continue;
                    }
                    break;
                case 1710530:
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                        bArr = bArrM496;
                    } else {
                        obj3 = "ۥۤۤ";
                        bArr = bArrM496;
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0024.m165xf0c433e8() <= 0) {
                C0024.m165xf0c433e8();
                obj3 = "ۤۤۨ";
            } else {
                obj3 = "ۣۡ۠";
            }
        }
    }

    /* JADX INFO: renamed from: ⁠⁤⁣⁠⁣⁤, reason: not valid java name and contains not printable characters */
    public static AssetManager m387(Object obj) {
        String str = "۟۟ۦ";
        AssetManager assetManager = null;
        AssetManager assetManagerM543 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1747934) {
                case 5:
                    str = "۟ۨۦ";
                    continue;
                case 963:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                        assetManager = null;
                    } else {
                        str = "ۣۢۡ";
                        assetManager = null;
                        continue;
                    }
                    break;
                case 3111:
                    if (C0033.m706() > 0) {
                        str = "۟۟ۦ";
                    } else {
                        continue;
                    }
                    break;
                case 3288:
                    if (C0025.m226() <= 0) {
                        break;
                    } else if (C0025.m186() >= 0) {
                        C0032.m436();
                        str = "ۨۧ۟";
                    } else {
                        str = "ۥۢ";
                    }
                    break;
                case 5630:
                case 6397:
                    if (C0025.m186() < 0) {
                        str = "ۦ۟۠";
                    } else {
                        continue;
                    }
                    break;
                case 6336:
                    break;
                case 6430:
                    if (C0025.m186() < 0) {
                        str = "ۢۦۧ";
                    } else {
                        continue;
                    }
                    break;
                case 7609:
                    str = "ۦ۟۠";
                    assetManager = assetManagerM543;
                    continue;
                case 27289:
                    return assetManager;
                case 1734467:
                    assetManagerM543 = C0032.m543((Context) obj);
                    str = "ۣۢۦ";
                    continue;
                default:
                    continue;
            }
            if (C0026.m329() <= 0) {
                C0026.m329();
            } else {
                str = "ۣ۠ۨ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁠, reason: not valid java name and contains not printable characters */
    public static Set m388(Object obj) {
        Object obj2 = "۟ۢۦ";
        Set set = null;
        Set setM270 = null;
        while (true) {
            switch (C0033.m669(obj2) ^ 1749664) {
                case 227:
                    setM270 = C0025.m270((Map) obj);
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        obj2 = "ۦۨۢ";
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_FORM_NOT_FOUND /* 1029 */:
                case 3948:
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                    } else {
                        obj2 = "ۤۢۧ";
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_USERNAME /* 1468 */:
                    break;
                case 2185:
                    return set;
                case 3240:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                    } else {
                        obj2 = "ۣۤۦ";
                        continue;
                    }
                    break;
                case 5497:
                    obj2 = "۠ۤۡ";
                    continue;
                case 5571:
                    if (C0024.m138() <= 0) {
                        break;
                    } else if (C0024.m165xf0c433e8() > 0) {
                        obj2 = "ۢ۟۠";
                    }
                    break;
                case 6653:
                    if (C0024.m165xf0c433e8() <= 0) {
                        obj2 = "ۨۧۦ";
                        set = null;
                    } else {
                        obj2 = "ۥۣۦ";
                        set = null;
                        continue;
                    }
                    break;
                case 6843:
                    if (C0025.m186() < 0) {
                        obj2 = "۟ۢۦ";
                    } else {
                        continue;
                    }
                    break;
                case 28864:
                    obj2 = "ۤۢۧ";
                    set = setM270;
                    continue;
                default:
                    continue;
            }
            if (C0025.m186() >= 0) {
                C0025.m186();
                obj2 = "ۨۢ۟";
            } else {
                obj2 = "۟ۦ۠";
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:185:0x02f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:187:0x02ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:195:0x02a7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:197:0x02a2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:206:0x02be A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:0x02b9 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x004c. Please report as an issue. */
    /* JADX INFO: renamed from: ⁣⁠⁠⁣⁤, reason: not valid java name and contains not printable characters */
    public static String m389(String str) {
        String strM634 = null;
        String strM635 = null;
        String str2 = null;
        String str3 = null;
        int i = 0;
        int i2 = 0;
        String strM224 = null;
        StringBuffer stringBufferM577 = null;
        String strM225 = null;
        int iM447 = 0;
        int iM448 = 0;
        int i3 = 0;
        byte b = 0;
        char cM133 = 0;
        int i4 = 0;
        int iM84 = 0;
        String str4 = "ۦۣ۟";
        int i5 = 0;
        String str5 = null;
        int i6 = 0;
        String str6 = null;
        int i7 = 0;
        ByteArrayOutputStream byteArrayOutputStream = null;
        int i8 = 0;
        byte[] bArrM214 = null;
        int length = 0;
        int iM85 = 0;
        int i9 = 0;
        while (true) {
            switch (C0033.m669((Object) str4) ^ 1747718) {
                case 6:
                case 3108:
                    if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str4 = "ۡۤ";
                    }
                    break;
                case 24:
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                    } else {
                        str4 = "ۢۧۢ";
                    }
                    break;
                case 56:
                    str4 = "ۣۣۤ";
                    str6 = strM225;
                    str5 = strM224;
                    break;
                case 70:
                    if (iM84 >= bArrM214.length) {
                        if (C0033.m706() <= 0) {
                            C0025.m186();
                        } else {
                            str4 = "ۦۢۡ";
                        }
                    } else if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        str4 = "ۥۡ";
                    }
                    break;
                case CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256 /* 156 */:
                    str4 = "ۦۣ۟";
                    break;
                case 230:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                        i8 = i3;
                    } else {
                        str4 = "ۡۢ";
                        i8 = i3;
                    }
                    break;
                case 462:
                    i = 0;
                    if (C0024.m165xf0c433e8() > 0) {
                        str4 = "ۥۣ۟";
                    }
                    break;
                case 795:
                case MysqlErrorNumbers.ER_TOO_MANY_TABLES /* 1116 */:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        str4 = "ۢۡۦ";
                    }
                    break;
                case MysqlErrorNumbers.ER_ERROR_ON_WRITE /* 1026 */:
                case MysqlErrorNumbers.ER_XAER_DUPID /* 1440 */:
                    if (C0026.m329() <= 0) {
                        C0026.m329();
                    } else {
                        str4 = "ۥۦ۟";
                    }
                    break;
                case MysqlErrorNumbers.ER_DATETIME_FUNCTION_OVERFLOW /* 1441 */:
                case 6234:
                    str4 = "ۣۣ۠";
                    break;
                case MysqlErrorNumbers.ER_CANT_UPDATE_USED_TABLE_IN_SF_OR_TRG /* 1442 */:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str6 = str3;
                        str5 = str2;
                    } else {
                        str4 = "ۦۤ۟";
                        str6 = str3;
                        str5 = str2;
                    }
                    break;
                case MysqlErrorNumbers.ER_PS_NO_RECURSION /* 1444 */:
                    b = bArrM214[i9];
                    cM133 = C0024.m133(str6, i9 % iM85);
                    str4 = "ۢ۠ۦ";
                    break;
                case MysqlErrorNumbers.ER_AMBIGUOUS_FIELD_TERM /* 1475 */:
                    str4 = "ۡ۠ۡ";
                    break;
                case 3111:
                    length = bArrM214.length;
                    iM85 = C0024.m84(str6);
                    if (C0025.m186() < 0) {
                        str4 = "ۦ۟۟";
                    }
                    break;
                case 3258:
                    str4 = "ۡۤ";
                    i9 = i2;
                    break;
                case 3577:
                    strM635 = C0033.m634();
                    str4 = "ۣۣۧ";
                    str2 = strM634;
                    break;
                case 4418:
                    str4 = "۟ۨۦ";
                    break;
                case 4448:
                    C0033.m683(byteArrayOutputStream, (iM447 ^ iM448) | (iM447 & iM448));
                    i3 = (i8 - 31) + 2 + 31;
                    str4 = "۠ۨۨ";
                    break;
                case 5383:
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                        i8 = i;
                    } else {
                        str4 = "ۥۦ۟";
                        i8 = i;
                    }
                    break;
                case 5464:
                    if (i8 >= C0024.m84(str)) {
                        bArrM214 = C0025.m214(byteArrayOutputStream);
                        if (C0032.m436() > 0) {
                            str4 = "۟۠ۢ";
                        }
                    } else if (C0025.m186() >= 0) {
                        C0026.m329();
                    } else {
                        str4 = "ۢۧۢ";
                    }
                    break;
                case 6150:
                    strM224 = C0025.m224(C0033.m577(C0033.m577(new StringBuffer(), str5), C0025.m305(i7)));
                    stringBufferM577 = C0033.m577(new StringBuffer(), str6);
                    str4 = "ۣۢۥ";
                    break;
                case 6203:
                    iM447 = C0032.m447(str5, C0024.m133(str, i8)) << 4;
                    iM448 = C0032.m447(str5, C0024.m133(str, 0 - ((0 - i8) - 1)));
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                        str4 = "ۦۦۦ";
                    } else {
                        str4 = "ۤۤۦ";
                    }
                    break;
                case 6239:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                        str4 = "ۦ۟ۤ";
                        iM84 = i5;
                    } else {
                        str4 = "ۣۣ۠";
                        iM84 = i5;
                    }
                    break;
                case 6246:
                    str4 = C0026.m329() <= 0 ? "۟۠۠" : "ۢۥۣ";
                    break;
                case 6510:
                    bArrM214[i9] = (byte) (((b ^ (-1)) & cM133) | ((cM133 ^ (-1)) & b));
                    i4 = 0 - ((0 - i9) - 1);
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                        str4 = "۟ۦ";
                    } else {
                        str4 = "ۢۡۧ";
                    }
                    break;
                case 6529:
                    if (i7 >= 15) {
                        byteArrayOutputStream = new ByteArrayOutputStream(C0024.m84(str) / 2);
                        if (C0026.m329() <= 0) {
                            C0024.m165xf0c433e8();
                            str4 = "۟ۥ۟";
                        } else {
                            str4 = "۠۟ۧ";
                        }
                    } else if (C0026.m329() <= 0) {
                    }
                    break;
                case 6542:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                        i9 = i4;
                    } else {
                        str4 = "ۨۡۦ";
                        i9 = i4;
                    }
                    break;
                case 7520:
                    int iM675 = (int) (C0033.m675() * ((double) 10));
                    strM225 = C0025.m224(C0033.m677(stringBufferM577, (iM675 & (i7 ^ (-1))) | ((iM675 ^ (-1)) & i7)));
                    str4 = "ۧۡۥ";
                    break;
                case 7673:
                    i6 = 0;
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                        str3 = strM635;
                    } else {
                        str4 = "ۣۡ۠";
                        str3 = strM635;
                    }
                    break;
                case 25099:
                    str4 = "ۣ۟۠";
                    break;
                case 25196:
                    if (C0026.m329() <= 0) {
                        C0026.m329();
                    } else {
                        str4 = "ۡ۠ۦ";
                    }
                    break;
                case 27200:
                    i2 = 0;
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                        str4 = "ۨۥۦ";
                    } else {
                        str4 = "۟ۥۢ";
                    }
                    break;
                case 27299:
                    break;
                case 27332:
                    i5 = 0;
                    strM634 = C0033.m634();
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                        str4 = "ۣۥۧ";
                    } else {
                        str4 = "۟۟۟";
                    }
                    break;
                case 27367:
                    if (C0032.m436() <= 0) {
                        str4 = "ۡۢۦ";
                        i7 = i6;
                    } else {
                        str4 = "ۢۡۦ";
                        i7 = i6;
                    }
                    break;
                case 28237:
                    i7 = 1 - (0 - i7);
                    str4 = "ۣ۠ۡ";
                    break;
                case 28267:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        str4 = "ۥۡ";
                    }
                    break;
                case 1734437:
                    if (i9 < length) {
                        str4 = "ۡ۠ۡ";
                    } else if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                        str4 = "ۣۢۤ";
                    } else {
                        str4 = "ۢۨ۟";
                    }
                    break;
                case 1734439:
                    str4 = "ۣۡۦ";
                    break;
                case 1734554:
                    iM84 = C0024.m84(C0033.m634()) + 1;
                    if (C0026.m329() > 0) {
                        str4 = "ۨۤۦ";
                    }
                    break;
                default:
                    break;
            }
            return new String(bArrM214);
        }
    }

    /* JADX INFO: renamed from: ⁣⁠⁠⁤⁠⁣, reason: not valid java name and contains not printable characters */
    public static Iterator m390(Object obj) {
        Object obj2 = "ۡ۟ۤ";
        Iterator it = null;
        Iterator itM638 = null;
        while (true) {
            switch (C0033.m669(obj2) ^ 1755376) {
                case 312:
                    itM638 = C0033.m638((Collection) obj);
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                    } else {
                        obj2 = "ۧۨۨ";
                        continue;
                    }
                    break;
                case 375:
                    obj2 = "۠ۥۡ";
                    it = null;
                    continue;
                case 505:
                    break;
                case 3799:
                    obj2 = "۟۟ۦ";
                    it = itM638;
                    continue;
                case 25484:
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                    } else {
                        obj2 = "ۡ۟۟";
                        continue;
                    }
                    break;
                case 25586:
                    if (C0026.m329() > 0) {
                        obj2 = "ۡ۟ۤ";
                    } else {
                        continue;
                    }
                    break;
                case 26225:
                case 31419:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                        obj2 = "ۤ۟ۤ";
                    } else {
                        obj2 = "۟۟ۦ";
                        continue;
                    }
                    break;
                case 26230:
                    if (C0033.m596() > 0) {
                        obj2 = "ۨۧۧ";
                    }
                    break;
                case 28588:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                    } else {
                        obj2 = "ۨۥۤ";
                        continue;
                    }
                    break;
                case 28662:
                    return it;
                default:
                    continue;
            }
            if (C0025.m186() >= 0) {
                C0033.m706();
            } else {
                obj2 = "۟ۢ۟";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁠⁣⁠⁤⁤, reason: not valid java name and contains not printable characters */
    public static double m391() {
        String str = "ۡ۟۠";
        double d = 0.0d;
        double dM219 = 0.0d;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1753607) {
                case 1931:
                case 1711622:
                    str = "ۢ۟";
                    continue;
                case 2959:
                    if (C0026.m329() > 0) {
                        str = "ۣۧۨ";
                    } else {
                        continue;
                    }
                    break;
                case 25889:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۡ۟۠";
                    } else {
                        continue;
                    }
                    break;
                case 25987:
                    dM219 = C0025.m219();
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        str = "ۣۥۥ";
                        continue;
                    }
                    break;
                case 27165:
                    break;
                case 27781:
                    if (C0033.m609() >= 0) {
                        break;
                    } else if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                        str = "ۦ۟ۦ";
                    } else {
                        str = "ۣ۟ۨ";
                    }
                    break;
                case 27961:
                    str = "ۤۤۡ";
                    continue;
                case 29892:
                    if (C0025.m186() >= 0) {
                        str = "ۣۡۦ";
                        d = dM219;
                    } else {
                        str = "ۢ۟";
                        d = dM219;
                        continue;
                    }
                    break;
                case 30822:
                    if (C0032.m436() <= 0) {
                        d = 0.0d;
                    } else {
                        str = "ۨۥۥ";
                        d = 0.0d;
                        continue;
                    }
                    break;
                case 1711674:
                    return d;
                default:
                    continue;
            }
            str = "ۡۥۢ";
        }
    }

    /* JADX INFO: renamed from: ⁣⁠⁤⁤⁣⁤, reason: not valid java name and contains not printable characters */
    public static int m392(Object obj) {
        Object obj2 = "ۢۦ۟";
        int i = 0;
        int iM308 = 0;
        while (true) {
            switch (C0033.m669(obj2) ^ 1754473) {
                case 44:
                case 29621:
                    obj2 = "۟ۤ۟";
                    continue;
                case 64:
                    obj2 = "۟ۤ۟";
                    i = iM308;
                    continue;
                case 25224:
                    break;
                case 25331:
                    return i;
                case 27155:
                    if (C0026.m329() <= 0) {
                        obj2 = "ۢ۟ۤ";
                    } else {
                        obj2 = "ۢۦ۟";
                        continue;
                    }
                    break;
                case 27593:
                    if (C0025.m186() < 0) {
                        obj2 = "ۥۤۦ";
                    } else {
                        continue;
                    }
                    break;
                case 28598:
                    iM308 = C0025.m308((String) obj);
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        obj2 = "ۧ۠ۢ";
                        continue;
                    }
                    break;
                case 30322:
                    if (C0024.m138() > 0) {
                        obj2 = C0026.m329() <= 0 ? "ۧۢ۠" : "۠۠۟";
                    }
                    break;
                case 31566:
                    if (C0025.m186() >= 0) {
                        i = 0;
                    } else {
                        obj2 = "ۧ۠";
                        i = 0;
                        continue;
                    }
                    break;
                case 1710512:
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                    } else {
                        obj2 = "ۣۦ۟";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0033.m706() <= 0) {
                C0033.m706();
            } else {
                obj2 = "ۡ۠۟";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁣⁠⁠⁣⁤, reason: not valid java name and contains not printable characters */
    public static Object m393(Object obj, Object obj2) {
        Object obj3 = "۠ۢۨ";
        Object obj4 = null;
        Object objM642 = null;
        while (true) {
            switch (C0033.m669(obj3) ^ 1750687) {
                case 386:
                case 4503:
                    if (C0032.m436() <= 0) {
                        obj3 = "ۧۤۤ";
                    } else {
                        obj3 = "ۦۣۨ";
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_CYCLIC_REFERENCE /* 1245 */:
                    obj3 = "ۣۡۤ";
                    continue;
                case 2301:
                    objM642 = C0033.m642((Field) obj, obj2);
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                    } else {
                        obj3 = "۠ۧۨ";
                        continue;
                    }
                    break;
                case 6557:
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                        obj4 = null;
                    } else {
                        obj3 = "ۡۨ";
                        obj4 = null;
                        continue;
                    }
                    break;
                case 6654:
                    break;
                case 7518:
                    if (C0032.m436() <= 0) {
                        obj3 = "۠۠۟";
                        obj4 = objM642;
                    } else {
                        obj3 = "ۦۣۨ";
                        obj4 = objM642;
                        continue;
                    }
                    break;
                case 7609:
                    if (C0033.m596() < 0) {
                        break;
                    } else if (C0024.m165xf0c433e8() > 0) {
                        obj3 = "ۥۦۣ";
                    }
                    break;
                case 30548:
                    return obj4;
                case 32728:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        obj3 = "ۧۢۥ";
                    } else {
                        obj3 = "۠ۢۨ";
                        continue;
                    }
                    break;
                case 1731256:
                    obj3 = "۟۟ۨ";
                    continue;
                default:
                    continue;
            }
            obj3 = "ۢ۟۟";
        }
    }

    /* JADX INFO: renamed from: ⁣⁣⁤⁤⁤⁠, reason: not valid java name and contains not printable characters */
    public static String m394(Object obj) {
        String str = "ۦۡۥ";
        String str2 = null;
        String strM52 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1752708) {
                case MysqlErrorNumbers.ER_WRONG_VALUE_COUNT /* 1058 */:
                case 30700:
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۧۤۢ";
                        continue;
                    }
                    break;
                case 4550:
                    if (C0032.m436() > 0) {
                        str = "ۨۤۥ";
                    } else {
                        continue;
                    }
                    break;
                case 5403:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str2 = strM52;
                    } else {
                        str = "ۧۤۢ";
                        str2 = strM52;
                        continue;
                    }
                    break;
                case 30701:
                    str = "ۦۣۣ";
                    str2 = null;
                    continue;
                case 31521:
                    return str2;
                case 31559:
                    strM52 = C0024.m52((StringBuffer) obj);
                    str = "۠ۦۥ";
                    continue;
                case 31589:
                    break;
                case 32526:
                    if (C0033.m609() < 0) {
                        str = "ۧۥۡ";
                    }
                    break;
                case 32578:
                    str = "ۤۦۨ";
                    continue;
                case 1729179:
                    str = "ۦۡۥ";
                    continue;
                default:
                    continue;
            }
            if (C0026.m329() <= 0) {
                C0025.m186();
                str = "ۤۢ";
            } else {
                str = "ۡۥۦ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁠⁠⁣⁤, reason: not valid java name and contains not printable characters */
    public static String m395(short[] sArr, int i, int i2, int i3) {
        String str = "ۤۡۧ";
        short s = 0;
        int i4 = 0;
        char[] cArr = null;
        int i5 = 0;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1749761) {
                case 94:
                    i5 = 0 - ((0 - i4) - 1);
                    str = "ۥۣ۠";
                    continue;
                case 358:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۨ۟۟";
                        continue;
                    }
                    break;
                case 2315:
                    cArr = new char[i2];
                    if (C0033.m706() > 0) {
                        str = "۠۟ۧ";
                    } else {
                        continue;
                    }
                    break;
                case 2344:
                    if (i4 >= i2) {
                        break;
                    } else if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                    } else {
                        str = "۟ۦۢ";
                    }
                    break;
                case 3331:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                        i4 = i5;
                    } else {
                        str = "ۢ۠ۥ";
                        i4 = i5;
                        continue;
                    }
                    break;
                case 5155:
                    if (C0032.m436() <= 0) {
                        i4 = 0;
                    } else {
                        str = "ۤۢۧ";
                        i4 = 0;
                        continue;
                    }
                    break;
                case 5338:
                    s = sArr[i - (0 - i4)];
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۧ۟ۦ";
                        continue;
                    }
                    break;
                case 6601:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۣ۟۠";
                        continue;
                    }
                    break;
                case 28996:
                case 31689:
                    str = "ۤۢۧ";
                    continue;
                case 29412:
                    return new String(cArr);
                case 30223:
                    cArr[i4] = (char) (((s ^ (-1)) & i3) | ((i3 ^ (-1)) & s));
                    str = "ۢۨۥ";
                    continue;
                case 30409:
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۤۡۧ";
                        continue;
                    }
                    break;
                case 1732603:
                    break;
                default:
                    continue;
            }
            if (C0032.m436() <= 0) {
                C0026.m329();
            } else {
                str = "ۦۣۤ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁣⁣⁤⁠⁣, reason: not valid java name and contains not printable characters */
    public static int m396() {
        int iM479 = 0;
        int iIntValue = 0;
        int iIntValue2 = 0;
        short[] sArr = null;
        Object[] objArr = null;
        Object obj = "ۢ۟ۨ";
        while (true) {
            switch (C0033.m669(obj) ^ 1746693) {
                case 506:
                    objArr[0] = new Integer(9612734);
                    obj = C0033.m706() > 0 ? "ۣۣۥ" : "۟۟ۡ";
                    break;
                case 4480:
                    short[] sArrM380 = m380();
                    if (C0025.m186() < 0) {
                        sArr = sArrM380;
                        obj = "ۨ۠";
                    } else {
                        C0033.m706();
                        sArr = sArrM380;
                        obj = "ۡۢۢ";
                    }
                    break;
                case 5212:
                    obj = "ۢ۟ۨ";
                    break;
                case 5454:
                    objArr = new Object[2];
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۤۦ۟";
                    } else {
                        C0026.m329();
                    }
                    break;
                case 7576:
                    objArr[1] = new Integer(8568532);
                    obj = C0026.m329() > 0 ? "۟۟۟" : "ۦۨۥ";
                    break;
                case 7621:
                    return (1746789 & iM479) | ((iM479 ^ (-1)) & (-1746790));
                case 26217:
                    iIntValue = ((Integer) objArr[0]).intValue();
                    if (C0026.m329() > 0) {
                        obj = "ۨ۟ۧ";
                    } else {
                        C0033.m706();
                    }
                    break;
                case 28629:
                    iM479 = C0032.m479(C0033.m639(sArr, 0, ((iIntValue ^ (-1)) & 9612733) | ((-9612734) & iIntValue), ((iIntValue2 ^ (-1)) & 8567947) | ((-8567948) & iIntValue2)));
                    obj = "ۣۤۧ";
                    break;
                case 1735677:
                    iIntValue2 = ((Integer) objArr[1]).intValue();
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۦ۠ۦ";
                    } else {
                        C0033.m706();
                    }
                    break;
            }
        }
    }
}
