package com.tencent.qnet.encrypt;

import java.util.Random;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.math.ec.Tnaf;

/* JADX INFO: loaded from: classes.dex */
public class CustomEncryption {
    public static byte[] getAESKey() {
        byte[] bArr = {-25, 72, 6, 41, 36, 44, -114, -7, -22, -14, 112, PSSSigner.TRAILER_IMPLICIT, 27, 116, 27, 52, 26, 35, 31, 110, 21, 47, Tnaf.POW_2_WIDTH, 100, 22, 106, 30, 124, 13, -125, -92, 108, 97, -34, -64, 39, -93, -104, -35, -7};
        byte[] bArr2 = new byte[16];
        byte b = 57;
        int i = 0;
        for (int i2 = 0; i2 < 37; i2++) {
            if (i2 > 10 && i2 < 27) {
                if (i2 % 2 == 0) {
                    bArr[i2] = (byte) ((bArr[i2] ^ 25) & 255);
                } else {
                    bArr[i2] = (byte) ((bArr[i2] ^ 99) & 255);
                }
            }
            bArr[i2] = (byte) ((b ^ bArr[i2]) & 255);
            b = bArr[i2];
            if (i2 > 10 && i2 < 27) {
                bArr2[i] = bArr[i2];
                i++;
            }
        }
        return bArr2;
    }

    public static String getRandom20bytesSalt() {
        String str = "";
        Random random = new Random();
        for (int i = 0; i < 20; i++) {
            str = str + "abcdefghijklkopqrstuwxyzQWERTUYANBVDINHY!@#$%^&*()_+-=<>?,.ABCDREFGHJJKLAETGTGV".charAt(random.nextInt("abcdefghijklkopqrstuwxyzQWERTUYANBVDINHY!@#$%^&*()_+-=<>?,.ABCDREFGHJJKLAETGTGV".length()));
        }
        return str;
    }

    public static String createEncInfoSign(String str, String str2, String str3) {
        return String.format("%X%X", Long.valueOf(CommonEncryption.getCrc32(str + str2 + str3)), Long.valueOf(CommonEncryption.getCrc32(str + str3 + str2 + "_qnet_sign")));
    }
}
