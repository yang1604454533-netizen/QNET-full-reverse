package com.tencent.open.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentName;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import com.mysql.jdbc.StatementImpl;
import com.tencent.connect.common.Constants;
import com.tencent.open.SocialConstants;
import com.tencent.open.log.SLog;
import com.tencent.tauth.Tencent;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public class k {
    private static String a = "";
    private static String b = "";
    private static String c = "";
    private static String d = "";
    private static int e = -1;
    private static String f = null;
    private static String g = "0123456789ABCDEF";

    private static char a(int i) {
        int i2 = i & 15;
        return i2 < 10 ? (char) (i2 + 48) : (char) ((i2 - 10) + 97);
    }

    public static Bundle a(String str) {
        Bundle bundle = new Bundle();
        if (str == null) {
            return bundle;
        }
        try {
            for (String str2 : str.split("&")) {
                String[] strArrSplit = str2.split("=");
                if (strArrSplit.length == 2) {
                    bundle.putString(URLDecoder.decode(strArrSplit[0]), URLDecoder.decode(strArrSplit[1]));
                }
            }
            return bundle;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject a(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        if (str != null) {
            for (String str2 : str.split("&")) {
                String[] strArrSplit = str2.split("=");
                if (strArrSplit.length == 2) {
                    try {
                        try {
                            strArrSplit[0] = URLDecoder.decode(strArrSplit[0]);
                            strArrSplit[1] = URLDecoder.decode(strArrSplit[1]);
                        } catch (JSONException e2) {
                            SLog.e("openSDK_LOG.Util", "decodeUrlToJson has exception: " + e2.getMessage());
                        }
                    } catch (Exception unused) {
                    }
                    jSONObject.put(strArrSplit[0], strArrSplit[1]);
                }
            }
        }
        return jSONObject;
    }

    public static Bundle b(String str) {
        try {
            URL url = new URL(str.replace("auth://", "http://"));
            Bundle bundleA = a(url.getQuery());
            bundleA.putAll(a(url.getRef()));
            return bundleA;
        } catch (MalformedURLException unused) {
            return new Bundle();
        }
    }

    public static JSONObject c(String str) {
        try {
            URL url = new URL(str.replace("auth://", "http://"));
            JSONObject jSONObjectA = a((JSONObject) null, url.getQuery());
            a(jSONObjectA, url.getRef());
            return jSONObjectA;
        } catch (MalformedURLException unused) {
            return new JSONObject();
        }
    }

    /* JADX INFO: compiled from: ProGuard */
    public static class a {
        public String a;
        public long b;
        public long c;

        public a(String str, int i) {
            this.a = str;
            this.b = i;
            if (this.a != null) {
                this.c = this.a.length();
            }
        }
    }

    public static JSONObject d(String str) throws JSONException {
        if (str.equals("false")) {
            str = "{value : false}";
        }
        if (str.equals("true")) {
            str = "{value : true}";
        }
        if (str.contains("allback(")) {
            str = str.replaceFirst("[\\s\\S]*allback\\(([\\s\\S]*)\\);[^\\)]*\\z", "$1").trim();
        }
        if (str.contains("online[0]=")) {
            str = "{online:" + str.charAt(str.length() - 2) + "}";
        }
        return new JSONObject(str);
    }

    public static String a() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces != null && networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress()) {
                        return inetAddressNextElement.getHostAddress().toString();
                    }
                }
            }
            return "";
        } catch (SocketException e2) {
            SLog.d("openSDK_LOG.Util", "getUserIp SocketException ", e2);
            return "";
        }
    }

    public static boolean e(String str) {
        return str == null || str.length() == 0;
    }

    private static boolean h(Context context) {
        Signature[] signatureArr;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.tencent.mtt", 64);
            String str = packageInfo.versionName;
            if (h.a(str, "4.3") >= 0 && !str.startsWith("4.4") && (signatureArr = packageInfo.signatures) != null) {
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    messageDigest.update(signatureArr[0].toByteArray());
                    String strA = a(messageDigest.digest());
                    messageDigest.reset();
                    if (strA.equals("d8391a394d4a179e6fe7bdb8a301258b")) {
                        return true;
                    }
                } catch (NoSuchAlgorithmException e2) {
                    SLog.e("openSDK_LOG.Util", "isQQBrowerAvailable has exception: " + e2.getMessage());
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static boolean a(Context context, String str) {
        boolean zH;
        try {
            zH = h(context);
            try {
                if (zH) {
                    a(context, "com.tencent.mtt", "com.tencent.mtt.MainActivity", str);
                } else {
                    a(context, "com.android.browser", "com.android.browser.BrowserActivity", str);
                }
                return true;
            } catch (Exception unused) {
                if (zH) {
                    try {
                        try {
                            try {
                                a(context, "com.android.browser", "com.android.browser.BrowserActivity", str);
                                return true;
                            } catch (Exception unused2) {
                                a(context, "com.android.chrome", "com.google.android.apps.chrome.Main", str);
                                return true;
                            }
                        } catch (Exception unused3) {
                            return false;
                        }
                    } catch (Exception unused4) {
                        a(context, "com.google.android.browser", "com.android.browser.BrowserActivity", str);
                        return true;
                    }
                }
                try {
                    try {
                        a(context, "com.google.android.browser", "com.android.browser.BrowserActivity", str);
                        return true;
                    } catch (Exception unused5) {
                        a(context, "com.android.chrome", "com.google.android.apps.chrome.Main", str);
                        return true;
                    }
                } catch (Exception unused6) {
                    return false;
                }
            }
        } catch (Exception unused7) {
            zH = false;
        }
    }

    private static void a(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(str, str2));
        intent.setAction("android.intent.action.VIEW");
        intent.addFlags(1073741824);
        intent.addFlags(268435456);
        intent.setData(Uri.parse(str3));
        context.startActivity(intent);
    }

    public static String f(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(i(str));
            byte[] bArrDigest = messageDigest.digest();
            if (bArrDigest == null) {
                return str;
            }
            StringBuilder sb = new StringBuilder();
            for (byte b2 : bArrDigest) {
                sb.append(a(b2 >>> 4));
                sb.append(a(b2));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e2) {
            SLog.e("openSDK_LOG.Util", "encrypt has exception: " + e2.getMessage());
            return str;
        }
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [com.tencent.open.utils.k$1] */
    public static void a(final Context context, String str, long j, String str2) {
        final Bundle bundle = new Bundle();
        bundle.putString("appid_for_getting_config", str2);
        bundle.putString("strValue", str2);
        bundle.putString("nValue", str);
        bundle.putString("qver", Constants.SDK_VERSION);
        if (j != 0) {
            bundle.putLong("elt", j);
        }
        new Thread() { // from class: com.tencent.open.utils.k.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    HttpUtils.openUrl2(context, "http://cgi.qplus.com/report/report", Constants.HTTP_GET, bundle);
                } catch (Exception e2) {
                    SLog.e("openSDK_LOG.Util", "reportBernoulli has exception: " + e2.getMessage());
                }
            }
        }.start();
    }

    public static boolean b() {
        return (Environment.getExternalStorageState().equals("mounted") ? Environment.getExternalStorageDirectory() : null) != null;
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b2 : bArr) {
            String string = Integer.toString(b2 & StatementImpl.USES_VARIABLES_UNKNOWN, 16);
            if (string.length() == 1) {
                string = "0" + string;
            }
            sb.append(string);
        }
        return sb.toString();
    }

    public static final String a(Context context) {
        CharSequence applicationLabel;
        if (context == null || (applicationLabel = context.getPackageManager().getApplicationLabel(context.getApplicationInfo())) == null) {
            return null;
        }
        return applicationLabel.toString();
    }

    public static final boolean g(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("http://") || str.startsWith("https://");
    }

    public static boolean h(String str) {
        return str != null && new File(str).exists();
    }

    public static final String a(String str, int i, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = "UTF-8";
        }
        try {
            if (str.getBytes(str2).length <= i) {
                return str;
            }
            int i2 = 0;
            int length = 0;
            while (i2 < str.length()) {
                int i3 = i2 + 1;
                length += str.substring(i2, i3).getBytes(str2).length;
                if (length > i) {
                    String strSubstring = str.substring(0, i2);
                    try {
                        if (TextUtils.isEmpty(str3)) {
                            return strSubstring;
                        }
                        return strSubstring + str3;
                    } catch (Exception e2) {
                        e = e2;
                        str = strSubstring;
                    }
                } else {
                    i2 = i3;
                }
            }
            return str;
        } catch (Exception e3) {
            e = e3;
        }
        SLog.e("openSDK_LOG.Util", "Util.subString has exception: " + e.getMessage());
        return str;
    }

    public static boolean b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return true;
        }
        NetworkInfo[] allNetworkInfo = connectivityManager.getAllNetworkInfo();
        if (allNetworkInfo != null) {
            for (NetworkInfo networkInfo : allNetworkInfo) {
                if (networkInfo.isConnectedOrConnecting()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static Bundle a(String str, String str2, String str3, String str4, String str5, String str6) {
        return a(str, str3, str4, str2, str5, str6, "", "", "", "", "", "");
    }

    public static Bundle a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        Bundle bundle = new Bundle();
        bundle.putString("openid", str);
        bundle.putString("report_type", str2);
        bundle.putString("act_type", str3);
        bundle.putString("via", str4);
        bundle.putString("app_id", str5);
        bundle.putString("result", str6);
        bundle.putString(SocialConstants.PARAM_TYPE, str7);
        bundle.putString("login_status", str8);
        bundle.putString("need_user_auth", str9);
        bundle.putString("to_uin", str10);
        bundle.putString("call_source", str11);
        bundle.putString("to_type", str12);
        return bundle;
    }

    public static Bundle a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        Bundle bundle = new Bundle();
        bundle.putString(Constants.PARAM_PLATFORM, "1");
        bundle.putString("result", str);
        bundle.putString("code", str2);
        bundle.putString("tmcost", str3);
        bundle.putString("rate", str4);
        bundle.putString("cmd", str5);
        bundle.putString("uin", str6);
        bundle.putString("appid", str7);
        bundle.putString("share_type", str8);
        bundle.putString("detail", str9);
        bundle.putString("os_ver", Build.VERSION.RELEASE);
        bundle.putString("network", com.tencent.open.a.a.a(e.a()));
        bundle.putString("apn", com.tencent.open.a.a.b(e.a()));
        bundle.putString("model_name", Build.MODEL);
        bundle.putString("sdk_ver", Constants.SDK_VERSION);
        bundle.putString("packagename", e.b());
        bundle.putString("app_ver", d(e.a(), e.b()));
        return bundle;
    }

    public static String c(Context context) {
        Location lastKnownLocation;
        if (context == null) {
            return "";
        }
        try {
            LocationManager locationManager = (LocationManager) context.getSystemService("location");
            Criteria criteria = new Criteria();
            criteria.setCostAllowed(false);
            criteria.setAccuracy(2);
            String bestProvider = locationManager.getBestProvider(criteria, true);
            if (bestProvider == null || (lastKnownLocation = locationManager.getLastKnownLocation(bestProvider)) == null) {
                return "";
            }
            f = lastKnownLocation.getLatitude() + "*" + lastKnownLocation.getLongitude();
            return f;
        } catch (Exception e2) {
            SLog.e("openSDK_LOG.Util", "getLocation>>>", e2);
            return "";
        }
    }

    public static void b(Context context, String str) {
        if (context == null) {
            return;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            b = packageInfo.versionName;
            a = b.substring(0, b.lastIndexOf(46));
            d = b.substring(b.lastIndexOf(46) + 1, b.length());
            e = packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            SLog.e("openSDK_LOG.Util", "getPackageInfo has exception: " + e2.getMessage());
        } catch (Exception e3) {
            SLog.e("openSDK_LOG.Util", "getPackageInfo has exception: " + e3.getMessage());
        }
    }

    public static String c(Context context, String str) {
        if (context == null) {
            return "";
        }
        b(context, str);
        return b;
    }

    public static String d(Context context, String str) {
        if (context == null) {
            return "";
        }
        b(context, str);
        return a;
    }

    public static String e(Context context, String str) {
        if (context == null) {
            return "";
        }
        c = d(context, str);
        return c;
    }

    public static byte[] i(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static boolean d(Context context) {
        double dSqrt;
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            dSqrt = Math.sqrt(Math.pow(displayMetrics.widthPixels / displayMetrics.xdpi, 2.0d) + Math.pow(displayMetrics.heightPixels / displayMetrics.ydpi, 2.0d));
        } catch (Throwable unused) {
            dSqrt = 0.0d;
        }
        return dSqrt > 6.5d;
    }

    public static boolean f(Context context, String str) {
        boolean z = !d(context) || h.a(context, Constants.PACKAGE_QQ_PAD) == null;
        if (z && h.a(context, Constants.PACKAGE_TIM) != null) {
            z = false;
        }
        if (z && h.a(context, Constants.PACKAGE_QQ_SPEED) != null) {
            z = false;
        }
        if (z) {
            return h.c(context, str) < 0;
        }
        return z;
    }

    public static boolean g(Context context, String str) {
        boolean z = !d(context) || h.a(context, Constants.PACKAGE_QQ_PAD) == null;
        if (z && h.a(context, Constants.PACKAGE_TIM) != null) {
            z = false;
        }
        if (z && h.a(context, Constants.PACKAGE_QQ_SPEED) != null) {
            z = false;
        }
        if (z) {
            return h.c(context, str) < 0;
        }
        return z;
    }

    public static boolean a(Context context, boolean z) {
        return (d(context) && h.a(context, Constants.PACKAGE_QQ_PAD) != null) || h.c(context, "4.1") >= 0 || h.a(context, Constants.PACKAGE_TIM) != null || h.a(context, Constants.PACKAGE_QQ_SPEED) != null;
    }

    public static boolean e(Context context) {
        return h.c(context, "8.1.5") >= 0;
    }

    public static boolean f(Context context) {
        return h.c(context, "8.1.8") >= 0;
    }

    public static boolean g(Context context) {
        return (h.c(context, "5.9.5") < 0 && h.a(context, Constants.PACKAGE_TIM) == null && h.a(context, Constants.PACKAGE_QQ_SPEED) == null) ? false : true;
    }

    public static long j(String str) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            File file = new File(str);
            if (!file.exists()) {
                return 0L;
            }
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                long jAvailable = fileInputStream2.available();
                try {
                    fileInputStream2.close();
                } catch (IOException unused) {
                }
                return jAvailable;
            } catch (Exception unused2) {
                fileInputStream = fileInputStream2;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (Exception unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
        if (fileInputStream != null) {
            try {
                fileInputStream.close();
            } catch (IOException unused5) {
            }
        }
        return 0L;
    }

    @SuppressLint({"NewApi"})
    public static String a(Context context, Uri uri) {
        Uri uri2;
        if (uri == null) {
            return null;
        }
        if ((Build.VERSION.SDK_INT >= 19) && DocumentsContract.isDocumentUri(context, uri)) {
            String authority = uri.getAuthority();
            if ("com.android.externalstorage.documents".equals(authority)) {
                String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
                String str = strArrSplit[0];
                if ("primary".equals(str)) {
                    return Environment.getExternalStorageDirectory().getAbsolutePath().concat("/").concat(strArrSplit[1]);
                }
                return "/storage/".concat(str).concat("/").concat(strArrSplit[1]);
            }
            if ("com.android.providers.downloads.documents".equals(authority)) {
                String documentId = DocumentsContract.getDocumentId(uri);
                if (documentId.startsWith("raw:")) {
                    return documentId.replaceFirst("raw:", "");
                }
                return b(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.parseLong(documentId)));
            }
            if (!"com.android.providers.media.documents".equals(authority)) {
                return null;
            }
            String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(":");
            String str2 = strArrSplit2[0];
            if ("image".equals(str2)) {
                uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
            } else if ("video".equals(str2)) {
                uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
            } else {
                if (!"audio".equals(str2)) {
                    return null;
                }
                uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
            }
            return b(context, ContentUris.withAppendedId(uri2, Long.parseLong(strArrSplit2[1])));
        }
        String scheme = uri.getScheme();
        if ("content".equals(scheme)) {
            return b(context, uri);
        }
        if ("file".equals(scheme)) {
            return uri.getPath();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:104:0x01de A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:108:0x019c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:129:? A[SYNTHETIC] */
    public static String b(Context context, Uri uri) throws Throwable {
        Cursor cursorQuery;
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        return cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                    }
                } catch (Exception e2) {
                    e = e2;
                    SLog.e("openSDK_LOG.Util", "queryAbsolutePath error : " + e.getMessage());
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    try {
                        parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r");
                        try {
                            fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                            try {
                                File externalFilesDir = context.getExternalFilesDir("Images");
                                if (!externalFilesDir.exists()) {
                                    externalFilesDir.mkdirs();
                                }
                                File file = new File(externalFilesDir, uri.getLastPathSegment());
                                if (!file.exists()) {
                                    file.createNewFile();
                                }
                                FileOutputStream fileOutputStream3 = new FileOutputStream(file);
                                try {
                                    byte[] bArr = new byte[2048];
                                    while (true) {
                                        int i = fileInputStream.read(bArr);
                                        if (i == -1) {
                                            break;
                                        }
                                        fileOutputStream3.write(bArr, 0, i);
                                    }
                                    fileOutputStream3.flush();
                                    String absolutePath = file.getAbsolutePath();
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e3) {
                                        SLog.e("openSDK_LOG.Util", "close fileIuputStream error" + e3.getMessage());
                                    }
                                    try {
                                        fileOutputStream3.close();
                                    } catch (IOException e4) {
                                        SLog.e("openSDK_LOG.Util", "close fileOutputStream error" + e4.getMessage());
                                    }
                                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                                        try {
                                            parcelFileDescriptorOpenFileDescriptor.close();
                                        } catch (IOException e5) {
                                            SLog.e("openSDK_LOG.Util", "close ParcelFileDescriptor error" + e5.getMessage());
                                        }
                                    }
                                    return absolutePath;
                                } catch (Exception e6) {
                                    fileOutputStream = fileOutputStream3;
                                    e = e6;
                                    try {
                                        SLog.e("openSDK_LOG.Util", "copy file from uri error : " + e.getMessage());
                                        if (fileInputStream != null) {
                                            try {
                                                fileInputStream.close();
                                            } catch (IOException e7) {
                                                SLog.e("openSDK_LOG.Util", "close fileIuputStream error" + e7.getMessage());
                                            }
                                        }
                                        if (fileOutputStream != null) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (IOException e8) {
                                                SLog.e("openSDK_LOG.Util", "close fileOutputStream error" + e8.getMessage());
                                            }
                                        }
                                        if (parcelFileDescriptorOpenFileDescriptor != null) {
                                            try {
                                                parcelFileDescriptorOpenFileDescriptor.close();
                                            } catch (IOException e9) {
                                                SLog.e("openSDK_LOG.Util", "close ParcelFileDescriptor error" + e9.getMessage());
                                            }
                                        }
                                        return null;
                                    } catch (Throwable th) {
                                        th = th;
                                        fileOutputStream2 = fileOutputStream;
                                        if (fileInputStream != null) {
                                            try {
                                                fileInputStream.close();
                                            } catch (IOException e10) {
                                                SLog.e("openSDK_LOG.Util", "close fileIuputStream error" + e10.getMessage());
                                            }
                                        }
                                        if (fileOutputStream2 != null) {
                                            try {
                                                fileOutputStream2.close();
                                            } catch (IOException e11) {
                                                SLog.e("openSDK_LOG.Util", "close fileOutputStream error" + e11.getMessage());
                                            }
                                        }
                                        if (parcelFileDescriptorOpenFileDescriptor != null) {
                                            try {
                                                parcelFileDescriptorOpenFileDescriptor.close();
                                                throw th;
                                            } catch (IOException e12) {
                                                SLog.e("openSDK_LOG.Util", "close ParcelFileDescriptor error" + e12.getMessage());
                                                throw th;
                                            }
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    fileOutputStream2 = fileOutputStream3;
                                    th = th2;
                                    if (fileInputStream != null) {
                                        fileInputStream.close();
                                    }
                                    if (fileOutputStream2 != null) {
                                        fileOutputStream2.close();
                                    }
                                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                                        parcelFileDescriptorOpenFileDescriptor.close();
                                        throw th;
                                    }
                                    throw th;
                                }
                            } catch (Exception e13) {
                                e = e13;
                                fileOutputStream = null;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (Exception e14) {
                            e = e14;
                            fileOutputStream = null;
                            fileInputStream = null;
                        } catch (Throwable th4) {
                            th = th4;
                            fileInputStream = null;
                        }
                    } catch (Exception e15) {
                        e = e15;
                        fileOutputStream = null;
                        parcelFileDescriptorOpenFileDescriptor = null;
                        fileInputStream = null;
                    } catch (Throwable th5) {
                        th = th5;
                        parcelFileDescriptorOpenFileDescriptor = null;
                        fileInputStream = null;
                    }
                }
            }
            return null;
        } catch (Exception e16) {
            e = e16;
            cursorQuery = null;
        }
    }

    public static String k(String str) {
        if (str == null) {
            return null;
        }
        return Base64.encodeToString(a(str.getBytes(), "JCPTZXEZ"), 3);
    }

    private static byte[] a(byte[] bArr, String str) {
        if (bArr != null) {
            try {
                char[] charArray = str.toCharArray();
                int length = bArr.length;
                byte[] bArr2 = new byte[length];
                for (int i = 0; i < length; i++) {
                    bArr2[i] = (byte) (bArr[i] ^ charArray[i % charArray.length]);
                }
                return bArr2;
            } catch (Throwable th) {
                SLog.e("Util", "xor Exception! ", th);
            }
        }
        return bArr;
    }

    public static String l(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Base64.encodeToString(str.getBytes("UTF-8"), 2);
            } catch (UnsupportedEncodingException e2) {
                SLog.e("openSDK_LOG.Util", "convert2Base64String exception: " + e2.getMessage());
            }
        }
        return "";
    }

    public static Drawable a(String str, Context context) throws Throwable {
        InputStream inputStreamOpen;
        if (context == null) {
            SLog.e("openSDK_LOG.Util", "context null!");
            return null;
        }
        try {
            inputStreamOpen = context.getAssets().open(str);
            try {
                try {
                    Drawable drawableCreateFromStream = Drawable.createFromStream(inputStreamOpen, str);
                    try {
                        inputStreamOpen.close();
                        return drawableCreateFromStream;
                    } catch (Exception e2) {
                        SLog.e("openSDK_LOG.Util", "inputStream close exception: " + e2.getMessage());
                        return drawableCreateFromStream;
                    }
                } catch (IOException e3) {
                    e = e3;
                    SLog.e("openSDK_LOG.Util", "getDrawable exception: " + e.getMessage());
                    try {
                        inputStreamOpen.close();
                    } catch (Exception e4) {
                        SLog.e("openSDK_LOG.Util", "inputStream close exception: " + e4.getMessage());
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                try {
                    inputStreamOpen.close();
                } catch (Exception e5) {
                    SLog.e("openSDK_LOG.Util", "inputStream close exception: " + e5.getMessage());
                }
                throw th;
            }
        } catch (IOException e6) {
            e = e6;
            inputStreamOpen = null;
        } catch (Throwable th2) {
            th = th2;
            inputStreamOpen = null;
            inputStreamOpen.close();
            throw th;
        }
    }

    public static String c() {
        File fileD = e.d();
        if (fileD == null) {
            return null;
        }
        if (!fileD.exists()) {
            fileD.mkdirs();
        }
        return fileD.toString();
    }

    public static boolean d() {
        return Build.VERSION.SDK_INT < 23 || ActivityCompat.checkSelfPermission(e.a(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public static File m(String str) throws IOException {
        File file = new File(str);
        if (!file.exists()) {
            if (file.getParentFile() == null || file.getParentFile().exists() || file.getParentFile().mkdirs()) {
                file.createNewFile();
            } else {
                SLog.d("openSDK_LOG.Util", "createFile failed" + str);
            }
        }
        return file;
    }

    public static boolean a(String str, String str2) {
        File file = new File(str);
        if (file.exists()) {
            try {
                return a(file, m(str2));
            } catch (IOException e2) {
                SLog.d("openSDK_LOG.Util", "copy fail from " + str + " to " + str2 + " ", e2);
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.io.BufferedInputStream] */
    public static boolean a(File file, File file2) throws Throwable {
        int i;
        ?? r1;
        boolean z = false;
        ?? r2 = 0;
        FileOutputStream fileOutputStream = null;
        FileOutputStream fileOutputStream2 = null;
        r2 = 0;
        try {
            try {
                try {
                    if (file2.exists()) {
                        file2.delete();
                    }
                    if (file2.getParentFile() != null && !file2.getParentFile().exists()) {
                        file2.getParentFile().mkdirs();
                    }
                    FileOutputStream fileOutputStream3 = new FileOutputStream((File) file2);
                    try {
                        file2 = new BufferedInputStream(new FileInputStream(file));
                        try {
                            byte[] bArr = new byte[102400];
                            while (true) {
                                i = file2.read(bArr);
                                if (i == -1) {
                                    break;
                                }
                                fileOutputStream3.write(bArr, 0, i);
                                fileOutputStream3.flush();
                            }
                            z = true;
                            try {
                                fileOutputStream3.close();
                                r1 = i;
                            } catch (IOException e2) {
                                SLog.e("openSDK_LOG.Util", "copyFile error, ", e2);
                                r1 = "openSDK_LOG.Util";
                            }
                            file2.close();
                            r2 = r1;
                            file2 = file2;
                        } catch (IOException e3) {
                            e = e3;
                            fileOutputStream = fileOutputStream3;
                            file2 = file2;
                            SLog.e("openSDK_LOG.Util", "copyFile error, ", e);
                            r2 = fileOutputStream;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                    r2 = fileOutputStream;
                                } catch (IOException e4) {
                                    SLog.e("openSDK_LOG.Util", "copyFile error, ", e4);
                                    r2 = "openSDK_LOG.Util";
                                }
                            }
                            if (file2 != 0) {
                                file2.close();
                                r2 = r2;
                                file2 = file2;
                            }
                            return z;
                        } catch (OutOfMemoryError e5) {
                            e = e5;
                            fileOutputStream2 = fileOutputStream3;
                            file2 = file2;
                            SLog.e("openSDK_LOG.Util", "copyFile error, ", e);
                            r2 = fileOutputStream2;
                            if (fileOutputStream2 != null) {
                                try {
                                    fileOutputStream2.close();
                                    r2 = fileOutputStream2;
                                } catch (IOException e6) {
                                    SLog.e("openSDK_LOG.Util", "copyFile error, ", e6);
                                    r2 = "openSDK_LOG.Util";
                                }
                            }
                            if (file2 != 0) {
                                file2.close();
                                r2 = r2;
                                file2 = file2;
                            }
                            return z;
                        } catch (Throwable th) {
                            th = th;
                            r2 = fileOutputStream3;
                            if (r2 != 0) {
                                try {
                                    r2.close();
                                } catch (IOException e7) {
                                    SLog.e("openSDK_LOG.Util", "copyFile error, ", e7);
                                }
                            }
                            if (file2 == 0) {
                                throw th;
                            }
                            try {
                                file2.close();
                                throw th;
                            } catch (IOException e8) {
                                SLog.e("openSDK_LOG.Util", "copyFile error, ", e8);
                                throw th;
                            }
                        }
                    } catch (IOException e9) {
                        e = e9;
                        file2 = 0;
                    } catch (OutOfMemoryError e10) {
                        e = e10;
                        file2 = 0;
                    } catch (Throwable th2) {
                        th = th2;
                        file2 = 0;
                    }
                } catch (IOException e11) {
                    SLog.e("openSDK_LOG.Util", "copyFile error, ", e11);
                }
            } catch (IOException e12) {
                e = e12;
                file2 = 0;
            } catch (OutOfMemoryError e13) {
                e = e13;
                file2 = 0;
            } catch (Throwable th3) {
                th = th3;
                file2 = 0;
            }
            return z;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static boolean b(String str, String str2) {
        boolean zD = d();
        boolean zA = zD ? a(str, str2) : false;
        SLog.i("openSDK_LOG.Util", "copyImageByCheckPermission() copy succes:" + zA + ",hasSDPermission=" + zD);
        return zA;
    }

    public static boolean n(String str) {
        String strC = c();
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(strC) || !str.contains(strC)) ? false : true;
    }

    public static String a(String str, Activity activity, String str2) {
        String str3;
        try {
            boolean zN = n(str2);
            SLog.i("openSDK_LOG.Util", "doPublishMood() check file: isAppSpecificDir=" + zN + ",hasSDPermission=" + d());
            if (!zN) {
                File externalFilesDir = e.a().getExternalFilesDir("Images");
                if (externalFilesDir != null) {
                    str3 = externalFilesDir.getAbsolutePath() + File.separator + Constants.QQ_SHARE_TEMP_DIR;
                } else {
                    File cacheDir = e.a().getCacheDir();
                    if (cacheDir == null) {
                        SLog.e("openSDK_LOG.Util", "getMediaFileUri error, cacheDir is null");
                        return null;
                    }
                    str3 = cacheDir.getAbsolutePath() + File.separator + Constants.QQ_SHARE_TEMP_DIR;
                }
                File file = new File(str2);
                String absolutePath = file.getAbsolutePath();
                String str4 = str3 + File.separator + file.getName();
                str2 = b(absolutePath, str4) ? str4 : null;
            }
            if (!TextUtils.isEmpty(str2)) {
                File file2 = new File(str2);
                String authorities = Tencent.getAuthorities(str);
                if (TextUtils.isEmpty(authorities)) {
                    SLog.e("openSDK_LOG.Util", "getMediaFileUri error, authorities is null");
                    return null;
                }
                Uri uriForFile = FileProvider.getUriForFile(activity, authorities, file2);
                activity.grantUriPermission("com.tencent.mobileqq", uriForFile, 3);
                return uriForFile.toString();
            }
            SLog.e("openSDK_LOG.Util", "getMediaFileUri error, destAppSpecific is null");
            return null;
        } catch (Exception e2) {
            SLog.e("openSDK_LOG.Util", "getMediaFileUri error", e2);
            return null;
        }
    }
}
