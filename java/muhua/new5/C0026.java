package muhua.new5;

import java.io.ByteArrayOutputStream;

/* JADX INFO: renamed from: muhua.new5.ۛ۠ۘ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public class C0026 {

    /* JADX INFO: renamed from: 你但是不知道我是你父亲, reason: contains not printable characters */
    public static int f9 = 72;

    /* JADX INFO: renamed from: ۦۢ۬, reason: contains not printable characters */
    public static int m329() {
        return 1752656 ^ C0033.m669((Object) "ۥۧ۠");
    }

    /* JADX INFO: renamed from: ۫ۡۗ, reason: not valid java name and contains not printable characters */
    public static String m330(String str) {
        String strM518 = C0032.m518();
        String strM519 = C0032.m518();
        for (int i = 0; i < 15; i++) {
            strM518 = C0024.m52(C0032.m484(C0032.m484(new StringBuffer(), strM518), C0025.m277(i)));
            strM519 = C0024.m52(C0033.m637(C0032.m484(new StringBuffer(), strM519), ((int) (C0025.m219() * ((double) 10))) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0025.m308(str) / 2);
        while (C0025.m308(str) > 0) {
            C0025.m271(byteArrayOutputStream, (C0025.m320x27c43af8(strM518, C0025.m290(str, -2)) << 4) | C0025.m320x27c43af8(strM518, C0025.m290(str, -1)));
        }
        byte[] bArrM267 = C0025.m267(byteArrayOutputStream);
        int length = bArrM267.length;
        int iM308 = C0025.m308(strM519);
        for (int i2 = 0; i2 < length; i2++) {
            bArrM267[i2] = (byte) (bArrM267[i2] ^ C0025.m290(strM519, i2 % iM308));
        }
        return new String(bArrM267);
    }

    /* JADX INFO: renamed from: 你叫花子似的了啊, reason: contains not printable characters */
    public static String m331(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }
}
