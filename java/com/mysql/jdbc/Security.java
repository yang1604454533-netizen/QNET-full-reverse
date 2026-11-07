package com.mysql.jdbc;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* JADX INFO: loaded from: classes.dex */
public class Security {
    private static final char PVERSION41_CHAR = '*';
    private static final int SHA1_HASH_SIZE = 20;

    private static int charVal(char c) {
        if (c < '0' || c > '9') {
            return ((c < 'A' || c > 'Z') ? c - 'a' : c - 'A') + 10;
        }
        return c - '0';
    }

    static byte[] createKeyFromOldPassword(String str) throws NoSuchAlgorithmException {
        return getBinaryPassword(getSaltFromPassword(makeScrambledPassword(str)), false);
    }

    static byte[] getBinaryPassword(int[] iArr, boolean z) throws NoSuchAlgorithmException {
        byte[] bArr = new byte[20];
        int i = 0;
        if (z) {
            int i2 = 0;
            while (i < 4) {
                int i3 = iArr[i];
                int i4 = i2;
                int i5 = 3;
                while (i5 >= 0) {
                    bArr[i4] = (byte) (i3 & 255);
                    i3 >>= 8;
                    i5--;
                    i4++;
                }
                i++;
                i2 = i4;
            }
            return bArr;
        }
        int i6 = 0;
        for (int i7 = 0; i7 < 2; i7++) {
            int i8 = iArr[i7];
            for (int i9 = 3; i9 >= 0; i9--) {
                bArr[i9 + i6] = (byte) (i8 % 256);
                i8 >>= 8;
            }
            i6 += 4;
        }
        MessageDigest messageDigest = MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1);
        messageDigest.update(bArr, 0, 8);
        return messageDigest.digest();
    }

    private static int[] getSaltFromPassword(String str) {
        int i;
        int[] iArr = new int[6];
        if (str == null || str.length() == 0) {
            return iArr;
        }
        if (str.charAt(0) == '*') {
            String strSubstring = str.substring(1, 5);
            for (int i2 = 0; i2 < 4; i2++) {
                charVal(strSubstring.charAt(i2));
            }
            return iArr;
        }
        int length = str.length();
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 = i) {
            i = i4;
            int i5 = 0;
            int iCharVal = 0;
            while (i5 < 8) {
                iCharVal = (iCharVal << 4) + charVal(str.charAt(i));
                i5++;
                i++;
            }
            iArr[i3] = iCharVal;
            i3++;
        }
        return iArr;
    }

    private static String longToHex(long j) {
        String hexString = Long.toHexString(j);
        int length = hexString.length();
        if (length < 8) {
            int i = 8 - length;
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < i; i2++) {
                sb.append("0");
            }
            sb.append(hexString);
            return sb.toString();
        }
        return hexString.substring(0, 8);
    }

    static String makeScrambledPassword(String str) throws NoSuchAlgorithmException {
        long[] jArrHashPre41Password = Util.hashPre41Password(str);
        return longToHex(jArrHashPre41Password[0]) + longToHex(jArrHashPre41Password[1]);
    }

    public static void xorString(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        int length = bArr3.length;
        for (int i2 = 0; i2 < i; i2++) {
            bArr2[i2] = (byte) (bArr[i2] ^ bArr3[i2 % length]);
        }
    }

    static byte[] passwordHashStage1(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1);
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\t') {
                sb.append(cCharAt);
            }
        }
        return messageDigest.digest(StringUtils.getBytes(sb.toString()));
    }

    static byte[] passwordHashStage2(byte[] bArr, byte[] bArr2) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1);
        messageDigest.update(bArr2, 0, 4);
        messageDigest.update(bArr, 0, 20);
        return messageDigest.digest();
    }

    public static byte[] scramble411(String str, String str2, String str3) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest messageDigest = MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1);
        byte[] bArrDigest = messageDigest.digest((str3 == null || str3.length() == 0) ? StringUtils.getBytes(str) : StringUtils.getBytes(str, str3));
        messageDigest.reset();
        byte[] bArrDigest2 = messageDigest.digest(bArrDigest);
        messageDigest.reset();
        messageDigest.update(StringUtils.getBytes(str2, "ASCII"));
        messageDigest.update(bArrDigest2);
        byte[] bArrDigest3 = messageDigest.digest();
        int length = bArrDigest3.length;
        for (int i = 0; i < length; i++) {
            bArrDigest3[i] = (byte) (bArrDigest3[i] ^ bArrDigest[i]);
        }
        return bArrDigest3;
    }

    private Security() {
    }
}
