package com.tencent.qnet.encrypt;

import android.util.Base64;
import android.util.Log;
import com.tencent.qnet.global.GlobalSettings;
import java.security.SecureRandom;
import java.util.zip.CRC32;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class CommonEncryption {
    public static String base64Encode(byte[] bArr) {
        return Base64.encodeToString(bArr, 0);
    }

    public static byte[] base64Decode(String str) {
        return Base64.decode(str, 0);
    }

    public static byte[] generate128BitsKey() {
        try {
            byte[] bArr = new byte[20];
            SecureRandom.getInstance("SHA1PRNG").nextBytes(bArr);
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String aes128EcbEncrypt(byte[] bArr, String str) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, secretKeySpec);
            return base64Encode(cipher.doFinal(str.getBytes()));
        } catch (Exception e) {
            Log.e(GlobalSettings.LOG_TAG, "aes encode exception : " + e.getMessage());
            return null;
        }
    }

    public static String aes128EcbDecrypt(byte[] bArr, String str) {
        try {
            byte[] bArrBase64Decode = base64Decode(str);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(2, secretKeySpec);
            return new String(cipher.doFinal(bArrBase64Decode));
        } catch (Exception e) {
            Log.e(GlobalSettings.LOG_TAG, "aes decode exception : " + e.getMessage());
            return null;
        }
    }

    public static long getCrc32(String str) {
        CRC32 crc32 = new CRC32();
        crc32.update(str.getBytes());
        return crc32.getValue();
    }
}
