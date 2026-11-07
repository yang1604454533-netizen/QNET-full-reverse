package muhua.new5;

import android.app.Application;
import android.content.Context;
import android.support.v4.app.FragmentTransaction;
import com.mysql.jdbc.MysqlErrorNumbers;
import org.bouncycastle.crypto.tls.CipherSuite;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes3.dex
  classes4.dex
 */
/* JADX INFO: loaded from: classes3.dex */
public class application extends Application {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f0short = {1817, 1793, 1820, 1793, 1813, 1805, 1813, 24722};

    /* JADX WARN: Code duplicated, block: B:156:0x01aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x01ae A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x0079 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:0x01bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:173:0x01e5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:174:0x01e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:0x01d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:0x01ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:186:0x0196 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:215:0x000e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:223:0x000e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:239:0x000e A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0070. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0016. Please report as an issue. */
    public application() {
        String str = "ۤ۠ۤ";
        String strM241 = null;
        String strM695 = null;
        int iM479 = 0;
        String strM623 = null;
        String str2 = null;
        String strM624 = null;
        Integer numValueOf = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1754471) {
                case 235:
                    iM479 = C0032.m479(strM623);
                    if (C0026.m329() > 0) {
                        str = "ۦۢۦ";
                    }
                    break;
                case 239:
                    C0033.m596();
                    if (C0032.m436() > 0) {
                        str = "ۤ۟ۥ";
                    }
                    break;
                case MysqlErrorNumbers.ER_QUERY_ON_MASTER /* 1219 */:
                    strM623 = C0033.m622();
                    str = "ۥۧۢ";
                    break;
                case MysqlErrorNumbers.ER_GLOBAL_VARIABLE /* 1229 */:
                    switch (((iM479 ^ (-1)) & 1749701) | ((-1749702) & iM479)) {
                        case 32:
                            if (C0025.m186() < 0) {
                            }
                            break;
                        case 449:
                            if (C0032.m436() > 0) {
                                str = "ۢۦۢ";
                            }
                            break;
                        case MysqlErrorNumbers.ER_WARN_TOO_FEW_RECORDS /* 1261 */:
                            str = "ۦۢ۠";
                            break;
                        case 3259:
                            str = "۠ۢۡ";
                            break;
                        case 6430:
                            str = "ۤ۠۠";
                            break;
                        case 29549:
                            str = "۠ۢۤ";
                            break;
                        default:
                            if (C0024.m165xf0c433e8() > 0) {
                            }
                            break;
                    }
                    break;
                case MysqlErrorNumbers.ER_WRONG_VALUE_FOR_VAR /* 1231 */:
                case 3500:
                case 25305:
                case 25306:
                case 29509:
                case 32620:
                case 32676:
                case 1710587:
                    if (C0026.m329() > 0) {
                        str = "ۣۧۨ";
                    }
                    break;
                case MysqlErrorNumbers.ER_INNODB_FT_WRONG_DOCID_INDEX /* 1798 */:
                    str = "۠ۢۡ";
                    break;
                case 3115:
                    if (C0033.m706() > 0) {
                        str = "ۤ۠ۤ";
                    }
                    break;
                case 3178:
                    str = C0024.m165xf0c433e8() > 0 ? "ۢۧۧ" : "ۥۨۦ";
                    break;
                case 3265:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۤۡۨ";
                    }
                    break;
                case 3467:
                    strM623 = C0033.m622();
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                    } else {
                        str = "ۡ۠ۡ";
                    }
                    break;
                case 25187:
                    if (C0032.m436() > 0) {
                        str = "ۡۥۡ";
                    }
                    break;
                case 25274:
                    str = C0025.m186() < 0 ? "ۦۣۦ" : "ۥۦۧ";
                    break;
                case 27226:
                    break;
                case 27335:
                    str = "۠ۢۤ";
                    break;
                case 27589:
                    if (C0033.m706() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۨ۟ۢ";
                    }
                    break;
                case 28229:
                    C0033.m652(C0032.m561x40d0319c(), str2);
                    if (C0025.m226() > 0) {
                        if (C0025.m186() < 0) {
                            str = "ۨ۠ۤ";
                        }
                    } else if (C0026.m329() > 0) {
                        str = "ۣۧۨ";
                    }
                    break;
                case 28280:
                    strM695 = C0033.m695(C0025.m262());
                    strM241 = C0025.m241();
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                    } else {
                        str = "ۤۧۨ";
                    }
                    break;
                case 28377:
                    str = "ۦۢ۠";
                    break;
                case 29547:
                    strM623 = C0033.m658();
                    if (C0026.m329() <= 0) {
                        C0026.m329();
                    } else {
                        str = "ۨۦۤ";
                    }
                    break;
                case 29636:
                    if (C0025.m186() >= 0) {
                        strM623 = strM624;
                    } else {
                        str = "ۣۧۨ";
                        strM623 = strM624;
                    }
                    break;
                case 30329:
                    strM623 = C0033.m623();
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                        str = "ۥۨۤ";
                    } else {
                        str = "ۣ۟";
                    }
                    break;
                case 30510:
                    str = "ۤ۠۠";
                    break;
                case 30657:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                        str = "۠ۡۨ";
                        str2 = null;
                    } else {
                        str = "ۣۤۤ";
                        str2 = null;
                    }
                    break;
                case 30662:
                    if (C0032.m436() > 0) {
                        str = "ۢۦۢ";
                    }
                    break;
                case 31489:
                    if (C0033.m596() > 0) {
                        str = "ۦۢ۠";
                    } else if (C0025.m226() <= 0) {
                        str = C0025.m186() >= 0 ? "ۣۦۨ" : "ۣۧۤ";
                    } else if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۣ۟ۨ";
                    }
                    break;
                case 31526:
                    str = "۟ۥۤ";
                    break;
                case 31684:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۤۧۦ";
                    }
                    break;
                case 31719:
                    if (C0025.m186() < 0) {
                        str = "ۦۢۤ";
                    }
                    break;
                case 31872:
                    System.out.println(numValueOf);
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                        str = "ۨۢ";
                    } else {
                        str = "ۡۥۡ";
                    }
                    break;
                case 31875:
                    if (C0033.m706() <= 0) {
                        numValueOf = Integer.valueOf(C0032.m546("GdXZUPSAPmx27eXwKamYiOX"));
                        str = "ۣۤ۠";
                    } else if (C0032.m436() > 0) {
                        str = "ۡۥۡ";
                    }
                    break;
                case 31887:
                    strM624 = C0033.m623();
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۢۢۦ";
                    }
                    break;
                case 31917:
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                    } else {
                        str = "ۥۡ";
                    }
                    break;
                case 32674:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                        strM623 = strM241;
                        str2 = strM695;
                    } else {
                        str = "ۥۥۡ";
                        strM623 = strM241;
                        str2 = strM695;
                    }
                    break;
                case 32679:
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۣ۟ۨ";
                    }
                    break;
                case 1711747:
                    str = "۟ۥۣ";
                    break;
                default:
                    break;
            }
            return;
        }
    }

    /* JADX INFO: renamed from: ۥۗ۬, reason: contains not printable characters */
    public static short[] m10() {
        String str = "ۤۥۧ";
        short[] sArr = null;
        short[] sArr2 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1748615) {
                case 69:
                    str = "ۤۥۧ";
                    continue;
                case MysqlErrorNumbers.ER_SP_COND_MISMATCH /* 1319 */:
                    sArr2 = f0short;
                    if (C0032.m436() > 0) {
                        str = "ۤ۠ۤ";
                    } else {
                        continue;
                    }
                    break;
                case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
                    break;
                case 5121:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "۠ۦۦ";
                    }
                    break;
                case 5999:
                    str = "ۦۡۧ";
                    sArr = sArr2;
                    continue;
                case 6242:
                    if (C0025.m186() < 0) {
                        str = "ۨ۠۠";
                    } else {
                        continue;
                    }
                    break;
                case 6267:
                case 26223:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                        str = "ۤۥ";
                    } else {
                        str = "ۦۡۧ";
                        continue;
                    }
                    break;
                case 6382:
                    str = "ۣۦۨ";
                    sArr = null;
                    continue;
                case 26434:
                    if (C0033.m706() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۣۢۨ";
                        continue;
                    }
                    break;
                case 28427:
                    return sArr;
                default:
                    continue;
            }
            if (C0033.m706() > 0) {
                str = "ۨۧۤ";
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:247:0x001e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:264:0x0301 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:265:0x006e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:267:0x025e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:268:0x0259 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:269:0x0268 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:270:0x027d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:271:0x0276 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:272:0x0294 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:273:0x028f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:274:0x02b6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:276:0x02d9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:277:0x02d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:278:0x02e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:294:0x02fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:296:0x02f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:305:0x02c4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:306:0x02c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:324:0x02ac A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:326:0x02a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:342:0x000c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:354:0x000c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:361:0x000c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:366:0x000c A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x0065. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0014. Please report as an issue. */
    /* JADX INFO: renamed from: ⁠⁠⁠, reason: not valid java name and contains not printable characters */
    public static short[] m11() {
        String str = "ۣ۠ۢ";
        String strM242 = null;
        short[] sArrM10 = null;
        int iM479 = 0;
        String strM285 = null;
        short[] sArr = null;
        short[] sArr2 = null;
        String strM164 = null;
        short[] sArr3 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1746969) {
                case 728:
                    if (C0026.m329() > 0) {
                        str = "ۤۧۤ";
                    }
                    break;
                case 793:
                case MysqlErrorNumbers.ER_GTID_UNSAFE_CREATE_DROP_TEMPORARY_TABLE_IN_TRANSACTION /* 1787 */:
                case MysqlErrorNumbers.ER_INNODB_NO_FT_TEMP_TABLE /* 1796 */:
                case 4656:
                case 5567:
                case 5821:
                case 7805:
                case 7865:
                case 24862:
                case 24914:
                case 27090:
                case 27152:
                case 27165:
                case 27193:
                case 27921:
                case 28016:
                case 28126:
                case 28222:
                    str = "ۦ۠ۧ";
                    break;
                case 824:
                    strM164 = C0024.m164();
                    str = "ۡۨ۠";
                    sArr2 = null;
                    break;
                case 965:
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۨۡ۠";
                    }
                    break;
                case 1017:
                    str = C0025.m186() >= 0 ? "ۨۢ" : "ۥۧۦ";
                    break;
                case MysqlErrorNumbers.ER_PLUGIN_IS_PERMANENT /* 1702 */:
                    str = C0024.m165xf0c433e8() <= 0 ? "ۣۢۦ" : "ۥۤۦ";
                    break;
                case MysqlErrorNumbers.ER_MTS_UPDATED_DBS_GREATER_MAX /* 1754 */:
                    if (C0026.m329() <= 0) {
                        C0026.m329();
                        str = "ۣۦۢ";
                    } else {
                        str = "ۣۤۡ";
                    }
                    break;
                case MysqlErrorNumbers.ER_ROW_IN_WRONG_PARTITION /* 1863 */:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                        str = "ۣۢ";
                    } else {
                        str = "ۦۥۨ";
                    }
                    break;
                case 1920:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str = "۟ۤۦ";
                        sArr = null;
                    } else {
                        str = "ۢۨۥ";
                        sArr = null;
                    }
                    break;
                case 3867:
                    if (C0024.m138() <= 0) {
                        C0033.m596();
                        if (C0032.m436() <= 0) {
                            C0024.m165xf0c433e8();
                        } else {
                            str = "ۣۢ۟";
                        }
                    } else {
                        str = "ۢ۟";
                    }
                    break;
                case 3898:
                    if (C0024.m165xf0c433e8() > 0) {
                        C0032.m436();
                        str = "۟ۡۥ";
                    } else {
                        str = "ۨ۠ۡ";
                    }
                    break;
                case 3965:
                    str = "ۦۣۤ";
                    break;
                case 3971:
                    if (C0025.m226() <= 0) {
                        C0024.m138();
                        if (C0032.m436() > 0) {
                            str = "ۣۡۡ";
                        }
                    } else {
                        str = "ۦۣۤ";
                    }
                    break;
                case 4039:
                    str = "۠ۡۡ";
                    break;
                case 4573:
                    if (C0025.m226() <= 0) {
                        C0024.m138();
                        str = "ۤۧۡ";
                        strM242 = C0025.m242();
                        sArr3 = sArr2;
                    } else if (C0025.m186() >= 0) {
                    }
                    break;
                case 4634:
                    str = "ۤ۟۟";
                    break;
                case 4730:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۣ۠ۢ";
                    }
                    break;
                case 4763:
                    switch (((iM479 ^ (-1)) & 1750726) | ((-1750727) & iM479)) {
                        case 37:
                            if (C0026.m329() > 0) {
                                str = "۟۟ۢ";
                            }
                            break;
                        case 225:
                            if (C0024.m165xf0c433e8() > 0) {
                                str = "ۨ۠ۡ";
                            } else {
                                C0032.m436();
                                str = "۟ۡۥ";
                            }
                            break;
                        case MysqlErrorNumbers.ER_UPDATE_TABLE_USED /* 1093 */:
                            str = "ۣۨۤ";
                            break;
                        case 2247:
                            if (C0033.m706() > 0) {
                                str = "۟ۤ۟";
                            }
                            break;
                        case 4483:
                        case 29851:
                            if (C0025.m186() < 0) {
                                str = "ۢۦۥ";
                            } else {
                                C0024.m165xf0c433e8();
                            }
                            break;
                        case 7183:
                            if (C0024.m165xf0c433e8() > 0) {
                                str = "ۦ۠ۢ";
                            } else {
                                C0024.m165xf0c433e8();
                                str = "ۥۤ۠";
                            }
                            break;
                        case 7207:
                            if (C0025.m186() < 0) {
                                str = "ۨۥ۟";
                            }
                            break;
                        case 29441:
                            if (C0026.m329() > 0) {
                                str = "ۣۨ";
                            } else {
                                C0025.m186();
                            }
                            break;
                        case 29519:
                            str = "ۤ۟۟";
                            break;
                        case 30639:
                            str = "ۣۢ۠";
                            break;
                        default:
                            if (C0033.m706() > 0) {
                                str = "ۡۨ";
                            } else {
                                C0025.m186();
                                str = "ۥۢۧ";
                            }
                            break;
                    }
                    break;
                case 4775:
                    if (C0033.m706() <= 0) {
                        strM285 = strM242;
                        sArr = sArr3;
                    } else {
                        str = "ۨۨۦ";
                        strM285 = strM242;
                        sArr = sArr3;
                    }
                    break;
                case 4824:
                    strM285 = C0025.m222();
                    str = C0025.m186() >= 0 ? "ۧۥۣ" : "۠ۨۤ";
                    break;
                case 5616:
                    str = "ۤۢۧ";
                    break;
                case 5660:
                    str = "ۢ۟";
                    break;
                case 5694:
                    strM285 = C0024.m40x5952a4cc();
                    str = "ۣۣۧ";
                    break;
                case 5695:
                    if (C0026.m329() > 0) {
                        str = "۟۟ۢ";
                    }
                    break;
                case 5752:
                    str = "ۣۢ۠";
                    break;
                case 5755:
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۣۨۦ";
                    }
                    break;
                case 5789:
                    strM285 = C0024.m40x5952a4cc();
                    if (C0024.m165xf0c433e8() <= 0) {
                        sArr = sArr2;
                    } else {
                        str = "ۦۣۡ";
                        sArr = sArr2;
                    }
                    break;
                case 5819:
                    if (C0026.m329() > 0) {
                        str = "ۧۢۤ";
                    }
                    break;
                case 6739:
                    str = C0032.m436() <= 0 ? "ۦۥ۠" : "ۣۣۢ";
                    break;
                case 6751:
                    str = C0025.m186() >= 0 ? "ۨۧۦ" : "ۦۥۣ";
                    break;
                case 6822:
                    strM285 = C0025.m295();
                    str = "ۢۤۨ";
                    break;
                case 6854:
                    str = C0032.m436() <= 0 ? "ۣۧۥ" : "ۧۢۡ";
                    break;
                case 6909:
                    if (C0033.m706() > 0) {
                        str = "ۧۥۥ";
                    }
                    break;
                case 6911:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۦۣۨ";
                    }
                    break;
                case 6914:
                    if (C0033.m706() > 0) {
                        C0025.m186();
                        str = "ۥۢۧ";
                    } else {
                        str = "ۡۨ";
                    }
                    break;
                case 6949:
                    if (C0025.m186() < 0) {
                        str = "ۨۥ۟";
                    }
                    break;
                case 6968:
                    if (C0033.m596() <= 0) {
                        C0025.m226();
                        strM285 = C0025.m285();
                        str = "ۢ۟ۧ";
                    } else if (C0024.m165xf0c433e8() <= 0) {
                    }
                    break;
                case 6970:
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۣۡۢ";
                    }
                    break;
                case 6982:
                    if (C0032.m436() <= 0) {
                        str = "ۤۨ۠";
                        strM285 = strM164;
                    } else {
                        str = "ۦ۠ۧ";
                        strM285 = strM164;
                    }
                    break;
                case 7731:
                    str = "ۣۨۤ";
                    break;
                case 7910:
                    str = "ۧ۟۠";
                    break;
                case 7942:
                    if (C0024.m138() >= 0) {
                        if (C0025.m237() >= 0) {
                            C0033.m596();
                            str = C0032.m436() <= 0 ? "ۧ۟" : "ۥۦۣ";
                        } else if (C0026.m329() > 0) {
                            str = "ۤۧۤ";
                        }
                    } else if (C0026.m329() > 0) {
                        str = "۟۟ۢ";
                    }
                    break;
                case 7960:
                    strM285 = C0032.m488();
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                        sArr = null;
                    } else {
                        str = "۟ۦۥ";
                        sArr = null;
                    }
                    break;
                case 7994:
                    str = "ۣۧۥ";
                    break;
                case 7995:
                    if (C0024.m165xf0c433e8() > 0) {
                        C0024.m165xf0c433e8();
                        str = "ۥۤ۠";
                    } else {
                        str = "ۦ۠ۢ";
                    }
                    break;
                case 24816:
                    break;
                case 24987:
                    sArrM10 = m10();
                    if (C0025.m237() >= 0) {
                        C0025.m226();
                        if (C0025.m186() >= 0) {
                            str = "ۤۧۦ";
                            sArr2 = sArrM10;
                        } else {
                            str = "ۢۤۦ";
                            sArr2 = sArrM10;
                        }
                    } else if (C0032.m436() <= 0) {
                    }
                    break;
                case 25084:
                    str = "ۦۦ۠";
                    break;
                case 25087:
                    str = "ۡۤ۠";
                    break;
                case 26993:
                    if (C0033.m596() <= 0) {
                        C0033.m596();
                        if (C0025.m186() >= 0) {
                            C0025.m186();
                            sArr = null;
                        } else {
                            str = "ۨۨۥ";
                            sArr = null;
                        }
                    } else {
                        str = "ۣۧۥ";
                    }
                    break;
                case 26996:
                    iM479 = C0032.m479(strM285);
                    str = "ۤۥۣ";
                    break;
                case 27025:
                    str = "ۥ۠ۡ";
                    break;
                case 27037:
                    if (C0033.m706() > 0) {
                        str = "۟ۤ۟";
                    }
                    break;
                case 27132:
                    strM285 = C0024.m59();
                    str = "ۢۦۧ";
                    break;
                case 28031:
                    String strM473 = C0032.m473();
                    if (C0026.m329() <= 0) {
                        C0026.m329();
                        strM285 = strM473;
                        sArr2 = sArrM10;
                    } else {
                        str = "ۥۢۦ";
                        strM285 = strM473;
                        sArr2 = sArrM10;
                    }
                    break;
                case 1733668:
                    strM285 = C0025.m315();
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                        str = "ۢۤۤ";
                    } else {
                        str = "ۥۨۥ";
                    }
                    break;
                case 1733694:
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                        str = "۟۟ۧ";
                    } else {
                        str = "ۧۨۨ";
                    }
                    break;
                case 1733756:
                    if (C0025.m186() < 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۢۦۥ";
                    }
                    break;
                case 1733856:
                    if (C0026.m329() > 0) {
                        C0025.m186();
                    } else {
                        str = "ۣۨ";
                    }
                    break;
                case 1733858:
                    strM285 = C0024.m164();
                    if (C0025.m186() < 0) {
                        str = "ۡۦۣ";
                    }
                    break;
                default:
                    break;
            }
            return sArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:160:0x01d1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x001b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x01db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:180:0x01b2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:0x01ae A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:0x01c3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x01bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:184:0x01cd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:185:0x01ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:220:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:232:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:235:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x0058. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0011. Please report as an issue. */
    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        String strM719 = null;
        String str = "ۣۦ۠";
        int iM200 = 0;
        int iM479 = 0;
        String strM501 = null;
        int i = 0;
        String strM502 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1748861) {
                case 31:
                case 418:
                case 443:
                case 5560:
                case 6529:
                case 7674:
                case 26133:
                case 26169:
                case 26548:
                case 28308:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                        str = "ۡ۠۟";
                    } else {
                        str = "ۧۨۦ";
                    }
                    break;
                case 39:
                    str = "ۣۢ۠";
                    break;
                case 229:
                    if (C0032.m436() > 0) {
                        str = "ۤۦۣ";
                    }
                    break;
                case 386:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۢۡۦ";
                    }
                    break;
                case 413:
                    str = "ۨ۠۟";
                    break;
                case MysqlErrorNumbers.ER_WRONG_NUMBER_OF_COLUMNS_IN_SELECT /* 1222 */:
                    switch (((iM479 ^ (-1)) & 1754499) | ((-1754500) & iM479)) {
                        case CipherSuite.TLS_RSA_PSK_WITH_AES_256_GCM_SHA384 /* 173 */:
                            if (C0033.m706() > 0) {
                                str = "ۨۢۨ";
                            }
                            break;
                        case MysqlErrorNumbers.ER_FILSORT_ABORT /* 1028 */:
                            if (C0032.m436() > 0) {
                            }
                            break;
                        case 25183:
                            str = "ۢ۠ۧ";
                            break;
                        case 27428:
                            if (C0026.m329() > 0) {
                                str = "۟ۤۡ";
                            } else {
                                C0025.m186();
                                str = "ۦۥۨ";
                            }
                            break;
                        case 28244:
                            str = "ۣۢ۠";
                            break;
                        case 30370:
                            str = "ۨ۠۟";
                            break;
                        case 32709:
                            if (C0033.m706() > 0) {
                                str = "۠۟";
                            }
                            break;
                        default:
                            str = "ۣۡۡ";
                            break;
                    }
                    break;
                case MysqlErrorNumbers.ER_TOO_LONG_BODY /* 1437 */:
                    if (C0033.m706() > 0) {
                        str = "ۨۢۨ";
                    }
                    break;
                case MysqlErrorNumbers.ER_CANT_UPDATE_USED_TABLE_IN_SF_OR_TRG /* 1442 */:
                    strM501 = C0025.m218();
                    if (C0033.m706() > 0) {
                        str = "ۤۤۢ";
                    }
                    break;
                case 2082:
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                        strM501 = strM502;
                    } else {
                        str = "ۧۨۦ";
                        strM501 = strM502;
                    }
                    break;
                case 2109:
                    str = C0032.m436() > 0 ? "ۦ۟ۧ" : "ۣۡ";
                    break;
                case 2273:
                    strM501 = C0032.m501();
                    str = "ۣۢ۠";
                    break;
                case 2275:
                    if (C0032.m436() <= 0) {
                        strM501 = strM719;
                    } else {
                        str = "ۥ۟ۦ";
                        strM501 = strM719;
                    }
                    break;
                case 4382:
                    str = "ۧۦۤ";
                    i = iM200;
                    break;
                case 4415:
                    if (C0026.m329() > 0) {
                        C0025.m186();
                        str = "ۦۥۨ";
                    } else {
                        str = "۟ۤۡ";
                    }
                    break;
                case 4849:
                    if (C0025.m186() < 0) {
                        str = "ۤۧۨ";
                    }
                    break;
                case 5400:
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                        str = "ۣۡۤ";
                    } else {
                        str = "ۡۦۧ";
                    }
                    break;
                case 5407:
                    str = "ۣۧ۠";
                    break;
                case 5532:
                    strM501 = C0025.m286();
                    str = C0024.m165xf0c433e8() <= 0 ? "ۨۡۤ" : "ۦۣۤ";
                    break;
                case 5542:
                    if (C0033.m706() > 0) {
                        str = "۠۟";
                    }
                    break;
                case 5596:
                    strM501 = C0032.m550();
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۤۤۥ";
                    }
                    break;
                case 6521:
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۣۨ۟";
                    }
                    break;
                case 6560:
                    strM502 = C0032.m501();
                    str = C0033.m706() <= 0 ? "ۥۡ۟" : "ۣ۠";
                    break;
                case 6561:
                    str = "ۢ۠ۧ";
                    break;
                case 7444:
                    if (C0033.m609() < 0) {
                        str = "ۨ۠۟";
                    } else if (C0025.m226() <= 0) {
                        if (C0033.m706() <= 0) {
                            C0024.m165xf0c433e8();
                            str = "ۨۧۦ";
                        } else {
                            str = "۠۠۟";
                        }
                    } else if (C0032.m436() > 0) {
                        str = "ۤۦۣ";
                    }
                    break;
                case 7448:
                    iM200 = C0025.m200(C0032.m466(C0025.m183xbe9a6c20()));
                    if (C0024.m138() > 0) {
                        str = "ۤۨ";
                    } else if (C0024.m165xf0c433e8() > 0) {
                        str = "ۧۨۥ";
                    }
                    break;
                case 7581:
                    str = "ۣۡۡ";
                    break;
                case 7618:
                    str = C0032.m436() <= 0 ? "۟ۥۥ" : "ۦۤۧ";
                    break;
                case 26195:
                    C0032.m541(C0032.m561x40d0319c(), i);
                    if (C0025.m226() > 0) {
                        str = "ۤۨۥ";
                    } else if (C0033.m706() <= 0) {
                        C0025.m186();
                        str = "ۡ۠۟";
                    } else {
                        str = "ۧۨۦ";
                    }
                    break;
                case 26363:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۣۦ۠";
                    }
                    break;
                case 26522:
                    strM501 = C0025.m286();
                    str = "ۧۡ۟";
                    break;
                case 26968:
                    iM479 = C0032.m479(strM501);
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                        str = "ۣۧ۠";
                    } else {
                        str = "۠ۧۢ";
                    }
                    break;
                case 26969:
                    strM501 = C0033.m646();
                    str = "ۦۨۦ";
                    break;
                case 27192:
                    str = "ۨ۟۠";
                    break;
                case 27288:
                    str = "ۨۤۤ";
                    break;
                case 27929:
                    str = "ۣ۟۠";
                    i = iM200;
                    break;
                case 28346:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                        str = "ۣۨ";
                    } else {
                        str = "ۡۢ۠";
                    }
                    break;
                case 28382:
                    str = "ۤۨ";
                    break;
                case 1733408:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str = "ۢۧۤ";
                        i = 0;
                    } else {
                        str = "۟ۢۢ";
                        i = 0;
                    }
                    break;
                case 1733471:
                    break;
                case 1733625:
                    strM501 = C0032.m521();
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۥۦۤ";
                    }
                    break;
                case 1733762:
                    super.attachBaseContext(context);
                    strM719 = C0033.m719();
                    str = "ۣ۟ۤ";
                    break;
                default:
                    break;
            }
            return;
        }
    }

    /* JADX WARN: Code duplicated, block: B:479:0x0921 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:486:0x0092 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:498:0x083c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:534:0x08ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:535:0x01e9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:537:0x07e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:538:0x07da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:539:0x07f8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:540:0x080d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:541:0x0831 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:542:0x082c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:544:0x0877 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:545:0x0872 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:546:0x088c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:547:0x0887 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:548:0x089f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:549:0x0897 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:550:0x08c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:551:0x08de A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:552:0x08f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:553:0x090c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:554:0x0904 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:555:0x091c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:556:0x0917 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:557:0x0931 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:558:0x0941 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:559:0x093c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:560:0x0956 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:561:0x0951 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:581:0x07ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:597:0x0857 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:635:0x084c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:637:0x0847 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:650:0x0867 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:660:0x08ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:662:0x08e9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:681:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:699:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:702:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:719:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:721:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:723:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:729:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:760:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:777:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:839:0x007a A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0083. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:57:0x01e0. Please report as an issue. */
    @Override // android.app.Application
    public void onCreate() {
        String strM431;
        String str;
        int i;
        String strM281 = null;
        Object[] objArr = null;
        String str2 = null;
        Object[] objArr2 = null;
        Object[] objArr3 = null;
        short[] sArr = null;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        String strM286 = null;
        int iM479 = 0;
        int iM141 = 0;
        int iM142 = 0;
        String str3 = null;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int iM143 = 0;
        Object obj = "۠ۦۧ";
        String str4 = null;
        String str5 = null;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        short[] sArrM595 = null;
        int iM144 = 0;
        int i14 = 0;
        int i15 = 0;
        String str6 = null;
        int i16 = 0;
        short[] sArr2 = null;
        String str7 = null;
        short[] sArrM596 = null;
        while (true) {
            switch (C0033.m669(obj) ^ 1753636) {
                case 5:
                case 966:
                case MysqlErrorNumbers.ER_MTS_CHANGE_MASTER_CANT_RUN_WITH_GAPS /* 1802 */:
                case 2946:
                case 2949:
                case 2951:
                case 25927:
                case 26937:
                case 26981:
                case 27001:
                case 27003:
                case 27908:
                case 27930:
                case 29787:
                case 29798:
                case 29914:
                case 29927:
                case 30011:
                case 30725:
                case 30766:
                case 30787:
                case 30791:
                case 30848:
                case 30884:
                case 30951:
                case 31841:
                case 31842:
                case 31845:
                case 31905:
                case 32642:
                case 32681:
                case 1711616:
                case 1711654:
                case 1711739:
                case 1711827:
                    strM431 = str3;
                    str = str5;
                    i = iM144;
                    if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                        iM144 = i;
                        str5 = str;
                        str3 = strM431;
                        obj = "ۣۡۥ";
                    } else {
                        iM144 = i;
                        str5 = str;
                        str3 = strM431;
                        obj = "ۥۡۦ";
                    }
                    break;
                case 103:
                    obj = "ۣۡۧ";
                    break;
                case 835:
                    if (C0026.m329() <= 0) {
                        C0026.m329();
                        obj = "ۢ۠ۧ";
                    } else {
                        obj = "ۣۨۤ";
                    }
                    break;
                case 875:
                    if (C0033.m706() > 0) {
                        obj = "ۡۧۨ";
                    }
                    break;
                case 897:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۥۧۧ";
                    }
                    break;
                case 909:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                        obj = "۟ۥۦ";
                    } else {
                        obj = "ۥۥۥ";
                    }
                    break;
                case 930:
                    obj = "ۣۤۤ";
                    break;
                case 972:
                    obj = "ۥۨ";
                    break;
                case 973:
                    if (C0033.m706() > 0) {
                        obj = "ۤۤۧ";
                    }
                    break;
                case MysqlErrorNumbers.ER_WRONG_GROUP_FIELD /* 1056 */:
                    if (C0025.m186() < 0) {
                        obj = "۠۠۠";
                    }
                    break;
                case MysqlErrorNumbers.ER_DUP_KEYNAME /* 1061 */:
                    obj = C0033.m706() <= 0 ? "ۢۥۨ" : "۠ۦۧ";
                    break;
                case MysqlErrorNumbers.ER_MTS_RESET_WORKERS /* 1804 */:
                    obj = C0026.m329() <= 0 ? "ۦۥۢ" : "ۥۥۦ";
                    break;
                case MysqlErrorNumbers.ER_COL_COUNT_DOESNT_MATCH_CORRUPTED_V2 /* 1805 */:
                    obj = "۠ۡ۟";
                    break;
                case MysqlErrorNumbers.ER_DISCARD_FK_CHECKS_RUNNING /* 1807 */:
                    if (C0033.m706() > 0) {
                        obj = "ۢۥۨ";
                    }
                    break;
                case MysqlErrorNumbers.ER_BINLOG_STMT_MODE_AND_NO_REPL_TABLES /* 1844 */:
                    super.onCreate();
                    if (C0033.m596() <= 0) {
                        C0024.m138();
                        strM286 = C0024.m89();
                        obj = "ۢۦۧ";
                    } else if (C0025.m186() < 0) {
                        obj = "ۦۨ";
                    }
                    break;
                case MysqlErrorNumbers.ER_ALTER_OPERATION_NOT_SUPPORTED_REASON_CHANGE_FTS /* 1856 */:
                    if (C0033.m706() > 0) {
                        obj = "ۡۢۥ";
                    }
                    break;
                case MysqlErrorNumbers.ER_FK_DEPTH_EXCEEDED /* 1891 */:
                    if (C0033.m706() > 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۣۣۨ";
                    }
                    break;
                case 1953:
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        obj = "ۨۦۤ";
                    }
                    break;
                case 1984:
                    if (C0025.m237() >= 0) {
                        C0025.m237();
                        if (C0024.m165xf0c433e8() <= 0) {
                            C0026.m329();
                        } else {
                            obj = "ۡ۠ۡ";
                        }
                    } else {
                        obj = "۠ۡ۟";
                    }
                    break;
                case 2825:
                    obj = "ۡۥ";
                    break;
                case 2859:
                    if (C0025.m186() < 0) {
                        obj = "ۣ۟۟";
                    }
                    break;
                case 2924:
                    if (C0025.m186() < 0) {
                        C0026.m329();
                    } else {
                        obj = "ۣۦۤ";
                    }
                    break;
                case 2956:
                    int iM145 = C0024.m141((Integer) objArr3[4]);
                    String strM613 = C0033.m613();
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                        i2 = iM145;
                        strM286 = strM613;
                        obj = "ۨۨ";
                    } else {
                        i2 = iM145;
                        strM286 = strM613;
                        obj = "ۥ۟ۨ";
                    }
                    break;
                case 2979:
                    obj = "ۣۢ";
                    break;
                case 2982:
                    strM286 = C0033.m674();
                    if (C0024.m165xf0c433e8() <= 0) {
                        i4 = iM142;
                    } else {
                        obj = "ۢۡۨ";
                        i4 = iM142;
                    }
                    break;
                case 2989:
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        obj = "ۨۥ۟";
                    }
                    break;
                case 3011:
                    strM286 = C0025.m295();
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                        i3 = iM141;
                    } else {
                        obj = "ۥ۟ۢ";
                        i3 = iM141;
                    }
                    break;
                case 3052:
                    C0033.m572x6af2b736(this);
                    strM286 = C0033.m660();
                    if (C0025.m186() < 0) {
                        obj = "ۡۨۢ";
                    }
                    break;
                case 25881:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۦۤ۠";
                    }
                    break;
                case 25883:
                    if (C0026.m329() > 0) {
                        obj = "۟ۤ۟";
                    }
                    break;
                case 25888:
                    switch (((iM479 ^ (-1)) & 1748834) | ((-1748835) & iM479)) {
                        case 95:
                            if (C0024.m165xf0c433e8() > 0) {
                            }
                            break;
                        case 390:
                            if (C0025.m186() < 0) {
                            }
                            break;
                        case MysqlErrorNumbers.ER_WRONG_VALUE_COUNT /* 1058 */:
                            if (C0025.m186() < 0) {
                                obj = "ۣ۟۟";
                            }
                            break;
                        case MysqlErrorNumbers.ER_DUP_ENTRY /* 1062 */:
                            obj = "ۢۡۢ";
                            break;
                        case MysqlErrorNumbers.ER_UDF_NO_PATHS /* 1124 */:
                            if (C0024.m165xf0c433e8() > 0) {
                                obj = "ۡۧ۟";
                            } else {
                                C0024.m165xf0c433e8();
                            }
                            break;
                        case MysqlErrorNumbers.ER_DERIVED_MUST_HAVE_ALIAS /* 1248 */:
                            if (C0033.m706() > 0) {
                                obj = "ۡۧۨ";
                            }
                            break;
                        case MysqlErrorNumbers.ER_TOO_LONG_BODY /* 1437 */:
                            if (C0024.m165xf0c433e8() > 0) {
                                obj = "ۥ۠";
                            } else {
                                C0025.m186();
                            }
                            break;
                        case 2087:
                            if (C0033.m706() > 0) {
                                obj = "ۡۢۥ";
                            }
                            break;
                        case 2140:
                            obj = "ۥۨ";
                            break;
                        case 4394:
                            if (C0025.m186() < 0) {
                                obj = "ۣۦۦ";
                            } else {
                                C0026.m329();
                                obj = "ۣۢۢ";
                            }
                            break;
                        case 4815:
                            obj = "ۤۦۢ";
                            break;
                        case 5479:
                            if (C0026.m329() > 0) {
                                obj = "ۧۦۣ";
                            } else {
                                C0025.m186();
                            }
                            break;
                        case 5571:
                            obj = "۟ۦۣ";
                            break;
                        case 6564:
                            obj = "ۣۢ";
                            break;
                        case 7434:
                            if (C0026.m329() > 0) {
                                obj = "۟ۤ۟";
                            }
                            break;
                        case 26149:
                            if (C0025.m186() < 0) {
                                obj = "۠ۧ۟";
                            }
                            break;
                        case 26155:
                            if (C0026.m329() > 0) {
                                obj = "ۨۧۧ";
                            } else {
                                C0024.m165xf0c433e8();
                                obj = "ۣۢۥ";
                            }
                            break;
                        case 26309:
                            if (C0024.m165xf0c433e8() > 0) {
                                obj = "ۧ۟ۨ";
                            } else {
                                C0033.m706();
                                obj = "ۨۡ۠";
                            }
                            break;
                        case 27270:
                            if (C0033.m706() > 0) {
                                obj = "ۣۣۨ";
                            } else {
                                C0024.m165xf0c433e8();
                            }
                            break;
                        case 27942:
                            obj = "۠ۧۥ";
                            break;
                        case 28361:
                            if (C0025.m186() < 0) {
                                obj = "۠ۦۡ";
                            }
                            break;
                        case 28389:
                            obj = "ۣۡۧ";
                            break;
                        case 1733401:
                            obj = "ۡ۟";
                            break;
                        case 1733592:
                            obj = "ۤۥ۟";
                            break;
                        default:
                            if (C0025.m186() < 0) {
                                obj = "ۣۦۤ";
                            } else {
                                C0026.m329();
                            }
                            break;
                    }
                    break;
                case 25900:
                    obj = C0026.m329() <= 0 ? "ۧۦ۟" : "۠ۢ";
                    break;
                case 25951:
                    C0032.m509();
                    if (C0025.m237() < 0) {
                        String strM148 = C0024.m148();
                        if (C0026.m329() <= 0) {
                            C0025.m186();
                            strM286 = strM148;
                            obj = "ۧۢۤ";
                        } else {
                            strM286 = strM148;
                            obj = "ۤۤۨ";
                        }
                    } else {
                        strM431 = str3;
                        str = str5;
                        i = iM144;
                        if (C0025.m186() >= 0) {
                            C0024.m165xf0c433e8();
                            iM144 = i;
                            str5 = str;
                            str3 = strM431;
                            obj = "ۣۡۥ";
                        } else {
                            iM144 = i;
                            str5 = str;
                            str3 = strM431;
                            obj = "ۥۡۦ";
                        }
                    }
                    break;
                case 25954:
                    obj = C0024.m165xf0c433e8() > 0 ? "ۣۢۢ" : "ۣۢۨ";
                    break;
                case 26046:
                    sArrM596 = C0033.m595();
                    strM286 = C0033.O();
                    if (C0033.m706() <= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۣۢ۠";
                    }
                    break;
                case 26052:
                    obj = "ۥۦۧ";
                    break;
                case 26086:
                    obj = C0032.m436() <= 0 ? "ۢۡ" : "ۣۧۢ";
                    break;
                case 26104:
                    strM286 = C0025.m281();
                    obj = "ۦۤۧ";
                    break;
                case 26108:
                    obj = "ۤۦۢ";
                    break;
                case 26111:
                    if (C0033.m706() > 0) {
                        obj = "ۣۡ۠";
                    }
                    break;
                case 26820:
                    strM286 = C0032.m558();
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        i11 = iM143;
                    } else {
                        obj = "ۣۧۡ";
                        i11 = iM143;
                    }
                    break;
                case 26842:
                    strM286 = C0033.m660();
                    if (C0026.m329() <= 0) {
                        C0026.m329();
                    } else {
                        obj = "ۤۨ";
                    }
                    break;
                case 26882:
                    if (C0025.m186() < 0) {
                        obj = "ۦۨ";
                    }
                    break;
                case 27007:
                    obj = "ۣۣ۟";
                    break;
                case 27013:
                    objArr2 = new Object[]{new Integer(1885572), new Integer(12784598), new Integer(3614492), new Integer(2684170), new Integer(2426859)};
                    strM281 = C0025.m281();
                    objArr = null;
                    if (C0033.m706() <= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۡۤۥ";
                    }
                    break;
                case 27032:
                    strM286 = C0025.m286();
                    if (C0025.m186() < 0) {
                        obj = "ۤۥۤ";
                    }
                    break;
                case 27034:
                    iM142 = C0024.m141((Integer) objArr3[2]);
                    if (C0024.m138() <= 0) {
                        C0024.m138();
                        strM286 = C0025.m298();
                        i4 = iM142;
                        obj = "۠ۤ۟";
                    } else if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        obj = "ۨۥ۟";
                    }
                    break;
                case 27035:
                    obj = "ۡ۟";
                    break;
                case 27036:
                    break;
                case 27071:
                    int i17 = ((iM144 ^ (-1)) & (-1)) | (iM144 & 0);
                    int i18 = i17 & ((-364684) ^ i17);
                    int i19 = (-364684) & ((iM144 ^ (-1)) ^ (-364684));
                    int i20 = ((i2 ^ (-1)) & (-1)) | (i2 & 0);
                    int i21 = i20 & ((-3878228) ^ i20);
                    int i22 = (-3878228) & ((i2 ^ (-1)) ^ (-3878228));
                    strM431 = C0032.m431(C0024.m120(new application5(C0024.m93(sArrM595, 0, (i18 & i19) | (i18 ^ i19), (i21 ^ i22) | (i21 & i22))), str7));
                    if (C0033.m609() >= 0) {
                        str = strM431;
                        i = iM144;
                        if (C0025.m186() >= 0) {
                            C0024.m165xf0c433e8();
                            iM144 = i;
                            str5 = str;
                            str3 = strM431;
                            obj = "ۣۡۥ";
                        } else {
                            iM144 = i;
                            str5 = str;
                            str3 = strM431;
                            obj = "ۥۡۦ";
                        }
                    } else if (C0025.m186() >= 0) {
                        str3 = strM431;
                        str5 = strM431;
                        obj = "ۦۥۣ";
                    } else {
                        str3 = strM431;
                        str5 = strM431;
                        obj = "ۣۧۨ";
                    }
                    break;
                case 27131:
                    if (C0026.m329() > 0) {
                        C0024.m165xf0c433e8();
                        obj = "ۣۢۥ";
                    } else {
                        obj = "ۨۧۧ";
                    }
                    break;
                case 27199:
                    obj = "ۣۡۨ";
                    break;
                case 27782:
                    obj = "ۣ۠ۤ";
                    break;
                case 27815:
                    obj = "ۤۥ۟";
                    break;
                case 27840:
                    iM143 = C0024.m141((Integer) objArr3[0]);
                    if (C0024.m138() <= 0) {
                        C0025.m237();
                        String strM127 = C0024.m127();
                        if (C0026.m329() <= 0) {
                            C0026.m329();
                            strM286 = strM127;
                            i11 = iM143;
                            obj = "ۣ۠ۧ";
                        } else {
                            strM286 = strM127;
                            i11 = iM143;
                            obj = "ۢۡ۟";
                        }
                    } else if (C0025.m186() < 0) {
                        obj = "۠۠۠";
                    }
                    break;
                case 27845:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        obj = "ۨ۟";
                    }
                    break;
                case 27866:
                    obj = C0025.m186() < 0 ? "ۧۦۢ" : "ۨۦۦ";
                    break;
                case 27874:
                    if (C0032.m436() > 0) {
                        obj = "ۣ۠ۧ";
                    }
                    break;
                case 27910:
                    str2 = null;
                    sArr2 = null;
                    i16 = 0;
                    i13 = 0;
                    str6 = null;
                    sArr = null;
                    i12 = 0;
                    i14 = 0;
                    i15 = 0;
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۣۡۨ";
                    }
                    break;
                case 27938:
                    if (C0033.m706() <= 0) {
                        obj = "ۣۢۥ";
                        i3 = i12;
                        sArrM596 = sArr;
                        str5 = str6;
                        iM144 = i13;
                        i2 = i16;
                        sArrM595 = sArr2;
                        str7 = str2;
                        objArr3 = objArr;
                        str4 = strM281;
                    } else {
                        obj = "ۣ۟۠";
                        i3 = i12;
                        sArrM596 = sArr;
                        str5 = str6;
                        iM144 = i13;
                        i2 = i16;
                        sArrM595 = sArr2;
                        str7 = str2;
                        objArr3 = objArr;
                        str4 = strM281;
                    }
                    break;
                case 27993:
                    if (C0033.m596() > 0) {
                        String strM653 = C0033.m653();
                        if (C0032.m436() <= 0) {
                            C0024.m165xf0c433e8();
                            strM286 = strM653;
                            obj = "ۣ۟۟";
                        } else {
                            strM286 = strM653;
                            obj = "۟ۦۢ";
                        }
                    } else {
                        strM431 = str3;
                        str = str5;
                        i = iM144;
                        if (C0025.m186() >= 0) {
                            C0024.m165xf0c433e8();
                            iM144 = i;
                            str5 = str;
                            str3 = strM431;
                            obj = "ۣۡۥ";
                        } else {
                            iM144 = i;
                            str5 = str;
                            str3 = strM431;
                            obj = "ۥۡۦ";
                        }
                    }
                    break;
                case 27997:
                    int iIntValue = ((Integer) objArr2[3]).intValue();
                    objArr3[1] = new Integer((iIntValue & (-4014558)) | ((iIntValue ^ (-1)) & 4014557));
                    if (C0033.m609() < 0) {
                        strM286 = C0032.m523();
                        if (C0032.m436() <= 0) {
                            C0025.m186();
                        } else {
                            obj = "ۨۢۧ";
                        }
                    } else {
                        strM431 = str3;
                        str = str5;
                        i = iM144;
                        if (C0025.m186() >= 0) {
                            C0024.m165xf0c433e8();
                            iM144 = i;
                            str5 = str;
                            str3 = strM431;
                            obj = "ۣۡۥ";
                        } else {
                            iM144 = i;
                            str5 = str;
                            str3 = strM431;
                            obj = "ۥۡۦ";
                        }
                    }
                    break;
                case 27999:
                    obj = "ۤ۠ۥ";
                    break;
                case 28070:
                    iM144 = C0024.m141((Integer) objArr3[3]);
                    if (C0024.m138() > 0) {
                        strM286 = C0032.m475();
                        obj = "ۧ۠ۡ";
                    } else {
                        strM431 = str3;
                        str = str5;
                        i = iM144;
                        if (C0025.m186() >= 0) {
                            C0024.m165xf0c433e8();
                            iM144 = i;
                            str5 = str;
                            str3 = strM431;
                            obj = "ۣۡۥ";
                        } else {
                            iM144 = i;
                            str5 = str;
                            str3 = strM431;
                            obj = "ۥۡۦ";
                        }
                    }
                    break;
                case 28095:
                    obj = "ۤۦۦ";
                    break;
                case 28737:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۨۦۡ";
                    }
                    break;
                case 28800:
                    if (C0025.m186() < 0) {
                        obj = "۠ۦۡ";
                    }
                    break;
                case 28807:
                    if (C0025.m186() < 0) {
                        C0026.m329();
                        obj = "ۣۢۢ";
                    } else {
                        obj = "ۣۦۦ";
                    }
                    break;
                case 28836:
                    obj = "ۥ۟ۧ";
                    break;
                case 28839:
                    String strM510 = C0032.m510(this);
                    String strM203 = C0025.m203();
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                        str7 = strM510;
                        strM286 = strM203;
                        obj = "ۦ۟ۨ";
                    } else {
                        str7 = strM510;
                        strM286 = strM203;
                        obj = "۠ۤ";
                    }
                    break;
                case 28845:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "ۤۥۡ";
                    }
                    break;
                case 28868:
                    if (C0032.m436() > 0) {
                        obj = "ۦۦۡ";
                    }
                    break;
                case 28899:
                    sArrM595 = C0033.m595();
                    strM286 = C0033.m602();
                    if (C0032.m436() > 0) {
                        obj = "ۦۢۥ";
                    }
                    break;
                case 28935:
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۣۥۥ";
                    }
                    break;
                case 28961:
                    String strM264 = C0025.m264();
                    if (C0033.m706() <= 0) {
                        strM286 = strM264;
                        obj = "ۦۣۡ";
                    } else {
                        strM286 = strM264;
                        obj = "۟ۥۨ";
                    }
                    break;
                case 29031:
                    obj = "۠ۧۥ";
                    break;
                case 29053:
                    if (C0026.m329() > 0) {
                        obj = "۠ۢ۟";
                    }
                    break;
                case 29055:
                    if (C0024.m165xf0c433e8() > 0) {
                        C0025.m186();
                    } else {
                        obj = "ۥ۠";
                    }
                    break;
                case 29702:
                    if (C0026.m329() > 0) {
                        C0025.m186();
                    } else {
                        obj = "ۧۦۣ";
                    }
                    break;
                case 29728:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        i4 = i15;
                        i11 = i14;
                    } else {
                        obj = "ۥۨۧ";
                        i4 = i15;
                        i11 = i14;
                    }
                    break;
                case 29764:
                    obj = "ۤۡۧ";
                    break;
                case 29806:
                    strM286 = C0024.m156();
                    obj = "ۦ۠ۡ";
                    break;
                case 29868:
                    int iIntValue2 = ((Integer) objArr2[4]).intValue();
                    objArr3[0] = new Integer((iIntValue2 & (-4858894)) | ((iIntValue2 ^ (-1)) & 4858893));
                    if (C0033.m596() > 0) {
                        String strM129 = C0024.m129();
                        if (C0032.m436() <= 0) {
                            strM286 = strM129;
                            obj = "ۢۡۨ";
                        } else {
                            strM286 = strM129;
                            obj = "ۦۢۡ";
                        }
                    } else {
                        strM431 = str3;
                        str = str5;
                        i = iM144;
                        if (C0025.m186() >= 0) {
                            C0024.m165xf0c433e8();
                            iM144 = i;
                            str5 = str;
                            str3 = strM431;
                            obj = "ۣۡۥ";
                        } else {
                            iM144 = i;
                            str5 = str;
                            str3 = strM431;
                            obj = "ۥۡۦ";
                        }
                    }
                    break;
                case 29893:
                    obj = C0025.m186() >= 0 ? "ۤ۠ۨ" : "ۣۡۤ";
                    break;
                case 29895:
                    objArr3 = new Object[5];
                    strM286 = C0024.m174();
                    if (C0026.m329() > 0) {
                        obj = "ۥۣۡ";
                    }
                    break;
                case 29945:
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                        obj = "ۦۥۡ";
                    } else {
                        obj = "ۣ۠ۤ";
                    }
                    break;
                case 29959:
                    obj = "ۢۡۢ";
                    break;
                case 29984:
                    strM286 = C0024.m161xe3c359f4();
                    str5 = str3;
                    obj = "ۡۢۢ";
                    break;
                case 30796:
                    if (C0033.m706() > 0) {
                        obj = "ۧ۠ۧ";
                    }
                    break;
                case 30810:
                    int iIntValue3 = ((Integer) objArr2[1]).intValue();
                    objArr3[2] = new Integer((iIntValue3 & (-5022579)) | ((iIntValue3 ^ (-1)) & 5022578));
                    if (C0033.m609() >= 0) {
                        C0024.m138();
                        if (C0025.m186() < 0) {
                            obj = "۟ۡ۟";
                        }
                    } else if (C0032.m436() > 0) {
                        obj = "ۣ۠ۧ";
                    }
                    break;
                case 30852:
                    iM141 = C0024.m141((Integer) objArr3[1]);
                    if (C0025.m237() >= 0) {
                        C0025.m226();
                        if (C0025.m186() >= 0) {
                            obj = "ۥۥۦ";
                            i3 = iM141;
                        } else {
                            obj = "ۣۦ۠";
                            i3 = iM141;
                        }
                    } else if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        obj = "ۨۨۧ";
                    }
                    break;
                case 30872:
                    if (C0024.m165xf0c433e8() > 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۡۧ۟";
                    }
                    break;
                case 30887:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۡۥۢ";
                    }
                    break;
                case 30916:
                    if (C0025.m186() < 0) {
                        obj = "۠ۧ۟";
                    }
                    break;
                case 31693:
                    strM286 = C0033.m666();
                    if (C0032.m436() > 0) {
                        obj = "ۢۨ۟";
                    }
                    break;
                case 31771:
                    if (C0024.m165xf0c433e8() > 0) {
                        C0033.m706();
                        obj = "ۨۡ۠";
                    } else {
                        obj = "ۧ۟ۨ";
                    }
                    break;
                case 31783:
                    obj = "ۨۦ۟";
                    break;
                case 31810:
                    String strM476 = C0032.m476();
                    if (C0025.m186() >= 0) {
                        strM286 = strM476;
                        obj = "ۣ۟ۢ";
                    } else {
                        strM286 = strM476;
                        obj = "۟۟ۨ";
                    }
                    break;
                case 31872:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                        strM286 = str4;
                    } else {
                        obj = "ۥۡۦ";
                        strM286 = str4;
                    }
                    break;
                case 32674:
                    obj = "ۤۢ۟";
                    break;
                case 32682:
                    if (C0025.m186() < 0) {
                        obj = "ۣۢ";
                    }
                    break;
                case 32684:
                    obj = "ۤۧۦ";
                    break;
                case 32750:
                    iM479 = C0032.m479(strM286);
                    obj = "۟۟ۤ";
                    break;
                case 1710534:
                    if (C0025.m263(str5, C0024.m93(sArrM596, (i5 ^ i6) | (i5 & i6), (i7 ^ i8) | (i7 & i8), (i9 ^ i10) | (i9 & i10)))) {
                        if (C0026.m329() > 0) {
                            C0025.m186();
                        } else {
                            obj = "ۧۦۣ";
                        }
                    } else if (C0025.m226() <= 0) {
                        strM286 = C0024.m131();
                        obj = "ۣۢ۟";
                    } else {
                        obj = "ۤ۠ۥ";
                    }
                    break;
                case 1711648:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        obj = "ۥۥۡ";
                    }
                    break;
                case 1711674:
                    int iIntValue4 = ((Integer) objArr2[2]).intValue();
                    objArr3[4] = new Integer((iIntValue4 & (-789820)) | ((iIntValue4 ^ (-1)) & 789819));
                    if (C0025.m237() >= 0) {
                        C0033.m596();
                        obj = "ۥ۟۠";
                    } else {
                        obj = "ۥۦۧ";
                    }
                    break;
                case 1711712:
                    if (C0025.m186() < 0) {
                        obj = "ۥ۠ۡ";
                    }
                    break;
                case 1711717:
                    application2.muhua1 = str5;
                    if (C0033.m609() >= 0) {
                        strM286 = C0033.m636();
                        obj = "ۦۡۡ";
                    } else {
                        obj = "ۣۡۨ";
                    }
                    break;
                case 1711751:
                    int i23 = ((i11 ^ (-1)) & (-1)) | (i11 & 0);
                    int i24 = i23 & ((-7283682) ^ i23);
                    int i25 = (-7283682) & ((i11 ^ (-1)) ^ (-7283682));
                    int i26 = ((i4 ^ (-1)) & (-1)) | (i4 & 0);
                    int i27 = i26 & ((-9416870) ^ i26);
                    int i28 = (-9416870) & ((i4 ^ (-1)) ^ (-9416870));
                    int i29 = ((i3 ^ (-1)) & (-1)) | (i3 & 0);
                    int i30 = i29 & ((-1421734) ^ i29);
                    int i31 = ((i3 ^ (-1)) ^ (-1421734)) & (-1421734);
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                        i5 = i24;
                        i6 = i25;
                        i7 = i27;
                        i8 = i28;
                        i9 = i30;
                        i10 = i31;
                        obj = "۟ۨۢ";
                    } else {
                        i5 = i24;
                        i6 = i25;
                        i7 = i27;
                        i8 = i28;
                        i9 = i30;
                        i10 = i31;
                        obj = "۟ۡ";
                    }
                    break;
                case 1711776:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                    } else {
                        obj = "۠ۤۡ";
                    }
                    break;
                case 1711807:
                    int iIntValue5 = ((Integer) objArr2[0]).intValue();
                    objArr3[3] = new Integer((iIntValue5 & (-1660169)) | ((iIntValue5 ^ (-1)) & 1660168));
                    if (C0033.m596() <= 0) {
                        C0024.m138();
                        obj = "ۢۦ";
                    } else if (C0033.m706() > 0) {
                        obj = "ۢۥۨ";
                    }
                    break;
                case 1711813:
                    obj = "۟ۦۣ";
                    break;
                case 1711846:
                    String strM678 = C0033.m678();
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                        strM286 = strM678;
                        obj = "ۥ۟۠";
                    } else {
                        strM286 = strM678;
                        obj = "ۢۤۢ";
                    }
                    break;
                case 1711866:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        obj = "ۨۨۧ";
                    }
                    break;
                default:
                    break;
            }
            return;
        }
    }
}
