package com.mysql.fabric.proto.xmlrpc;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* JADX INFO: loaded from: classes.dex */
public class DigestAuthentication {
    private static Random random = new Random();

    public static String getChallengeHeader(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setDoOutput(true);
        httpURLConnection.getOutputStream().close();
        try {
            httpURLConnection.getInputStream().close();
            return null;
        } catch (IOException e) {
            if (401 == httpURLConnection.getResponseCode()) {
                String headerField = httpURLConnection.getHeaderField("WWW-Authenticate");
                if (headerField == null || "".equals(headerField)) {
                    return null;
                }
                return headerField;
            }
            if (400 == httpURLConnection.getResponseCode()) {
                throw new IOException("Fabric returns status 400. If authentication is disabled on the Fabric node, omit the `fabricUsername' and `fabricPassword' properties from your connection.");
            }
            throw e;
        }
    }

    public static String calculateMD5RequestDigest(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        return digestMD5(checksumMD5(str2 + ":" + str4 + ":" + str3), str5 + ":" + str6 + ":" + str7 + ":" + str8 + ":" + checksumMD5("POST:" + str));
    }

    private static String checksumMD5(String str) {
        try {
            return hexEncode(MessageDigest.getInstance("MD5").digest(str.getBytes()));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Unable to create MD5 instance", e);
        }
    }

    private static String digestMD5(String str, String str2) {
        return checksumMD5(str + ":" + str2);
    }

    private static String hexEncode(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b)));
        }
        return sb.toString();
    }

    public static String serializeDigestResponse(Map<String, String> map) {
        StringBuilder sb = new StringBuilder("Digest ");
        boolean z = false;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (z) {
                sb.append(", ");
            } else {
                z = true;
            }
            sb.append(entry.getKey());
            sb.append("=");
            sb.append(entry.getValue());
        }
        return sb.toString();
    }

    public static Map<String, String> parseDigestChallenge(String str) {
        if (!str.startsWith("Digest ")) {
            throw new IllegalArgumentException("Header is not a digest challenge");
        }
        String strSubstring = str.substring(7);
        HashMap map = new HashMap();
        for (String str2 : strSubstring.split(",\\s*")) {
            String[] strArrSplit = str2.split("=");
            map.put(strArrSplit[0], strArrSplit[1].replaceAll("^\"(.*)\"$", "$1"));
        }
        return map;
    }

    public static String generateCnonce(String str, String str2) {
        byte[] bArr = new byte[8];
        random.nextBytes(bArr);
        for (int i = 0; i < 8; i++) {
            bArr[i] = (byte) ((bArr[i] % 95) + 32);
        }
        try {
            return hexEncode(MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1).digest(String.format("%s:%s:%s:%s", str, str2, new Date().toGMTString(), new String(bArr)).getBytes()));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Unable to create SHA-1 instance", e);
        }
    }

    private static String quoteParam(String str) {
        if (str.contains("\"") || str.contains("'")) {
            throw new IllegalArgumentException("Invalid character in parameter");
        }
        return "\"" + str + "\"";
    }

    public static String generateAuthorizationHeader(Map<String, String> map, String str, String str2) {
        String str3 = map.get("nonce");
        String strGenerateCnonce = generateCnonce(str3, "00000001");
        String str4 = map.get("realm");
        String str5 = map.get("opaque");
        String strCalculateMD5RequestDigest = calculateMD5RequestDigest("/RPC2", str, str2, str4, str3, "00000001", strGenerateCnonce, "auth");
        HashMap map2 = new HashMap();
        map2.put("algorithm", "MD5");
        map2.put("username", quoteParam(str));
        map2.put("realm", quoteParam(str4));
        map2.put("nonce", quoteParam(str3));
        map2.put("uri", quoteParam("/RPC2"));
        map2.put("qop", "auth");
        map2.put("nc", "00000001");
        map2.put("cnonce", quoteParam(strGenerateCnonce));
        map2.put("response", quoteParam(strCalculateMD5RequestDigest));
        map2.put("opaque", quoteParam(str5));
        return serializeDigestResponse(map2);
    }
}
