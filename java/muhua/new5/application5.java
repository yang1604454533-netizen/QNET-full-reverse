package muhua.new5;

import com.mysql.jdbc.MysqlDefs;
import com.mysql.jdbc.MysqlErrorNumbers;
import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.tls.CipherSuite;

/* JADX INFO: loaded from: classes3.dex */
public class application5 {
    private static String muhua8;

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f4short;
    private Cipher muhua6;
    private Cipher muhua7;

    /* JADX WARN: Code duplicated, block: B:241:0x0399 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:253:0x0408 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:256:0x03fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:278:0x03db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:289:0x038e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:290:0x0389 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:291:0x03b8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:292:0x03b3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:293:0x03d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:294:0x03c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:311:0x0033 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:350:0x0033 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:111:0x02d2. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x003c. Please report as an issue. */
    static {
        Object[] objArr;
        int i = 0;
        short[] sArr = null;
        Object[] objArr2 = null;
        Object[] objArr3 = null;
        Object[] objArr4 = null;
        int i2 = 0;
        int i3 = 0;
        String strM108 = null;
        short[] sArr2 = null;
        int iM141 = 0;
        String strM236 = null;
        int iM479 = 0;
        int iM142 = 0;
        short[] sArrM100 = null;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        Object[] objArr5 = null;
        String strM640 = null;
        Object obj = "ۡۧۥ";
        while (true) {
            switch (C0033.m669(obj) ^ 1748828) {
                case 24:
                    obj = "ۤۤۨ";
                    break;
                case 35:
                    Object[] objArr6 = {new Integer(11240291), new Integer(1607565)};
                    strM108 = C0024.m108();
                    objArr3 = objArr6;
                    obj = "۟ۧ";
                    break;
                case 98:
                    if (C0033.m706() > 0) {
                        obj = "۟ۤ۟";
                    }
                    break;
                case 120:
                case 198:
                case 4822:
                case 6268:
                case 6560:
                case 7171:
                case 7477:
                case 7679:
                case 26192:
                case 26512:
                case 26548:
                case 27221:
                case 27905:
                case 27932:
                case 1733600:
                    objArr = objArr5;
                    objArr5 = objArr4;
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                        objArr4 = objArr5;
                        objArr5 = objArr;
                        obj = "ۥ۟ۤ";
                    } else {
                        objArr4 = objArr5;
                        objArr5 = objArr;
                        obj = "ۥۤۢ";
                    }
                    break;
                case CertificateBody.profileType /* 127 */:
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                    } else {
                        obj = "ۨۡۥ";
                    }
                    break;
                case 414:
                    obj = "ۡۧۥ";
                    break;
                case 446:
                    if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۢ۠ۧ";
                    }
                    break;
                case 447:
                    obj = "ۤۤ۟";
                    break;
                case MysqlErrorNumbers.ER_ABORTING_CONNECTION /* 1152 */:
                    obj = "ۣۢۢ";
                    break;
                case MysqlErrorNumbers.ER_FOREIGN_DATA_STRING_INVALID_CANT_CREATE /* 1432 */:
                    f4short = new short[]{607, 592, 581, 600, 606, 607, 592, 605, 1964, 1965, 1979, 548, 549, 563, 2500, 2501, 2515};
                    if (C0033.m609() < 0) {
                        strM236 = C0033.m690();
                        obj = "ۣۡۢ";
                    } else {
                        objArr = objArr5;
                        objArr5 = objArr4;
                        if (C0032.m436() <= 0) {
                            C0025.m186();
                            objArr4 = objArr5;
                            objArr5 = objArr;
                            obj = "ۥ۟ۤ";
                        } else {
                            objArr4 = objArr5;
                            objArr5 = objArr;
                            obj = "ۥۤۢ";
                        }
                    }
                    break;
                case MysqlErrorNumbers.ER_TRG_IN_WRONG_SCHEMA /* 1435 */:
                    if (C0026.m329() > 0) {
                        C0026.m329();
                        obj = "ۡۦۡ";
                    } else {
                        obj = "ۦۢۧ";
                    }
                    break;
                case MysqlErrorNumbers.ER_STACK_OVERRUN_NEED_MORE /* 1436 */:
                    if (C0026.m329() > 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۧۨۢ";
                    }
                    break;
                case MysqlErrorNumbers.ER_VIEW_PREVENT_UPDATE /* 1443 */:
                    obj = "ۥۥ۟";
                    break;
                case 2079:
                    if (C0025.m186() < 0) {
                        obj = "ۢۨۥ";
                    }
                    break;
                case 2104:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                        sArr2 = sArrM100;
                    } else {
                        obj = "۠۟";
                        sArr2 = sArrM100;
                    }
                    break;
                case 2172:
                    sArrM100 = sArrM100;
                    obj = "ۦۤۢ";
                    break;
                case 2213:
                    strM236 = C0024.m108();
                    if (C0032.m436() > 0) {
                        obj = "ۤ۠ۢ";
                    }
                    break;
                case 2246:
                    strM236 = C0024.m143();
                    if (C0025.m186() >= 0) {
                        i3 = iM142;
                    } else {
                        obj = "ۢۧۧ";
                        i3 = iM142;
                    }
                    break;
                case 2274:
                    obj = "ۣ۠ۨ";
                    break;
                case 4413:
                    if (C0024.m165xf0c433e8() <= 0) {
                        obj = "۟ۦۧ";
                        i3 = iM142;
                    } else {
                        obj = "ۦۡ۟";
                        i3 = iM142;
                    }
                    break;
                case 4451:
                    strM236 = C0025.m236();
                    if (C0033.m706() > 0) {
                        obj = "ۤۥۧ";
                    }
                    break;
                case 4479:
                    iM479 = C0032.m479(strM236);
                    obj = "ۤۧۧ";
                    break;
                case 4856:
                    obj = "ۥۤۢ";
                    strM236 = strM108;
                    break;
                case 5379:
                    iM141 = C0024.m141((Integer) objArr4[1]);
                    strM236 = C0032.m526();
                    obj = "ۣۣۦ";
                    break;
                case 5428:
                    int iIntValue = ((Integer) objArr3[0]).intValue();
                    objArr4[0] = new Integer((iIntValue & (-9282942)) | ((iIntValue ^ (-1)) & 9282941));
                    strM236 = C0033.m590();
                    obj = "ۡۤۦ";
                    break;
                case 5528:
                    switch (((iM479 ^ (-1)) & 1752459) | ((-1752460) & iM479)) {
                        case 5682:
                            if (C0026.m329() > 0) {
                                obj = "ۣ۠۟";
                            } else {
                                C0026.m329();
                            }
                            break;
                        case 6891:
                            obj = "ۣ۠ۨ";
                            break;
                        case 29772:
                            obj = "ۦۨ۠";
                            break;
                        case 29858:
                            if (C0026.m329() > 0) {
                                obj = "ۦۢۧ";
                            } else {
                                C0026.m329();
                                obj = "ۡۦۡ";
                            }
                            break;
                        case 29920:
                            obj = "ۤۤ۟";
                            break;
                        case 30828:
                            obj = "ۧ۟ۥ";
                            break;
                        case 30850:
                            obj = "ۤ۟۟";
                            break;
                        case 30926:
                            if (C0026.m329() > 0) {
                                obj = "ۧۨۢ";
                            } else {
                                C0024.m165xf0c433e8();
                            }
                            break;
                        case 31629:
                            obj = "۠ۤ";
                            break;
                        case 1728937:
                            obj = "ۤۤۨ";
                            break;
                        default:
                            obj = "ۨ۟";
                            break;
                    }
                    break;
                case 5594:
                    obj = "ۦۢ";
                    break;
                case 5784:
                    iM142 = C0024.m141((Integer) objArr4[0]);
                    if (C0033.m596() <= 0) {
                        String strM255 = C0025.m255();
                        if (C0026.m329() <= 0) {
                            C0032.m436();
                            strM236 = strM255;
                            obj = "ۥ۟";
                        } else {
                            strM236 = strM255;
                            obj = "ۥۦۢ";
                        }
                    } else if (C0033.m706() > 0) {
                        obj = "۟ۤ۟";
                    }
                    break;
                case 5818:
                    obj = C0024.m165xf0c433e8() <= 0 ? "ۥ۠ۥ" : "ۨ۠۠";
                    break;
                case 6458:
                    obj = C0026.m329() <= 0 ? "ۣۨۦ" : "ۣۨ۟";
                    break;
                case 6519:
                    if (C0024.m138() <= 0) {
                        strM236 = C0033.m679();
                        if (C0033.m706() <= 0) {
                            C0033.m706();
                        } else {
                            obj = "ۨۨۡ";
                        }
                    } else if (C0032.m436() > 0) {
                        obj = "۟ۧۡ";
                    }
                    break;
                case 6618:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        obj = "ۡۨۡ";
                    }
                    break;
                case 7198:
                    if (C0032.m436() > 0) {
                        obj = "ۦۨ۟";
                    }
                    break;
                case 7483:
                    if (C0026.m329() > 0) {
                        C0026.m329();
                    } else {
                        obj = "ۣ۠۟";
                    }
                    break;
                case 7487:
                    obj = "ۨ۟";
                    break;
                case 26235:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                        obj = "۟۟۟";
                    } else {
                        obj = "ۥ۟ۤ";
                    }
                    break;
                case 26298:
                    obj = "۠ۤ";
                    break;
                case 26301:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        obj = "ۦۧۡ";
                    }
                    break;
                case 26947:
                    obj = "ۤ۟۟";
                    break;
                case 27001:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                        iM141 = i2;
                        i3 = i;
                        sArr2 = sArr;
                        objArr4 = objArr2;
                    } else {
                        obj = "ۥ۠۟";
                        iM141 = i2;
                        i3 = i;
                        sArr2 = sArr;
                        objArr4 = objArr2;
                    }
                    break;
                case 27005:
                    break;
                case 27190:
                    C0025.m237();
                    if (C0033.m706() <= 0) {
                        C0032.m436();
                        obj = "ۤ۟ۦ";
                    } else {
                        obj = "ۣۢۥ";
                    }
                    break;
                case 27193:
                    if (C0032.m436() > 0) {
                        obj = "۟ۧۡ";
                    }
                    break;
                case 27217:
                    sArrM100 = C0024.m100();
                    if (C0024.m138() <= 0) {
                        strM236 = C0032.m542();
                        if (C0033.m706() > 0) {
                            obj = "۟ۢۧ";
                        }
                    } else {
                        sArrM100 = sArrM100;
                        obj = "ۦۤۢ";
                    }
                    break;
                case 27317:
                    obj = "ۧ۟ۥ";
                    break;
                case 27906:
                    int iIntValue2 = ((Integer) objArr3[1]).intValue();
                    objArr4[1] = new Integer((iIntValue2 & (-7055389)) | ((iIntValue2 ^ (-1)) & 7055388));
                    strM236 = C0033.m715();
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                    } else {
                        obj = "۟ۡۥ";
                    }
                    break;
                case 28208:
                    obj = "۠ۨۤ";
                    strM236 = strM640;
                    objArr4 = objArr5;
                    break;
                case 28344:
                    strM236 = C0024.m106();
                    if (C0025.m186() >= 0) {
                        sArr2 = sArrM100;
                    } else {
                        obj = "ۨۢۡ";
                        sArr2 = sArrM100;
                    }
                    break;
                case 28376:
                    if (C0025.m186() < 0) {
                        obj = "ۣۧ۠";
                    }
                    break;
                case 28407:
                    int i7 = ((iM141 ^ (-1)) & (-1)) | (iM141 & 0);
                    int i8 = i7 & ((-7548826) ^ i7);
                    int i9 = (-7548826) & ((iM141 ^ (-1)) ^ (-7548826));
                    int i10 = (i3 & 0) | ((i3 ^ (-1)) & (-1));
                    if (C0026.m329() <= 0) {
                        i4 = i8;
                        i5 = i9;
                        i6 = i10;
                        obj = "۠ۦۡ";
                    } else {
                        i4 = i8;
                        i5 = i9;
                        i6 = i10;
                        obj = "ۦ۠";
                    }
                    break;
                case 1733464:
                    objArr5 = new Object[2];
                    if (C0024.m138() > 0) {
                        strM640 = C0033.m640();
                        objArr4 = objArr5;
                        obj = "ۦ۠ۦ";
                    } else {
                        objArr = objArr5;
                        if (C0032.m436() <= 0) {
                            C0025.m186();
                            objArr4 = objArr5;
                            objArr5 = objArr;
                            obj = "ۥ۟ۤ";
                        } else {
                            objArr4 = objArr5;
                            objArr5 = objArr;
                            obj = "ۥۤۢ";
                        }
                    }
                    break;
                case 1733547:
                    if (C0033.m706() > 0) {
                        obj = "ۧ۟ۡ";
                    }
                    break;
                case 1733571:
                    obj = "ۦۨ۠";
                    break;
                case 1733606:
                    int i11 = ((-2499632) ^ i6) & i6;
                    int i12 = (-2499632) & ((i3 ^ (-1)) ^ (-2499632));
                    muhua8 = C0025.m260(sArr2, 0, (i4 ^ i5) | (i4 & i5), (i11 & i12) | (i11 ^ i12));
                    if (C0025.m226() > 0) {
                        obj = "ۥۥ۟";
                    } else if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۧۢۥ";
                    }
                    break;
                case 1733795:
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                        obj = "ۤۤۧ";
                    } else {
                        obj = "ۣۨۥ";
                    }
                    break;
                case 1733812:
                    i = 0;
                    sArr = null;
                    objArr2 = null;
                    i2 = 0;
                    obj = C0032.m436() <= 0 ? "ۤۥ۠" : "ۧۨۦ";
                    break;
                default:
                    break;
            }
            return;
        }
    }

    /* JADX WARN: Code duplicated, block: B:180:0x01f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:0x0217 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x0212 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:190:0x0204 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x01e4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x01df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:239:0x0014 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:250:0x0014 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x003a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001c. Please report as an issue. */
    public application5() throws Exception {
        this(C0024.m47MHHX());
        String str = "ۨۧ۟";
        String strM220 = null;
        String strM559b = null;
        String strM261 = null;
        Double dM29MHHX = null;
        int iM479 = 0;
        String strM522 = null;
        Double d = null;
        String strM559b2 = null;
        Float fValueOf = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1749602) {
                case 39:
                    System.out.println(fValueOf);
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                    } else {
                        str = "ۧۧۦ";
                    }
                    break;
                case 350:
                    if (C0032.m436() > 0) {
                        str = "ۨۧ۟";
                    }
                    break;
                case MysqlErrorNumbers.ER_NOT_KEYFILE /* 1034 */:
                    str = "ۨۦۡ";
                    break;
                case MysqlErrorNumbers.ER_WRONG_GROUP_FIELD /* 1056 */:
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                        str = "ۣۧۨ";
                    } else {
                        str = "ۦۧۡ";
                    }
                    break;
                case MysqlErrorNumbers.ER_DUP_ENTRY /* 1062 */:
                    if (C0032.m436() > 0) {
                        str = "ۧۧۦ";
                    }
                    break;
                case MysqlErrorNumbers.ER_DUMP_NOT_IMPLEMENTED /* 1185 */:
                    strM522 = C0032.m522();
                    str = "ۣۢ";
                    break;
                case MysqlErrorNumbers.ER_WARN_FIELD_RESOLVED /* 1276 */:
                    str = C0025.m186() >= 0 ? "ۢۤ۠" : "ۧۢۡ";
                    break;
                case MysqlErrorNumbers.ER_FSEEK_FAIL /* 1376 */:
                    str = C0025.m186() >= 0 ? "ۦۣۨ" : "ۡۤ";
                    break;
                case MysqlErrorNumbers.ER_BINLOG_PURGE_FATAL_ERR /* 1377 */:
                    strM522 = C0024.m124();
                    str = C0024.m165xf0c433e8() <= 0 ? "ۧ۟ۡ" : "ۣۤ۟";
                    break;
                case MysqlErrorNumbers.ER_PROC_AUTO_GRANT_FAIL /* 1404 */:
                    C0025.m237();
                    strM261 = C0025.m261();
                    str = "ۧۨۦ";
                    break;
                case 2051:
                    str = "ۣۧۧ";
                    break;
                case 2052:
                case 2950:
                case 2991:
                case 3100:
                case 6430:
                case 7300:
                case 28706:
                case 30468:
                case 1732161:
                    str = "ۦۡ";
                    break;
                case 2236:
                    if (C0033.m596() > 0) {
                        strM220 = C0025.m220();
                        if (C0026.m329() <= 0) {
                            C0025.m186();
                        } else {
                            str = "ۤۥۨ";
                        }
                    } else {
                        str = "ۦۡ";
                    }
                    break;
                case 2277:
                    str = "۟ۡ";
                    strM522 = strM220;
                    break;
                case 3109:
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                        str = "ۦۢۧ";
                        strM522 = strM559b2;
                    } else {
                        str = "ۦۡ";
                        strM522 = strM559b2;
                    }
                    break;
                case 3138:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                        d = null;
                    } else {
                        str = "ۥۥۧ";
                        d = null;
                    }
                    break;
                case 3173:
                    str = "ۡۢۧ";
                    break;
                case 3176:
                    str = "ۤۨۢ";
                    break;
                case 4042:
                    switch (((iM479 ^ (-1)) & 1751492) | ((-1751493) & iM479)) {
                        case 46:
                            str = "ۨۥۨ";
                            break;
                        case 900:
                            str = "ۤۨۢ";
                            break;
                        case 5819:
                            str = "ۨۦۡ";
                            break;
                        case 7782:
                            if (C0026.m329() > 0) {
                                str = "۟۟";
                            } else {
                                C0025.m186();
                            }
                            break;
                        case 28808:
                            if (C0032.m436() > 0) {
                                str = "ۨۥۤ";
                            }
                            break;
                        case 1729996:
                            str = "ۡ۟ۢ";
                            break;
                        default:
                            str = "۠ۧ";
                            break;
                    }
                    break;
                case 6439:
                    if (C0026.m329() > 0) {
                        C0025.m186();
                    } else {
                        str = "۟۟";
                    }
                    break;
                case 7301:
                    strM522 = C0025.m220();
                    str = "ۣۧۦ";
                    break;
                case 7365:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                        strM522 = strM559b;
                    } else {
                        str = "ۣۡ۠";
                        strM522 = strM559b;
                    }
                    break;
                case 7398:
                    if (C0024.m138() > 0) {
                        strM559b = C0032.m559b();
                        str = C0033.m706() <= 0 ? "ۣۤۤ" : "ۡ۠ۦ";
                    } else {
                        str = "ۦۡ";
                    }
                    break;
                case 28778:
                    if (C0025.m186() < 0) {
                        str = "ۥۧ۠";
                    }
                    break;
                case 29452:
                    str = "ۨۥۨ";
                    break;
                case 29641:
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                    } else {
                        str = "ۣۥۥ";
                    }
                    break;
                case 29642:
                    C0033.m596();
                    if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۦۥۧ";
                    }
                    break;
                case 29767:
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                        strM522 = strM261;
                        d = dM29MHHX;
                    } else {
                        str = "ۨۤ۟";
                        strM522 = strM261;
                        d = dM29MHHX;
                    }
                    break;
                case 29796:
                    break;
                case 31373:
                    str = "ۡ۟ۢ";
                    break;
                case 31489:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۤۤۦ";
                    }
                    break;
                case 31650:
                    strM559b2 = C0032.m559b();
                    str = C0026.m329() <= 0 ? "ۡۤۥ" : "ۥۤ۟";
                    break;
                case 31681:
                    if (C0032.m436() <= 0) {
                        fValueOf = Float.valueOf(C0025.m325("ht3uX2"));
                        if (C0033.m706() <= 0) {
                            C0033.m706();
                            str = "۠ۥ۟";
                        } else {
                            str = "ۢ۟ۢ";
                        }
                    } else if (C0032.m436() > 0) {
                        str = "ۧۧۦ";
                    }
                    break;
                case 31717:
                    C0025.m230(C0032.m561x40d0319c(), d);
                    if (C0025.m226() <= 0) {
                        str = "ۦۡ";
                    } else if (C0025.m186() < 0) {
                        str = "ۡۢۨ";
                    }
                    break;
                case 31721:
                    if (C0025.m237() < 0) {
                        str = "ۤۨۢ";
                    } else if (C0025.m237() < 0) {
                        str = "ۣۧۧ";
                    } else if (C0032.m436() > 0) {
                        str = "ۦۢۤ";
                    }
                    break;
                case 1730944:
                    str = "ۤ۠۠";
                    break;
                case 1730946:
                    dM29MHHX = m29MHHX(C0033.m695(C0032.m568()));
                    if (C0025.m226() <= 0) {
                        str = "ۣۣۨ";
                    } else if (C0025.m186() >= 0) {
                        C0033.m706();
                    } else {
                        str = "ۣۥۥ";
                    }
                    break;
                case 1732131:
                    str = "ۥۣۥ";
                    d = dM29MHHX;
                    break;
                case 1732189:
                    if (C0032.m436() > 0) {
                        str = "ۨۥۤ";
                    }
                    break;
                case 1732197:
                    str = "۠ۥۡ";
                    break;
                case 1732313:
                    iM479 = C0032.m479(strM522);
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۥۣ۠";
                    }
                    break;
                case 1732326:
                    str = "۠ۧ";
                    break;
                default:
                    break;
            }
            return;
        }
    }

    /* JADX WARN: Code duplicated, block: B:1038:0x022c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:1052:0x022c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:1055:0x022c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:1064:0x022c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:1104:0x022c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:694:0x0ac2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:696:0x0abb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:699:0x0c0e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:700:0x0c09 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:726:0x0b98 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:727:0x0b93 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:747:0x0bda A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:748:0x0bd2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:813:0x0a97 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:814:0x0af9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:815:0x0af4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:816:0x0b11 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:817:0x0b09 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:818:0x0b2b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:819:0x0b26 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:820:0x0b56 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:821:0x0b4e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:823:0x0ba3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:824:0x0c43 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:825:0x0c6b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:826:0x0c66 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:827:0x0c87 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:828:0x0c82 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:829:0x0cb8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:830:0x0ced A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:831:0x0ce8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:832:0x0cfd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:833:0x0cf8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:859:0x0aae A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:240:0x0826. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0235. Please report as an issue. */
    public application5(String str) {
        int i;
        int i2;
        Cipher cipher;
        int i3;
        Object[] objArr = {new Integer(1291941), new Integer(12167132), new Integer(7230957), new Integer(942677), new Integer(6524381), new Integer(10370590), new Integer(11145971), new Integer(3214390)};
        int iIntValue = ((Integer) objArr[0]).intValue();
        int i4 = (iIntValue ^ (-1)) & 218529;
        int iIntValue2 = ((Integer) objArr[5]).intValue();
        int i5 = (iIntValue2 ^ (-1)) & 855365;
        int iIntValue3 = ((Integer) objArr[6]).intValue();
        Object[] objArr2 = {new Integer((iIntValue & (-4704130)) | i), new Integer((iIntValue & (-7811776)) | i), new Integer((iIntValue & (-218530)) | i4), new Integer((iIntValue & (-6541888)) | i), new Integer((iIntValue2 & (-855366)) | i5), new Integer((iIntValue & (-9312181)) | i), new Integer((iIntValue & (-720815)) | i), new Integer((iIntValue3 & (-3813155)) | ((iIntValue3 ^ (-1)) & 3813154))};
        int iIntValue4 = ((Integer) objArr[1]).intValue();
        int i6 = (iIntValue4 ^ (-1)) & 9312180;
        int iIntValue5 = ((Integer) objArr[3]).intValue();
        int i7 = (iIntValue5 ^ (-1)) & 720814;
        int iIntValue6 = ((Integer) objArr[2]).intValue();
        int i8 = (iIntValue6 ^ (-1)) & 7811775;
        int iIntValue7 = ((Integer) objArr[7]).intValue();
        int i9 = (iIntValue7 ^ (-1)) & 6541887;
        int iIntValue8 = ((Integer) objArr[4]).intValue();
        int i10 = (iIntValue8 ^ (-1)) & 4704129;
        String strM275 = null;
        Key key = null;
        short[] sArr = null;
        int iM141 = 0;
        Cipher cipherM482 = null;
        Cipher cipherM576MHHX = null;
        int iM142 = 0;
        Key key2 = null;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        Cipher cipher2 = null;
        int i14 = 0;
        int i15 = 0;
        short[] sArr2 = null;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        Cipher cipher3 = null;
        int i19 = 0;
        int i20 = 0;
        short[] sArr3 = null;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        Cipher cipher4 = null;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        String str2 = null;
        short[] sArr4 = null;
        Cipher cipher5 = null;
        int iM200 = 0;
        String strM239 = null;
        int iM479 = 0;
        int i28 = 0;
        short[] sArrM100 = null;
        Key keyM229 = null;
        int iM143 = 0;
        int iM144 = 0;
        int iM145 = 0;
        int i29 = 0;
        int i30 = 0;
        int i31 = 0;
        int i32 = 0;
        int i33 = 0;
        int i34 = 0;
        Cipher cipher6 = null;
        int i35 = 0;
        int i36 = 0;
        int i37 = 0;
        int i38 = 0;
        int i39 = 0;
        int i40 = 0;
        int i41 = 0;
        Cipher cipher7 = null;
        int i42 = 0;
        int i43 = 0;
        short[] sArr5 = null;
        int i44 = 0;
        int i45 = 0;
        int iM146 = 0;
        int i46 = 0;
        int i47 = 0;
        Long lDecode = null;
        Object obj = "ۣۤۢ";
        while (true) {
            switch (C0033.m669(obj) ^ 1748863) {
                case 3:
                    strM239 = C0033.m571x30ecc8f6();
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "ۧۢۨ";
                    }
                    break;
                case 28:
                case 59:
                case 62:
                case 440:
                case 474:
                case 2076:
                case 2077:
                case 4376:
                case 4380:
                case 4474:
                case 4795:
                case 5404:
                case 5407:
                case 5434:
                case 5439:
                case 5788:
                case 5815:
                case 6429:
                case 6459:
                case 6592:
                case 7228:
                case 7615:
                case 7616:
                case 26272:
                case 26519:
                case 27158:
                case 27193:
                case 27382:
                case 27992:
                case 28309:
                case 1733472:
                case 1733500:
                case 1733788:
                case 1733789:
                    i3 = i27;
                    if (C0024.m165xf0c433e8() <= 0) {
                        i27 = i3;
                        obj = "ۡۦ۟";
                    } else {
                        i27 = i3;
                        obj = "ۧۧ";
                    }
                    break;
                case 35:
                    int iM147 = C0024.m141((Integer) objArr2[6]);
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                        i45 = iM147;
                        obj = "ۦۢۢ";
                    } else {
                        i45 = iM147;
                        obj = "۟۟";
                    }
                    break;
                case 91:
                    obj = "ۥۡ۠";
                    break;
                case 121:
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۣۡۢ";
                    }
                    break;
                case 122:
                    this.muhua7 = null;
                    if (C0033.m596() <= 0) {
                        String strM534 = C0032.m534();
                        if (C0024.m165xf0c433e8() <= 0) {
                            C0032.m436();
                            strM239 = strM534;
                            obj = "ۧۤۥ";
                        } else {
                            strM239 = strM534;
                            obj = "ۣ۠ۢ";
                        }
                    } else {
                        obj = "ۨۥۧ";
                    }
                    break;
                case 126:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۡ۠ۤ";
                    }
                    break;
                case 224:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                        obj = "ۤۦۤ";
                    } else {
                        obj = "ۡۦۨ";
                    }
                    break;
                case 225:
                    obj = "ۥۦۨ";
                    break;
                case 409:
                    System.out.println(lDecode);
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                    } else {
                        obj = "۠۠ۥ";
                    }
                    break;
                case 413:
                    obj = C0026.m329() > 0 ? "۠ۨ۠" : "ۤۨ۠";
                    break;
                case 443:
                    if (C0026.m329() > 0) {
                        obj = "ۢۤ";
                    }
                    break;
                case 445:
                    int i48 = ((i27 ^ (-1)) & (-1)) | (i27 & 0);
                    i46 = ((-2378335) ^ i48) & i48;
                    obj = "۟ۡۢ";
                    break;
                case 475:
                    obj = "ۣۧۥ";
                    break;
                case 502:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        obj = "ۣۣۤ";
                    }
                    break;
                case 505:
                    int i49 = ((i23 ^ (-1)) & (-1)) | (i23 & 0);
                    i42 = ((-3649642) ^ i49) & i49;
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                    } else {
                        obj = "ۣۤۡ";
                    }
                    break;
                case 507:
                    obj = "۟ۢۦ";
                    break;
                case 509:
                    if (C0033.m706() > 0) {
                        obj = "ۢۧۦ";
                    }
                    break;
                case 1025:
                    short[] sArrM101 = C0024.m100();
                    if (C0032.m436() <= 0) {
                        sArr5 = sArrM101;
                        obj = "ۣ۟ۢ";
                    } else {
                        sArr5 = sArrM101;
                        obj = "ۣۡ۟";
                    }
                    break;
                case MysqlErrorNumbers.ER_FORM_NOT_FOUND /* 1029 */:
                    obj = "ۣۢۡ";
                    break;
                case MysqlErrorNumbers.ER_NON_UNIQ_ERROR /* 1052 */:
                    obj = "ۨۥۧ";
                    break;
                case MysqlErrorNumbers.ER_BAD_FIELD_ERROR /* 1054 */:
                    sArrM100 = C0024.m100();
                    obj = "ۨۦ۠";
                    break;
                case MysqlErrorNumbers.ER_WRONG_SUM_SELECT /* 1057 */:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۡۡۧ";
                    }
                    break;
                case MysqlErrorNumbers.ER_TOO_LONG_IDENT /* 1059 */:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۣ۠ۢ";
                    }
                    break;
                case MysqlErrorNumbers.ER_BLOBS_AND_NO_TERMINATED /* 1084 */:
                    if (C0025.m237() < 0) {
                        strM239 = C0025.m239();
                        if (C0032.m436() <= 0) {
                            C0025.m186();
                        } else {
                            obj = "ۥۨ۟";
                        }
                    } else {
                        i3 = i27;
                        if (C0024.m165xf0c433e8() <= 0) {
                            i27 = i3;
                            obj = "ۡۦ۟";
                        } else {
                            i27 = i3;
                            obj = "ۧۧ";
                        }
                    }
                    break;
                case MysqlErrorNumbers.ER_TOO_MANY_FIELDS /* 1117 */:
                    obj = C0032.m436() <= 0 ? "ۨ۠ۦ" : "ۢۨۥ";
                    break;
                case MysqlErrorNumbers.ER_TOO_BIG_ROWSIZE /* 1118 */:
                    obj = "ۡۥۥ";
                    break;
                case MysqlErrorNumbers.ER_NULL_COLUMN_IN_INDEX /* 1121 */:
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "ۣۤۤ";
                    }
                    break;
                case MysqlErrorNumbers.ER_ILLEGAL_GRANT_FOR_TABLE /* 1144 */:
                    obj = "ۥۦۤ";
                    break;
                case MysqlErrorNumbers.ER_NO_REFERENCED_ROW /* 1216 */:
                    i = i44;
                    i44 = i;
                    obj = "ۥ۠ۧ";
                    break;
                case MysqlErrorNumbers.ER_WRONG_USAGE /* 1221 */:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۣۨ";
                    }
                    break;
                case MysqlErrorNumbers.ER_WRONG_NUMBER_OF_COLUMNS_IN_SELECT /* 1222 */:
                    if (C0032.m436() > 0) {
                        obj = "ۢۧۨ";
                    }
                    break;
                case MysqlErrorNumbers.ER_CYCLIC_REFERENCE /* 1245 */:
                    obj = "۠۠ۥ";
                    break;
                case MysqlErrorNumbers.ER_STARTUP /* 1408 */:
                    String strM281 = C0025.m281();
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                        strM239 = strM281;
                        i23 = iM143;
                        obj = "ۦۢۧ";
                    } else {
                        strM239 = strM281;
                        i23 = iM143;
                        obj = "ۡۨۦ";
                    }
                    break;
                case MysqlErrorNumbers.ER_FOREIGN_DATA_STRING_INVALID /* 1433 */:
                    obj = "ۨ۠۠";
                    break;
                case MysqlErrorNumbers.ER_CANT_CREATE_FEDERATED_TABLE /* 1434 */:
                    break;
                case MysqlErrorNumbers.ER_TOO_LONG_BODY /* 1437 */:
                    if (C0033.m706() > 0) {
                        obj = "ۧۥۧ";
                    }
                    break;
                case MysqlErrorNumbers.ER_XAER_DUPID /* 1440 */:
                    strM239 = C0024.m135();
                    if (C0033.m706() <= 0) {
                        C0032.m436();
                        cipher5 = cipher7;
                    } else {
                        obj = "ۦۤۧ";
                        cipher5 = cipher7;
                    }
                    break;
                case MysqlErrorNumbers.ER_VIEW_RECURSIVE /* 1462 */:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "۟۟";
                    }
                    break;
                case MysqlErrorNumbers.ER_USERNAME /* 1468 */:
                    obj = "ۨۥ۠";
                    break;
                case MysqlErrorNumbers.ER_HOSTNAME /* 1469 */:
                    switch (((iM479 ^ (-1)) & 1749701) | ((-1749702) & iM479)) {
                        case MysqlErrorNumbers.ER_ALTER_INFO /* 1088 */:
                            if (C0026.m329() > 0) {
                            }
                            break;
                        case MysqlErrorNumbers.ER_FLUSH_MASTER_BINLOG_CLOSED /* 1186 */:
                            if (C0026.m329() > 0) {
                                obj = "ۢۤ";
                            }
                            break;
                        case MysqlErrorNumbers.ER_FOREIGN_SERVER_EXISTS /* 1476 */:
                            if (C0032.m436() > 0) {
                                obj = "ۣ۟ۧ";
                            }
                            break;
                        case 2073:
                            if (C0026.m329() > 0) {
                                obj = "ۦۤۤ";
                            } else {
                                C0033.m706();
                                obj = "ۣۤۥ";
                            }
                            break;
                        case 2242:
                            obj = "ۦ۠";
                            break;
                        case 2824:
                            if (C0033.m706() > 0) {
                                obj = "ۢۧۦ";
                            }
                            break;
                        case 3172:
                            obj = "ۡۧ";
                            break;
                        case 3213:
                            if (C0026.m329() > 0) {
                                obj = "ۡ۟ۤ";
                            }
                            break;
                        case 3232:
                            if (C0026.m329() > 0) {
                                obj = "ۢۨ۟";
                            } else {
                                C0026.m329();
                            }
                            break;
                        case 3939:
                            obj = "ۣ۠";
                            break;
                        case 5464:
                            obj = "۟ۧۥ";
                            break;
                        case 5503:
                            if (C0026.m329() > 0) {
                                obj = "ۣۡۧ";
                            } else {
                                C0033.m706();
                            }
                            break;
                        case 6157:
                            obj = "ۦۨ۟";
                            break;
                        case 6491:
                        case 29550:
                            obj = "ۨ۟ۧ";
                            break;
                        case 7171:
                            obj = "ۣۤۨ";
                            break;
                        case 29571:
                            obj = "ۨۥ۠";
                            break;
                        case 29611:
                            if (C0025.m186() < 0) {
                                obj = "ۤۢ۟";
                            } else {
                                C0032.m436();
                                obj = "ۨۢۧ";
                            }
                            break;
                        case 29920:
                            obj = "ۧۤ";
                            break;
                        case 29927:
                            obj = "ۥۨۧ";
                            break;
                        case 30496:
                            if (C0024.m165xf0c433e8() > 0) {
                                obj = "ۡۡۢ";
                            } else {
                                C0026.m329();
                            }
                            break;
                        case 30627:
                            if (C0033.m706() > 0) {
                            }
                            break;
                        case 1732157:
                            obj = "ۣ۠ۦ";
                            break;
                        case 1732314:
                            if (C0032.m436() > 0) {
                            }
                            break;
                        default:
                            obj = "ۣ۟ۨ";
                            break;
                    }
                    break;
                case MysqlErrorNumbers.ER_WRONG_STRING_LENGTH /* 1470 */:
                    if (C0024.m165xf0c433e8() <= 0) {
                        iM200 = i15;
                        i27 = i22;
                        cipher5 = cipher4;
                        i14 = i13;
                        i26 = i18;
                        i21 = i11;
                        sArr4 = sArr2;
                        i23 = i24;
                    } else {
                        obj = "ۥ۟ۡ";
                        iM200 = i15;
                        i27 = i22;
                        cipher5 = cipher4;
                        i14 = i13;
                        i26 = i18;
                        i21 = i11;
                        sArr4 = sArr2;
                        i23 = i24;
                    }
                    break;
                case 2050:
                    obj = "ۣ۠";
                    break;
                case 2079:
                    obj = "ۣۢ۠";
                    break;
                case 2111:
                    i47 = ((i27 ^ (-1)) ^ (-2378335)) & (-2378335);
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "ۣۧ۠";
                    }
                    break;
                case 2113:
                    int iM148 = C0024.m141((Integer) objArr2[0]);
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                        i35 = iM148;
                        obj = "ۧ۠ۡ";
                    } else {
                        i35 = iM148;
                        obj = "ۣ۠ۢ";
                    }
                    break;
                case 2176:
                    obj = C0032.m436() > 0 ? "۠۟ۢ" : "۠ۤۥ";
                    break;
                case 2178:
                    if (C0033.m609() >= 0) {
                        C0033.m596();
                        obj = "ۣۡ";
                    } else if (C0032.m436() <= 0) {
                    }
                    break;
                case 2240:
                    strM239 = C0032.m430();
                    cipher2 = cipher6;
                    obj = "ۣۡ۠";
                    break;
                case 2299:
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                    } else {
                        obj = "۟ۡ";
                    }
                    break;
                case 4383:
                    obj = "ۨۡۡ";
                    break;
                case 4384:
                    C0024.m170(cipher2, (i42 ^ i43) | (i42 & i43), key2);
                    obj = C0026.m329() <= 0 ? "ۥۨۡ" : "۠ۥۣ";
                    break;
                case 4385:
                    obj = "ۡ۠";
                    break;
                case 4407:
                    cipherM482 = C0032.m482(this);
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۣۧۤ";
                    }
                    break;
                case 4409:
                    strM239 = C0024.m139();
                    if (C0024.m165xf0c433e8() <= 0) {
                        i25 = iM146;
                    } else {
                        obj = "ۣۡۨ";
                        i25 = iM146;
                    }
                    break;
                case 4412:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        obj = "ۡۥۨ";
                    }
                    break;
                case 4438:
                    if (C0024.m165xf0c433e8() > 0) {
                        C0026.m329();
                    } else {
                        obj = "ۡۡۢ";
                    }
                    break;
                case 4469:
                    strM239 = C0032.m433();
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                        i12 = iM145;
                    } else {
                        obj = "ۢۤۨ";
                        i12 = iM145;
                    }
                    break;
                case 4476:
                    if (C0025.m186() < 0) {
                        C0032.m436();
                        obj = "ۨۢۧ";
                    } else {
                        obj = "ۤۢ۟";
                    }
                    break;
                case 4478:
                    obj = "ۣۤۨ";
                    break;
                case 4571:
                    if (C0025.m237() >= 0) {
                        iM200 = C0025.m200(C0033.m695(C0033.m701()));
                        strM239 = C0024.m178();
                        if (C0024.m165xf0c433e8() > 0) {
                            obj = "ۡۨۥ";
                        }
                    } else {
                        obj = "ۣ۠ۦ";
                    }
                    break;
                case 4576:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "ۥۦ۠";
                    }
                    break;
                case 4579:
                    if (C0025.m186() < 0) {
                        obj = "ۧۢۤ";
                    }
                    break;
                case 4757:
                    obj = "ۨۦ۠";
                    break;
                case 4760:
                    obj = "ۣۤ۟";
                    break;
                case 4762:
                    if (C0032.m436() > 0) {
                        obj = "ۣ۟ۧ";
                    }
                    break;
                case 4764:
                    obj = "ۣ۟ۨ";
                    break;
                case 4787:
                    if (C0025.m186() < 0) {
                        obj = "ۦۢۥ";
                    }
                    break;
                case 4819:
                    strM239 = C0024.m158();
                    i14 = i44;
                    obj = "ۧ۠ۢ";
                    break;
                case 4824:
                    obj = "ۣۧۤ";
                    break;
                case 4825:
                    obj = "ۡۧ";
                    break;
                case 4856:
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                        strM239 = str2;
                    } else {
                        obj = "ۧۧ";
                        strM239 = str2;
                    }
                    break;
                case 5405:
                    obj = "ۤۧۥ";
                    break;
                case 5461:
                    strM239 = C0025.m292();
                    sArr4 = sArr5;
                    obj = "ۣۨۧ";
                    break;
                case 5464:
                    obj = "ۣۧ۠";
                    break;
                case 5466:
                    strM275 = C0025.m275();
                    key = null;
                    sArr = null;
                    i20 = 0;
                    i19 = 0;
                    i16 = 0;
                    cipher3 = null;
                    i24 = 0;
                    sArr2 = null;
                    i11 = 0;
                    i18 = 0;
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۦۣۡ";
                    }
                    break;
                case 5470:
                    if (C0033.m596() <= 0) {
                        C0033.m596();
                        if (C0033.m706() <= 0) {
                            C0024.m165xf0c433e8();
                        } else {
                            obj = "ۤ۠";
                        }
                    } else {
                        obj = C0024.m165xf0c433e8() <= 0 ? "ۣۧۦ" : "ۢۡ";
                    }
                    break;
                case 5495:
                    obj = "ۧۤ";
                    break;
                case 5497:
                    int i50 = ((i23 ^ (-1)) ^ (-3649642)) & (-3649642);
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        i43 = i50;
                        obj = "۠ۨ";
                    } else {
                        i43 = i50;
                        obj = "ۥۦ۠";
                    }
                    break;
                case 5531:
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                        obj = "۟ۢ";
                    } else {
                        obj = "ۦۡ";
                    }
                    break;
                case 5536:
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                    } else {
                        obj = "۟ۡ۠";
                    }
                    break;
                case 5539:
                    obj = "ۧۥۧ";
                    break;
                case 5565:
                    iM144 = C0024.m141((Integer) objArr2[2]);
                    obj = "ۣۣۤ";
                    break;
                case 5571:
                    if (C0033.m706() > 0) {
                        obj = "ۧۨۨ";
                    }
                    break;
                case 5598:
                    iM142 = C0024.m141((Integer) objArr2[3]);
                    obj = "ۣۢۤ";
                    break;
                case 5627:
                    if (C0026.m329() > 0) {
                        C0033.m706();
                    } else {
                        obj = "ۣۡۧ";
                    }
                    break;
                case 6242:
                    obj = C0026.m329() <= 0 ? "ۤۤۦ" : "ۣۡ۟";
                    break;
                case 6267:
                    obj = "ۥۨۧ";
                    break;
                case 6428:
                    obj = "۟ۧۥ";
                    break;
                case 6462:
                    if (C0033.m596() <= 0) {
                        C0033.m596();
                        String strM202 = C0025.m202();
                        if (C0025.m186() >= 0) {
                            C0026.m329();
                            strM239 = strM202;
                            sArr4 = sArr5;
                            obj = "ۦۥۥ";
                        } else {
                            strM239 = strM202;
                            sArr4 = sArr5;
                            obj = "۠ۡۨ";
                        }
                    } else {
                        obj = "ۤۢۨ";
                    }
                    break;
                case 6487:
                    this.muhua7 = C0024.m109(C0024.m168(sArr4, (i36 ^ i37) | (i36 & i37), (i38 ^ i39) | (i38 & i39), (i40 ^ i41) | (i40 & i41)));
                    if (C0032.m436() > 0) {
                        obj = "ۣۥ۟";
                    }
                    break;
                case 6490:
                    if (C0025.m226() > 0) {
                        strM239 = C0032.m516();
                        i27 = i35;
                        obj = "ۣ۟ۢ";
                    } else {
                        i3 = i35;
                        if (C0024.m165xf0c433e8() <= 0) {
                            i27 = i3;
                            obj = "ۡۦ۟";
                        } else {
                            i27 = i3;
                            obj = "ۧۧ";
                        }
                    }
                    break;
                case 6492:
                    i34 = ((i17 ^ (-1)) ^ (-1107181)) & (-1107181);
                    obj = "ۧۧ۟";
                    break;
                case 6516:
                    C0032.m541(C0032.m561x40d0319c(), iM200);
                    strM239 = C0025.m239();
                    obj = "۠ۥ";
                    break;
                case 6519:
                    obj = "ۡۦۡ";
                    break;
                case 6523:
                    obj = "ۦۨ۟";
                    break;
                case 6594:
                    cipherM576MHHX = C0033.m576MHHX(this);
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "ۨۤۢ";
                    }
                    break;
                case 6621:
                    String strM60 = C0024.m60();
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                        strM239 = strM60;
                        i17 = iM144;
                        obj = "ۣۣۡ";
                    } else {
                        strM239 = strM60;
                        i17 = iM144;
                        obj = "ۥۥۣ";
                    }
                    break;
                case 7200:
                    strM239 = C0033.m591();
                    if (C0025.m186() < 0) {
                        obj = "ۨ۠ۨ";
                    }
                    break;
                case 7206:
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "ۡۦۡ";
                    }
                    break;
                case 7230:
                    if (C0025.m186() < 0) {
                        obj = "ۦۢۥ";
                    }
                    break;
                case 7261:
                    obj = C0025.m186() >= 0 ? "ۧۨۧ" : "ۣۤۢ";
                    break;
                case 7553:
                    if (C0026.m329() > 0) {
                        C0026.m329();
                    } else {
                        obj = "ۢۨ۟";
                    }
                    break;
                case 7577:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "۟ۢۥ";
                    }
                    break;
                case 7579:
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                        obj = "۟ۤ۟";
                    } else {
                        obj = "ۣ۠ۥ";
                    }
                    break;
                case 7582:
                    if (C0025.m237() >= 0) {
                        C0033.m609();
                        if (C0024.m165xf0c433e8() <= 0) {
                            C0025.m186();
                            i44 = iM142;
                            i14 = iM142;
                        } else {
                            obj = "۠۠ۦ";
                            i44 = iM142;
                            i14 = iM142;
                        }
                    } else {
                        i = iM142;
                        i44 = i;
                        obj = "ۥ۠ۧ";
                    }
                    break;
                case 7640:
                    obj = "ۤۢۨ";
                    break;
                case 7674:
                    int i51 = ((i21 ^ (-1)) ^ (-303004)) & (-303004);
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                        i41 = i51;
                        obj = "۠ۢۨ";
                    } else {
                        i41 = i51;
                        obj = "ۣ۠ۥ";
                    }
                    break;
                case 26137:
                    if (C0033.m609() >= 0) {
                        C0025.m237();
                        obj = "ۦۢۤ";
                        cipher7 = cipherM576MHHX;
                        cipher5 = cipherM576MHHX;
                    } else {
                        cipher7 = cipherM576MHHX;
                        if (C0026.m329() > 0) {
                            obj = "۠۠۟";
                        }
                    }
                    break;
                case 26163:
                    obj = "ۣۥۡ";
                    break;
                case 26164:
                    obj = C0033.m706() > 0 ? "ۥۥ۠" : "ۦۥ۟";
                    break;
                case 26169:
                    String strM621 = C0033.m621();
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                        strM239 = strM621;
                        i26 = i28;
                        obj = "ۧۡۤ";
                    } else {
                        strM239 = strM621;
                        i26 = i28;
                        obj = "ۥۢۤ";
                    }
                    break;
                case 26230:
                    if (C0032.m436() > 0) {
                        obj = "ۣۧ۠";
                    }
                    break;
                case 26231:
                    iM146 = C0024.m141((Integer) objArr2[4]);
                    if (C0033.m706() > 0) {
                        obj = "ۥۥۦ";
                    }
                    break;
                case 26330:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۤۦۣ";
                    }
                    break;
                case 26333:
                    String strM293 = C0025.m293();
                    if (C0033.m706() <= 0) {
                        strM239 = strM293;
                        sArr3 = sArrM100;
                        obj = "ۥۥ";
                    } else {
                        strM239 = strM293;
                        sArr3 = sArrM100;
                        obj = "ۡۤۧ";
                    }
                    break;
                case 26357:
                    strM239 = C0033.m591();
                    obj = "ۡ۟ۢ";
                    break;
                case 26364:
                    obj = C0024.m165xf0c433e8() <= 0 ? "ۡۧ۠" : "ۣۨ";
                    break;
                case 26511:
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                        obj = "ۢۧ";
                    } else {
                        obj = "ۣ۠";
                    }
                    break;
                case 26543:
                    strM239 = C0033.m571x30ecc8f6();
                    if (C0026.m329() > 0) {
                        obj = "۠ۤۢ";
                    }
                    break;
                case 26968:
                    strM239 = C0024.m159();
                    key2 = keyM229;
                    obj = "ۦۣ۟";
                    break;
                case 27154:
                    obj = C0025.m186() >= 0 ? "ۣ۟" : "ۣۤ۟";
                    break;
                case 27160:
                    if (C0026.m329() > 0) {
                        obj = "ۡ۟ۤ";
                    }
                    break;
                case 27221:
                    if (C0025.m226() <= 0) {
                        C0033.m596();
                        if (C0033.m706() <= 0) {
                            i28 = iM141;
                            i26 = iM141;
                        } else {
                            obj = "ۣۣۡ";
                            i28 = iM141;
                            i26 = iM141;
                        }
                    } else {
                        i2 = iM141;
                        i28 = i2;
                        obj = "ۣۨۡ";
                    }
                    break;
                case 27222:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        obj = "ۥۨۨ";
                    } else {
                        obj = "ۤۤ۠";
                    }
                    break;
                case 27252:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                        obj = "۠ۢۦ";
                    } else {
                        obj = "ۦۤۨ";
                    }
                    break;
                case 27255:
                    obj = "ۥۣۨ";
                    break;
                case 27264:
                    this.muhua6 = C0024.m109(C0025.m260(sArr3, (i29 ^ i30) | (i29 & i30), (i31 ^ i32) | (i31 & i32), (i33 ^ i34) | (i33 & i34)));
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                        obj = "ۣ۠ۢ";
                    } else {
                        obj = "ۥۥۨ";
                    }
                    break;
                case 27318:
                    iM141 = C0024.m141((Integer) objArr2[1]);
                    obj = "ۣۧ۠";
                    break;
                case 27322:
                    obj = "ۨۤۢ";
                    break;
                case 27349:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        obj = "ۣۢۤ";
                    }
                    break;
                case 27353:
                    if (C0025.m226() <= 0) {
                        C0024.m138();
                        obj = "۠ۥ۟";
                        cipher6 = cipherM482;
                        cipher2 = cipherM482;
                    } else {
                        cipher = cipherM482;
                        cipher6 = cipher;
                        obj = "۟ۥۥ";
                    }
                    break;
                case 27387:
                    C0024.m170(cipher5, (i46 ^ i47) | (i46 & i47), key2);
                    if (C0025.m186() < 0) {
                        obj = "ۡۧۢ";
                    }
                    break;
                case 27929:
                    cipher = cipher6;
                    cipher6 = cipher;
                    obj = "۟ۥۥ";
                    break;
                case 27938:
                    keyM229 = C0025.m229(this, C0033.m718(str));
                    obj = "ۧۨۨ";
                    break;
                case 27960:
                    if (C0026.m329() > 0) {
                        obj = "۠۠۟";
                    }
                    break;
                case 27998:
                    obj = "ۦ۠";
                    break;
                case 28031:
                    if (C0033.m706() <= 0) {
                        lDecode = Long.decode(C0025.m325("OnltBuKSpXcZFrx6mOPb17PMQ"));
                        if (C0032.m436() <= 0) {
                            C0024.m165xf0c433e8();
                        } else {
                            obj = "ۡۢۧ";
                        }
                    } else {
                        obj = "۠۠ۥ";
                    }
                    break;
                case 28180:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "ۥۥۦ";
                    }
                    break;
                case 28212:
                    if (C0026.m329() > 0) {
                        C0033.m706();
                        obj = "ۣۤۥ";
                    } else {
                        obj = "ۦۤۤ";
                    }
                    break;
                case 28310:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۤ۠۟";
                    }
                    break;
                case 28313:
                    obj = "ۨۡۡ";
                    break;
                case 28343:
                    if (C0024.m165xf0c433e8() <= 0) {
                    }
                    break;
                case 28349:
                    obj = "ۦۦۧ";
                    break;
                case 28374:
                    iM143 = C0024.m141((Integer) objArr2[5]);
                    obj = "۠ۡ۠";
                    break;
                case 28375:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                        obj = "ۣۧۧ";
                    } else {
                        obj = "ۣۤۤ";
                    }
                    break;
                case 28407:
                    i13 = 0;
                    cipher4 = null;
                    i22 = 0;
                    i15 = 0;
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                        obj = "ۦۥ۟";
                        cipher2 = cipher3;
                        i12 = i16;
                        i25 = i19;
                        i17 = i20;
                        sArr3 = sArr;
                        key2 = key;
                        str2 = strM275;
                    } else {
                        obj = "۠۟۠";
                        cipher2 = cipher3;
                        i12 = i16;
                        i25 = i19;
                        i17 = i20;
                        sArr3 = sArr;
                        key2 = key;
                        str2 = strM275;
                    }
                    break;
                case 1733379:
                    obj = "۟ۢ";
                    break;
                case 1733402:
                    try {
                        iM145 = C0024.m141((Integer) objArr2[7]);
                        if (C0033.m706() > 0) {
                            obj = "ۥۣۨ";
                        }
                    } catch (Exception e) {
                        C0032.m480(e);
                        strM239 = C0024.m88();
                        obj = "ۣۢۡ";
                    }
                    break;
                case 1733410:
                    obj = C0032.m436() <= 0 ? "۠ۨ" : "ۤۦۣ";
                    break;
                case 1733411:
                    obj = "ۣ۠ۦ";
                    break;
                case 1733437:
                    obj = C0032.m436() <= 0 ? "ۨۢۦ" : "ۤۧۥ";
                    break;
                case 1733440:
                    String strM276 = C0025.m275();
                    if (C0024.m165xf0c433e8() <= 0) {
                        strM239 = strM276;
                        obj = "ۥۥۧ";
                    } else {
                        strM239 = strM276;
                        obj = "۠ۢ۠";
                    }
                    break;
                case 1733465:
                    int i52 = ((i26 ^ (-1)) & (-1)) | (i26 & 0);
                    int i53 = i52 & ((-1664858) ^ i52);
                    int i54 = (-1664858) & ((i26 ^ (-1)) ^ (-1664858));
                    int i55 = ((i14 ^ (-1)) & (-1)) | (i14 & 0);
                    int i56 = i55 & ((-5430795) ^ i55);
                    int i57 = (-5430795) & ((i14 ^ (-1)) ^ (-5430795));
                    int i58 = ((i21 ^ (-1)) & (-1)) | (i21 & 0);
                    int i59 = ((-303004) ^ i58) & i58;
                    if (C0026.m329() <= 0) {
                        i36 = i53;
                        i37 = i54;
                        i38 = i56;
                        i39 = i57;
                        i40 = i59;
                        obj = "۟ۦ";
                    } else {
                        i36 = i53;
                        i37 = i54;
                        i38 = i56;
                        i39 = i57;
                        i40 = i59;
                        obj = "ۢۡۤ";
                    }
                    break;
                case 1733468:
                    i2 = i28;
                    i28 = i2;
                    obj = "ۣۨۡ";
                    break;
                case 1733469:
                    if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۧۡ۠";
                    }
                    break;
                case 1733498:
                    if (C0026.m329() > 0) {
                        obj = "ۨۨ۟";
                    }
                    break;
                case 1733506:
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                        obj = "ۡۤۧ";
                    } else {
                        obj = "۟ۡ۠";
                    }
                    break;
                case 1733535:
                    iM479 = C0032.m479(strM239);
                    obj = "۠۟ۡ";
                    break;
                case 1733538:
                    this.muhua6 = null;
                    if (C0025.m237() >= 0) {
                        C0033.m596();
                        obj = "ۣۧ۟";
                    } else if (C0025.m186() >= 0) {
                        C0026.m329();
                        obj = "۟ۢ";
                    } else {
                        obj = "ۦۡ";
                    }
                    break;
                case 1733572:
                    strM239 = C0033.m633();
                    obj = "ۥۦ۟";
                    break;
                case 1733573:
                    int i60 = ((i25 ^ (-1)) & (-1)) | (i25 & 0);
                    i29 = i60 & ((-9646932) ^ i60);
                    i30 = (-9646932) & ((i25 ^ (-1)) ^ (-9646932));
                    int i61 = ((i12 ^ (-1)) & (-1)) | (i12 & 0);
                    i31 = i61 & ((-9453011) ^ i61);
                    i32 = (-9453011) & ((i12 ^ (-1)) ^ (-9453011));
                    int i62 = ((i17 ^ (-1)) & (-1)) | (i17 & 0);
                    i33 = ((-1107181) ^ i62) & i62;
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۣ۠۠";
                    }
                    break;
                case 1733596:
                    obj = "ۧۧ۟";
                    break;
                case 1733601:
                    obj = "۠ۡ۠";
                    break;
                case 1733630:
                    obj = "ۨ۟ۧ";
                    break;
                case 1733760:
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۡۧۢ";
                    }
                    break;
                case 1733791:
                    strM239 = C0032.m468();
                    i21 = i45;
                    obj = "۠ۧ۠";
                    break;
                default:
                    break;
            }
            return;
        }
    }

    /* JADX INFO: renamed from: MHHX⁠⁠⁠⁣⁣⁤, reason: contains not printable characters */
    public static Double m29MHHX(Object obj) {
        Object obj2 = "ۡۧ۠";
        Double d = null;
        Double dDecode = null;
        while (true) {
            switch (C0033.m669(obj2) ^ 1746911) {
                case 2213:
                    if (C0033.m706() <= 0) {
                        break;
                    } else if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        obj2 = "ۡۦۨ";
                    }
                    break;
                case 2236:
                    dDecode = Double.decode((String) obj);
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        obj2 = "ۥۦۤ";
                        continue;
                    }
                    break;
                case 6553:
                    if (C0032.m436() > 0) {
                        obj2 = "ۥۤ۠";
                    } else {
                        continue;
                    }
                    break;
                case 6587:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj2 = "ۡۧ۠";
                    } else {
                        continue;
                    }
                    break;
                case 6588:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                        d = dDecode;
                    } else {
                        obj2 = "۠۠";
                        d = dDecode;
                        continue;
                    }
                    break;
                case 6654:
                    if (C0024.m165xf0c433e8() <= 0) {
                        obj2 = "۠ۥۢ";
                        d = null;
                    } else {
                        obj2 = "ۣۤۢ";
                        d = null;
                        continue;
                    }
                    break;
                case 7516:
                case 26103:
                    obj2 = "۠۠";
                    continue;
                case 7674:
                    if (C0024.m165xf0c433e8() <= 0) {
                        obj2 = "ۥۨۤ";
                    } else {
                        obj2 = "ۦۦۨ";
                        continue;
                    }
                    break;
                case 25275:
                    break;
                case 1735647:
                    return d;
                default:
                    continue;
            }
            if (C0024.m165xf0c433e8() > 0) {
                obj2 = "ۥۥۦ";
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:475:0x04d9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:482:0x0045 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:514:0x05b4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:516:0x05af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:526:0x0553 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:527:0x054e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:536:0x059b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:561:0x04d1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:562:0x0233 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:563:0x04c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:564:0x04c5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:565:0x04e8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:566:0x04e3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:567:0x0518 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:568:0x0513 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:569:0x052f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:570:0x052a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:571:0x055d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:572:0x057b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:573:0x0576 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:574:0x0591 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:575:0x058d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:576:0x05a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:577:0x05c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:578:0x05be A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:579:0x05e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:581:0x05f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:582:0x0615 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:583:0x0611 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:584:0x0623 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:585:0x061f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:593:0x05d9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:594:0x05d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:602:0x0607 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:604:0x0603 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:628:0x0544 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:629:0x053d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:634:0x0505 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:635:0x0500 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:655:0x04f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:656:0x04f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:700:0x0032 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:748:0x0032 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:756:0x0032 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:762:0x0032 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:765:0x0032 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:115:0x022a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x003b. Please report as an issue. */
    public static String byteArr2HexStr(byte[] bArr) throws Exception {
        byte b = 0;
        int i = 0;
        StringBuffer stringBuffer = null;
        int i2 = 0;
        int iM479 = 0;
        int i3 = 0;
        byte b2 = 0;
        byte b3 = 0;
        String strM42x761e26e2 = null;
        String str = "ۧ۠ۦ";
        String strM85 = null;
        int length = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        StringBuffer stringBuffer2 = null;
        int i10 = 0;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1754439) {
                case 12:
                case 47:
                case 839:
                case 864:
                case MysqlErrorNumbers.ER_OLD_KEYFILE /* 1035 */:
                case MysqlErrorNumbers.ER_NET_FCNTL_ERROR /* 1155 */:
                case 3075:
                case 3201:
                case 3204:
                case 3501:
                case 25154:
                case 27535:
                case 28195:
                case 28198:
                case 28314:
                case 28316:
                case 28359:
                case 29272:
                case 29515:
                case 29539:
                case 29664:
                case 29668:
                case 29669:
                case 30299:
                case 30465:
                case 30629:
                case 30688:
                case 30712:
                case 31525:
                case 31684:
                case 32647:
                case 32706:
                case 32710:
                case 1710374:
                case 1710437:
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۦۡ۟";
                    }
                    break;
                case 35:
                    if (C0033.m706() > 0) {
                        str = "۠۟۟";
                    }
                    break;
                case 73:
                    if (C0032.m436() > 0) {
                        str = "۠۟";
                    }
                    break;
                case 74:
                    if (C0025.m186() >= 0) {
                        i6 = i7;
                    } else {
                        str = "ۣۣۨ";
                        i6 = i7;
                    }
                    break;
                case 106:
                    strM85 = C0024.m85();
                    i10 = 0;
                    i8 = 0;
                    b = 0;
                    i = 0;
                    stringBuffer = null;
                    i2 = 0;
                    if (C0026.m329() > 0) {
                        str = "ۦ۠۠";
                    }
                    break;
                case 110:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        str = "ۢۥۨ";
                    }
                    break;
                case 128:
                    if (C0033.m596() <= 0) {
                        strM42x761e26e2 = C0025.m275();
                        str = "ۢۨۥ";
                    } else {
                        str = "۟ۦ";
                    }
                    break;
                case CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA /* 134 */:
                    str = C0025.m186() >= 0 ? "ۥۨۧ" : "ۣ۠ۨ";
                    break;
                case CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA /* 141 */:
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                    } else {
                        str = "۟ۨ۟";
                    }
                    break;
                case 205:
                    strM42x761e26e2 = C0024.m149();
                    str = C0026.m329() <= 0 ? "ۥۡۨ" : "ۥۨۡ";
                    break;
                case MysqlErrorNumbers.ER_KEY_NOT_FOUND /* 1032 */:
                    str = "ۣۤۤ";
                    break;
                case MysqlErrorNumbers.ER_WRONG_SUM_SELECT /* 1057 */:
                    i7 = 0;
                    str = "ۧ۟ۥ";
                    i5 = i10;
                    i4 = i8;
                    b3 = b;
                    i9 = i;
                    stringBuffer2 = stringBuffer;
                    length = i2;
                    break;
                case MysqlErrorNumbers.ER_TRANS_CACHE_FULL /* 1197 */:
                    str = "ۨۥ۟";
                    break;
                case MysqlErrorNumbers.ER_QUERY_ON_MASTER /* 1219 */:
                    iM479 = C0032.m479(strM42x761e26e2);
                    if (C0025.m186() < 0) {
                        str = "ۡ۟ۤ";
                    }
                    break;
                case MysqlErrorNumbers.ER_USER_LIMIT_REACHED /* 1226 */:
                    strM42x761e26e2 = C0024.m85();
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۡۤۨ";
                    }
                    break;
                case MysqlErrorNumbers.ER_LOCAL_VARIABLE /* 1228 */:
                    strM42x761e26e2 = C0032.m545();
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                    } else {
                        str = "ۣ۟";
                    }
                    break;
                case MysqlErrorNumbers.ER_CUT_VALUE_GROUP_CONCAT /* 1260 */:
                    str = "ۢۢۧ";
                    break;
                case MysqlErrorNumbers.ER_SLAVE_CONFIGURATION /* 1794 */:
                    b2 = bArr[i9];
                    if (C0024.m138() <= 0) {
                        C0025.m226();
                        if (C0025.m186() >= 0) {
                            str = "ۥۣ۠";
                            b3 = b2;
                        } else {
                            str = "ۢۨۢ";
                            b3 = b2;
                        }
                    } else {
                        str = "ۢۧۤ";
                    }
                    break;
                case MysqlErrorNumbers.ER_INNODB_NO_FT_TEMP_TABLE /* 1796 */:
                    str = "ۤۥۢ";
                    break;
                case MysqlErrorNumbers.ER_INVALID_YEAR_COLUMN_LENGTH /* 1818 */:
                    strM42x761e26e2 = C0024.m42x761e26e2();
                    str = C0024.m165xf0c433e8() <= 0 ? "۟۠۟" : "ۡۦۨ";
                    break;
                case MysqlErrorNumbers.ER_WARN_TRIGGER_DOESNT_HAVE_CREATED /* 1893 */:
                    if (C0025.m186() < 0) {
                        C0032.m436();
                    } else {
                        str = "ۦۧۦ";
                    }
                    break;
                case 3108:
                    if (C0025.m186() < 0) {
                        C0025.m186();
                    } else {
                        str = "۟ۥۧ";
                    }
                    break;
                case 3118:
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۧ۠ۦ";
                    }
                    break;
                case 3182:
                    if (C0032.m436() > 0) {
                        C0032.m436();
                    } else {
                        str = "ۦۡۨ";
                    }
                    break;
                case 3202:
                    str = "ۣۨ";
                    break;
                case 3269:
                    if (C0025.m237() >= 0) {
                        C0024.m138();
                        strM42x761e26e2 = C0025.m179xac050302();
                        i9 = 0;
                        if (C0025.m186() >= 0) {
                            C0025.m186();
                        } else {
                            str = "ۡۢۨ";
                        }
                    } else {
                        str = "ۨ۟۟";
                    }
                    break;
                case 3279:
                    str = "۟ۦ";
                    break;
                case 3471:
                    strM42x761e26e2 = C0024.m42x761e26e2();
                    i9 = 0;
                    if (C0025.m186() < 0) {
                        str = "۟ۦۦ";
                    }
                    break;
                case 25092:
                    if (i4 < 0) {
                        if (C0033.m609() >= 0) {
                            C0025.m226();
                            str = C0024.m165xf0c433e8() <= 0 ? "۠۟ۢ" : "ۤۡۡ";
                        } else {
                            str = "ۢۡۥ";
                        }
                    } else if (C0026.m329() > 0) {
                        C0033.m706();
                    } else {
                        str = "ۡۤۧ";
                    }
                    break;
                case 25185:
                    if (C0026.m329() > 0) {
                        C0032.m436();
                        str = "ۡۥۨ";
                    } else {
                        str = "ۣۡۨ";
                    }
                    break;
                case 25222:
                    if (C0033.m609() < 0) {
                        strM42x761e26e2 = C0032.m429();
                        if (C0025.m186() >= 0) {
                            C0025.m186();
                        } else {
                            str = "ۡۡ۠";
                        }
                    } else if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۦۡ۟";
                    }
                    break;
                case 25240:
                    str = "۠ۤۥ";
                    break;
                case 25273:
                    if (i9 < length) {
                        if (C0024.m138() > 0) {
                            strM42x761e26e2 = C0033.m610();
                            if (C0032.m436() <= 0) {
                                C0024.m165xf0c433e8();
                            } else {
                                str = "ۣۢ۠";
                            }
                        } else if (C0026.m329() <= 0) {
                            C0032.m436();
                        } else {
                            str = "ۦۡ۟";
                        }
                    } else if (C0032.m436() > 0) {
                        str = "۠۟";
                    }
                    break;
                case 25317:
                    str = C0033.m706() > 0 ? "ۡۦۨ" : "ۢۦۢ";
                    break;
                case 27172:
                    str = "ۤۥۦ";
                    break;
                case 27234:
                    str = "ۣۤ";
                    break;
                case 27235:
                    if (C0024.m138() <= 0) {
                        C0025.m226();
                        strM42x761e26e2 = C0032.m502();
                        str = "ۦۢۧ";
                    } else if (C0033.m706() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۡۧۧ";
                    }
                    break;
                case 27238:
                    str = C0025.m186() >= 0 ? "ۣۣ۟" : "ۣۧۦ";
                    break;
                case 27334:
                    strM42x761e26e2 = C0025.O();
                    str = "ۥۡ۟";
                    break;
                case 27355:
                    if (C0026.m329() > 0) {
                        str = "ۣۨ۟";
                    }
                    break;
                case 27527:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۨۧۥ";
                    }
                    break;
                case 27552:
                    if (C0025.m186() < 0) {
                        str = "ۡۡۨ";
                    }
                    break;
                case 27585:
                    switch (((iM479 ^ (-1)) & 1750819) | ((-1750820) & iM479)) {
                        case 477:
                            str = "ۨۥ۟";
                            break;
                        case MysqlErrorNumbers.ER_VIEW_SELECT_VARIABLE /* 1351 */:
                            if (C0026.m329() > 0) {
                                str = "ۢۦ";
                            }
                            break;
                        case MysqlErrorNumbers.ER_PS_NO_RECURSION /* 1444 */:
                            str = "ۢۨ۠";
                            break;
                        case MysqlErrorNumbers.ER_USERNAME /* 1468 */:
                            if (C0033.m706() > 0) {
                                str = "ۥۦۦ";
                            }
                            break;
                        case MysqlErrorNumbers.ER_PARTITION_REQUIRES_VALUES_ERROR /* 1479 */:
                            str = "ۣۨ";
                            break;
                        case 2338:
                            if (C0024.m165xf0c433e8() > 0) {
                                str = "ۢۡ";
                            } else {
                                C0033.m706();
                            }
                            break;
                        case 2401:
                            str = "ۥ۟ۧ";
                            break;
                        case 2495:
                            if (C0025.m186() < 0) {
                                str = "۟ۥۧ";
                            } else {
                                C0025.m186();
                            }
                            break;
                        case 3452:
                        case 32451:
                            str = "ۣۦ۠";
                            break;
                        case 3582:
                        case 7989:
                            if (C0024.m165xf0c433e8() > 0) {
                                str = "ۦۨ۟";
                            }
                            break;
                        case 4157:
                            str = "ۧۥۥ";
                            break;
                        case 6621:
                            if (C0032.m436() > 0) {
                                str = "۠۟";
                            }
                            break;
                        case 7171:
                            str = "۟ۧۦ";
                            break;
                        case 7202:
                            if (C0033.m706() > 0) {
                            }
                            break;
                        case 7270:
                            if (C0032.m436() > 0) {
                                str = "ۦۡۨ";
                            } else {
                                C0032.m436();
                            }
                            break;
                        case 7418:
                            str = "ۥۦۡ";
                            break;
                        case 7971:
                            if (C0025.m186() < 0) {
                                str = "ۦۧۦ";
                            } else {
                                C0032.m436();
                            }
                            break;
                        case 29255:
                            if (C0026.m329() > 0) {
                                str = "ۡۤۧ";
                            } else {
                                C0033.m706();
                            }
                            break;
                        case 29418:
                            if (C0033.m706() > 0) {
                                str = "۠۟۟";
                            }
                            break;
                        case 30432:
                            str = "ۢۢۡ";
                            break;
                        case 32357:
                            if (C0024.m165xf0c433e8() > 0) {
                            }
                            break;
                        case 32714:
                            if (C0026.m329() > 0) {
                            }
                            break;
                        case 1731363:
                            if (C0032.m436() > 0) {
                            }
                            break;
                        case 1731480:
                            if (C0024.m165xf0c433e8() > 0) {
                            }
                            break;
                        default:
                            if (C0026.m329() > 0) {
                                str = "ۣۡۨ";
                            } else {
                                C0032.m436();
                                str = "ۡۥۨ";
                            }
                            break;
                    }
                    break;
                case 27985:
                    strM42x761e26e2 = C0033.m685();
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                        i5 = i3;
                    } else {
                        str = "ۢ۟ۥ";
                        i5 = i3;
                    }
                    break;
                case 27995:
                    str = "۟ۧۦ";
                    break;
                case 28312:
                    str = "ۣۤۨ";
                    break;
                case 28313:
                    str = "ۥۦۡ";
                    break;
                case 28377:
                    if (C0024.m165xf0c433e8() > 0) {
                        C0033.m706();
                    } else {
                        str = "ۢۡ";
                    }
                    break;
                case 28390:
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        str = "ۢۤۤ";
                    }
                    break;
                case 28409:
                    if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۥۧۥ";
                    }
                    break;
                case 28411:
                    str = C0025.m186() >= 0 ? "ۨۢۤ" : "ۢۦ۠";
                    break;
                case 28551:
                    if (C0033.m596() > 0) {
                        strM42x761e26e2 = C0025.m310();
                        str = "ۤۨ۠";
                    } else if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۦۡ۟";
                    }
                    break;
                case 28600:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                        str = "ۣۢ";
                    } else {
                        str = "ۥۤۨ";
                    }
                    break;
                case 29252:
                    str = "ۥ۟ۧ";
                    break;
                case 29453:
                    if (C0032.m436() > 0) {
                        str = "ۣۣۤ";
                    }
                    break;
                case 29473:
                    str = C0032.m436() > 0 ? "ۣۣۢ" : "ۢۨ۟";
                    break;
                case 29476:
                    break;
                case 29517:
                    str = C0024.m165xf0c433e8() > 0 ? "ۦۨۨ" : "ۣۢۢ";
                    break;
                case 29593:
                    if (C0033.m706() > 0) {
                        str = "ۥۦۦ";
                    }
                    break;
                case 29594:
                    if (C0033.m609() >= 0) {
                        C0025.m226();
                        str = "ۤۧ۟";
                    } else {
                        str = C0033.m706() <= 0 ? "۠۟ۥ" : "ۦۡۦ";
                    }
                    break;
                case 29605:
                    str = "ۨ۟۟";
                    break;
                case 29626:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۦۨ۟";
                    }
                    break;
                case 29647:
                    if (C0026.m329() <= 0) {
                        str = "ۦ۟ۤ";
                        strM42x761e26e2 = strM85;
                    } else {
                        str = "ۦۡ۟";
                        strM42x761e26e2 = strM85;
                    }
                    break;
                case 30232:
                    if (C0026.m329() <= 0) {
                        C0026.m329();
                    } else {
                        str = "ۨۧۢ";
                    }
                    break;
                case 30235:
                    if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                        str = "ۧۥۥ";
                    } else {
                        str = "ۦۣۡ";
                    }
                    break;
                case 30236:
                    str = "ۢۢۡ";
                    break;
                case 30237:
                    if (C0025.m237() >= 0) {
                        C0025.m237();
                        if (C0025.m186() >= 0) {
                            C0024.m165xf0c433e8();
                            str = "ۨۥ";
                            i9 = i6;
                        } else {
                            str = "ۣ۠ۧ";
                            i9 = i6;
                        }
                    } else if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        str = "ۢۥۨ";
                    }
                    break;
                case 30238:
                    length = bArr.length;
                    if (C0033.m596() > 0) {
                        strM42x761e26e2 = C0033.m578();
                        if (C0026.m329() > 0) {
                            str = "۠ۦۧ";
                        }
                    } else if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۦۡ۟";
                    }
                    break;
                case 30274:
                    strM42x761e26e2 = C0024.m117();
                    if (C0025.m186() >= 0) {
                        str = "ۧۧۦ";
                        i9 = i6;
                    } else {
                        str = "ۧۡ";
                        i9 = i6;
                    }
                    break;
                case 30297:
                    if (i4 >= 16) {
                        str = "ۧۥۥ";
                    } else if (C0025.m226() <= 0) {
                        strM42x761e26e2 = C0033.m681();
                        str = C0025.m186() >= 0 ? "ۢۧۤ" : "ۨۨ";
                    } else if (C0025.m186() >= 0) {
                    }
                    break;
                case 30309:
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۣ۟ۨ";
                    }
                    break;
                case 30328:
                    strM42x761e26e2 = C0024.m92();
                    if (C0024.m165xf0c433e8() <= 0) {
                        b3 = b2;
                    } else {
                        str = "ۢۦۦ";
                        b3 = b2;
                    }
                    break;
                case 30330:
                    if (C0026.m329() > 0) {
                        C0033.m706();
                    } else {
                        str = "ۡۤۧ";
                    }
                    break;
                case 30479:
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۨ۠ۢ";
                    }
                    break;
                case 30498:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۣۤۧ";
                    }
                    break;
                case 30626:
                    str = "ۣۦ۠";
                    break;
                case 30657:
                    strM42x761e26e2 = C0024.m69();
                    if (C0033.m706() > 0) {
                        str = "ۥۧۧ";
                    }
                    break;
                case 30693:
                    C0033.m672(stringBuffer2, '0');
                    strM42x761e26e2 = C0025.m315();
                    str = C0026.m329() <= 0 ? "ۣۨۧ" : "ۣۡۨ";
                    break;
                case 30694:
                    strM42x761e26e2 = C0025.m206();
                    str = "ۤ۟ۢ";
                    i4 = i5;
                    break;
                case 30713:
                    str = C0024.m165xf0c433e8() > 0 ? "ۡۢۨ" : "ۢۢۢ";
                    break;
                case 30852:
                    str = "۠ۤۨ";
                    break;
                case 30922:
                    strM42x761e26e2 = C0032.m545();
                    str = "۠ۧۥ";
                    i4 = b3;
                    break;
                case 30954:
                    str = "ۢۧۤ";
                    break;
                case 31522:
                    i3 = i4 + 256;
                    if (C0033.m596() <= 0) {
                        strM42x761e26e2 = C0025.m280();
                        if (C0026.m329() <= 0) {
                            i5 = i3;
                        } else {
                            str = "ۧۥ۟";
                            i5 = i3;
                        }
                    } else if (C0026.m329() <= 0) {
                        C0025.m186();
                    } else {
                        str = "۟ۨ۟";
                    }
                    break;
                case 31527:
                    strM42x761e26e2 = C0032.m469();
                    str = "ۤۨ۟";
                    break;
                case 31598:
                    strM42x761e26e2 = C0024.m89();
                    if (C0026.m329() > 0) {
                        str = "۠ۨۧ";
                    }
                    break;
                case 31682:
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                        str = "۟ۦۢ";
                    } else {
                        str = "ۧۧ۠";
                    }
                    break;
                case 31705:
                    str = C0033.m706() <= 0 ? "۟ۢ۠" : "ۣۧۢ";
                    break;
                case 31718:
                    if (C0033.m706() <= 0) {
                    }
                    break;
                case 31872:
                    str = C0026.m329() <= 0 ? "۟ۧۢ" : "ۧۡۥ";
                    break;
                case 31885:
                    if (C0025.m186() < 0) {
                        str = "ۣ۠ۡ";
                    }
                    break;
                case 32577:
                    if (C0025.m186() < 0) {
                        str = "ۣۢ۟";
                    }
                    break;
                case 32579:
                    if (C0025.m186() < 0) {
                        str = "ۧۨۨ";
                    }
                    break;
                case 32621:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                        str = "ۣۨۦ";
                    } else {
                        str = "ۥۦۣ";
                    }
                    break;
                case 32667:
                    str = C0025.m186() >= 0 ? "۠۟۠" : "۟۟ۥ";
                    break;
                case 32668:
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                    } else {
                        str = "ۦ۟ۥ";
                    }
                    break;
                case 32708:
                    str = C0026.m329() > 0 ? "۠ۦۦ" : "۟ۡۥ";
                    break;
                case 32743:
                    if (C0033.m706() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۡۧۧ";
                    }
                    break;
                case 32763:
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                        str = "ۦۤۢ";
                    } else {
                        str = "۠ۨۥ";
                    }
                    break;
                case 1710151:
                    str = C0026.m329() <= 0 ? "ۧۡۤ" : "ۣۢ۠";
                    break;
                case 1710339:
                    i6 = ((-25) - (((-14) - i9) + 14)) + 26;
                    strM42x761e26e2 = C0024.m137();
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۣۤۡ";
                    }
                    break;
                case 1710361:
                    if (C0026.m329() > 0) {
                        str = "ۢۦ";
                    }
                    break;
                case 1710370:
                    stringBuffer2 = new StringBuffer(length * 2);
                    strM42x761e26e2 = C0024.m122();
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۦۧۤ";
                    }
                    break;
                case 1710392:
                    str = "ۧۥۥ";
                    break;
                case 1710456:
                    C0033.m577(stringBuffer2, C0032.m539(i4, 16));
                    if (C0025.m226() > 0) {
                        strM42x761e26e2 = C0024.m155();
                        if (C0033.m706() > 0) {
                            str = "ۤۢۨ";
                        }
                    } else if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۦۡ۟";
                    }
                    break;
                case 1710493:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۣۨۤ";
                    }
                    break;
                case 1710531:
                    str = "ۢۨ۠";
                    break;
                case 1711776:
                    strM42x761e26e2 = C0025.m315();
                    str = "ۦ۟ۨ";
                    break;
                case 1711779:
                    str = "ۣۡ";
                    break;
                case 1711791:
                    str = "ۢۡۥ";
                    break;
                case 1711800:
                    if (C0033.m596() <= 0) {
                        C0025.m237();
                        strM42x761e26e2 = C0032.m553();
                        if (C0033.m706() <= 0) {
                            C0033.m706();
                        } else {
                            str = "ۤ۟ۥ";
                        }
                    } else if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                        str = "ۣۢ";
                    } else {
                        str = "ۥۤۨ";
                    }
                    break;
                default:
                    break;
            }
            return C0025.m224(stringBuffer2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:496:0x0786 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:499:0x077b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:501:0x0776 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:512:0x084d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:520:0x0741 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:521:0x07b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:553:0x07bb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:563:0x082d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:565:0x0828 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:573:0x07f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:574:0x07f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:591:0x07e8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:593:0x07df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:601:0x075c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:603:0x0757 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:642:0x06da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:643:0x06ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:644:0x06e5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:645:0x06ff A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:646:0x06fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:647:0x0714 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:648:0x070f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:649:0x0736 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:650:0x072e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:651:0x074c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:652:0x07a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:653:0x079b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:654:0x07ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:655:0x07c6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:656:0x080c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:657:0x0804 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:658:0x0842 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:659:0x083d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:680:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:698:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:703:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:705:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:715:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:818:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:832:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:243:0x062f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0062. Please report as an issue. */
    private Key getKey(byte[] bArr) throws Exception {
        int iM141;
        byte[] bArr2;
        short[] sArr = null;
        int i = 0;
        int i2 = 0;
        byte[] bArr3 = null;
        Object[] objArr = null;
        Object[] objArr2 = null;
        int i3 = 0;
        int i4 = 0;
        String strM656 = null;
        int iM479 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int iM142 = 0;
        byte[] bArr4 = null;
        Object obj = "ۣۡ۟";
        int iM143 = 0;
        String strM98 = null;
        byte[] bArr5 = null;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        short[] sArrM100 = null;
        int i16 = 0;
        int i17 = 0;
        while (true) {
            switch (C0033.m669(obj) ^ 1746688) {
                case 32:
                case 68:
                case 70:
                case 100:
                case 255:
                case 2085:
                case 2173:
                case 2208:
                case 2470:
                case 2526:
                case 2529:
                case 3138:
                case 3141:
                case 3227:
                case 3290:
                case 4448:
                case 4607:
                case 5124:
                case 5450:
                case 5542:
                case 5569:
                case 6530:
                case 6852:
                case 6857:
                case 7466:
                case 7650:
                case 24832:
                case 25101:
                case 25104:
                case 25224:
                case 25258:
                case 25281:
                case 25316:
                case 25922:
                case 25950:
                case 28330:
                case 1735584:
                    objArr2 = objArr2;
                    obj = "ۣۡۡ";
                    break;
                case 37:
                    if (C0033.m706() > 0) {
                        obj = "ۡۢ۟";
                    }
                    break;
                case 69:
                    obj = "ۢ۟۟";
                    break;
                case 99:
                    if (C0033.m706() <= 0) {
                        C0032.m436();
                        obj = "ۣۥۤ";
                    } else {
                        obj = "۠ۨۢ";
                    }
                    break;
                case CipherSuite.TLS_DHE_DSS_WITH_AES_256_GCM_SHA384 /* 163 */:
                    strM656 = C0025.m196();
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۣۢۥ";
                    }
                    break;
                case 221:
                    if (C0033.m706() > 0) {
                        C0024.m165xf0c433e8();
                        obj = "ۡ۟۟";
                    } else {
                        obj = "ۦۦۧ";
                    }
                    break;
                case 222:
                    if (C0025.m186() < 0) {
                        obj = "ۣۧۤ";
                    }
                    break;
                case 223:
                    if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۣ۟ۤ";
                    }
                    break;
                case 2050:
                    if (C0025.m237() >= 0) {
                        C0025.m226();
                        i14 = 0;
                        obj = "ۣ۠ۢ";
                    } else if (C0026.m329() > 0) {
                        obj = "ۦ۟ۧ";
                    }
                    break;
                case 2076:
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                        obj = "۠ۤۨ";
                    } else {
                        obj = "۟ۧۧ";
                    }
                    break;
                case 2077:
                    obj = "ۦۥۢ";
                    break;
                case 2078:
                    obj = "ۣۡۡ";
                    strM656 = strM98;
                    break;
                case 2112:
                    obj = "۟ۤۨ";
                    break;
                case 2115:
                    if (C0033.m706() > 0) {
                        obj = "ۦۧۢ";
                    }
                    break;
                case 2138:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                        obj = "ۢۦۧ";
                    } else {
                        obj = "ۡۤۨ";
                    }
                    break;
                case 2143:
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        obj = "ۧۧ";
                    }
                    break;
                case 2203:
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                    } else {
                        obj = "ۢۥۧ";
                    }
                    break;
                case 2441:
                    obj = C0032.m436() <= 0 ? "ۥ۟ۤ" : "ۤۨۦ";
                    break;
                case 2466:
                    obj = C0026.m329() <= 0 ? "ۥۦۡ" : "ۣۨۤ";
                    break;
                case 2499:
                    iM479 = C0032.m479(strM656);
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۢ۠ۦ";
                    }
                    break;
                case 2528:
                    bArr2 = new byte[8];
                    if (C0025.m237() >= 0) {
                        C0024.m138();
                        String strM324 = C0025.m324();
                        if (C0033.m706() <= 0) {
                            C0024.m165xf0c433e8();
                            strM656 = strM324;
                            bArr5 = bArr2;
                            bArr4 = bArr2;
                            obj = "ۢۤ";
                        } else {
                            strM656 = strM324;
                            bArr5 = bArr2;
                            bArr4 = bArr2;
                            obj = "ۤۦ۠";
                        }
                    } else if (C0033.m706() <= 0) {
                        C0026.m329();
                        bArr4 = bArr2;
                        obj = "ۨۢ۟";
                    } else {
                        bArr4 = bArr2;
                        obj = "ۤۦۧ";
                    }
                    break;
                case 2534:
                    obj = "ۡۢۡ";
                    break;
                case 2557:
                    Object[] objArr3 = {new Integer(7343479), new Integer(195483), new Integer(9310713)};
                    strM98 = C0024.m98();
                    i13 = 0;
                    if (C0024.m165xf0c433e8() <= 0) {
                        objArr = objArr3;
                        obj = "ۣۣۡ";
                    } else {
                        objArr = objArr3;
                        obj = "ۧۥۡ";
                    }
                    break;
                case 3105:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "۟ۡۦ";
                    }
                    break;
                case 3135:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۣۡۧ";
                    }
                    break;
                case 3139:
                    strM656 = C0033.m717();
                    if (C0032.m436() <= 0) {
                        i15 = i6;
                    } else {
                        obj = "ۨ۠ۦ";
                        i15 = i6;
                    }
                    break;
                case 3163:
                    strM656 = C0025.m195();
                    if (C0024.m165xf0c433e8() <= 0) {
                        i4 = i5;
                    } else {
                        obj = "ۨۡۧ";
                        i4 = i5;
                    }
                    break;
                case 3170:
                    if (C0032.m436() > 0) {
                        C0025.m186();
                        obj = "ۧۨۡ";
                    } else {
                        obj = "ۨۧۤ";
                    }
                    break;
                case 3196:
                    iM142 = C0024.m141((Integer) objArr2[2]);
                    if (C0025.m226() <= 0) {
                        strM656 = C0025.m240();
                        i3 = iM142;
                        obj = "ۢۤ۠";
                    } else if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        obj = "ۧۧ";
                    }
                    break;
                case 3257:
                    obj = "ۣۡۤ";
                    break;
                case 3289:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۥۧۤ";
                    }
                    break;
                case 3556:
                    if (C0026.m329() > 0) {
                        obj = "ۦ۟ۧ";
                    }
                    break;
                case 3558:
                    obj = "ۧۧ۠";
                    break;
                case 3840:
                    obj = "ۤ۟۠";
                    break;
                case 4126:
                    obj = "ۣۧۤ";
                    break;
                case 4360:
                    strM656 = C0033.m656();
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        obj = "ۨ۟ۨ";
                    }
                    break;
                case 4388:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                        obj = "ۧ۠۠";
                    } else {
                        obj = "۟ۡۨ";
                    }
                    break;
                case 4454:
                    obj = "ۧۦۣ";
                    break;
                case 5122:
                    obj = "ۤۢۨ";
                    break;
                case 5125:
                    if (C0033.m596() <= 0) {
                        C0033.m609();
                        obj = "ۤ۠ۨ";
                    } else if (C0026.m329() <= 0) {
                    }
                    break;
                case 5147:
                    obj = "ۣ۠ۨ";
                    break;
                case 5152:
                    if (C0026.m329() > 0) {
                        C0032.m436();
                    } else {
                        obj = "ۤۧۨ";
                    }
                    break;
                case 5155:
                    i6 = ((-13) - (((((7 - i14) - 7) - 24) - 1) + 24)) + 13;
                    if (C0024.m138() <= 0) {
                        strM656 = C0032.m519();
                        i15 = i6;
                        obj = "ۤۢۤ";
                    } else if (C0026.m329() > 0) {
                        obj = "ۣ۠ۦ";
                    }
                    break;
                case 5212:
                    obj = "ۥۤۧ";
                    break;
                case 5442:
                    objArr2 = new Object[3];
                    if (C0033.m596() > 0) {
                        String strM199 = C0025.m199();
                        if (C0033.m706() <= 0) {
                            strM656 = strM199;
                            obj = "۟۟ۨ";
                        } else {
                            strM656 = strM199;
                            obj = "ۣۢ۠";
                        }
                    } else {
                        objArr2 = objArr2;
                        obj = "ۣۡۡ";
                    }
                    break;
                case 5473:
                    obj = "ۣۡ۟";
                    break;
                case 5477:
                    obj = "ۣۢ۟";
                    break;
                case 5480:
                    switch (((iM479 ^ (-1)) & 1753600) | ((-1753601) & iM479)) {
                        case 64:
                            if (C0033.m706() > 0) {
                                obj = "ۦۦۧ";
                            } else {
                                C0024.m165xf0c433e8();
                                obj = "ۡ۟۟";
                            }
                            break;
                        case 100:
                            obj = "ۦۡۢ";
                            break;
                        case 902:
                            if (C0024.m165xf0c433e8() > 0) {
                                obj = "ۨۥ";
                            } else {
                                C0032.m436();
                            }
                            break;
                        case MysqlErrorNumbers.ER_MTS_CHANGE_MASTER_CANT_RUN_WITH_GAPS /* 1802 */:
                            if (C0033.m706() > 0) {
                                obj = "ۢۦۧ";
                            } else {
                                C0025.m186();
                                obj = "ۥ۠ۡ";
                            }
                            break;
                        case 2854:
                        case 2917:
                            if (C0024.m165xf0c433e8() > 0) {
                            }
                            break;
                        case 3009:
                            if (C0026.m329() > 0) {
                                obj = "ۤۧۨ";
                            } else {
                                C0032.m436();
                            }
                            break;
                        case 25892:
                            obj = "ۥۨۧ";
                            break;
                        case 26879:
                            if (C0026.m329() > 0) {
                                obj = "ۥۣ۠";
                            } else {
                                C0032.m436();
                            }
                            break;
                        case 27003:
                            obj = "ۥۣ۟";
                            break;
                        case 27817:
                            if (C0024.m165xf0c433e8() > 0) {
                                obj = "ۤۤۦ";
                            }
                            break;
                        case 27910:
                            obj = "ۤ۟۠";
                            break;
                        case 28746:
                            obj = "ۣۡۤ";
                            break;
                        case 28899:
                            obj = "ۡۢۡ";
                            break;
                        case 29767:
                            if (C0024.m165xf0c433e8() > 0) {
                                obj = "ۥۢۡ";
                            } else {
                                C0026.m329();
                            }
                            break;
                        case 29831:
                            obj = "۠ۥۡ";
                            break;
                        case 29887:
                            if (C0026.m329() > 0) {
                                obj = "ۦ۟ۥ";
                            }
                            break;
                        case 31691:
                            obj = "ۥۤۧ";
                            break;
                        case 31812:
                            obj = "ۦۥۢ";
                            break;
                        case 31873:
                            obj = "ۢ۟۟";
                            break;
                        case 31875:
                            obj = "ۥۣۥ";
                            break;
                        case 32646:
                            if (C0032.m436() > 0) {
                                obj = "ۨۧۤ";
                            } else {
                                C0025.m186();
                                obj = "ۧۨۡ";
                            }
                            break;
                        case 1710569:
                            obj = "ۦۣ۠";
                            break;
                        case 1711774:
                            if (C0024.m165xf0c433e8() > 0) {
                                obj = "ۥۦۤ";
                            }
                            break;
                        default:
                            obj = "۟۠ۦ";
                            break;
                    }
                    break;
                case 5482:
                    iM141 = i5;
                    i5 = iM141;
                    obj = "۠ۤ۟";
                    break;
                case 5535:
                    if (C0026.m329() > 0) {
                        obj = "ۣ۠ۦ";
                    }
                    break;
                case 5566:
                    obj = "ۦۨ۠";
                    break;
                case 5598:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                        obj = "ۧۦۨ";
                    } else {
                        obj = "ۨۦۨ";
                    }
                    break;
                case 6402:
                    if (C0025.m237() >= 0) {
                        C0033.m609();
                        if (C0025.m186() < 0) {
                            obj = "ۦۣ۟";
                        }
                    } else {
                        obj = "ۧ۠ۦ";
                    }
                    break;
                case 6407:
                    sArrM100 = C0024.m100();
                    strM656 = C0025.m273();
                    obj = "ۢۦ۟";
                    break;
                case 6440:
                    int iIntValue = ((Integer) objArr[1]).intValue();
                    objArr2[1] = new Integer((iIntValue & (-7595243)) | ((iIntValue ^ (-1)) & 7595242));
                    if (C0025.m226() > 0) {
                        strM656 = C0032.m442();
                        if (C0032.m436() <= 0) {
                            C0032.m436();
                        } else {
                            obj = "ۡۦ۟";
                        }
                    } else {
                        objArr2 = objArr2;
                        obj = "ۣۡۡ";
                    }
                    break;
                case 6464:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                        obj = "ۦۣۣ";
                        i4 = i16;
                        iM143 = i13;
                        i3 = i17;
                        sArrM100 = sArr;
                        i15 = i;
                        i14 = i2;
                        bArr5 = bArr3;
                    } else {
                        obj = "ۡۤۡ";
                        i4 = i16;
                        iM143 = i13;
                        i3 = i17;
                        sArrM100 = sArr;
                        i15 = i;
                        i14 = i2;
                        bArr5 = bArr3;
                    }
                    break;
                case 6469:
                    obj = "ۧ۠ۦ";
                    break;
                case 6495:
                    if (C0026.m329() > 0) {
                        obj = "ۦ۟ۥ";
                    }
                    break;
                case 6497:
                    obj = "ۧۤۧ";
                    break;
                case 6499:
                    strM656 = C0033.m603();
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        obj = "ۢۥۥ";
                    }
                    break;
                case 6528:
                    if (C0025.m186() < 0) {
                        obj = "ۦۣۧ";
                    }
                    break;
                case 6532:
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "ۧۤ۠";
                    }
                    break;
                case 6556:
                    obj = "ۥۣۥ";
                    break;
                case 6564:
                    strM656 = C0024.m126();
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        obj = "ۣ۠ۡ";
                    }
                    break;
                case 6793:
                    int iIntValue2 = ((Integer) objArr[0]).intValue();
                    objArr2[2] = new Integer((iIntValue2 & (-1697497)) | ((iIntValue2 ^ (-1)) & 1697496));
                    if (C0033.m596() <= 0) {
                        C0033.m609();
                        if (C0025.m186() >= 0) {
                            C0033.m706();
                        } else {
                            obj = "ۦۤۦ";
                        }
                    } else if (C0033.m706() > 0) {
                        obj = "ۦۧۢ";
                    }
                    break;
                case 6821:
                    obj = "ۥۡ";
                    break;
                case 6884:
                    int i18 = ((iM143 ^ (-1)) & (-1)) | (iM143 & 0);
                    int i19 = i18 & ((-9464711) ^ i18);
                    int i20 = iM143 & (9464710 ^ iM143);
                    int i21 = ((i4 ^ (-1)) & (-1)) | (i4 & 0);
                    int i22 = i21 & ((-7413619) ^ i21);
                    int i23 = i4 & (7413618 ^ i4);
                    int i24 = ((i3 ^ (-1)) & (-1)) | (i3 & 0);
                    int i25 = ((-6939184) ^ i24) & i24;
                    if (C0025.m186() >= 0) {
                        i7 = i19;
                        i8 = i20;
                        i9 = i22;
                        i10 = i23;
                        i11 = i25;
                        obj = "ۥۤ";
                    } else {
                        i7 = i19;
                        i8 = i20;
                        i9 = i22;
                        i10 = i23;
                        i11 = i25;
                        obj = "ۤۧ۟";
                    }
                    break;
                case 6885:
                    if (C0025.m186() < 0) {
                        obj = "ۡ۠ۥ";
                    }
                    break;
                case 6890:
                    obj = "ۥۨۧ";
                    break;
                case 7462:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۡۨۧ";
                    }
                    break;
                case 7464:
                    bArr2 = bArr4;
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                        bArr4 = bArr2;
                        obj = "ۨۢ۟";
                    } else {
                        bArr4 = bArr2;
                        obj = "ۤۦۧ";
                    }
                    break;
                case 7489:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۥۦۤ";
                    }
                    break;
                case 7526:
                    if (C0025.m237() >= 0) {
                        C0024.m138();
                        if (C0025.m186() >= 0) {
                            obj = "ۧۤۨ";
                            i14 = i15;
                        } else {
                            obj = "ۣۣ";
                            i14 = i15;
                        }
                    } else if (C0033.m706() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "ۧۤ۠";
                    }
                    break;
                case 7553:
                    break;
                case 7582:
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                        obj = "ۧۡ۠";
                    } else {
                        obj = "ۧ۟ۥ";
                    }
                    break;
                case 7589:
                    strM656 = C0033.m575MHHX();
                    bArr5 = bArr4;
                    obj = "۠۠ۦ";
                    break;
                case 7612:
                    i12 = i3 & (6939183 ^ i3);
                    if (C0033.m706() > 0) {
                        obj = "ۤۥۢ";
                    }
                    break;
                case 7615:
                    obj = C0032.m436() <= 0 ? "ۥۨ۟" : "ۧۥ۟";
                    break;
                case 7621:
                    bArr5[i14] = bArr[i14];
                    strM656 = C0024.m95();
                    obj = "ۡۨۢ";
                    break;
                case 7877:
                    int iIntValue3 = ((Integer) objArr[2]).intValue();
                    objArr2[0] = new Integer((iIntValue3 & (-1997426)) | ((iIntValue3 ^ (-1)) & 1997425));
                    if (C0025.m226() <= 0) {
                        C0024.m138();
                        String strM445 = C0032.m445();
                        if (C0026.m329() <= 0) {
                            C0033.m706();
                            strM656 = strM445;
                            obj = "ۦۧۤ";
                        } else {
                            strM656 = strM445;
                            obj = "ۧۨ۠";
                        }
                    } else {
                        obj = "ۥۡ";
                    }
                    break;
                case 7912:
                    obj = "۟۠ۡ";
                    break;
                case 7914:
                    obj = "۠ۦۡ";
                    break;
                case 7916:
                    if (C0032.m436() > 0) {
                        obj = "ۣۢۢ";
                    }
                    break;
                case 24837:
                    obj = "ۥۣ۟";
                    break;
                case 24863:
                    obj = C0026.m329() <= 0 ? "ۡۦ۟" : "۟ۢۧ";
                    break;
                case 25100:
                    obj = "۟۠ۦ";
                    break;
                case 25129:
                    obj = "ۢ۟ۧ";
                    break;
                case 25133:
                    strM656 = C0024.m98();
                    if (C0033.m706() > 0) {
                        obj = "ۤ۠ۦ";
                    }
                    break;
                case 25195:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۡۢۢ";
                    }
                    break;
                case 25251:
                    String strM309 = C0025.m309();
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                        strM656 = strM309;
                        i14 = i15;
                        obj = "ۦۦۢ";
                    } else {
                        strM656 = strM309;
                        i14 = i15;
                        obj = "ۣۢ۟";
                    }
                    break;
                case 25254:
                    strM656 = C0024.m147();
                    if (C0033.m706() > 0) {
                        obj = "ۤۧۢ";
                    }
                    break;
                case 25283:
                    i17 = 0;
                    sArr = null;
                    i = 0;
                    i2 = 0;
                    bArr3 = null;
                    i16 = 0;
                    if (C0026.m329() <= 0) {
                        objArr2 = null;
                        obj = "ۨۢ۟";
                    } else {
                        objArr2 = null;
                        obj = "ۥۥ۠";
                    }
                    break;
                case 25290:
                    if (C0033.m706() > 0) {
                        C0025.m186();
                        obj = "ۥ۠ۡ";
                    } else {
                        obj = "ۢۦۧ";
                    }
                    break;
                case 25859:
                    iM141 = C0024.m141((Integer) objArr2[1]);
                    if (C0033.m596() <= 0) {
                        C0024.m138();
                        strM656 = C0032.m467();
                        i4 = iM141;
                        i5 = iM141;
                        obj = "۠ۨۡ";
                    } else {
                        i5 = iM141;
                        obj = "۠ۤ۟";
                    }
                    break;
                case 25895:
                    if (C0025.m226() <= 0) {
                        C0024.m138();
                        String strM483 = C0032.m483();
                        if (C0033.m706() <= 0) {
                            strM656 = strM483;
                            obj = "ۣۨۥ";
                        } else {
                            strM656 = strM483;
                            obj = "ۡۤ۟";
                        }
                    } else if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۣ۟ۤ";
                    }
                    break;
                case 25921:
                    strM656 = C0025.m233();
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۤ۠ۤ";
                    }
                    break;
                case 25957:
                    obj = "۠ۥۡ";
                    break;
                case 26186:
                    if (C0033.m706() <= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۥۡۥ";
                    }
                    break;
                case 26188:
                    if (C0033.m609() >= 0) {
                        strM656 = C0033.m615();
                        obj = "ۧ۠ۢ";
                    } else {
                        obj = "۟ۤۨ";
                    }
                    break;
                case 26190:
                    strM656 = C0032.m515();
                    i14 = 0;
                    if (C0025.m186() < 0) {
                        obj = "ۥۧۢ";
                    }
                    break;
                case 26217:
                    iM143 = C0024.m141((Integer) objArr2[0]);
                    strM656 = C0024.m94();
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۥۦۢ";
                    }
                    break;
                case 26222:
                    obj = "ۦۣ۠";
                    break;
                case 26247:
                    if (i14 < bArr.length) {
                        if (C0033.m596() <= 0) {
                            strM656 = C0033.m685();
                            if (C0024.m165xf0c433e8() > 0) {
                                obj = "ۥۢۢ";
                            }
                        } else if (C0025.m186() < 0) {
                            obj = "ۣۧۤ";
                        }
                    } else if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۥۦۤ";
                    }
                    break;
                case 26344:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۥۡ۠";
                    }
                    break;
                case 28174:
                    obj = C0024.m165xf0c433e8() <= 0 ? "ۥۨۡ" : "ۣ۠ۥ";
                    break;
                case 28206:
                    if (C0026.m329() > 0) {
                        C0032.m436();
                    } else {
                        obj = "ۥۣ۠";
                    }
                    break;
                case 28259:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۤۤۦ";
                    }
                    break;
                case 28263:
                    String strM515 = C0032.m515();
                    if (C0026.m329() <= 0) {
                        strM656 = strM515;
                        obj = "ۧۡ۠";
                    } else {
                        strM656 = strM515;
                        obj = "ۣ۠ۢ";
                    }
                    break;
                case 28357:
                    strM656 = C0024.m160();
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "ۣۣۨ";
                    }
                    break;
                case 28623:
                    if (C0024.m165xf0c433e8() > 0) {
                        C0032.m436();
                    } else {
                        obj = "ۨۥ";
                    }
                    break;
                case 28625:
                    obj = "ۣۣۧ";
                    break;
                case 28654:
                    if (C0025.m186() < 0) {
                        obj = "ۢۢۦ";
                    }
                    break;
                case 1735430:
                    obj = "ۦۡۢ";
                    break;
                case 1735520:
                    if (C0026.m329() > 0) {
                        obj = "ۥۥ";
                    }
                    break;
                case 1735580:
                    strM656 = C0025.m287();
                    obj = "۟ۢۦ";
                    break;
                case 1735581:
                    obj = C0024.m165xf0c433e8() > 0 ? "ۡ۟ۦ" : "ۢۥۨ";
                    break;
                case 1735614:
                    if (C0024.m165xf0c433e8() > 0) {
                        C0026.m329();
                    } else {
                        obj = "ۥۢۡ";
                    }
                    break;
                case 1735648:
                    strM656 = C0033.m668();
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                        i3 = iM142;
                    } else {
                        obj = "ۧۢۦ";
                        i3 = iM142;
                    }
                    break;
                case 1735677:
                    if (i14 < bArr5.length) {
                        strM656 = C0032.m556();
                        if (C0025.m186() < 0) {
                            obj = "ۡ۟ۧ";
                        }
                    } else if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۥۦۤ";
                    }
                    break;
                default:
                    break;
            }
            return new SecretKeySpec(bArr5, C0024.m168(sArrM100, (i7 ^ i8) | (i7 & i8), (i10 ^ i9) | (i10 & i9), (i11 ^ i12) | (i12 & i11)));
        }
    }

    /* JADX WARN: Code duplicated, block: B:479:0x07a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:481:0x07a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:486:0x06f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:496:0x0785 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:497:0x0780 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:513:0x068c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:515:0x0687 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:530:0x06c1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:531:0x06bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:541:0x0677 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:542:0x0672 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:556:0x0717 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:558:0x070f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:584:0x063f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:585:0x063a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:586:0x065c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:587:0x0654 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:588:0x0667 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:589:0x06a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:590:0x069c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:591:0x06b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:592:0x06ac A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:593:0x06d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:595:0x06cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:596:0x06e9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:597:0x06e4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:598:0x0704 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:599:0x0731 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:600:0x072c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:601:0x0758 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:602:0x0753 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:603:0x0775 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:604:0x0770 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:605:0x07b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:606:0x07d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:607:0x07cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:608:0x07e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:609:0x07db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:610:0x07eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:616:0x07c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:617:0x07bb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:645:0x0795 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:646:0x0790 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:659:0x0741 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:660:0x073c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:674:0x0051 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:756:0x0051 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:768:0x0051 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:778:0x0051 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:784:0x0051 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:147:0x03c9. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x005a. Please report as an issue. */
    public static byte[] hexStr2ByteArr(String str) throws Exception {
        int iM141;
        int i = 0;
        int i2 = 0;
        byte[] bArr = null;
        int i3 = 0;
        byte[] bArr2 = null;
        Object[] objArr = null;
        Object[] objArr2 = null;
        String str2 = null;
        int i4 = 0;
        int i5 = 0;
        int length = 0;
        int i6 = 0;
        byte[] bArr3 = null;
        int i7 = 0;
        int i8 = 0;
        String strM122 = null;
        int iM479 = 0;
        byte[] bArrM718 = null;
        int i9 = 0;
        String str3 = null;
        int i10 = 0;
        Object obj = "ۨۤۥ";
        int iM142 = 0;
        int i11 = 0;
        String strM554 = null;
        byte[] bArr4 = null;
        String str4 = null;
        int i12 = 0;
        while (true) {
            switch (C0033.m669(obj) ^ 1748678) {
                case 4:
                    obj = "ۢۥۥ";
                    break;
                case 6:
                case 56:
                case 66:
                case 505:
                case MysqlErrorNumbers.ER_FILE_USED /* 1027 */:
                case MysqlErrorNumbers.ER_SP_WRONG_NO_OF_ARGS /* 1318 */:
                case MysqlErrorNumbers.ER_NONUPDATEABLE_COLUMN /* 1348 */:
                case MysqlErrorNumbers.ER_PROC_AUTO_REVOKE_FAIL /* 1405 */:
                case MysqlErrorNumbers.ER_CANT_CREATE_FEDERATED_TABLE /* 1434 */:
                case MysqlErrorNumbers.ER_PARTITION_INSTEAD_OF_SUBPARTITION /* 1734 */:
                case 2374:
                case 2397:
                case 2490:
                case 4163:
                case 4940:
                case 6170:
                case 6205:
                case 6208:
                case 6213:
                case 6380:
                case 7200:
                case 7239:
                case 7577:
                case 7620:
                case 7641:
                case 26127:
                case 26478:
                case 26607:
                case 27554:
                case 27596:
                case 27777:
                case 27879:
                case 28429:
                case 28460:
                case 1733221:
                    length = length;
                    bArr3 = bArr3;
                    obj = "ۦۣۢ";
                    break;
                case 32:
                    String strM145 = C0024.m145();
                    if (C0024.m165xf0c433e8() <= 0) {
                        i4 = 0;
                        strM122 = strM145;
                        obj = "ۣۤۤ";
                    } else {
                        i4 = 0;
                        strM122 = strM145;
                        obj = "ۢۦۦ";
                    }
                    break;
                case 33:
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                    } else {
                        obj = "ۧۢ۟";
                    }
                    break;
                case 76:
                    if (C0032.m436() > 0) {
                        obj = "۠ۤ۠";
                    }
                    break;
                case 345:
                    obj = "۠ۥۧ";
                    break;
                case 350:
                    bArr3 = new byte[length / 2];
                    if (C0033.m609() < 0) {
                        strM122 = C0033.m665();
                        obj = "ۡۨۦ";
                    } else {
                        length = length;
                        bArr3 = bArr3;
                        obj = "ۦۣۢ";
                    }
                    break;
                case 389:
                    obj = "ۧۦۥ";
                    break;
                case 412:
                    obj = "ۦۦۡ";
                    break;
                case 473:
                    obj = C0026.m329() > 0 ? "ۢ۠ۧ" : "ۣۤ۟";
                    break;
                case 486:
                    obj = C0032.m436() <= 0 ? "ۦۦ" : "ۦۨۦ";
                    break;
                case MysqlErrorNumbers.ER_BAD_DB_ERROR /* 1049 */:
                    obj = C0024.m165xf0c433e8() <= 0 ? "ۣۦۥ" : "ۦۧۢ";
                    break;
                case MysqlErrorNumbers.ER_SP_LILABEL_MISMATCH /* 1308 */:
                    obj = C0024.m165xf0c433e8() <= 0 ? "ۦۨۧ" : "ۣۧ۟";
                    break;
                case MysqlErrorNumbers.ER_SP_LABEL_REDEFINE /* 1309 */:
                    if (C0025.m186() < 0) {
                        C0025.m186();
                    } else {
                        obj = "ۦۣۥ";
                    }
                    break;
                case MysqlErrorNumbers.ER_SP_BAD_SQLSTATE /* 1407 */:
                    if (C0033.m596() <= 0) {
                        C0033.m609();
                        String strM473 = C0032.m473();
                        if (C0025.m186() >= 0) {
                            C0032.m436();
                            strM122 = strM473;
                            obj = "ۧۡۢ";
                        } else {
                            strM122 = strM473;
                            obj = "ۦۥۦ";
                        }
                    } else if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۥۣۦ";
                    }
                    break;
                case MysqlErrorNumbers.ER_FOREIGN_DATA_STRING_INVALID /* 1433 */:
                    if (C0032.m436() > 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "۠ۥ۠";
                    }
                    break;
                case MysqlErrorNumbers.ER_SP_CANT_SET_AUTOCOMMIT /* 1445 */:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۣۣۦ";
                    }
                    break;
                case MysqlErrorNumbers.ER_HOSTNAME /* 1469 */:
                    if (C0033.m609() >= 0) {
                        obj = "ۧۥۤ";
                        i4 = i8;
                    } else if (C0032.m436() <= 0) {
                        C0033.m706();
                        obj = "ۧ۠ۦ";
                    } else {
                        obj = "ۦۤۤ";
                    }
                    break;
                case MysqlErrorNumbers.ER_PARTITION_ENTRY_ERROR /* 1496 */:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۡۡ۠";
                    }
                    break;
                case MysqlErrorNumbers.ER_DROP_PARTITION_NON_EXISTENT /* 1507 */:
                    strM122 = C0024.m67();
                    obj = "ۦۣ۟";
                    break;
                case MysqlErrorNumbers.ER_DROP_FILEGROUP_FAILED /* 1529 */:
                    iM142 = C0024.m141((Integer) objArr2[0]);
                    strM122 = C0032.m483();
                    obj = "ۡۢۨ";
                    break;
                case 2308:
                    obj = "ۥ۟ۤ";
                    break;
                case 2328:
                    obj = "ۨ۠ۡ";
                    break;
                case 2329:
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        obj = "۠ۢۧ";
                    }
                    break;
                case 2366:
                    if (C0026.m329() > 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۣۥۡ";
                    }
                    break;
                case 2406:
                    length = bArr4.length;
                    if (C0024.m138() > 0) {
                        strM122 = C0024.m122();
                        obj = "ۨۢ۠";
                    } else {
                        length = length;
                        bArr3 = bArr3;
                        obj = "ۦۣۢ";
                    }
                    break;
                case 2428:
                    if (C0026.m329() <= 0) {
                        obj = "ۡۤۧ";
                        strM122 = strM554;
                    } else {
                        obj = "ۦۣۢ";
                        strM122 = strM554;
                    }
                    break;
                case 2498:
                    if (C0024.m165xf0c433e8() > 0) {
                        C0025.m186();
                    } else {
                        obj = "ۣۢ۠";
                    }
                    break;
                case 2532:
                    if (C0026.m329() > 0) {
                        obj = "ۨۦۣ";
                    }
                    break;
                case 2553:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "ۤۦۨ";
                    }
                    break;
                case 4167:
                    if (C0025.m226() <= 0) {
                        C0033.m596();
                        String strM627 = C0033.m627();
                        if (C0026.m329() <= 0) {
                            strM122 = strM627;
                            obj = "ۧ۟۟";
                        } else {
                            strM122 = strM627;
                            obj = "ۧ۟۟";
                        }
                    } else if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۦ۟";
                    }
                    break;
                case 4185:
                    strM122 = C0024.m90();
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        i11 = i10;
                    } else {
                        obj = "ۤۢ۠";
                        i11 = i10;
                    }
                    break;
                case 4227:
                    if (C0032.m436() > 0) {
                        obj = "ۦۣۨ";
                    }
                    break;
                case 4257:
                    String strM289 = C0025.m289();
                    if (C0024.m165xf0c433e8() <= 0) {
                        strM122 = strM289;
                        obj = "ۦ۟ۧ";
                    } else {
                        strM122 = strM289;
                        obj = "۠ۨۢ";
                    }
                    break;
                case 4288:
                    i2 = 0;
                    bArr = null;
                    i3 = 0;
                    bArr2 = null;
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                        i12 = 0;
                        i = 0;
                        objArr2 = null;
                    } else {
                        obj = "ۢۨۧ";
                        i12 = 0;
                        i = 0;
                        objArr2 = null;
                    }
                    break;
                case 4289:
                    if (C0025.m186() < 0) {
                        C0024.m165xf0c433e8();
                        obj = "۟ۧۥ";
                    } else {
                        obj = "ۤۤۡ";
                    }
                    break;
                case 4302:
                    strM122 = C0024.m145();
                    obj = "ۤۢۤ";
                    break;
                case 4864:
                    obj = C0025.m186() < 0 ? "ۨۥۣ" : "ۤۦۢ";
                    break;
                case 4877:
                    break;
                case 4898:
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۣۨۥ";
                    }
                    break;
                case 4899:
                    if (C0033.m706() > 0) {
                        obj = "ۧۨ۟";
                    }
                    break;
                case 5125:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۣۨۢ";
                    }
                    break;
                case 5190:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        obj = "ۣۡ۠";
                    }
                    break;
                case 5216:
                    strM122 = C0032.m467();
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        i8 = i9;
                    } else {
                        obj = "ۣ۠۟";
                        i8 = i9;
                    }
                    break;
                case 5222:
                    if (C0025.m226() > 0) {
                        strM122 = C0032.m489();
                        if (C0026.m329() <= 0) {
                            C0033.m706();
                        } else {
                            obj = "ۧۥۡ";
                        }
                    } else {
                        length = length;
                        bArr3 = bArr3;
                        obj = "ۦۣۢ";
                    }
                    break;
                case 5223:
                    if (C0025.m186() < 0) {
                        C0033.m706();
                    } else {
                        obj = "ۣۢ۟";
                    }
                    break;
                case 5242:
                    obj = C0024.m165xf0c433e8() > 0 ? "ۣۨۧ" : "ۥۡۧ";
                    break;
                case 5254:
                    bArrM718 = C0033.m718(str);
                    if (C0033.m596() <= 0) {
                        C0033.m596();
                        if (C0025.m186() >= 0) {
                            bArr4 = bArrM718;
                        } else {
                            obj = "ۨۤۤ";
                            bArr4 = bArrM718;
                        }
                    } else if (C0026.m329() > 0) {
                        obj = "ۨۦۣ";
                    }
                    break;
                case 5287:
                    if (C0033.m609() >= 0) {
                        strM122 = C0024.m102();
                        if (C0032.m436() <= 0) {
                            C0024.m165xf0c433e8();
                        } else {
                            obj = "ۣۦۣ";
                        }
                    } else if (C0032.m436() <= 0) {
                    }
                    break;
                case 5344:
                    obj = "ۡ۟ۢ";
                    break;
                case 5346:
                    obj = "ۢۡ۠";
                    break;
                case 5348:
                    if (C0033.m706() > 0) {
                        obj = "۠ۧۢ";
                    }
                    break;
                case 5890:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                    } else {
                        obj = "ۥۨ";
                    }
                    break;
                case 6182:
                    obj = "۠۟ۤ";
                    break;
                case 6209:
                    obj = "ۡۢۧ";
                    break;
                case 6265:
                    int i13 = ((i11 ^ (-1)) & (-1)) | (i11 & 0);
                    int i14 = i13 & ((-8774998) ^ i13);
                    int i15 = (-8774998) & ((i11 ^ (-1)) ^ (-8774998));
                    bArr3[i7] = (byte) C0025.m182x20dfbb18(str4, (i14 & i15) | (i14 ^ i15));
                    if (C0033.m596() <= 0) {
                        C0025.m237();
                        if (C0033.m706() > 0) {
                            obj = "ۤۥۡ";
                        }
                    } else {
                        obj = C0026.m329() <= 0 ? "ۣۣۤ" : "ۥۦۨ";
                    }
                    break;
                case 6286:
                    switch (((iM479 ^ (-1)) & 1752579) | ((-1752580) & iM479)) {
                        case 32:
                        case 4384:
                            obj = "۠ۧ۠";
                            break;
                        case 996:
                            if (C0025.m186() < 0) {
                                obj = "ۣۢ۟";
                            } else {
                                C0033.m706();
                            }
                            break;
                        case 1991:
                            if (C0026.m329() > 0) {
                            }
                            break;
                        case 2027:
                            if (C0033.m706() > 0) {
                            }
                            break;
                        case 2147:
                            if (C0025.m186() < 0) {
                                obj = "ۤۤۡ";
                            } else {
                                C0024.m165xf0c433e8();
                                obj = "۟ۧۥ";
                            }
                            break;
                        case 2311:
                            if (C0025.m186() < 0) {
                                obj = "ۦۣۥ";
                            } else {
                                C0025.m186();
                            }
                            break;
                        case 3141:
                            if (C0026.m329() > 0) {
                                obj = "ۣۥۡ";
                            } else {
                                C0024.m165xf0c433e8();
                            }
                            break;
                        case 3268:
                            obj = "ۦ۟ۡ";
                            break;
                        case 3392:
                            if (C0024.m165xf0c433e8() > 0) {
                                obj = "ۡۧ";
                            }
                            break;
                        case 4324:
                            obj = "ۣ۠ۢ";
                            break;
                        case 6467:
                            if (C0024.m165xf0c433e8() > 0) {
                                obj = "ۥۣۧ";
                            }
                            break;
                        case 6593:
                            obj = "ۧۦۥ";
                            break;
                        case 30538:
                            if (C0024.m165xf0c433e8() > 0) {
                            }
                            break;
                        case 30601:
                            if (C0026.m329() > 0) {
                                obj = "۟ۤۥ";
                            } else {
                                C0025.m186();
                                obj = "ۨۦۦ";
                            }
                            break;
                        case 30629:
                            obj = "ۣۧۧ";
                            break;
                        case 31563:
                            if (C0025.m186() < 0) {
                            }
                            break;
                        case 31690:
                            obj = "ۡۨ۟";
                            break;
                        case 32586:
                            if (C0024.m165xf0c433e8() > 0) {
                                obj = "ۣۢ۠";
                            } else {
                                C0025.m186();
                            }
                            break;
                        case 32742:
                            if (C0032.m436() > 0) {
                                obj = "۠ۥ۠";
                            } else {
                                C0024.m165xf0c433e8();
                            }
                            break;
                        case 1729053:
                            if (C0033.m706() > 0) {
                                obj = "ۧۨ۟";
                            }
                            break;
                        case 1729279:
                            obj = "ۨ۠ۡ";
                            break;
                        case 1730027:
                            if (C0026.m329() > 0) {
                                obj = "ۣۡ";
                            }
                            break;
                        default:
                            obj = "۠ۦ";
                            break;
                    }
                    break;
                case 6311:
                    if (C0025.m226() <= 0) {
                        C0033.m596();
                        String strM68 = C0024.m68();
                        if (C0033.m706() <= 0) {
                            strM122 = strM68;
                            obj = "ۦۧۧ";
                        } else {
                            strM122 = strM68;
                            obj = "ۨۧۢ";
                        }
                    } else if (C0024.m165xf0c433e8() <= 0) {
                    }
                    break;
                case 6336:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۥۣۧ";
                    }
                    break;
                case 6348:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۡۧ";
                    }
                    break;
                case 6372:
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                        obj = "۟ۡۡ";
                    } else {
                        obj = "ۥۧۧ";
                    }
                    break;
                case 6630:
                    strM122 = C0025.m266();
                    str4 = str3;
                    obj = "ۢۨ۟";
                    break;
                case 6631:
                    obj = "۟ۥ۠";
                    i8 = i12;
                    break;
                case 7171:
                    obj = "ۨۤۥ";
                    break;
                case 7172:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۣ۠ۧ";
                    }
                    break;
                case 7226:
                    if (C0026.m329() > 0) {
                        C0025.m186();
                        obj = "ۨۦۦ";
                    } else {
                        obj = "۟ۤۥ";
                    }
                    break;
                case 7233:
                    obj = "ۢۨۥ";
                    break;
                case 7235:
                    obj = "۠ۦ";
                    break;
                case 7296:
                    if (C0033.m609() >= 0) {
                        i4 = 0;
                        if (C0026.m329() <= 0) {
                            C0024.m165xf0c433e8();
                        } else {
                            obj = "ۤ۟۟";
                        }
                    } else {
                        obj = "ۡۢۧ";
                    }
                    break;
                case 7308:
                    obj = "ۦ۟ۡ";
                    break;
                case 7583:
                    if (C0032.m436() > 0) {
                        obj = "ۨۦۦ";
                    }
                    break;
                case 7588:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۥۣۦ";
                    }
                    break;
                case 7591:
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                        i11 = i5;
                        i7 = i6;
                        str4 = str2;
                        iM142 = i;
                        i4 = i2;
                        bArr3 = bArr;
                        length = i3;
                        bArr4 = bArr2;
                    } else {
                        obj = "ۣۨۦ";
                        i11 = i5;
                        i7 = i6;
                        str4 = str2;
                        iM142 = i;
                        i4 = i2;
                        bArr3 = bArr;
                        length = i3;
                        bArr4 = bArr2;
                    }
                    break;
                case 7652:
                    obj = C0024.m165xf0c433e8() <= 0 ? "ۥۢۧ" : "ۣۦ۟";
                    break;
                case 26121:
                    obj = C0033.m706() > 0 ? "ۨۡ۟" : "ۨۤۡ";
                    break;
                case 26159:
                    int i16 = ((iM142 ^ (-1)) & (-1)) | (iM142 & 0);
                    int i17 = i16 & ((-6232857) ^ i16);
                    int i18 = ((iM142 ^ (-1)) ^ (-6232857)) & (-6232857);
                    str3 = new String(bArr4, i4, (i17 & i18) | (i17 ^ i18));
                    if (C0025.m226() <= 0) {
                        String strM614 = C0033.m614();
                        if (C0033.m706() <= 0) {
                            strM122 = strM614;
                            str4 = str3;
                            obj = "ۣۣۧ";
                        } else {
                            strM122 = strM614;
                            str4 = str3;
                            obj = "ۦۣ۠";
                        }
                    } else if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        obj = "ۣۨۥ";
                    }
                    break;
                case 26370:
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۦ۟";
                    }
                    break;
                case 26373:
                    obj = "ۣۣۣ";
                    break;
                case 26467:
                    strM122 = C0033.m649();
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                        bArr4 = bArrM718;
                    } else {
                        obj = "ۣۧۤ";
                        bArr4 = bArrM718;
                    }
                    break;
                case 26531:
                    Object[] objArr3 = new Object[2];
                    String strM703 = C0033.m703();
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                        objArr2 = objArr3;
                        strM122 = strM703;
                        obj = "ۣ۠ۧ";
                    } else {
                        objArr2 = objArr3;
                        strM122 = strM703;
                        obj = "۠ۤۧ";
                    }
                    break;
                case 26542:
                    if (C0033.m706() > 0) {
                        obj = "ۧ۟ۢ";
                    }
                    break;
                case 26543:
                    Object[] objArr4 = {new Integer(15594484), new Integer(7519486)};
                    strM554 = C0032.m554();
                    i5 = 0;
                    i6 = 0;
                    str2 = null;
                    objArr = objArr4;
                    obj = "ۥۣۤ";
                    break;
                case 26592:
                    obj = "ۢۦۣ";
                    break;
                case 26821:
                    iM141 = C0024.m141((Integer) objArr2[1]);
                    if (C0033.m609() >= 0) {
                        C0033.m596();
                        String strM77 = C0024.m77();
                        if (C0033.m706() <= 0) {
                            C0026.m329();
                            strM122 = strM77;
                            i11 = iM141;
                            i10 = iM141;
                            obj = "ۢۦ۠";
                        } else {
                            strM122 = strM77;
                            i11 = iM141;
                            i10 = iM141;
                            obj = "ۤۢۢ";
                        }
                    } else {
                        i10 = iM141;
                        obj = "ۥۨۢ";
                    }
                    break;
                case 26840:
                    int iIntValue = ((Integer) objArr[0]).intValue();
                    objArr2[1] = new Integer((iIntValue & (-6821554)) | ((iIntValue ^ (-1)) & 6821553));
                    if (C0025.m226() <= 0) {
                        C0033.m596();
                        if (C0024.m165xf0c433e8() <= 0) {
                            C0026.m329();
                            obj = "۟ۥۨ";
                        } else {
                            obj = "ۣۣۢ";
                        }
                    } else if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        obj = "۠ۢۧ";
                    }
                    break;
                case 26849:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                        obj = "ۧ۠ۦ";
                    } else {
                        obj = "ۦۤۤ";
                    }
                    break;
                case 27392:
                    obj = "ۡۥۣ";
                    break;
                case 27397:
                    obj = "۠ۨۨ";
                    break;
                case 27424:
                    i9 = ((-5) - (0 - ((0 - ((31 - i4) - 31)) + 2))) + 5;
                    if (C0024.m138() <= 0) {
                        C0033.m596();
                        if (C0025.m186() >= 0) {
                            i8 = i9;
                        } else {
                            obj = "ۡۦ۟";
                            i8 = i9;
                        }
                    } else if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "ۤۦۨ";
                    }
                    break;
                case 27488:
                    obj = C0024.m165xf0c433e8() <= 0 ? "ۦۥ" : "۟ۤ۠";
                    break;
                case 27533:
                    if (C0026.m329() <= 0) {
                    }
                    break;
                case 27585:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj = "ۦۤۨ";
                    }
                    break;
                case 27779:
                    if (C0026.m329() > 0) {
                        obj = "ۣۡ";
                    }
                    break;
                case 27783:
                    String strM119 = C0024.m119();
                    if (C0025.m186() >= 0) {
                        strM122 = strM119;
                        obj = "ۣۨ";
                    } else {
                        strM122 = strM119;
                        obj = "۠ۢ۠";
                    }
                    break;
                case 27810:
                    strM122 = C0024.m156();
                    obj = "ۢۡۦ";
                    break;
                case 27841:
                    if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj = "ۣ۟۠";
                    }
                    break;
                case 27843:
                    obj = "ۣۧۧ";
                    break;
                case 28419:
                    iM479 = C0032.m479(strM122);
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "ۣۡۦ";
                    }
                    break;
                case 28420:
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                        obj = "ۨۥۦ";
                    } else {
                        obj = "ۨ۟۠";
                    }
                    break;
                case 28430:
                    int iIntValue2 = ((Integer) objArr[1]).intValue();
                    objArr2[0] = new Integer((iIntValue2 & (-2992101)) | ((iIntValue2 ^ (-1)) & 2992100));
                    if (C0024.m138() > 0) {
                        strM122 = C0024.m99();
                        if (C0033.m706() <= 0) {
                            C0024.m165xf0c433e8();
                        } else {
                            obj = "ۡۡۢ";
                        }
                    } else {
                        length = length;
                        bArr3 = bArr3;
                        obj = "ۦۣۢ";
                    }
                    break;
                case 28448:
                    strM122 = C0033.m579();
                    if (C0033.m706() <= 0) {
                        i4 = i8;
                    } else {
                        obj = "ۥۥۥ";
                        i4 = i8;
                    }
                    break;
                case 28558:
                    i7 = i4 / 2;
                    strM122 = C0024.m110();
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                    } else {
                        obj = "ۤۧۦ";
                    }
                    break;
                case 28591:
                    obj = "ۣ۟ۤ";
                    break;
                case 1733126:
                    obj = "ۡۨ۟";
                    break;
                case 1733242:
                    iM141 = i10;
                    i10 = iM141;
                    obj = "ۥۨۢ";
                    break;
                case 1733247:
                    String strM617 = C0033.m617();
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                        strM122 = strM617;
                        obj = "ۡۨ۠";
                    } else {
                        strM122 = strM617;
                        obj = "۟ۥۨ";
                    }
                    break;
                case 1733252:
                    obj = "۠ۧ۠";
                    break;
                case 1733312:
                    if (C0033.m706() > 0) {
                        obj = "ۢۤۨ";
                    }
                    break;
                case 1733314:
                    if (C0025.m186() < 0) {
                        obj = "۟ۧۨ";
                    }
                    break;
                case 1733344:
                    if (i4 < length) {
                        strM122 = C0024.m175x76267b90();
                        if (C0024.m165xf0c433e8() > 0) {
                            obj = "ۡ۟ۨ";
                        }
                    } else if (C0025.m186() < 0) {
                        C0024.m165xf0c433e8();
                        obj = "۟ۧۥ";
                    } else {
                        obj = "ۤۤۡ";
                    }
                    break;
                case 1733348:
                    if (C0033.m609() < 0) {
                        strM122 = C0032.m554();
                        obj = "۠ۤ";
                    } else {
                        length = length;
                        bArr3 = bArr3;
                        obj = "ۦۣۢ";
                    }
                    break;
                case 1733921:
                    obj = "ۣ۠ۢ";
                    break;
                default:
                    break;
            }
            return bArr3;
        }
    }

    /* JADX INFO: renamed from: ۗۨۗ, reason: not valid java name and contains not printable characters */
    public static Cipher m30(Object obj) {
        String str = "ۣ۟۟";
        Cipher cipher = null;
        Cipher cipher2 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1748706) {
                case 104:
                    str = "ۡۧ۟";
                    continue;
                case 411:
                case 27844:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                    } else {
                        str = "ۣۦۨ";
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_SP_CURSOR_AFTER_HANDLER /* 1338 */:
                    if (C0025.m186() >= 0) {
                        str = "۟۟ۥ";
                        cipher = cipher2;
                    } else {
                        str = "ۣۦۨ";
                        cipher = cipher2;
                        continue;
                    }
                    break;
                case MysqlErrorNumbers.ER_SUBPARTITION_ERROR /* 1500 */:
                    cipher2 = ((application5) obj).muhua6;
                    str = "۠ۨ۠";
                    continue;
                case 2429:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str = "۟۠ۥ";
                    } else {
                        str = "ۧۧ۠";
                        continue;
                    }
                    break;
                case 6151:
                    return cipher;
                case 6369:
                    if (C0032.m436() >= 0) {
                        str = "ۣ۠ۡ";
                    }
                    break;
                case 26117:
                    if (C0025.m186() < 0) {
                        str = "ۣ۟۟";
                    } else {
                        continue;
                    }
                    break;
                case 26850:
                    if (C0026.m329() <= 0) {
                        cipher = null;
                    } else {
                        str = "ۡ۟ۨ";
                        cipher = null;
                        continue;
                    }
                    break;
                case 1733316:
                    break;
                default:
                    continue;
            }
            if (C0032.m436() <= 0) {
                C0025.m186();
                str = "ۢ۟ۢ";
            } else {
                str = "۟ۤۤ";
            }
        }
    }

    /* JADX INFO: renamed from: ۤۦ۠, reason: not valid java name and contains not printable characters */
    public static short[] m31() {
        String str = "ۡۧ";
        short[] sArr = null;
        short[] sArr2 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1747714) {
                case 458:
                    str = "ۧۢۡ";
                    continue;
                case MysqlErrorNumbers.ER_SYNTAX_ERROR /* 1149 */:
                    str = "ۡۧ";
                    continue;
                case 4418:
                    break;
                case 7677:
                    str = "ۦ۟ۧ";
                    sArr = sArr2;
                    continue;
                case 25583:
                    sArr2 = f4short;
                    if (C0032.m436() > 0) {
                        str = "ۣۣۧ";
                    } else {
                        continue;
                    }
                    break;
                case 27212:
                    return sArr;
                case 27337:
                case 1734621:
                    str = "ۦ۟ۧ";
                    continue;
                case 27904:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۧۦ";
                    } else {
                        continue;
                    }
                    break;
                case 28260:
                    if (C0024.m165xf0c433e8() <= 0) {
                        sArr = null;
                    } else {
                        str = "ۧۧۢ";
                        sArr = null;
                        continue;
                    }
                    break;
                case 1734436:
                    if (C0025.m186() >= 0) {
                        break;
                    } else if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۨ۠ۥ";
                    }
                    break;
                default:
                    continue;
            }
            if (C0026.m329() <= 0) {
                C0025.m186();
            } else {
                str = "۠۟ۧ";
            }
        }
    }

    /* JADX INFO: renamed from: ۥۗۤ, reason: contains not printable characters */
    public static Key m32(Object obj, Object obj2) throws Exception {
        String str = "ۧۦۧ";
        Key key = null;
        Key key2 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1748769) {
                case MysqlErrorNumbers.ER_ALTER_OPERATION_NOT_SUPPORTED_REASON_AUTOINC /* 1854 */:
                    if (C0026.m329() <= 0) {
                        C0026.m329();
                    } else {
                        str = "ۦۣ۠";
                        continue;
                    }
                    break;
                case 2110:
                case 28386:
                    if (C0032.m436() > 0) {
                        str = "ۧۡ۠";
                    } else {
                        continue;
                    }
                    break;
                case 2272:
                    key2 = ((application5) obj).getKey((byte[]) obj2);
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                        str = "ۣۨۤ";
                    } else {
                        str = "ۣۨ۟";
                        continue;
                    }
                    break;
                case 6146:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۧۦۧ";
                    } else {
                        continue;
                    }
                    break;
                case 7228:
                    if (C0026.m329() <= 0) {
                        str = "ۣۢ۟";
                    } else {
                        str = "ۦۥۤ";
                        continue;
                    }
                    break;
                case 26605:
                    if (C0025.m186() >= 0) {
                        key = key2;
                    } else {
                        str = "ۧۡ۠";
                        key = key2;
                        continue;
                    }
                    break;
                case 27239:
                    return key;
                case 27337:
                    if (C0032.m436() < 0) {
                        break;
                    } else if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                        str = "ۧۡۥ";
                    } else {
                        str = "۟ۥۧ";
                    }
                    break;
                case 27940:
                    str = "۟ۨۨ";
                    key = null;
                    continue;
                case 28290:
                    break;
                default:
                    continue;
            }
            if (C0024.m165xf0c433e8() <= 0) {
                C0026.m329();
                str = "ۦۦۥ";
            } else {
                str = "ۢۦۡ";
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:228:0x0240 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:230:0x023b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:237:0x024e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:239:0x024a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:0x0231 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:260:0x01f1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:261:0x01ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:262:0x0210 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:263:0x0209 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:264:0x0227 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:265:0x0222 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:266:0x0270 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:267:0x026b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:272:0x0261 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:273:0x025c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:335:0x000d A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0015. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:98:0x01b7. Please report as an issue. */
    /* JADX INFO: renamed from: ⁠⁠⁣⁤⁣⁣, reason: not valid java name and contains not printable characters */
    public static short[] m33() {
        String str = "۠ۥۣ";
        short[] sArr = null;
        String strM53 = null;
        short[] sArrM31 = null;
        int iM479 = 0;
        String strM566 = null;
        short[] sArr2 = null;
        short[] sArr3 = null;
        String strM194 = null;
        String strM697 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1748739) {
                case 6:
                    String strM105 = C0024.m105();
                    if (C0025.m186() >= 0) {
                        C0026.m329();
                        str = "ۣۣ۟";
                        strM566 = strM105;
                        sArr3 = sArrM31;
                    } else {
                        str = "۠ۧۧ";
                        strM566 = strM105;
                        sArr3 = sArrM31;
                    }
                    break;
                case 7:
                    break;
                case 63:
                    if (C0033.m609() >= 0) {
                        C0033.m596();
                        if (C0032.m436() > 0) {
                            str = "ۢۡۢ";
                        }
                    } else {
                        str = "۠ۡ";
                    }
                    break;
                case 89:
                    str = "ۤ۠ۤ";
                    break;
                case 130:
                case 482:
                case MysqlErrorNumbers.ER_CANT_INITIALIZE_UDF /* 1123 */:
                case 2173:
                case 2210:
                case 2274:
                case 2299:
                case 5510:
                case 7203:
                case 7616:
                case 7619:
                case 7644:
                case 26208:
                case 26315:
                case 1733379:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        str = "۟۟";
                    }
                    break;
                case CipherSuite.TLS_DHE_DSS_WITH_SEED_CBC_SHA /* 153 */:
                    switch (((iM479 ^ (-1)) & 1748711) | ((-1748712) & iM479)) {
                        case 507:
                            str = "ۧ۠ۢ";
                            break;
                        case 1024:
                            if (C0032.m436() > 0) {
                                str = "ۣۡۦ";
                            } else {
                                C0032.m436();
                            }
                            break;
                        case MysqlErrorNumbers.ER_WRONG_GROUP_FIELD /* 1056 */:
                            str = "ۦۢۨ";
                            break;
                        case MysqlErrorNumbers.ER_TOO_LONG_BODY /* 1437 */:
                            str = "ۧ۠ۡ";
                            break;
                        case 2374:
                            if (C0024.m165xf0c433e8() > 0) {
                                str = "ۤ۠";
                            } else {
                                C0026.m329();
                                str = "ۨ۟ۥ";
                            }
                            break;
                        case 7201:
                        case 27814:
                            str = "ۡۥ۠";
                            break;
                        case 7311:
                            if (C0032.m436() > 0) {
                            }
                            break;
                        case 7622:
                            if (C0033.m706() > 0) {
                                str = "ۦۥ۠";
                            } else {
                                C0033.m706();
                            }
                            break;
                        case 26436:
                            str = "ۥۦۡ";
                            break;
                        case 27468:
                            str = "ۦۣۨ";
                            break;
                        default:
                            str = "ۤ۠ۤ";
                            break;
                    }
                    break;
                case MysqlErrorNumbers.ER_ERROR_ON_WRITE /* 1026 */:
                    if (C0033.m706() > 0) {
                        str = "ۣۢۡ";
                    }
                    break;
                case MysqlErrorNumbers.ER_FILSORT_ABORT /* 1028 */:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "۟ۤۦ";
                    }
                    break;
                case MysqlErrorNumbers.ER_UNSUPPORTED_EXTENSION /* 1112 */:
                    str = "۠ۡۢ";
                    strM566 = strM697;
                    break;
                case MysqlErrorNumbers.ER_SYNTAX_ERROR /* 1149 */:
                    strM194 = C0025.m194();
                    if (C0033.m706() > 0) {
                        str = "ۧۧۡ";
                    }
                    break;
                case MysqlErrorNumbers.ER_DUMP_NOT_IMPLEMENTED /* 1185 */:
                    if (C0032.m436() > 0) {
                        C0032.m436();
                    } else {
                        str = "ۣۡۦ";
                    }
                    break;
                case MysqlErrorNumbers.ER_QUERY_ON_MASTER /* 1219 */:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        str = "۟ۦۨ";
                    }
                    break;
                case MysqlErrorNumbers.ER_FOREIGN_SERVER_EXISTS /* 1476 */:
                    strM566 = C0024.m161xe3c359f4();
                    if (C0032.m436() > 0) {
                        str = "ۨ۟ۧ";
                    }
                    break;
                case MysqlErrorNumbers.ER_TABLESPACE_EXISTS /* 1813 */:
                    str = C0033.m706() <= 0 ? "ۤۥ۟" : "ۦۤ۠";
                    break;
                case MysqlErrorNumbers.ER_FK_NO_INDEX_CHILD /* 1821 */:
                    str = "۠ۡ";
                    break;
                case 2087:
                    if (C0033.m706() > 0) {
                        C0033.m706();
                    } else {
                        str = "ۦۥ۠";
                    }
                    break;
                case 4451:
                    if (C0033.m609() > 0) {
                        str = "ۦۢۨ";
                    } else if (C0033.m609() < 0) {
                        strM53 = C0024.m53();
                        str = "ۦ۟";
                    } else if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        str = "۟۟";
                    }
                    break;
                case 4519:
                    str = "ۦۣۨ";
                    break;
                case 4744:
                    str = "ۧ۠ۢ";
                    break;
                case 4775:
                    str = "ۧ۠ۡ";
                    break;
                case 5476:
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                        str = "ۡ۟۠";
                        sArr3 = sArrM31;
                    } else {
                        str = "ۦۧۡ";
                        sArr3 = sArrM31;
                    }
                    break;
                case 5867:
                    if (C0026.m329() > 0) {
                        str = "ۢۤۡ";
                    }
                    break;
                case 6176:
                    if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                        sArr2 = sArr;
                    } else {
                        str = "۠ۡۨ";
                        sArr2 = sArr;
                    }
                    break;
                case 6501:
                    str = C0032.m436() > 0 ? "۠ۡۤ" : "ۣۨ";
                    break;
                case 6560:
                    str = "۟۟";
                    strM566 = strM194;
                    break;
                case 6563:
                    str = "۟ۧ۠";
                    break;
                case 6599:
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "۠۟ۦ";
                    }
                    break;
                case 7225:
                    str = "ۣۤۡ";
                    sArr2 = null;
                    break;
                case 7552:
                    str = "ۢۦۤ";
                    break;
                case 7584:
                    str = "ۥۦۡ";
                    break;
                case 26123:
                    str = "ۦۢۨ";
                    break;
                case 26127:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۣۡۧ";
                    }
                    break;
                case 26579:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        str = "ۤۤۨ";
                    } else {
                        str = "ۨۤ۟";
                    }
                    break;
                case 26882:
                    str = "ۣۤۤ";
                    sArr2 = null;
                    sArr3 = null;
                    break;
                case 27178:
                    sArrM31 = m31();
                    if (C0033.m596() <= 0) {
                        C0025.m226();
                        if (C0025.m186() >= 0) {
                            C0032.m436();
                        } else {
                            str = "ۤۤۧ";
                        }
                    } else if (C0024.m165xf0c433e8() > 0) {
                        str = "ۣۡۧ";
                    }
                    break;
                case 27179:
                    strM566 = C0032.m566();
                    if (C0026.m329() > 0) {
                        str = "ۧۥۦ";
                    }
                    break;
                case 27205:
                    if (C0024.m165xf0c433e8() > 0) {
                        C0026.m329();
                        str = "ۨ۟ۥ";
                    } else {
                        str = "ۤ۠";
                    }
                    break;
                case 27339:
                    str = "ۡۧۧ";
                    break;
                case 27906:
                    str = "ۣۨۨ";
                    strM566 = C0032.m524();
                    sArr = sArr3;
                    break;
                case 27971:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                        str = "ۤ۟";
                    } else {
                        str = "۠۠";
                    }
                    break;
                case 28001:
                    str = "ۤۥۦ";
                    break;
                case 28330:
                    str = "۠ۤۤ";
                    break;
                case 28335:
                    if (C0024.m138() <= 0) {
                        C0025.m226();
                        strM697 = C0033.m697();
                        str = "۠ۤ۟";
                    } else if (C0033.m706() <= 0) {
                    }
                    break;
                case 28360:
                    if (C0033.m596() <= 0) {
                        C0025.m226();
                        if (C0026.m329() <= 0) {
                            C0033.m706();
                        } else {
                            str = "۟۠";
                        }
                    } else if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "۠۟ۦ";
                    }
                    break;
                case 28363:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0033.m706();
                        str = "ۣۢۦ";
                    } else {
                        str = "ۨۧۧ";
                    }
                    break;
                case 28385:
                    strM566 = C0024.m166();
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۦۣۥ";
                    }
                    break;
                case 1733378:
                    strM566 = C0032.m524();
                    str = "ۦۢۥ";
                    break;
                case 1733440:
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                        str = "۠ۡۤ";
                    } else {
                        str = "ۣ۟ۢ";
                    }
                    break;
                case 1733468:
                    if (C0026.m329() > 0) {
                        str = "۠ۥۣ";
                    }
                    break;
                case 1733474:
                    str = "ۡۥ۠";
                    break;
                case 1733478:
                    strM566 = C0025.m272();
                    str = "ۢۧ۟";
                    break;
                case 1733503:
                    strM566 = C0025.m194();
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        str = "ۢ۠۠";
                    } else {
                        str = "ۢۥ";
                    }
                    break;
                case 1733562:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str = "ۣۨۢ";
                        strM566 = strM53;
                    } else {
                        str = "ۦۨۤ";
                        strM566 = strM53;
                    }
                    break;
                case 1733858:
                    str = "ۣۢۤ";
                    break;
                case 1733859:
                    iM479 = C0032.m479(strM566);
                    str = "ۡۨۡ";
                    break;
                default:
                    break;
            }
            return sArr2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:254:0x0261 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:256:0x025c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:277:0x02e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:296:0x02f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:298:0x02ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:300:0x0281 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:301:0x027c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:302:0x0291 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:303:0x028c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:304:0x029c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:305:0x02d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:306:0x02fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:307:0x030d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:308:0x0308 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:309:0x032f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:310:0x0327 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:317:0x02bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:318:0x02b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:321:0x02cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:323:0x02c7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:331:0x02ac A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:333:0x02a7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:380:0x000d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:399:0x000d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:401:0x000d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:403:0x000d A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0015. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:97:0x01c7. Please report as an issue. */
    /* JADX INFO: renamed from: ⁠⁠⁣⁤⁣⁤, reason: not valid java name and contains not printable characters */
    public static Cipher m34(Object obj) {
        Cipher cipherM30 = null;
        Cipher cipher = null;
        String strM282 = null;
        int iM479 = 0;
        String strM139 = null;
        Cipher cipher2 = null;
        Cipher cipher3 = null;
        String strM115 = null;
        Object obj2 = "ۣۧ";
        while (true) {
            switch (C0033.m669(obj2) ^ 1746849) {
                case 30:
                    obj2 = "ۦ۟ۨ";
                    strM139 = strM115;
                    break;
                case 32:
                case CipherSuite.TLS_PSK_WITH_AES_256_GCM_SHA384 /* 169 */:
                case 2083:
                case 2215:
                case 3228:
                case 3263:
                case 3294:
                case 5406:
                case 6757:
                case 7647:
                case 25187:
                case 26023:
                case 26121:
                case 26342:
                case 26348:
                case 28490:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                    } else {
                        obj2 = "ۦ۟ۨ";
                    }
                    break;
                case 231:
                    obj2 = "ۨۥۥ";
                    cipher2 = null;
                    break;
                case MysqlDefs.FIELD_TYPE_BLOB /* 252 */:
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                        cipher2 = null;
                        cipher3 = null;
                    } else {
                        obj2 = "۟ۥۥ";
                        cipher2 = null;
                        cipher3 = null;
                    }
                    break;
                case 2344:
                    switch (((iM479 ^ (-1)) & 1751531) | ((-1751532) & iM479)) {
                        case 963:
                            if (C0025.m186() < 0) {
                                obj2 = "ۥ۠۠";
                            } else {
                                C0033.m706();
                            }
                            break;
                        case 2028:
                        case 28964:
                            obj2 = "ۢۨۦ";
                            break;
                        case 4013:
                            obj2 = "ۧۤۥ";
                            break;
                        case 7696:
                            if (C0025.m186() < 0) {
                            }
                            break;
                        case 28680:
                            if (C0032.m436() > 0) {
                                obj2 = "ۨۨۧ";
                            }
                            break;
                        case 30792:
                            if (C0025.m186() < 0) {
                                obj2 = "۠ۢۡ";
                            } else {
                                C0032.m436();
                                obj2 = "ۤ۟ۧ";
                            }
                            break;
                        case 31688:
                            if (C0025.m186() < 0) {
                                obj2 = "ۧۧۧ";
                            } else {
                                C0033.m706();
                            }
                            break;
                        case 32716:
                            if (C0032.m436() > 0) {
                                obj2 = "ۧ۠ۦ";
                            } else {
                                C0032.m436();
                            }
                            break;
                        case 32739:
                            if (C0024.m165xf0c433e8() > 0) {
                                obj2 = "ۦۣۥ";
                            }
                            break;
                        case 1730004:
                            if (C0024.m165xf0c433e8() > 0) {
                                obj2 = "ۣۥۡ";
                            }
                            break;
                        default:
                            obj2 = "ۨۢۤ";
                            break;
                    }
                    break;
                case 2370:
                    if (C0025.m186() < 0) {
                        C0032.m436();
                        obj2 = "ۤ۟ۧ";
                    } else {
                        obj2 = "۠ۢۡ";
                    }
                    break;
                case 2396:
                    if (C0025.m186() < 0) {
                        C0033.m706();
                    } else {
                        obj2 = "ۥ۠۠";
                    }
                    break;
                case 2402:
                    obj2 = "ۢۨۦ";
                    break;
                case 3204:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj2 = "ۤۥ۟";
                    }
                    break;
                case 3231:
                    obj2 = "ۨۢۤ";
                    break;
                case 3262:
                    if (C0025.m237() >= 0) {
                        strM139 = C0024.m139();
                        if (C0033.m706() <= 0) {
                            C0032.m436();
                        } else {
                            obj2 = "ۦۧۨ";
                        }
                    } else if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj2 = "ۣۢۡ";
                    }
                    break;
                case 3264:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                    } else {
                        obj2 = "ۤۨۨ";
                    }
                    break;
                case 3296:
                    obj2 = C0025.m186() < 0 ? "ۢۨ" : "ۥۦۤ";
                    break;
                case 4382:
                    if (C0033.m596() <= 0) {
                        if (C0026.m329() <= 0) {
                            C0025.m186();
                            cipher2 = cipher3;
                        } else {
                            obj2 = "ۤۤ۠";
                            cipher2 = cipher3;
                        }
                    } else if (C0033.m706() > 0) {
                        obj2 = "ۦۡۨ";
                    }
                    break;
                case 4418:
                    if (C0032.m436() > 0) {
                        obj2 = "۠ۢ۠";
                    }
                    break;
                case 4545:
                    if (C0025.m186() < 0) {
                        C0033.m706();
                    } else {
                        obj2 = "ۧۧۧ";
                    }
                    break;
                case 4549:
                    if (C0025.m186() < 0) {
                        obj2 = "ۣۨ۠";
                    }
                    break;
                case 4551:
                    obj2 = "ۣۡۨ";
                    break;
                case 4583:
                    obj2 = "ۥۡ۠";
                    break;
                case 5313:
                    if (C0025.m237() < 0) {
                        strM139 = C0032.m500();
                        if (C0025.m186() < 0) {
                            obj2 = "۠ۢۧ";
                        }
                    } else if (C0032.m436() <= 0) {
                        C0033.m706();
                    } else {
                        obj2 = "ۦ۟ۨ";
                    }
                    break;
                case 5413:
                    strM139 = C0032.m494();
                    if (C0032.m436() > 0) {
                        obj2 = "ۥۦۧ";
                    }
                    break;
                case 5443:
                    if (C0033.m706() <= 0) {
                        C0024.m165xf0c433e8();
                        cipher2 = cipher;
                    } else {
                        obj2 = "ۣۣۢ";
                        cipher2 = cipher;
                    }
                    break;
                case 6571:
                    obj2 = C0032.m436() <= 0 ? "ۨ۟۠" : "ۣۢ۠";
                    break;
                case 6594:
                    strM139 = C0032.m481();
                    if (C0024.m165xf0c433e8() > 0) {
                        obj2 = "ۣۨۢ";
                    }
                    break;
                case 6599:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        obj2 = "۟۟ۨ";
                    }
                    break;
                case 6628:
                    if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj2 = "ۣۢۡ";
                    }
                    break;
                case 6660:
                    if (C0024.m138() > 0) {
                        if (C0024.m138() <= 0) {
                            C0033.m609();
                            obj2 = "ۧۥۦ";
                        } else {
                            obj2 = "ۨۧۦ";
                        }
                    } else if (C0025.m186() < 0) {
                        C0033.m706();
                    } else {
                        obj2 = "ۧۧۧ";
                    }
                    break;
                case 6703:
                    String strM131 = C0024.m131();
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        strM139 = strM131;
                        cipher3 = cipherM30;
                        obj2 = "ۤۦۣ";
                    } else {
                        strM139 = strM131;
                        cipher3 = cipherM30;
                        obj2 = "ۣۦۦ";
                    }
                    break;
                case 7493:
                    String strM189 = C0025.m189();
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        strM139 = strM189;
                        obj2 = "ۥۨۦ";
                    } else {
                        strM139 = strM189;
                        obj2 = "۟ۡۨ";
                    }
                    break;
                case 7552:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                    } else {
                        obj2 = "ۣۧ";
                    }
                    break;
                case 7617:
                    obj2 = "ۦۢۤ";
                    break;
                case 7786:
                    obj2 = "ۨۧۦ";
                    break;
                case 24998:
                    if (C0033.m596() <= 0) {
                        String strM461 = C0032.m461();
                        if (C0025.m186() >= 0) {
                            strM139 = strM461;
                            obj2 = "ۢ۟۠";
                        } else {
                            strM139 = strM461;
                            obj2 = "ۨۦۥ";
                        }
                    } else if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                    } else {
                        obj2 = "ۣۨۥ";
                    }
                    break;
                case 25097:
                    strM139 = C0024.m115();
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        obj2 = "ۣۡۤ";
                    }
                    break;
                case 25122:
                    if (C0032.m436() > 0) {
                        obj2 = "ۨۨۧ";
                    }
                    break;
                case 25193:
                    obj2 = "ۦ۟ۦ";
                    break;
                case 25228:
                    break;
                case 26049:
                    obj2 = "ۧۤۥ";
                    break;
                case 26086:
                    obj2 = "ۦۥۥ";
                    break;
                case 26156:
                    cipher = cipher3;
                    strM139 = C0032.m500();
                    obj2 = "ۢۤۤ";
                    break;
                case 26217:
                    if (C0025.m237() >= 0) {
                        strM282 = C0025.m282();
                        if (C0024.m165xf0c433e8() > 0) {
                            obj2 = "ۨ۟ۨ";
                        }
                    } else if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                    } else {
                        obj2 = "ۤۨۨ";
                    }
                    break;
                case 26350:
                    iM479 = C0032.m479(strM139);
                    if (C0025.m186() < 0) {
                        obj2 = "ۡ۟ۧ";
                    }
                    break;
                case 28163:
                    if (C0032.m436() > 0) {
                        C0032.m436();
                    } else {
                        obj2 = "ۧ۠ۦ";
                    }
                    break;
                case 28166:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        obj2 = "ۥۢۧ";
                    } else {
                        obj2 = "ۡۧۨ";
                    }
                    break;
                case 28201:
                    obj2 = C0026.m329() <= 0 ? "ۣۣۧ" : "ۦ۟۠";
                    break;
                case 28230:
                    cipherM30 = m30((application5) obj);
                    if (C0033.m596() > 0) {
                        obj2 = "ۥ۟ۨ";
                        cipher3 = cipherM30;
                    } else {
                        cipher3 = cipherM30;
                        if (C0032.m436() <= 0) {
                            C0033.m706();
                        } else {
                            obj2 = "ۦ۟ۨ";
                        }
                    }
                    break;
                case 28262:
                    strM139 = C0024.m87();
                    obj2 = "ۥۣۨ";
                    break;
                case 28299:
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                    } else {
                        obj2 = "ۣ۠۠";
                    }
                    break;
                case 28390:
                    obj2 = "۠ۥۤ";
                    break;
                case 28395:
                    strM139 = C0032.m529();
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                    } else {
                        obj2 = "۟ۦ";
                    }
                    break;
                case 28489:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0032.m436();
                    } else {
                        obj2 = "ۣۨۥ";
                    }
                    break;
                case 28528:
                    if (C0025.m186() >= 0) {
                        strM139 = strM282;
                        cipher2 = null;
                    } else {
                        obj2 = "ۣۢۥ";
                        strM139 = strM282;
                        cipher2 = null;
                    }
                    break;
                case 1735454:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj2 = "ۦۣۥ";
                    }
                    break;
                case 1735584:
                    if (C0033.m706() > 0) {
                        obj2 = "ۦۡۨ";
                    }
                    break;
                case 1735621:
                    strM115 = C0024.m115();
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        obj2 = "۟ۢ۠";
                    }
                    break;
                case 1735750:
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                    } else {
                        obj2 = "ۧۥ۠";
                    }
                    break;
                case 1735751:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj2 = "ۣۥۡ";
                    }
                    break;
                default:
                    break;
            }
            return cipher2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:230:0x020f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:231:0x020a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:234:0x0200 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:236:0x01f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:0x027b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:250:0x0277 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:253:0x01ef A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:254:0x00ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:255:0x01e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:256:0x01e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:257:0x021e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:258:0x0219 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:259:0x0230 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:260:0x022c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:261:0x023e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:262:0x0251 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:263:0x024c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:264:0x025b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:332:0x000b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:337:0x000b A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0013. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:56:0x00e5. Please report as an issue. */
    /* JADX INFO: renamed from: ⁣⁤⁠⁠⁠⁠, reason: not valid java name and contains not printable characters */
    public static String m35() {
        String str = "ۤۥۦ";
        String strM39 = null;
        int iM479 = 0;
        String strM582 = null;
        String str2 = null;
        String str3 = null;
        String strM504 = null;
        String str4 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1751748) {
                case 65:
                    strM504 = C0032.m504();
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۨ۠ۡ";
                    }
                    break;
                case 66:
                    str = C0024.m165xf0c433e8() <= 0 ? "ۣ۠ۥ" : "ۡۧۡ";
                    break;
                case 121:
                    break;
                case CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA /* 140 */:
                    if (C0032.m436() > 0) {
                        str = "ۨۤ";
                    }
                    break;
                case CipherSuite.TLS_DH_DSS_WITH_AES_128_GCM_SHA256 /* 164 */:
                case 199:
                case MysqlErrorNumbers.ER_MTS_EVENT_BIGGER_PENDING_JOBS_SIZE_MAX /* 1864 */:
                case MysqlErrorNumbers.ER_SLAVE_MI_INIT_REPOSITORY /* 1871 */:
                case 2552:
                case 4382:
                case 4443:
                case 4475:
                case 5567:
                case 7482:
                case 29193:
                case 31565:
                case 31591:
                case 1730104:
                    str = "ۢۢۢ";
                    break;
                case 206:
                    str = "۟ۨۥ";
                    break;
                case 231:
                    if (C0033.m609() >= 0) {
                        if (C0032.m436() <= 0) {
                            str2 = str3;
                        } else {
                            str = "ۦۡ";
                            str2 = str3;
                        }
                    } else if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۣ۟ۤ";
                    }
                    break;
                case MysqlErrorNumbers.ER_MASTER_NET_WRITE /* 1190 */:
                    strM39 = m39();
                    if (C0025.m237() >= 0) {
                        C0024.m138();
                        if (C0025.m186() >= 0) {
                            C0026.m329();
                        } else {
                            str = "ۨ۠۠";
                        }
                    } else {
                        str = "ۧۧۦ";
                    }
                    break;
                case MysqlErrorNumbers.ER_DISCARD_FK_CHECKS_RUNNING /* 1807 */:
                    str = C0032.m436() <= 0 ? "ۣۧۡ" : "ۤۥۦ";
                    break;
                case MysqlErrorNumbers.ER_CANT_SET_GTID_PURGED_WHEN_GTID_MODE_IS_OFF /* 1839 */:
                    if (C0026.m329() > 0) {
                        C0026.m329();
                    } else {
                        str = "ۤۧ۠";
                    }
                    break;
                case MysqlErrorNumbers.ER_NO_FT_MATERIALIZED_SUBQUERY /* 1901 */:
                    str = "ۧۧۦ";
                    break;
                case 2149:
                    if (C0026.m329() <= 0) {
                        str2 = null;
                    } else {
                        str = "ۣۣۧ";
                        str2 = null;
                    }
                    break;
                case 2150:
                    iM479 = C0032.m479(strM582);
                    if (C0032.m436() > 0) {
                        str = "۟ۡۢ";
                    }
                    break;
                case 2522:
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                        str = "ۧۦۧ";
                    } else {
                        str = "ۡۦۧ";
                    }
                    break;
                case 2553:
                    if (C0032.m436() > 0) {
                        str = "ۦۡۤ";
                    }
                    break;
                case 3131:
                    str = "ۢۧۡ";
                    break;
                case 3206:
                    if (C0033.m706() > 0) {
                        str = "ۤۢۡ";
                    }
                    break;
                case 4481:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str = "ۥۥۣ";
                        str2 = str4;
                    } else {
                        str = "ۢۧۢ";
                        str2 = str4;
                    }
                    break;
                case 4547:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                        str = "۠ۧۧ";
                    } else {
                        str = "۟ۧۦ";
                    }
                    break;
                case 4578:
                    strM582 = C0033.m582();
                    str = "ۢۢۡ";
                    break;
                case 4824:
                    strM582 = C0032.m424xd155a338();
                    str = "ۣۨۨ";
                    break;
                case 5542:
                    strM582 = C0033.m606();
                    str = "ۣۤۧ";
                    break;
                case 5563:
                    str = "ۨۢ۟";
                    break;
                case 5592:
                    if (C0033.m706() > 0) {
                        C0026.m329();
                    } else {
                        str = "ۥۦۣ";
                    }
                    break;
                case 7484:
                    if (C0026.m329() > 0) {
                        C0032.m436();
                        str = "ۡ۠ۤ";
                    } else {
                        str = "۠ۢۨ";
                    }
                    break;
                case 7492:
                    String strM154 = C0024.m154();
                    if (C0033.m706() <= 0) {
                        strM582 = strM154;
                        str4 = str3;
                    } else {
                        str = "ۣ۠ۨ";
                        strM582 = strM154;
                        str4 = str3;
                    }
                    break;
                case 7493:
                    if (C0033.m706() > 0) {
                        str = "ۨۨ۠";
                    }
                    break;
                case 7525:
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                        strM582 = strM504;
                    } else {
                        str = "ۢۢۢ";
                        strM582 = strM504;
                    }
                    break;
                case 7556:
                    switch (((iM479 ^ (-1)) & 1748617) | ((-1748618) & iM479)) {
                        case MysqlErrorNumbers.ER_SP_DUP_CURS /* 1333 */:
                        case 5353:
                            if (C0033.m706() > 0) {
                            }
                            break;
                        case MysqlErrorNumbers.ER_NO_PARTITION_FOR_GIVEN_VALUE /* 1526 */:
                            str = "۟ۨۥ";
                            break;
                        case 2506:
                            str = "ۧۦۡ";
                            break;
                        case 6252:
                            if (C0033.m706() > 0) {
                                str = "ۥۦۣ";
                            } else {
                                C0026.m329();
                            }
                            break;
                        case 6348:
                            str = "ۨۢ۟";
                            break;
                        case 7400:
                            if (C0026.m329() > 0) {
                                str = "۠ۢۨ";
                            } else {
                                C0032.m436();
                                str = "ۡ۠ۤ";
                            }
                            break;
                        case 26381:
                            if (C0026.m329() > 0) {
                                str = "ۤۧ۠";
                            } else {
                                C0026.m329();
                            }
                            break;
                        case 26530:
                            if (C0025.m186() < 0) {
                            }
                            break;
                        case 27434:
                            if (C0033.m706() > 0) {
                                str = "ۨۨ۠";
                            }
                            break;
                        case 1733161:
                            if (C0033.m706() > 0) {
                                str = "ۤۢۡ";
                            }
                            break;
                        default:
                            if (C0024.m165xf0c433e8() > 0) {
                            }
                            break;
                    }
                    break;
                case 7616:
                    str = "ۧۦۡ";
                    break;
                case 29228:
                    if (C0024.m165xf0c433e8() <= 0) {
                        str3 = strM39;
                    } else {
                        str = "ۨۤۧ";
                        str3 = strM39;
                    }
                    break;
                case 29229:
                    str = "۟ۤۦ";
                    str2 = null;
                    str3 = null;
                    break;
                case 29472:
                    if (C0025.m226() <= 0) {
                        C0025.m237();
                        if (C0033.m706() > 0) {
                            str = "ۨۡۨ";
                        }
                    } else if (C0032.m436() <= 0) {
                        C0032.m436();
                        str = "ۧۦۧ";
                    } else {
                        str = "ۡۦۧ";
                    }
                    break;
                case 29476:
                    strM582 = C0032.m504();
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۦ۠۠";
                    }
                    break;
                case 29577:
                    if (C0026.m329() > 0) {
                        str = "ۤۤ۠";
                    }
                    break;
                case 29615:
                    str = "ۥ۟ۦ";
                    break;
                case 29643:
                    str = C0024.m165xf0c433e8() <= 0 ? "۟ۦۢ" : "۠ۧۦ";
                    break;
                case 29665:
                    if (C0033.m596() > 0) {
                        strM582 = C0024.m75();
                        str = "ۨۧ";
                    } else {
                        str = C0025.m186() < 0 ? "ۥۥۣ" : "ۨۨۤ";
                    }
                    break;
                case 30852:
                    if (C0025.m186() < 0) {
                    }
                    break;
                case 31650:
                    str = "ۨ۟ۤ";
                    break;
                case 31938:
                    String strM512 = C0032.m512();
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                        strM582 = strM512;
                        str3 = strM39;
                    } else {
                        str = "۠ۡۨ";
                        strM582 = strM512;
                        str3 = strM39;
                    }
                    break;
                case 31943:
                    if (C0026.m329() > 0) {
                        str = "ۥ۟ۥ";
                    }
                    break;
                case 32549:
                    if (C0025.m237() < 0) {
                        strM582 = C0024.m154();
                        str = "ۧۢۥ";
                    } else {
                        str = "ۢۢۢ";
                    }
                    break;
                case 32550:
                    strM582 = C0024.m114();
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۣۧۧ";
                    }
                    break;
                case 32653:
                    str = C0024.m165xf0c433e8() > 0 ? "ۡۡۦ" : "ۤۥۧ";
                    break;
                case 32686:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                        str = "ۢۦۧ";
                    } else {
                        str = "۠ۨۢ";
                    }
                    break;
                case 32724:
                    if (C0026.m329() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        str = "ۣ۟ۤ";
                    }
                    break;
                case 1730105:
                    str = C0033.m706() > 0 ? "۠ۨۢ" : "ۧۦ۠";
                    break;
                case 1730107:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                    } else {
                        str = "ۦۢ۟";
                    }
                    break;
                case 1730175:
                    if (C0025.m186() < 0) {
                        str = "۠ۦۥ";
                    }
                    break;
                default:
                    break;
            }
            return str2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:269:0x0345 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:271:0x0340 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:288:0x0325 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:289:0x0320 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:299:0x02df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:300:0x02da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:306:0x030a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:308:0x0305 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:329:0x02e4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:331:0x0208 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:332:0x02bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:333:0x02b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:334:0x02f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:335:0x02f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:336:0x0315 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:337:0x0350 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:338:0x035b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:347:0x0335 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:359:0x036b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:360:0x0366 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:432:0x000d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:435:0x000d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:437:0x000d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:447:0x000d A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:110:0x01ff. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0015. Please report as an issue. */
    /* JADX INFO: renamed from: ⁣⁤⁣⁤⁣⁠⁠, reason: not valid java name and contains not printable characters */
    public static Key m36(Object obj, Object obj2) throws Exception {
        Object obj3 = "ۥۨ۟";
        String str = null;
        String strM700 = null;
        int i = 0;
        Key keyM32 = null;
        String strM610 = null;
        Key key = null;
        String strM709 = null;
        Key key2 = null;
        while (true) {
            switch (C0033.m669(obj3) ^ 1748708) {
                case 1:
                    obj3 = "۠ۡۥ";
                    break;
                case 37:
                case 97:
                case 452:
                case MysqlErrorNumbers.ER_PS_NO_RECURSION /* 1444 */:
                case 2432:
                case 4294:
                case 4322:
                case 4963:
                case 6241:
                case 27490:
                case 27560:
                case 27599:
                case 27619:
                case 28463:
                case 1733242:
                case 1733305:
                case 1733344:
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        obj3 = "ۡۦۢ";
                    }
                    break;
                case 59:
                    keyM32 = m32((application5) obj, (byte[]) obj2);
                    if (C0025.m226() > 0) {
                        String strM632 = C0033.m632();
                        if (C0025.m186() >= 0) {
                            str = strM632;
                            key2 = keyM32;
                        } else {
                            obj3 = "ۧ۠۟";
                            str = strM632;
                            key2 = keyM32;
                        }
                    } else {
                        key2 = keyM32;
                        if (C0032.m436() <= 0) {
                            C0026.m329();
                        } else {
                            obj3 = "ۡۦۢ";
                        }
                    }
                    break;
                case 70:
                    obj3 = "ۤۦ۟";
                    break;
                case 99:
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        obj3 = "ۧۤۡ";
                    }
                    break;
                case 356:
                    if (C0033.m596() <= 0) {
                        C0033.m596();
                        strM700 = C0033.m700();
                        obj3 = "ۥۥۤ";
                    } else {
                        obj3 = "ۣۤۧ";
                    }
                    break;
                case 377:
                    obj3 = C0026.m329() <= 0 ? "ۣ۟ۢ" : "ۥۨ۟";
                    break;
                case 380:
                    if (C0032.m436() > 0) {
                        C0032.m436();
                    } else {
                        obj3 = "ۥۨۢ";
                    }
                    break;
                case 410:
                    if (C0026.m329() > 0) {
                        C0025.m186();
                    } else {
                        obj3 = "ۦ۠ۦ";
                    }
                    break;
                case 411:
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                        obj3 = "ۦۣۡ";
                    } else {
                        obj3 = "ۣۣ۠";
                    }
                    break;
                case 441:
                    int iM479 = C0032.m479(strM610);
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                        i = iM479;
                        obj3 = "ۤۢۨ";
                    } else {
                        i = iM479;
                        obj3 = "۟ۨۧ";
                    }
                    break;
                case 472:
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                    } else {
                        obj3 = "ۣ۠";
                    }
                    break;
                case MysqlErrorNumbers.ER_GET_ERRNO /* 1030 */:
                    strM610 = C0033.m709();
                    if (C0026.m329() <= 0) {
                        C0025.m186();
                    } else {
                        obj3 = "ۢۥ";
                    }
                    break;
                case MysqlErrorNumbers.ER_OPEN_AS_READONLY /* 1036 */:
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        obj3 = "ۥۤۡ";
                    }
                    break;
                case MysqlErrorNumbers.ER_DUP_KEYNAME /* 1061 */:
                    if (C0025.m226() > 0) {
                        strM610 = C0032.m426MHHX();
                        if (C0026.m329() <= 0) {
                            C0032.m436();
                        } else {
                            obj3 = "۠ۦۤ";
                        }
                    } else if (C0032.m436() > 0) {
                        C0032.m436();
                    } else {
                        obj3 = "ۥۨۢ";
                    }
                    break;
                case MysqlErrorNumbers.ER_XA_RBROLLBACK /* 1402 */:
                    obj3 = "ۡۡۡ";
                    break;
                case MysqlErrorNumbers.ER_STARTUP /* 1408 */:
                    if (C0033.m706() > 0) {
                        obj3 = "۟ۢ";
                    }
                    break;
                case MysqlErrorNumbers.ER_NON_INSERTABLE_TABLE /* 1471 */:
                    obj3 = "ۣۧۢ";
                    break;
                case MysqlErrorNumbers.ER_NO_PARTS_ERROR /* 1504 */:
                    strM610 = C0025.m181x6af2b736();
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        obj3 = "ۨۦۦ";
                    }
                    break;
                case MysqlErrorNumbers.ER_GTID_UNSAFE_CREATE_SELECT /* 1786 */:
                    switch (((i ^ (-1)) & 1748737) | ((-1748738) & i)) {
                        case MysqlErrorNumbers.ER_TOO_LONG_TABLE_PARTITION_COMMENT /* 1793 */:
                            if (C0025.m186() < 0) {
                                obj3 = "ۧۥ";
                            }
                            break;
                        case MysqlErrorNumbers.ER_INNODB_INDEX_CORRUPT /* 1817 */:
                            obj3 = "۠۟۠";
                            break;
                        case 2205:
                            obj3 = "ۤۦ۟";
                            break;
                        case 4745:
                        case 1733471:
                            if (C0033.m706() > 0) {
                                obj3 = "۟ۢ";
                            }
                            break;
                        case 5829:
                            if (C0026.m329() > 0) {
                                obj3 = "ۧۥ۟";
                            }
                            break;
                        case 7554:
                            if (C0032.m436() > 0) {
                                obj3 = "ۥۨۢ";
                            } else {
                                C0032.m436();
                            }
                            break;
                        case 27212:
                            if (C0026.m329() > 0) {
                            }
                            break;
                        case 28263:
                            obj3 = "ۣۧۨ";
                            break;
                        case 28387:
                            if (C0033.m706() > 0) {
                                obj3 = "ۡۧۦ";
                            } else {
                                C0032.m436();
                                obj3 = "ۤۥۦ";
                            }
                            break;
                        case 1733501:
                            obj3 = "ۡۢ۠";
                            break;
                        default:
                            if (C0026.m329() > 0) {
                                obj3 = "ۦ۠ۦ";
                            } else {
                                C0025.m186();
                            }
                            break;
                    }
                    break;
                case MysqlErrorNumbers.ER_CANT_SET_GTID_NEXT_WHEN_OWNING_GTID /* 1790 */:
                    obj3 = "ۡۦۢ";
                    keyM32 = null;
                    break;
                case 2375:
                    if (C0026.m329() > 0) {
                        obj3 = "ۧۥ۟";
                    }
                    break;
                case 2426:
                    obj3 = "۠۟۠";
                    break;
                case 2438:
                    if (C0033.m706() > 0) {
                        C0032.m436();
                        obj3 = "ۤۥۦ";
                    } else {
                        obj3 = "ۡۧۦ";
                    }
                    break;
                case 2503:
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                    } else {
                        obj3 = "ۦۣۨ";
                    }
                    break;
                case 2529:
                    obj3 = "ۣۤۧ";
                    break;
                case 4216:
                    strM709 = C0033.m709();
                    if (C0025.m186() >= 0) {
                        obj3 = "ۣۧ";
                        key = null;
                    } else {
                        obj3 = "ۧ۠ۡ";
                        key = null;
                    }
                    break;
                case 4219:
                    if (C0025.m237() >= 0) {
                        C0033.m609();
                        if (C0033.m706() <= 0) {
                            C0033.m706();
                        } else {
                            obj3 = "۟۠ۤ";
                        }
                    } else {
                        obj3 = C0024.m165xf0c433e8() <= 0 ? "ۧ۟" : "ۨۤ";
                    }
                    break;
                case 4256:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                        strM610 = strM700;
                        key = null;
                    } else {
                        obj3 = "ۧۧ";
                        strM610 = strM700;
                        key = null;
                    }
                    break;
                case 4897:
                    obj3 = C0026.m329() > 0 ? "ۤۧۤ" : "ۢۨۡ";
                    break;
                case 5241:
                    if (C0025.m226() <= 0) {
                        C0033.m609();
                        if (C0026.m329() <= 0) {
                            C0024.m165xf0c433e8();
                            key = keyM32;
                        } else {
                            obj3 = "ۦۢ۟";
                            key = keyM32;
                        }
                    } else if (C0025.m186() < 0) {
                        obj3 = "ۣۢۡ";
                    }
                    break;
                case 5345:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                    } else {
                        obj3 = "ۧ۠ۤ";
                    }
                    break;
                case 6210:
                    strM610 = C0032.m560();
                    if (C0033.m706() <= 0) {
                        key = null;
                    } else {
                        obj3 = "ۡۥ۠";
                        key = null;
                    }
                    break;
                case 6276:
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                    } else {
                        obj3 = "۠۠ۢ";
                    }
                    break;
                case 6299:
                    obj3 = "ۡۢ۠";
                    break;
                case 6651:
                    obj3 = "ۣۧۨ";
                    break;
                case 7204:
                    String strM611 = C0033.m610();
                    if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                        strM610 = strM611;
                        key = keyM32;
                        obj3 = "ۡۢۤ";
                    } else {
                        strM610 = strM611;
                        key = keyM32;
                        obj3 = "ۡۧۥ";
                    }
                    break;
                case 7615:
                    if (C0033.m609() >= 0) {
                        C0024.m138();
                        obj3 = "ۣۡ";
                    } else if (C0032.m436() <= 0) {
                        C0032.m436();
                    } else {
                        obj3 = "۠۠ۢ";
                    }
                    break;
                case 26400:
                    if (C0025.m186() < 0) {
                        obj3 = "ۧۥ";
                    }
                    break;
                case 26444:
                    obj3 = C0024.m165xf0c433e8() <= 0 ? "ۣۧ" : "۠ۤ";
                    break;
                case 27429:
                    if (C0024.m138() <= 0) {
                        C0025.m226();
                        if (C0026.m329() <= 0) {
                            C0033.m706();
                        } else {
                            obj3 = "ۤۡۢ";
                        }
                    } else {
                        obj3 = "۠ۡۥ";
                    }
                    break;
                case 27456:
                    strM610 = C0033.m610();
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                    } else {
                        obj3 = "ۦۣ۟";
                    }
                    break;
                case 27496:
                    strM610 = C0025.m288();
                    if (C0026.m329() > 0) {
                        obj3 = "۠۠ۨ";
                    }
                    break;
                case 27533:
                    if (C0024.m165xf0c433e8() <= 0) {
                    }
                    break;
                case 27566:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                        obj3 = "ۧۢۡ";
                    } else {
                        obj3 = "۟ۢۧ";
                    }
                    break;
                case 27586:
                    if (C0025.m186() >= 0) {
                        keyM32 = key2;
                        strM610 = str;
                    } else {
                        obj3 = "ۧۡۤ";
                        keyM32 = key2;
                        strM610 = str;
                    }
                    break;
                case 27596:
                    if (C0032.m436() <= 0) {
                        strM610 = strM709;
                    } else {
                        obj3 = "ۣ۟ۨ";
                        strM610 = strM709;
                    }
                    break;
                case 28461:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                    } else {
                        obj3 = "ۣۡ۟";
                    }
                    break;
                case 28487:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj3 = "ۥۣ";
                    }
                    break;
                case 28552:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj3 = "ۥۣۤ";
                    }
                    break;
                case 28590:
                    obj3 = "ۣۡۤ";
                    break;
                case 1733124:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0026.m329();
                        obj3 = "ۢۢ";
                    } else {
                        obj3 = "ۥ۟ۡ";
                    }
                    break;
                case 1733144:
                    strM610 = C0032.m489();
                    obj3 = "۠ۤ۟";
                    break;
                case 1733178:
                    break;
                case 1733286:
                    if (C0025.m186() < 0) {
                        obj3 = "ۣۢۡ";
                    }
                    break;
                case 1733287:
                    obj3 = C0033.m706() <= 0 ? "ۢ۠" : "ۣۣۥ";
                    break;
                case 1733318:
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                    } else {
                        obj3 = "ۧ۟۟";
                    }
                    break;
                case 1733895:
                    if (C0033.m609() >= 0) {
                        strM610 = C0033.m630();
                        obj3 = "ۦۣۦ";
                    } else if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        obj3 = "ۧۤۡ";
                    }
                    break;
                default:
                    break;
            }
            return key;
        }
    }

    /* JADX WARN: Code duplicated, block: B:267:0x00b6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:269:0x0298 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:270:0x0293 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:271:0x02c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:272:0x02bd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:273:0x02d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:274:0x02ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:275:0x02e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:277:0x02f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:278:0x0317 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:279:0x0312 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:280:0x0322 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:281:0x0335 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:282:0x032d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:316:0x0307 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:357:0x000f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:362:0x000f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:366:0x000f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:370:0x000f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:406:0x000f A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:40:0x00ad. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0017. Please report as an issue. */
    /* JADX INFO: renamed from: ⁤⁤⁠⁤⁤, reason: not valid java name and contains not printable characters */
    public static Cipher m37(Object obj) {
        String strM319x45eebee0 = null;
        Cipher cipher = null;
        Cipher cipherM38 = null;
        String strM67 = null;
        String strM294 = null;
        int iM479 = 0;
        String strM606 = null;
        Cipher cipher2 = null;
        Cipher cipher3 = null;
        String strM296 = null;
        Object obj2 = "ۣۣۡ";
        while (true) {
            switch (C0033.m669(obj2) ^ 1749634) {
                case 68:
                    obj2 = "ۨۥۧ";
                    break;
                case 95:
                case 390:
                case MysqlErrorNumbers.ER_GRANT_WRONG_HOST_OR_USER /* 1145 */:
                case 2115:
                case 2214:
                case 2889:
                case 3105:
                case 3936:
                case 6562:
                case 6599:
                case 7175:
                case 30692:
                case 31496:
                case 1732128:
                case 1732284:
                    obj2 = "ۧۡ۟";
                    break;
                case 97:
                    obj2 = "ۣۢۧ";
                    strM606 = strM67;
                    break;
                case 234:
                    if (C0033.m706() > 0) {
                        C0025.m186();
                        obj2 = "۟ۨۨ";
                    } else {
                        obj2 = "ۡۧ۠";
                    }
                    break;
                case 478:
                    cipherM38 = cipherM38;
                    obj2 = "۟ۢۡ";
                    break;
                case MysqlErrorNumbers.ER_FILE_USED /* 1027 */:
                    strM296 = C0025.m296();
                    if (C0025.m186() >= 0) {
                        C0024.m165xf0c433e8();
                        obj2 = "ۡۤۥ";
                    } else {
                        obj2 = "ۡۡ۟";
                    }
                    break;
                case MysqlErrorNumbers.ER_WRONG_SUM_SELECT /* 1057 */:
                    if (C0032.m436() > 0) {
                        obj2 = "ۡۦۥ";
                    }
                    break;
                case MysqlErrorNumbers.ER_CANT_FIND_DL_ENTRY /* 1127 */:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj2 = "۟ۦۡ";
                    }
                    break;
                case MysqlErrorNumbers.ER_SYNTAX_ERROR /* 1149 */:
                    if (C0026.m329() <= 0) {
                        obj2 = "ۨۦۦ";
                        cipher2 = null;
                    } else {
                        obj2 = "۠۟ۦ";
                        cipher2 = null;
                    }
                    break;
                case 2049:
                    if (C0024.m138() >= 0) {
                        if (C0025.m237() < 0) {
                            strM294 = C0025.m294();
                            if (C0025.m186() >= 0) {
                                C0024.m165xf0c433e8();
                            } else {
                                obj2 = "ۤۨۤ";
                            }
                        } else {
                            obj2 = "ۧۡ۟";
                        }
                    } else if (C0033.m706() > 0) {
                        obj2 = "ۡۧۤ";
                    }
                    break;
                case 2077:
                    obj2 = "ۨۥۨ";
                    break;
                case 2146:
                    obj2 = "ۤۡۦ";
                    strM606 = strM294;
                    break;
                case 2187:
                    obj2 = "۠ۢۢ";
                    break;
                case 3079:
                    obj2 = "ۧۧۥ";
                    strM606 = strM319x45eebee0;
                    cipher2 = null;
                    break;
                case 3265:
                    obj2 = C0024.m165xf0c433e8() > 0 ? "ۢۦۣ" : "ۣۡ۠";
                    break;
                case 3945:
                    strM606 = C0032.m457();
                    if (C0025.m186() < 0) {
                        obj2 = "ۥۦ";
                    }
                    break;
                case 3947:
                    if (C0025.m237() >= 0) {
                        strM319x45eebee0 = C0025.m319x45eebee0();
                        if (C0025.m186() < 0) {
                            obj2 = "ۥۧۧ";
                        }
                    } else {
                        obj2 = "۟ۡۢ";
                    }
                    break;
                case 5464:
                    if (C0033.m706() > 0) {
                        obj2 = "ۥۨۦ";
                    }
                    break;
                case 5468:
                    if (C0032.m436() > 0) {
                        obj2 = "ۥۢۨ";
                    }
                    break;
                case 5470:
                    switch (((iM479 ^ (-1)) & 1750726) | ((-1750727) & iM479)) {
                        case 88:
                            if (C0033.m706() > 0) {
                                obj2 = "ۡۧ۠";
                            } else {
                                C0025.m186();
                                obj2 = "۟ۨۨ";
                            }
                            break;
                        case MysqlErrorNumbers.ER_TOO_LONG_BODY /* 1437 */:
                            obj2 = "ۨۥۨ";
                            break;
                        case MysqlErrorNumbers.ER_WRONG_SIZE_NUMBER /* 1531 */:
                        case 4443:
                            if (C0032.m436() > 0) {
                                obj2 = "ۥۢۨ";
                            }
                            break;
                        case 2255:
                            if (C0033.m706() > 0) {
                                obj2 = "ۤۥۤ";
                            }
                            break;
                        case 2274:
                            if (C0025.m186() < 0) {
                            }
                            break;
                        case 3207:
                            if (C0033.m706() > 0) {
                                obj2 = "ۡۧۤ";
                            }
                            break;
                        case 4153:
                            if (C0026.m329() > 0) {
                                obj2 = "ۦۤ۟";
                            } else {
                                C0026.m329();
                            }
                            break;
                        case 4583:
                            if (C0025.m186() < 0) {
                                obj2 = "ۣۨ۠";
                            } else {
                                C0025.m186();
                                obj2 = "ۣۣ";
                            }
                            break;
                        case 7449:
                            obj2 = "ۦۥۣ";
                            break;
                        case 29541:
                            if (C0024.m165xf0c433e8() > 0) {
                            }
                            break;
                        default:
                            if (C0024.m165xf0c433e8() > 0) {
                                obj2 = "۟ۦۡ";
                            }
                            break;
                    }
                    break;
                case 5497:
                    if (C0025.m186() < 0) {
                        obj2 = "ۥۢ۟";
                    }
                    break;
                case 5543:
                    String strM715 = C0033.m715();
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0025.m186();
                        strM606 = strM715;
                        cipher3 = cipherM38;
                        obj2 = "ۣۦ۟";
                    } else {
                        strM606 = strM715;
                        cipher3 = cipherM38;
                        obj2 = "ۨۧ۟";
                    }
                    break;
                case 5570:
                    strM606 = C0033.m581();
                    obj2 = "ۣۣۧ";
                    break;
                case 5596:
                    String strM312 = C0025.m312();
                    if (C0032.m436() <= 0) {
                        C0025.m186();
                        strM606 = strM312;
                        cipher3 = cipherM38;
                    } else {
                        obj2 = "ۦ۟ۦ";
                        strM606 = strM312;
                        cipher3 = cipherM38;
                    }
                    break;
                case 6213:
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                    } else {
                        obj2 = "ۤۢۢ";
                    }
                    break;
                case 6431:
                    obj2 = C0025.m186() >= 0 ? "ۦۤۥ" : "ۤۧۤ";
                    break;
                case 6563:
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                    } else {
                        obj2 = "ۣۣۡ";
                    }
                    break;
                case 6649:
                    if (C0026.m329() > 0) {
                        C0026.m329();
                    } else {
                        obj2 = "ۦۤ۟";
                    }
                    break;
                case 6809:
                    if (C0033.m706() > 0) {
                        obj2 = "ۢۤ۟";
                    }
                    break;
                case 6813:
                    obj2 = "ۦۤۢ";
                    break;
                case 7229:
                    if (C0033.m706() <= 0) {
                        cipher2 = null;
                        cipher3 = null;
                    } else {
                        obj2 = "ۧۤۤ";
                        cipher2 = null;
                        cipher3 = null;
                    }
                    break;
                case 7269:
                    obj2 = C0025.m186() < 0 ? "ۢۥۨ" : "ۥۢۦ";
                    break;
                case 7292:
                    String strM457 = C0032.m457();
                    if (C0025.m186() >= 0) {
                        strM606 = strM457;
                        cipher = cipher3;
                    } else {
                        obj2 = "ۦۧۧ";
                        strM606 = strM457;
                        cipher = cipher3;
                    }
                    break;
                case 7559:
                    obj2 = "۟ۡۢ";
                    break;
                case 7581:
                    if (C0033.m706() > 0) {
                        obj2 = "ۡۧۤ";
                    }
                    break;
                case 7641:
                    if (C0025.m186() < 0) {
                        C0025.m186();
                        obj2 = "ۣۣ";
                    } else {
                        obj2 = "ۣۨ۠";
                    }
                    break;
                case 7650:
                    String strM261 = C0025.m261();
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                        strM606 = strM261;
                        obj2 = "ۣ۠ۦ";
                    } else {
                        strM606 = strM261;
                        obj2 = "ۧۥۧ";
                    }
                    break;
                case 7672:
                    if (C0033.m596() > 0) {
                        strM606 = C0025.m296();
                        if (C0024.m165xf0c433e8() <= 0) {
                            C0025.m186();
                        } else {
                            obj2 = "ۣۨۨ";
                        }
                    } else {
                        obj2 = "ۧۡ۟";
                    }
                    break;
                case 7676:
                    if (C0033.m596() <= 0) {
                        strM606 = C0033.m606();
                        if (C0025.m186() >= 0) {
                            C0033.m706();
                        } else {
                            obj2 = "۠ۦۣ";
                        }
                    } else if (C0032.m436() > 0) {
                        obj2 = "ۡۦۥ";
                    }
                    break;
                case 28806:
                    if (C0024.m138() <= 0) {
                        C0033.m609();
                        strM67 = C0024.m67();
                        if (C0024.m165xf0c433e8() <= 0) {
                            C0032.m436();
                        } else {
                            obj2 = "ۢۤۥ";
                        }
                    } else {
                        obj2 = "ۦۤۢ";
                    }
                    break;
                case 28868:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                        cipher2 = cipher;
                    } else {
                        obj2 = "۟ۨۤ";
                        cipher2 = cipher;
                    }
                    break;
                case 29539:
                    if (C0024.m138() > 0) {
                        String strM313 = C0025.m313();
                        if (C0025.m186() >= 0) {
                            C0024.m165xf0c433e8();
                            strM606 = strM313;
                            obj2 = "ۦۣۤ";
                        } else {
                            strM606 = strM313;
                            obj2 = "ۣ۟ۧ";
                        }
                    } else {
                        obj2 = "ۧۡ۟";
                    }
                    break;
                case 29542:
                    strM606 = C0032.m551();
                    if (C0026.m329() <= 0) {
                        C0033.m706();
                    } else {
                        obj2 = "ۧ۠ۡ";
                    }
                    break;
                case 29647:
                    if (C0026.m329() > 0) {
                        obj2 = "ۣۧ۟";
                    }
                    break;
                case 29831:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                    } else {
                        obj2 = "ۢ۠";
                    }
                    break;
                case 30501:
                    obj2 = "ۧۡ۟";
                    strM606 = strM296;
                    break;
                case 30539:
                    obj2 = "ۧۢۡ";
                    break;
                case 30634:
                    if (C0024.m165xf0c433e8() <= 0) {
                        C0024.m165xf0c433e8();
                    } else {
                        obj2 = "ۣۡ۟";
                    }
                    break;
                case 30663:
                    iM479 = C0032.m479(strM606);
                    if (C0024.m165xf0c433e8() > 0) {
                        obj2 = "۟ۦۣ";
                    }
                    break;
                case 31497:
                    break;
                case 31499:
                    if (C0033.m706() > 0) {
                        obj2 = "ۤۥۤ";
                    }
                    break;
                case 31554:
                    if (C0025.m186() >= 0) {
                        C0025.m186();
                    } else {
                        obj2 = "ۤ۟ۦ";
                    }
                    break;
                case 31585:
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                    } else {
                        obj2 = "ۢۥۧ";
                    }
                    break;
                case 31687:
                    cipherM38 = m38((application5) obj);
                    if (C0024.m138() <= 0) {
                        C0024.m138();
                        if (C0033.m706() > 0) {
                            obj2 = "۟۠ۦ";
                        }
                    } else {
                        cipherM38 = cipherM38;
                        obj2 = "۟ۢۡ";
                    }
                    break;
                case 31719:
                    obj2 = "ۦۥۣ";
                    break;
                case 1732131:
                    obj2 = "ۣ۠ۨ";
                    break;
                default:
                    break;
            }
            return cipher2;
        }
    }

    /* JADX INFO: renamed from: 处女膜没有文化似的了啊, reason: contains not printable characters */
    public static Cipher m38(Object obj) {
        Object obj2 = "ۤۤۥ";
        Cipher cipher = null;
        Cipher cipher2 = null;
        while (true) {
            switch (C0033.m669(obj2) ^ 1754414) {
                case 2:
                    cipher2 = ((application5) obj).muhua7;
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                    } else {
                        obj2 = "ۣۤۧ";
                        continue;
                    }
                    break;
                case 235:
                    break;
                case 25239:
                    if (C0032.m436() <= 0) {
                        C0026.m329();
                    } else {
                        obj2 = "ۤۤۥ";
                        continue;
                    }
                    break;
                case 27313:
                    return cipher;
                case 28333:
                case 32554:
                    if (C0033.m706() > 0) {
                        obj2 = "ۡۨۦ";
                    } else {
                        continue;
                    }
                    break;
                case 29483:
                    if (C0025.m186() < 0) {
                        obj2 = "۟ۥ";
                    } else {
                        continue;
                    }
                    break;
                case 32587:
                    if (C0024.m165xf0c433e8() > 0) {
                        obj2 = C0024.m165xf0c433e8() <= 0 ? "۟۠ۥ" : "ۧ۠ۥ";
                    }
                    break;
                case 32688:
                    obj2 = "ۤۡۡ";
                    continue;
                case 32750:
                    obj2 = "ۡۨۦ";
                    cipher = cipher2;
                    continue;
                case 1711816:
                    if (C0024.m165xf0c433e8() <= 0) {
                        obj2 = "ۢۤۥ";
                        cipher = null;
                    } else {
                        obj2 = "ۤۦ۠";
                        cipher = null;
                        continue;
                    }
                    break;
                default:
                    continue;
            }
            if (C0024.m165xf0c433e8() <= 0) {
                C0033.m706();
                obj2 = "ۤۨ";
            } else {
                obj2 = "ۣ۟ۡ";
            }
        }
    }

    /* JADX INFO: renamed from: 玉儿你要杀了哥哥吗呜, reason: contains not printable characters */
    public static String m39() {
        String str = "ۤۨۡ";
        String str2 = null;
        String str3 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 56570) {
                case 219:
                case 1732517:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        str = "ۡۧۢ";
                    } else {
                        str = "ۦۤۨ";
                        continue;
                    }
                    break;
                case 1710365:
                    if (C0026.m329() > 0) {
                        str = "ۡۢ";
                    } else {
                        continue;
                    }
                    break;
                case 1711376:
                    return str2;
                case 1730087:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۣ۟ۧ";
                    }
                    break;
                case 1730226:
                    str = "ۡۧۦ";
                    continue;
                case 1732539:
                    break;
                case 1733498:
                    str = "ۧۦۦ";
                    str2 = null;
                    continue;
                case 1733507:
                    if (C0026.m329() <= 0) {
                        str2 = str3;
                    } else {
                        str = "ۦۤۨ";
                        str2 = str3;
                        continue;
                    }
                    break;
                case 1734200:
                    str = "ۤۨۡ";
                    continue;
                case 1735545:
                    str3 = muhua8;
                    str = "ۡۧ۟";
                    continue;
                default:
                    continue;
            }
            str = "ۣۤۧ";
        }
    }

    /* JADX WARN: Code duplicated, block: B:89:0x00be A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x00b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x00cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x00c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x00e4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x00e0 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x004f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x000e. Please report as an issue. */
    public String muhua6(String str) throws Exception {
        String strM442 = null;
        int iM479 = 0;
        String str2 = "ۤۧۨ";
        String str3 = null;
        String strM443 = null;
        while (true) {
            switch (C0033.m669((Object) str2) ^ 1749857) {
                case 63:
                    if (C0032.m436() <= 0) {
                        C0032.m436();
                    } else {
                        str2 = "۠ۥ";
                    }
                    break;
                case 101:
                case 29028:
                case 1732420:
                case 1732452:
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                        str2 = "ۨ۠ۦ";
                    } else {
                        str2 = "ۣۢ۟";
                    }
                    break;
                case 485:
                    str2 = C0026.m329() > 0 ? "ۦۥۡ" : "ۥۣۢ";
                    break;
                case 489:
                    str2 = "ۢۥۧ";
                    break;
                case MysqlErrorNumbers.ER_WRONG_NAME_FOR_CATALOG /* 1281 */:
                    iM479 = C0032.m479(str3);
                    if (C0026.m329() > 0) {
                        str2 = "۠ۥ۠";
                    }
                    break;
                case MysqlErrorNumbers.ER_WRONG_OBJECT /* 1347 */:
                    if (C0024.m165xf0c433e8() > 0) {
                        str2 = "ۤۧۨ";
                    }
                    break;
                case MysqlErrorNumbers.ER_DIFF_GROUPS_PROC /* 1384 */:
                    str2 = "ۦ۠";
                    break;
                case MysqlErrorNumbers.ER_COALESCE_ONLY_ON_HASH_PARTITION /* 1509 */:
                    str2 = C0024.m138() <= 0 ? "ۣۡۡ" : C0024.m165xf0c433e8() <= 0 ? "ۡ۟ۥ" : "ۤۧ۠";
                    break;
                case 2468:
                    strM443 = C0032.m442();
                    str2 = C0033.m706() <= 0 ? "۠ۡۧ" : "ۨ۠ۤ";
                    break;
                case 2524:
                    strM442 = C0032.m442();
                    str2 = "ۧۦۢ";
                    break;
                case 3429:
                    break;
                case 6145:
                    if (C0026.m329() > 0) {
                        C0032.m436();
                    } else {
                        str2 = "ۣۣۤ";
                    }
                    break;
                case 6170:
                    switch (((iM479 ^ (-1)) & 1751709) | ((-1751710) & iM479)) {
                        case 4162:
                            if (C0026.m329() > 0) {
                                str2 = "ۣۣۤ";
                            } else {
                                C0032.m436();
                            }
                            break;
                        case 30941:
                            if (C0026.m329() > 0) {
                            }
                            break;
                        default:
                            str2 = "ۦ۠";
                            break;
                    }
                    break;
                case 7582:
                    C0033.m596();
                    if (C0025.m186() < 0) {
                        str2 = "ۢۡۧ";
                    }
                    break;
                case 28935:
                    if (C0024.m165xf0c433e8() <= 0) {
                    }
                    break;
                case 30338:
                    if (C0033.m706() <= 0) {
                        str3 = strM442;
                    } else {
                        str2 = "ۢۨۤ";
                        str3 = strM442;
                    }
                    break;
                case 31629:
                    if (C0033.m706() <= 0) {
                        str2 = "ۣۤۧ";
                        str3 = strM443;
                    } else {
                        str2 = "ۣۢ۟";
                        str3 = strM443;
                    }
                    break;
                case 1732571:
                    str2 = C0024.m165xf0c433e8() <= 0 ? "ۨۦ" : "ۡۦ";
                    break;
                default:
                    break;
            }
            return C0024.m45xb49cfe4a(C0033.m612(this, C0033.m718(str)));
        }
    }

    /* JADX WARN: Code duplicated, block: B:67:0x008d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x0086 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x009b A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:29:0x0073. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x000e. Please report as an issue. */
    public byte[] muhua6(byte[] bArr) throws Exception {
        String strM314 = null;
        int iM479 = 0;
        String str = "ۦۣ";
        String str2 = null;
        String strM315 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1749668) {
                case 226:
                    iM479 = C0032.m479(str2);
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                    } else {
                        str = "ۦ۠ۡ";
                    }
                    break;
                case 410:
                    str = "۟ۡۡ";
                    str2 = strM314;
                    break;
                case MysqlErrorNumbers.ER_STACK_OVERRUN /* 1119 */:
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                        str = "۠ۤۢ";
                    } else {
                        str = "۠ۥ۠";
                    }
                    break;
                case 2054:
                    if (C0025.m186() >= 0) {
                        C0032.m436();
                        str2 = strM315;
                    } else {
                        str = "ۣۢ۟";
                        str2 = strM315;
                    }
                    break;
                case 2278:
                    break;
                case 5382:
                    str = "ۦۣ";
                    break;
                case 5415:
                    str = "ۣۧ۟";
                    break;
                case 5531:
                    if (C0033.m706() <= 0) {
                        C0033.m706();
                    } else {
                        str = "ۦۢۢ";
                    }
                    break;
                case 6623:
                case 7171:
                case 29442:
                    str = "ۣۢ۟";
                    break;
                case 7265:
                    if (C0025.m186() < 0) {
                        C0033.m706();
                        str = "ۧۦۢ";
                    } else {
                        str = "ۣۡۧ";
                    }
                    break;
                case 7641:
                    strM314 = C0025.m314();
                    if (C0032.m436() > 0) {
                        str = "ۣۢۧ";
                    }
                    break;
                case 29635:
                    switch (((iM479 ^ (-1)) & 1747748) | ((-1747749) & iM479)) {
                        case 58:
                            if (C0025.m186() < 0) {
                                str = "ۣۤۡ";
                            } else {
                                C0033.m706();
                            }
                            break;
                        case 25254:
                            if (C0025.m186() < 0) {
                                str = "ۣۡۧ";
                            } else {
                                C0033.m706();
                                str = "ۧۦۢ";
                            }
                            break;
                        default:
                            str = "ۣۧ۟";
                            break;
                    }
                    break;
                case 30509:
                    if (C0025.m186() < 0) {
                        C0033.m706();
                    } else {
                        str = "ۣۤۡ";
                    }
                    break;
                case 1732121:
                    strM315 = C0025.m314();
                    str = "ۤۦۤ";
                    break;
                default:
                    break;
            }
            return C0033.m586(C0032.m482(this), bArr);
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0079 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x0075 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0041. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x000e. Please report as an issue. */
    public String muhua7(String str) throws Exception {
        String strM711 = null;
        int iM479 = 0;
        String str2 = "ۡۧ۠";
        String str3 = null;
        String strM712 = null;
        while (true) {
            switch (C0033.m669((Object) str2) ^ 1751497) {
                case 896:
                    break;
                case 1004:
                    str2 = "ۡۧ۠";
                    break;
                case MysqlErrorNumbers.ER_TOO_MANY_KEY_PARTS /* 1070 */:
                    if (C0032.m436() <= 0) {
                        C0033.m706();
                    } else {
                        str2 = "ۥۣۢ";
                    }
                    break;
                case MysqlErrorNumbers.ER_TOO_LONG_KEY /* 1071 */:
                case 2824:
                case 4683:
                    str2 = "ۦۨۦ";
                    break;
                case MysqlErrorNumbers.ER_WRONG_DB_NAME /* 1102 */:
                    if (C0032.m436() > 0) {
                        C0033.m706();
                    } else {
                        str2 = "ۣ۟ۨ";
                    }
                    break;
                case 3976:
                    switch (((iM479 ^ (-1)) & 1751524) | ((-1751525) & iM479)) {
                        case 5881:
                            str2 = "ۣۤۨ";
                            break;
                        case 28936:
                            if (C0032.m436() > 0) {
                                str2 = "ۣ۟ۨ";
                            } else {
                                C0033.m706();
                            }
                            break;
                        default:
                            str2 = "ۦۥۦ";
                            break;
                    }
                    break;
                case 4037:
                    strM711 = C0033.m711();
                    if (C0026.m329() > 0) {
                        str2 = "ۨۧ";
                    }
                    break;
                case 4042:
                    str2 = "ۦۨۦ";
                    str3 = strM712;
                    break;
                case 5811:
                    strM712 = C0033.m711();
                    str2 = "ۣ۟۟";
                    break;
                case 7766:
                    str2 = "ۦۥۦ";
                    break;
                case 28802:
                    str2 = "ۣۤۨ";
                    break;
                case 31661:
                    iM479 = C0032.m479(str3);
                    str2 = "ۣۡ۟";
                    break;
                case 31694:
                    str2 = "۠ۥۧ";
                    break;
                case 1729846:
                    if (C0026.m329() <= 0) {
                        C0026.m329();
                        str3 = strM711;
                    } else {
                        str2 = "ۥۢۤ";
                        str3 = strM711;
                    }
                    break;
                default:
                    break;
            }
            return new String(C0032.m432(this, C0032.m552(str)));
        }
    }

    /* JADX WARN: Code duplicated, block: B:114:0x0008 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x00e7 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0028. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0010. Please report as an issue. */
    public byte[] muhua7(byte[] bArr) throws Exception {
        String strM54 = null;
        String str = "ۦۥۤ";
        int iM479 = 0;
        String str2 = null;
        String strM55 = null;
        String strM697 = null;
        while (true) {
            switch (C0033.m669((Object) str) ^ 1752678) {
                case 2:
                case 2233:
                case 4313:
                case 5442:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۡۧۨ";
                    }
                    break;
                case 897:
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                    } else {
                        str = "ۥۦۥ";
                    }
                    break;
                case MysqlErrorNumbers.ER_CANT_CREATE_TABLE /* 1005 */:
                    str = "۟ۨۢ";
                    break;
                case MysqlErrorNumbers.ER_NO_PERMISSION_TO_CREATE_USER /* 1211 */:
                    str = C0026.m329() <= 0 ? "ۢۡ۟" : "۠ۢۦ";
                    break;
                case 2156:
                    str = "ۤۨۡ";
                    str2 = strM697;
                    break;
                case 2215:
                    if (C0025.m237() < 0) {
                        str = "۟ۨۢ";
                    } else if (C0032.m436() > 0) {
                        str = "ۢۢۡ";
                    }
                    break;
                case 2245:
                    switch (((iM479 ^ (-1)) & 1750537) | ((-1750538) & iM479)) {
                        case 2990:
                            str = "ۢ۟ۡ";
                            break;
                        case 7479:
                            if (C0024.m165xf0c433e8() > 0) {
                                str = "ۣۥۣ";
                            }
                            break;
                        default:
                            str = "۟ۨۥ";
                            break;
                    }
                    break;
                case 3106:
                    break;
                case 3271:
                    C0024.m138();
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۦۦۢ";
                    }
                    break;
                case 4226:
                    if (C0025.m186() >= 0) {
                        C0033.m706();
                        str2 = strM55;
                    } else {
                        str = "ۡۧۨ";
                        str2 = strM55;
                    }
                    break;
                case 4580:
                    iM479 = C0032.m479(str2);
                    if (C0033.m706() <= 0) {
                        C0026.m329();
                    } else {
                        str = "ۣۤۤ";
                    }
                    break;
                case 5754:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                        str = "۠ۥۥ";
                    } else {
                        str = "ۣۦۢ";
                    }
                    break;
                case 5759:
                    strM54 = C0024.m54();
                    if (C0026.m329() <= 0) {
                        C0032.m436();
                        str = "ۥۣ۟";
                    } else {
                        str = "ۣۤ";
                    }
                    break;
                case 6407:
                    str = "۟ۨۥ";
                    break;
                case 6510:
                    if (C0024.m165xf0c433e8() > 0) {
                        str = "ۣۥۣ";
                    }
                    break;
                case 30469:
                    if (C0032.m436() <= 0) {
                        C0024.m165xf0c433e8();
                        str = "ۣۧ۟";
                    } else {
                        str = "ۦۥۤ";
                    }
                    break;
                case 30569:
                    str = "ۢ۟ۡ";
                    break;
                case 31812:
                    strM697 = C0033.m697();
                    str = "ۣ۟ۦ";
                    break;
                case 31843:
                    strM55 = C0024.m54();
                    if (C0033.m706() > 0) {
                        str = "ۡۢۥ";
                    }
                    break;
                case 1729031:
                    if (C0033.m706() <= 0) {
                        C0025.m186();
                        str = "ۨ۟۠";
                        str2 = strM54;
                    } else {
                        str = "ۥۢۤ";
                        str2 = strM54;
                    }
                    break;
                default:
                    break;
            }
            return C0033.m586(C0033.m576MHHX(this), bArr);
        }
    }
}
