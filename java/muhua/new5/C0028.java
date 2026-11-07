package muhua.new5;

import android.app.Application;
import android.content.Context;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.mysql.jdbc.MysqlErrorNumbers;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import org.bouncycastle.crypto.tls.CipherSuite;

/* JADX INFO: renamed from: muhua.new5.⁣⁣⁤⁤⁣⁠, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public class C0028 {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f12short = {303, 302, 300};

    /* JADX INFO: renamed from: ⁣⁠⁠⁣⁣, reason: not valid java name and contains not printable characters */
    public static int f13 = 29;

    /* JADX INFO: renamed from: ⁠⁠⁠⁣⁣, reason: not valid java name and contains not printable characters */
    public static String m352(Object obj, Object obj2, Object obj3) {
        Object obj4 = "ۣۨۥ";
        String str = null;
        String strM204 = null;
        while (true) {
            switch (C0033.m669(obj4) ^ 1753446) {
                case 768:
                    strM204 = C0025.m204((String) obj, (CharSequence) obj2, (CharSequence) obj3);
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                    } else {
                        obj4 = "ۦۦۦ";
                        continue;
                    }
                    break;
                case 832:
                    if (C0032.m436() <= 0) {
                        str = strM204;
                    } else {
                        obj4 = "ۣۡۡ";
                        str = strM204;
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_ROW_IN_WRONG_PARTITION /* 1863 */:
                    if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                        obj4 = "ۢۢۤ";
                    } else {
                        obj4 = "ۤۦۦ";
                        continue;
                    }
                    break;
                case 26278:
                    obj4 = "ۢ۠۠";
                    continue;
                case 26521:
                case 31682:
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                        obj4 = "ۢۤ۠";
                    } else {
                        obj4 = "ۣۡۡ";
                        continue;
                    }
                    break;
                case 28581:
                    return str;
                case 29444:
                    if (C0033.m706() <= 0) {
                        str = null;
                    } else {
                        obj4 = "ۧۨۢ";
                        str = null;
                        continue;
                    }
                    break;
                case 30278:
                    if (C0033.m596() <= 0) {
                        break;
                    } else if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj4 = "ۦۨۨ";
                    }
                    break;
                case 31502:
                    if (C0033.m706() > 0) {
                        obj4 = "ۣۨۥ";
                    } else {
                        continue;
                    }
                    break;
                case 31712:
                    break;
                default:
                    continue;
            }
            if (C0025.m186() < 0) {
                obj4 = "۟ۥۦ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁠⁠⁣⁤⁣⁠, reason: not valid java name and contains not printable characters */
    public static String m353(int i, int i2) {
        String str = "۠۟ۧ";
        String str2 = null;
        String strM605 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1748835) {
                case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                    break;
                case 453:
                    if (C0025.m186() >= 0) {
                        str = "ۢۤۥ";
                        str2 = strM605;
                    } else {
                        str = "ۧۥ۟";
                        str2 = strM605;
                        continue;
                    }
                    break;
                case 459:
                    str = "ۡ۟۠";
                    str2 = null;
                    continue;
                case 481:
                    if (C0033.m706() > 0) {
                        str = "ۣ۟ۥ";
                    } else {
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_ROW_IS_REFERENCED_2 /* 1451 */:
                    if (C0024.m138() <= 0) {
                        break;
                    } else if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۤۢۢ";
                    }
                    break;
                case 5447:
                    strM605 = C0033.m605(i, i2);
                    if (C0026.m329() > 0) {
                        str = "ۡ۠ۥ";
                    } else {
                        continue;
                    }
                    break;
                case 6506:
                case 26310:
                    str = "ۧۥ۟";
                    continue;
                case 26182:
                    str = "ۡ۠ۧ";
                    continue;
                case 27269:
                    if (C0033.m706() > 0) {
                        str = "۠۟ۧ";
                    } else {
                        continue;
                    }
                    break;
                case 27298:
                    return str2;
                default:
                    continue;
            }
            if (C0032.m436() > 0) {
                str = "ۨۢ۟";
            }
        }
    }

    /* JADX INFO: renamed from: ⁠⁠⁤⁣⁠⁣, reason: not valid java name and contains not printable characters */
    public static StringBuffer m354(Object obj, char c) {
        String str = "ۦۤۢ";
        StringBuffer stringBuffer = null;
        StringBuffer stringBufferM696 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1754413) {
                case MysqlErrorNumbers.ER_UPDATE_TABLE_USED /* 1093 */:
                    if (C0026.m329() <= 0) {
                        str = "ۣۢ۟";
                    } else {
                        str = "ۢۦۦ";
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_DUP_ARGUMENT /* 1225 */:
                    if (C0033.m609() < 0) {
                        str = C0025.m186() >= 0 ? "ۢ۠۟" : "ۡۢۥ";
                    }
                    break;
                case MysqlErrorNumbers.ER_CANT_SET_GTID_PURGED_WHEN_GTID_MODE_IS_OFF /* 1839 */:
                    break;
                case MysqlErrorNumbers.ER_PASSWORD_EXPIRE_ANONYMOUS_USER /* 1899 */:
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۢۤ۟";
                        continue;
                    }
                    break;
                case 25263:
                    return stringBuffer;
                case 27593:
                    stringBufferM696 = C0033.m696((StringBuffer) obj, c);
                    if (C0033.m706() <= 0) {
                        str = "۟ۡۧ";
                    } else {
                        str = "ۤۥۣ";
                        continue;
                    }
                    break;
                case 28654:
                case 30704:
                    if (C0026.m329() <= 0) {
                        str = "۠۟۟";
                    } else {
                        str = "ۣ۟ۦ";
                        continue;
                    }
                    break;
                case 30223:
                    str = "ۦۧۧ";
                    stringBuffer = null;
                    continue;
                case 30890:
                    str = "ۦۤۢ";
                    continue;
                case 32687:
                    if (C0025.m186() >= 0) {
                        str = "ۣۤۢ";
                        stringBuffer = stringBufferM696;
                    } else {
                        str = "ۣ۟ۦ";
                        stringBuffer = stringBufferM696;
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            str = "ۦ۠ۢ";
        }
    }

    /* JADX INFO: renamed from: ⁠⁣⁠, reason: not valid java name and contains not printable characters */
    public static String m355() {
        String str = "ۣ۠ۦ";
        String str2 = null;
        String strM618 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1752523) {
                case 98:
                    str = "ۥۦۥ";
                    continue;
                case 943:
                    if (C0026.m329() <= 0) {
                        str = "ۣۤۨ";
                        str2 = null;
                    } else {
                        str = "۠ۦۧ";
                        str2 = null;
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_TOO_MANY_KEY_PARTS /* 1070 */:
                    break;
                case 1966:
                case 29978:
                    if (C0032.m436() <= 0) {
                        str = "۟۟ۤ";
                    } else {
                        str = "ۣۨۡ";
                        continue;
                    }
                    break;
                case 3797:
                    strM618 = C0033.m618();
                    str = "۠ۤ۠";
                    continue;
                case 5738:
                    str = "ۤۤۥ";
                    continue;
                case 5768:
                    if (C0033.m609() < 0) {
                        str = "ۢۦۢ";
                    }
                    break;
                case 5783:
                    str = "ۣۨۡ";
                    str2 = strM618;
                    continue;
                case 29837:
                    return str2;
                case 29856:
                    str = "ۣ۠ۦ";
                    continue;
                default:
                    continue;
            }
            str = "ۥ۠ۤ";
        }
    }

    /* JADX WARN: Code duplicated, block: B:198:0x032e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x0327 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:224:0x02d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:226:0x02cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:229:0x0319 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:299:0x0043 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x004c. Please report as an issue. */
    /* JADX INFO: renamed from: ⁠⁣⁤⁣⁣⁣, reason: not valid java name and contains not printable characters */
    public static String m356(String str) {
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
        String str4 = "۠۠ۦ";
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
            switch (C0033.m669((Object) str4) ^ 1751747) {
                case 34:
                case 31943:
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                    } else {
                        str4 = "۟۠ۦ";
                    }
                    break;
                case 101:
                case 4482:
                    if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                        str4 = "ۢۥۡ";
                    } else {
                        str4 = "ۤ۠۠";
                    }
                    break;
                case 804:
                    iM447 = C0032.m447(str5, C0024.m133(str, i8)) << 4;
                    iM448 = C0032.m447(str5, C0024.m133(str, ((i8 + 21) + 1) - 21));
                    str4 = "ۣۣۧ";
                    break;
                case 807:
                    if (i7 >= 15) {
                        byteArrayOutputStream = new ByteArrayOutputStream(C0024.m84(str) / 2);
                        if (C0033.m706() <= 0) {
                            C0026.m329();
                        } else {
                            str4 = "ۡۨۤ";
                        }
                    } else {
                        str4 = "ۦۤۨ";
                    }
                    break;
                case MysqlErrorNumbers.ER_CANT_REMOVE_ALL_FIELDS /* 1090 */:
                    if (C0032.m436() <= 0) {
                        str4 = "۟ۤ۠";
                        i9 = i4;
                    } else {
                        str4 = "ۢ۠ۥ";
                        i9 = i4;
                    }
                    break;
                case MysqlErrorNumbers.ER_CANT_OPEN_LIBRARY /* 1126 */:
                case 7452:
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                    } else {
                        str4 = "ۧۤ۠";
                    }
                    break;
                case MysqlErrorNumbers.ER_COLLATION_CHARSET_MISMATCH /* 1253 */:
                    if (C0025.m186() >= 0) {
                        str4 = "ۣۤۢ";
                        str6 = strM225;
                        str5 = strM224;
                    } else {
                        str4 = "ۥۤۤ";
                        str6 = strM225;
                        str5 = strM224;
                    }
                    break;
                case MysqlErrorNumbers.ER_SLAVE_WAS_RUNNING /* 1254 */:
                    str4 = "ۣ۠ۤ";
                    break;
                case MysqlErrorNumbers.ER_FK_COLUMN_CANNOT_CHANGE /* 1832 */:
                    if (C0025.m186() >= 0) {
                        i7 = i6;
                    } else {
                        str4 = "ۤ۠۠";
                        i7 = i6;
                    }
                    break;
                case MysqlErrorNumbers.ER_IDENT_CAUSES_TOO_LONG_PATH /* 1860 */:
                    int iM675 = (int) (C0033.m675() * ((double) 10));
                    strM225 = C0025.m224(C0033.m677(stringBufferM577, (iM675 & (i7 ^ (-1))) | ((iM675 ^ (-1)) & i7)));
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                    } else {
                        str4 = "ۦۢۨ";
                    }
                    break;
                case MysqlErrorNumbers.ER_COL_COUNT_DOESNT_MATCH_PLEASE_UPDATE_V2 /* 1892 */:
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                        str4 = "ۥۥ۟";
                        i8 = i;
                    } else {
                        str4 = "۟۠ۦ";
                        i8 = i;
                    }
                    break;
                case 2114:
                    length = bArrM214.length;
                    iM85 = C0024.m84(str6);
                    if (C0025.m186() < 0) {
                        str4 = "ۢۦۡ";
                    }
                    break;
                case 2212:
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                    } else {
                        str4 = "ۥ۠";
                    }
                    break;
                case 2462:
                    if (C0033.m706() <= 0) {
                        str6 = str3;
                        str5 = str2;
                    } else {
                        str4 = "ۥۢۨ";
                        str6 = str3;
                        str5 = str2;
                    }
                    break;
                case 2463:
                    strM635 = C0033.m634();
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                        str2 = strM634;
                    } else {
                        str4 = "ۦۣۨ";
                        str2 = strM634;
                    }
                    break;
                case 2526:
                    i2 = 0;
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str4 = "ۨۢۢ";
                    }
                    break;
                case 3078:
                    if (C0026.m329() > 0) {
                        str4 = "ۣۤ۠";
                    }
                    break;
                case 3132:
                    C0033.m683(byteArrayOutputStream, (iM447 ^ iM448) | (iM447 & iM448));
                    i3 = (i8 - 14) + 2 + 14;
                    if (C0026.m329() > 0) {
                        str4 = "ۡ۟";
                    }
                    break;
                case 3236:
                    if (i9 >= length) {
                        if (C0024.m165xf0c433e8() > 0) {
                            str4 = "ۣ۠ۧ";
                        }
                    } else if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        str4 = "ۦۧۢ";
                    }
                    break;
                case 3545:
                    bArrM214[i9] = (byte) (((b ^ (-1)) & cM133) | ((cM133 ^ (-1)) & b));
                    i4 = ((i9 + 11) + 1) - 11;
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        str4 = "ۥۣۧ";
                    }
                    break;
                case 4133:
                    i5 = 0;
                    strM634 = C0033.m634();
                    if (C0025.m186() < 0) {
                        str4 = "ۢۨۢ";
                    }
                    break;
                case 4417:
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                        str4 = "ۦۨۨ";
                    } else {
                        str4 = "ۨ۠ۨ";
                    }
                    break;
                case 4487:
                    str4 = "ۧۤ۠";
                    iM84 = i5;
                    break;
                case 4544:
                    if (C0033.m706() > 0) {
                        str4 = "۠۠ۦ";
                    }
                    break;
                case 5148:
                    str4 = "ۦۤۨ";
                    break;
                case 5470:
                    i = 0;
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        str4 = "ۥ۠ۢ";
                    }
                    break;
                case 7523:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        str4 = "ۤۨۥ";
                    }
                    break;
                case 7558:
                case 1730136:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        str4 = "ۨۥ";
                    } else {
                        str4 = "ۣۢۦ";
                    }
                    break;
                case 7654:
                    if (i8 >= C0024.m84(str)) {
                        bArrM214 = C0025.m214(byteArrayOutputStream);
                        str4 = "ۢۡ۠";
                    } else if (C0026.m329() > 0) {
                        str4 = "ۣۤ۠";
                    }
                    break;
                case 29235:
                    iM84 = 0 - ((0 - C0024.m84(C0033.m634())) - 1);
                    str4 = "ۨۥۨ";
                    break;
                case 29512:
                    str4 = C0024.m165xf0c433e8() <= 0 ? "ۢۥۥ" : "ۥۨۨ";
                    break;
                case 29675:
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                        str4 = "ۥۧۡ";
                        i9 = i2;
                    } else {
                        str4 = "ۣۢۦ";
                        i9 = i2;
                    }
                    break;
                case 30850:
                    b = bArrM214[i9];
                    cM133 = C0024.m133(str6, i9 % iM85);
                    if (C0026.m329() > 0) {
                        str4 = "ۣۨ۟";
                    }
                    break;
                case 30882:
                    i6 = 0;
                    if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                        str4 = "ۢۥۨ";
                        str3 = strM635;
                    } else {
                        str4 = "ۣۢۨ";
                        str3 = strM635;
                    }
                    break;
                case 31529:
                    strM224 = C0025.m224(C0033.m577(C0033.m577(new StringBuffer(), str5), C0025.m305(i7)));
                    stringBufferM577 = C0033.m577(new StringBuffer(), str6);
                    str4 = "ۥ۟ۡ";
                    break;
                case 31599:
                    i7 = ((i7 + 28) + 1) - 28;
                    if (C0033.m706() > 0) {
                        str4 = "ۥۤۥ";
                    }
                    break;
                case 31657:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        str4 = "ۦۧۢ";
                    }
                    break;
                case 32608:
                    if (iM84 >= bArrM214.length) {
                        if (C0026.m329() <= 0) {
                            C0033.m706();
                        } else {
                            str4 = "ۦۤ";
                        }
                    } else if (C0025.m186() >= 0) {
                        C0025.m186();
                        str4 = "ۦۨۨ";
                    } else {
                        str4 = "ۨ۠ۨ";
                    }
                    break;
                case 1730173:
                    break;
                case 1730269:
                    str4 = "۟ۤۥ";
                    i8 = i3;
                    break;
                default:
                    break;
            }
            return new String(bArrM214);
        }
    }

    /* JADX INFO: renamed from: ⁠⁣⁤⁣⁤⁠, reason: not valid java name and contains not printable characters */
    public static void m357(Object obj) {
        String str = "ۢۧ۠";
        while (true) {
            switch (C0033.m669((Object) str) ^ 1754568) {
                case 1934:
                    break;
                case 27456:
                    return;
                case 30451:
                    if (C0025.m226() >= 0) {
                        str = "ۥۨ۟";
                    }
                    break;
                case 30752:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۢۧ۠";
                    } else {
                        continue;
                    }
                    break;
                case 31572:
                    C0032.m540((Exception) obj);
                    str = "ۡ۟ۦ";
                    continue;
                default:
                    continue;
            }
            if (C0032.m436() <= 0) {
                C0024.m165xf0c433e8();
            } else {
                str = "ۡ۟ۦ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁠⁠⁠⁤, reason: not valid java name and contains not printable characters */
    public static void m358(Object obj, int i) {
        String str = "ۤ۠ۨ";
        while (true) {
            switch (C0033.m669((Object) str) ^ 1755466) {
                case 3137:
                    break;
                case 28838:
                    if (C0025.m226() >= 0) {
                        str = "ۥ۠ۧ";
                    }
                    break;
                case 29888:
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۤ۠ۨ";
                        continue;
                    }
                    break;
                case 29926:
                    C0025.m271((ByteArrayOutputStream) obj, i);
                    str = "ۡۤ";
                    continue;
                case 1709417:
                    return;
                default:
                    continue;
            }
            str = "ۡۤ";
        }
    }

    /* JADX INFO: renamed from: ⁣⁠⁣⁠⁤⁣, reason: not valid java name and contains not printable characters */
    public static String m359(Object obj, Object obj2) {
        String str = "ۢۦۡ";
        String str2 = null;
        String strM254 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1747653) {
                case 4324:
                    if (C0033.m706() > 0) {
                        str = "ۧۦۣ";
                    } else {
                        continue;
                    }
                    break;
                case 4865:
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "۟ۦ";
                        continue;
                    }
                    break;
                case 5274:
                case 28449:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        str = "۠ۨ۠";
                    } else {
                        str = "ۥۣۡ";
                        continue;
                    }
                    break;
                case 5890:
                    return str2;
                case 6567:
                    break;
                case 6616:
                    if (C0024.m138() <= 0) {
                        break;
                    } else if (C0025.m186() < 0) {
                        str = "ۦۣۡ";
                    }
                    break;
                case 27457:
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۢۦۡ";
                        continue;
                    }
                    break;
                case 27469:
                    strM254 = C0025.m254((application5) obj, (String) obj2);
                    if (C0024.m165xf0c433e8() <= 0) {
                        str = "ۧۡۨ";
                    } else {
                        str = "ۧۡۦ";
                        continue;
                    }
                    break;
                case 28553:
                    if (C0032.m436() <= 0) {
                        str = "ۣ۠ۢ";
                        str2 = strM254;
                    } else {
                        str = "ۥۣۡ";
                        str2 = strM254;
                        continue;
                    }
                    break;
                case 1732898:
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                        str2 = null;
                    } else {
                        str = "ۤۢ۟";
                        str2 = null;
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0026.m329() > 0) {
                str = "ۤ۟۟";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁠⁣⁣⁣⁤, reason: not valid java name and contains not printable characters */
    public static Class m360(Object obj) {
        String str = "۟ۧۨ";
        Class cls = null;
        Class clsM588 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1747742) {
                case 476:
                    clsM588 = C0033.m588(obj);
                    if (C0033.m706() > 0) {
                        str = "ۥۦۤ";
                    } else {
                        continue;
                    }
                    break;
                case 798:
                    if (C0033.m596() > 0) {
                        str = "۠۟ۡ";
                    }
                    break;
                case 3165:
                    if (C0026.m329() > 0) {
                        str = "۟ۤۡ";
                    } else {
                        continue;
                    }
                    break;
                case 3202:
                    if (C0032.m436() <= 0) {
                        cls = null;
                    } else {
                        str = "ۦۣ۟";
                        cls = null;
                        continue;
                    }
                    break;
                case 5467:
                case 1734633:
                    if (C0033.m706() <= 0) {
                        C0032.m436();
                        str = "۟ۧ۟";
                    } else {
                        str = "ۥۢۨ";
                        continue;
                    }
                    break;
                case 5501:
                    if (C0026.m329() <= 0) {
                        cls = clsM588;
                    } else {
                        str = "ۥۢۨ";
                        cls = clsM588;
                        continue;
                    }
                    break;
                case 5877:
                    return cls;
                case 27220:
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۨ۟";
                        continue;
                    }
                    break;
                case 27251:
                    break;
                case 1734528:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "۟ۧۨ";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            str = C0033.m706() <= 0 ? "ۥۧ۟" : "۟ۡۥ";
        }
    }

    /* JADX INFO: renamed from: ⁣⁠⁣⁣⁤⁤, reason: not valid java name and contains not printable characters */
    public static StringBuffer m361(Object obj, Object obj2) {
        String str = "ۢۥۨ";
        StringBuffer stringBuffer = null;
        StringBuffer stringBufferM484 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1753514) {
                case 1972:
                case 31692:
                    str = "ۢۨۨ";
                    continue;
                case 2126:
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۨ۠ۥ";
                        continue;
                    }
                    break;
                case 2189:
                    if (C0026.m329() > 0) {
                        str = "ۤۤۦ";
                    } else {
                        continue;
                    }
                    break;
                case 2375:
                    if (C0033.m706() <= 0) {
                        C0032.m436();
                        stringBuffer = null;
                    } else {
                        str = "ۨۢۡ";
                        stringBuffer = null;
                        continue;
                    }
                    break;
                case 27050:
                    break;
                case 28342:
                    if (C0032.m436() <= 0) {
                        str = "ۣۨ";
                        stringBuffer = stringBufferM484;
                    } else {
                        str = "ۢۨۨ";
                        stringBuffer = stringBufferM484;
                        continue;
                    }
                    break;
                case 29359:
                    if (C0025.m226() >= 0) {
                        str = "ۣۦۦ";
                    }
                    break;
                case 29384:
                    return stringBuffer;
                case 30537:
                    stringBufferM484 = C0032.m484((StringBuffer) obj, (String) obj2);
                    str = "ۡۤ۟";
                    continue;
                case 32684:
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                        str = "ۡۥۦ";
                    } else {
                        str = "ۢۥۨ";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0032.m436() > 0) {
                str = "ۨۨۤ";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁠⁤⁤⁤⁤, reason: not valid java name and contains not printable characters */
    public static String m362(int i) {
        String str = "ۦۤۢ";
        String str2 = null;
        String strM277 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1748865) {
                case CipherSuite.TLS_DH_DSS_WITH_AES_128_GCM_SHA256 /* 164 */:
                    strM277 = C0025.m277(i);
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                        str = "ۢ۟ۡ";
                    } else {
                        str = "ۨۥۥ";
                        continue;
                    }
                    break;
                case 248:
                    if (C0033.m706() > 0) {
                        str = "ۧۤۥ";
                    } else {
                        continue;
                    }
                    break;
                case 2171:
                case 7651:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        str = "ۦۦۢ";
                        continue;
                    }
                    break;
                case 5569:
                    str = "ۦۤۢ";
                    continue;
                case 26121:
                    str = "ۦۦۢ";
                    str2 = strM277;
                    continue;
                case 27177:
                    str = "ۦۥۤ";
                    str2 = null;
                    continue;
                case 27372:
                    break;
                case 28036:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str = "ۥۨۦ";
                    } else {
                        str = "ۢ۠۠";
                        continue;
                    }
                    break;
                case 28067:
                    return str2;
                case 28261:
                    if (C0024.m138() <= 0) {
                        break;
                    } else if (C0033.m706() > 0) {
                        str = "ۡۤۨ";
                    }
                    break;
                default:
                    continue;
            }
            if (C0025.m186() >= 0) {
                C0026.m329();
                str = "ۡ۠ۦ";
            } else {
                str = "ۡۧ۟";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁣⁤⁤⁠⁠, reason: not valid java name and contains not printable characters */
    public static Application m363(Object obj) {
        String str = "ۤۨ";
        Application application = null;
        Application applicationM664 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1755338) {
                case 35:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                        application = applicationM664;
                    } else {
                        str = "ۤۤ۟";
                        application = applicationM664;
                        continue;
                    }
                    break;
                case 28556:
                case 32482:
                    str = "ۤۤ۟";
                    continue;
                case 28963:
                    str = "۟ۡۨ";
                    continue;
                case 29333:
                    return application;
                case 31349:
                    str = "ۡۦ";
                    continue;
                case 31361:
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۤۨ";
                        continue;
                    }
                    break;
                case 32364:
                    applicationM664 = C0033.m664((Application) obj);
                    str = "ۨ۠ۡ";
                    continue;
                case 32431:
                    break;
                case 1709134:
                    if (C0033.m596() >= 0) {
                        str = "ۣۤۧ";
                    }
                    break;
                case 1709295:
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                        application = null;
                    } else {
                        str = "ۤ۠ۥ";
                        application = null;
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0026.m329() <= 0) {
                C0032.m436();
            } else {
                str = "ۣۢ۠";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁣⁤⁤⁠⁤, reason: not valid java name and contains not printable characters */
    public static String m364(Object obj) {
        Object obj2 = "ۢۨۧ";
        String str = null;
        String strM258 = null;
        while (true) {
            switch (C0033.m669(obj2) ^ 1748893) {
                case 221:
                    if (C0024.m165xf0c433e8() <= 0) {
                        obj2 = "ۡۥۤ";
                    } else {
                        obj2 = "ۢۨۧ";
                        continue;
                    }
                    break;
                case 224:
                    obj2 = "ۢۨۥ";
                    str = null;
                    continue;
                case 2272:
                    obj2 = "ۣۡۧ";
                    continue;
                case 4565:
                    return str;
                case 4630:
                case 6274:
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                    } else {
                        obj2 = "ۥۥۨ";
                        continue;
                    }
                    break;
                case 7362:
                    obj2 = "ۥ۟ۥ";
                    continue;
                case 7420:
                    if (C0025.m226() >= 0) {
                        obj2 = C0032.m436() <= 0 ? "ۥۢۢ" : "ۣۣۢ";
                    }
                    break;
                case 7519:
                    strM258 = C0025.m258((Throwable) obj);
                    if (C0025.m186() < 0) {
                        obj2 = "ۧۢ۠";
                    } else {
                        continue;
                    }
                    break;
                case 27384:
                    if (C0032.m436() <= 0) {
                        str = strM258;
                    } else {
                        obj2 = "ۥۥۨ";
                        str = strM258;
                        continue;
                    }
                    break;
                case 28095:
                    break;
                default:
                    continue;
            }
            obj2 = C0032.m436() <= 0 ? "ۨۤ" : "ۣ۟ۡ";
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁠⁣⁠⁣, reason: not valid java name and contains not printable characters */
    public static int m365() {
        int iM479 = 0;
        int iIntValue = 0;
        int i = 0;
        short[] sArrM372 = null;
        Object[] objArr = null;
        Object obj = "ۣۣ۟";
        while (true) {
            switch (C0033.m669(obj) ^ 1747776) {
                case 3134:
                    int iIntValue2 = ((Integer) objArr[1]).intValue();
                    if (C0026.m329() > 0) {
                        i = iIntValue2;
                        obj = "ۥ۟ۦ";
                    } else {
                        C0033.m706();
                        i = iIntValue2;
                        obj = "۠۟ۧ";
                    }
                    break;
                case 3135:
                    objArr[0] = new Integer(5333031);
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۣ۠ۡ";
                    } else {
                        C0032.m436();
                    }
                    break;
                case 5437:
                    return ((-1749710) & iM479) | ((iM479 ^ (-1)) & 1749709);
                case 5836:
                    iIntValue = ((Integer) objArr[0]).intValue();
                    if (C0033.m706() > 0) {
                        obj = "ۦۣۡ";
                    } else {
                        C0032.m436();
                    }
                    break;
                case 7487:
                    objArr = new Object[2];
                    if (C0025.m186() < 0) {
                        obj = "ۣۧۢ";
                    }
                    break;
                case 7524:
                    sArrM372 = m372();
                    obj = "ۣ۟ۢ";
                    break;
                case 27336:
                    iM479 = C0032.m479(C0025.m322(sArrM372, 0, ((iIntValue ^ (-1)) & 5333028) | ((-5333029) & iIntValue), ((i ^ (-1)) & 1627934) | ((-1627935) & i)));
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۥۧ۟";
                    } else {
                        C0024.m165xf0c433e8();
                    }
                    break;
                case 28358:
                    objArr[1] = new Integer(1626323);
                    obj = "ۣۣ۟";
                    break;
                case 1732770:
                    if (C0033.m706() > 0) {
                        obj = "ۣۣ۟";
                    } else {
                        C0024.m165xf0c433e8();
                    }
                    break;
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁣⁣⁣⁠, reason: not valid java name and contains not printable characters */
    public static int m366(Object obj, Object obj2) {
        Object obj3 = "۟ۦۨ";
        int i = 0;
        int iM444 = 0;
        while (true) {
            switch (C0033.m669(obj3) ^ 1754597) {
                case 3:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                        obj3 = "ۥۦ۠";
                        i = iM444;
                    } else {
                        obj3 = "ۤ۟ۤ";
                        i = iM444;
                        continue;
                    }
                    break;
                case 3202:
                    obj3 = "۟۟ۨ";
                    continue;
                case 25092:
                    if (C0024.m138() < 0) {
                        break;
                    } else if (C0026.m329() <= 0) {
                        C0025.m186();
                    } else {
                        obj3 = "ۥۤۧ";
                    }
                    break;
                case 25325:
                case 27289:
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                    } else {
                        obj3 = "ۤ۟ۤ";
                        continue;
                    }
                    break;
                case 30793:
                    obj3 = "ۣۨۤ";
                    i = 0;
                    continue;
                case 30830:
                    if (C0025.m186() < 0) {
                        obj3 = "ۥ۠ۧ";
                    } else {
                        continue;
                    }
                    break;
                case 31559:
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        obj3 = "۟ۦۨ";
                        continue;
                    }
                    break;
                case 31693:
                    iM444 = C0032.m444((InputStream) obj, (byte[]) obj2);
                    if (C0026.m329() > 0) {
                        obj3 = "ۧۦۥ";
                    } else {
                        continue;
                    }
                    break;
                case 31788:
                    return i;
                case 32685:
                    break;
                default:
                    continue;
            }
            obj3 = "ۥ۟ۥ";
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁤⁠⁠⁤, reason: not valid java name and contains not printable characters */
    public static boolean m367(Object obj, Object obj2) {
        String str = "ۢۢۧ";
        boolean z = false;
        boolean zM628 = false;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1752644) {
                case 6:
                case MysqlErrorNumbers.ER_WRONG_TABLE_NAME /* 1103 */:
                    str = "ۣۢۥ";
                    continue;
                case 123:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str = "ۨۢ۟";
                    } else {
                        str = "۠۠ۤ";
                        continue;
                    }
                    break;
                case 3200:
                    return z;
                case 3299:
                    if (C0033.m609() >= 0) {
                        break;
                    } else if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "۟ۦۥ";
                    }
                    break;
                case 4259:
                    break;
                case 5280:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                        str = "۠ۡ۟";
                        z = false;
                    } else {
                        str = "۟ۦۨ";
                        z = false;
                        continue;
                    }
                    break;
                case 5415:
                    str = "ۢۢۧ";
                    continue;
                case 6554:
                    zM628 = C0033.m628((ArrayList) obj, obj2);
                    str = "ۦ۠ۨ";
                    continue;
                case 6565:
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۥۥۢ";
                        continue;
                    }
                    break;
                case 32554:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                        z = zM628;
                    } else {
                        str = "ۣۢۥ";
                        z = zM628;
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0033.m706() > 0) {
                str = "ۥۥ۟";
            }
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁤⁠⁣, reason: not valid java name and contains not printable characters */
    public static void m368(Object obj) {
        Object obj2 = "ۦ۟ۥ";
        while (true) {
            switch (C0033.m669(obj2) ^ 1751745) {
                case MysqlErrorNumbers.ER_ERROR_DURING_CHECKPOINT /* 1183 */:
                    return;
                case MysqlErrorNumbers.ER_WRONG_USAGE /* 1221 */:
                    if (C0026.m329() <= 0) {
                        C0026.m329();
                        obj2 = "ۥۨۨ";
                    } else {
                        obj2 = "ۦ۟ۥ";
                        continue;
                    }
                    break;
                case 2053:
                    C0025.m208((IOException) obj);
                    if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj2 = "ۥۦ۟";
                        continue;
                    }
                    break;
                case 31629:
                    if (C0033.m609() <= 0) {
                        obj2 = "ۣۢۥ";
                    }
                    break;
                case 1730075:
                    break;
                default:
                    continue;
            }
            obj2 = "ۥۦ۟";
        }
    }

    /* JADX INFO: renamed from: ⁣⁤⁤⁣⁤⁤⁣, reason: not valid java name and contains not printable characters */
    public static Class m369(Object obj) {
        Object obj2 = "ۥۨ۟";
        Class cls = null;
        Class clsM616 = null;
        while (true) {
            switch (C0033.m669(obj2) ^ 1751623) {
                case MysqlErrorNumbers.ER_UDF_NO_PATHS /* 1124 */:
                    break;
                case MysqlErrorNumbers.ER_UNKNOWN_STMT_HANDLER /* 1243 */:
                    if (C0033.m596() >= 0) {
                        obj2 = "ۢۥۣ";
                    }
                    break;
                case 2375:
                    clsM616 = C0033.m616((Context) obj);
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        obj2 = "ۨۤۨ";
                        continue;
                    }
                    break;
                case 3111:
                    if (C0025.m186() < 0) {
                        obj2 = "ۥۨ۟";
                    } else {
                        continue;
                    }
                    break;
                case 4238:
                case 4551:
                    if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj2 = "ۡۤ۠";
                        continue;
                    }
                    break;
                case 5466:
                    return cls;
                case 29483:
                    obj2 = "ۡۤ۠";
                    cls = clsM616;
                    continue;
                case 29571:
                    obj2 = "ۤۦ";
                    cls = null;
                    continue;
                case 32512:
                    if (C0025.m186() < 0) {
                        obj2 = "ۣۨۧ";
                    } else {
                        continue;
                    }
                    break;
                case 1730245:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                    } else {
                        obj2 = "۠۟ۨ";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            obj2 = C0025.m186() >= 0 ? "ۢۥ۟" : "ۧۡۡ";
        }
    }

    /* JADX INFO: renamed from: ⁤⁤⁠⁠⁠, reason: not valid java name and contains not printable characters */
    public static int m370(Object obj, int i) {
        Object obj2 = "ۣۢ۠";
        int i2 = 0;
        int iM320x27c43af8 = 0;
        while (true) {
            switch (C0033.m669(obj2) ^ 1746817) {
                case 64:
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                        i2 = iM320x27c43af8;
                    } else {
                        obj2 = "ۣۧۦ";
                        i2 = iM320x27c43af8;
                        continue;
                    }
                    break;
                case 2210:
                    if (C0032.m436() > 0) {
                        obj2 = "ۣۢ۠";
                    } else {
                        continue;
                    }
                    break;
                case 3397:
                    obj2 = "ۣ۟ۦ";
                    continue;
                case 4256:
                    break;
                case 4259:
                case 4491:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        obj2 = "ۨ۟";
                    } else {
                        obj2 = "ۣۧۦ";
                        continue;
                    }
                    break;
                case 5604:
                    if (C0033.m609() >= 0) {
                        break;
                    } else if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        obj2 = "ۨۦۨ";
                    }
                    break;
                case 6561:
                    obj2 = "ۧۥۤ";
                    continue;
                case 25099:
                    return i2;
                case 25159:
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                        obj2 = "ۤۢ۟";
                        i2 = 0;
                    } else {
                        obj2 = "ۣ۠۟";
                        i2 = 0;
                        continue;
                    }
                    break;
                case 28203:
                    iM320x27c43af8 = C0025.m320x27c43af8((String) obj, i);
                    if (C0026.m329() > 0) {
                        obj2 = "۟ۥۧ";
                    } else {
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0025.m186() >= 0) {
                C0032.m436();
            } else {
                obj2 = "ۥۤ۟";
            }
        }
    }

    /* JADX INFO: renamed from: ⁤⁤⁤, reason: not valid java name and contains not printable characters */
    public static String m371(short[] sArr, int i, int i2, int i3) {
        String str = "ۧۧۤ";
        short s = 0;
        int i4 = 0;
        char[] cArr = null;
        int i5 = 0;
        while (true) {
            switch (C0033.m669((Object) str) ^ 56539) {
                case 1709110:
                case 1734561:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۥۣۦ";
                        continue;
                    }
                    break;
                case 1710588:
                    break;
                case 1710815:
                    cArr = new char[i2];
                    str = "ۥ۠ۥ";
                    continue;
                case 1711390:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                        str = "ۢۧۨ";
                    } else {
                        str = "۠ۥ۟";
                        continue;
                    }
                    break;
                case 1728792:
                    i5 = 0 - ((0 - i4) - 1);
                    str = "ۢۦۨ";
                    continue;
                case 1728881:
                    if (C0032.m436() > 0) {
                        str = "۟ۧۡ";
                    } else {
                        continue;
                    }
                    break;
                case 1729235:
                    if (i4 < i2) {
                        str = "ۢۦۥ";
                    }
                    break;
                case 1730151:
                    cArr[i4] = (char) (((s ^ (-1)) & i3) | ((i3 ^ (-1)) & s));
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                        str = "ۡ۟ۤ";
                    } else {
                        str = "ۥۡ۟";
                        continue;
                    }
                    break;
                case 1731577:
                    return new String(cArr);
                case 1732602:
                    s = sArr[i + 0 + i4 + 0];
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۤۧ۟";
                        continue;
                    }
                    break;
                case 1732607:
                    str = "ۦۣۢ";
                    i4 = i5;
                    continue;
                case 1734554:
                    if (C0032.m436() > 0) {
                        str = "ۧۧۤ";
                    } else {
                        continue;
                    }
                    break;
                case 1735458:
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                        str = "ۥۧۧ";
                        i4 = 0;
                    } else {
                        str = "ۥۣۦ";
                        i4 = 0;
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0025.m186() < 0) {
                str = "ۣۨۧ";
            }
        }
    }

    /* JADX INFO: renamed from: 蜗牛少年你自己出来, reason: contains not printable characters */
    public static short[] m372() {
        String str = "ۤۨۢ";
        short[] sArr = null;
        short[] sArr2 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 56358) {
                case 67:
                case 1735481:
                    str = "ۤۦۦ";
                    continue;
                case 1709550:
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                    } else {
                        str = "ۥۤۨ";
                        continue;
                    }
                    break;
                case 1711555:
                    if (C0032.m436() <= 0) {
                        sArr = sArr2;
                    } else {
                        str = "ۤۦۦ";
                        sArr = sArr2;
                        continue;
                    }
                    break;
                case 1711630:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۣۨ";
                    } else {
                        continue;
                    }
                    break;
                case 1711737:
                    sArr2 = f12short;
                    str = "ۦۣۤ";
                    continue;
                case 1729039:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                        sArr = null;
                    } else {
                        str = "ۦۦۨ";
                        sArr = null;
                        continue;
                    }
                    break;
                case 1730178:
                    return sArr;
                case 1730296:
                    if (C0025.m186() < 0) {
                        str = "ۦۨۡ";
                    }
                    break;
                case 1732408:
                    break;
                case 1735426:
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        str = "ۤۨۢ";
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0032.m436() <= 0) {
                C0026.m329();
            } else {
                str = "ۨۧۧ";
            }
        }
    }
}
