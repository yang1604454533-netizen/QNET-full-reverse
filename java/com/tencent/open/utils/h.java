package com.tencent.open.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Environment;
import com.tencent.connect.common.Constants;
import com.tencent.open.log.SLog;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.security.MessageDigest;
import java.util.List;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public class h {
    public static String a(int i) {
        if (i == 10103) {
            return "shareToQQ";
        }
        if (i == 10104) {
            return "shareToQzone";
        }
        if (i == 10105) {
            return "addToQQFavorites";
        }
        if (i == 10106) {
            return "sendToMyComputer";
        }
        if (i == 10107) {
            return "shareToTroopBar";
        }
        if (i == 11101) {
            return "action_login";
        }
        if (i == 10100) {
            return "action_request";
        }
        return null;
    }

    public static String a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static int a(String str, String str2) {
        if (str == null && str2 == null) {
            return 0;
        }
        if (str != null && str2 == null) {
            return 1;
        }
        if (str == null && str2 != null) {
            return -1;
        }
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = str2.split("\\.");
        int i = 0;
        while (i < strArrSplit.length && i < strArrSplit2.length) {
            try {
                int i2 = Integer.parseInt(strArrSplit[i]);
                int i3 = Integer.parseInt(strArrSplit2[i]);
                if (i2 < i3) {
                    return -1;
                }
                if (i2 > i3) {
                    return 1;
                }
                i++;
            } catch (NumberFormatException unused) {
                return str.compareTo(str2);
            }
        }
        if (strArrSplit.length > i) {
            return 1;
        }
        return strArrSplit2.length > i ? -1 : 0;
    }

    public static boolean a(Context context, String str, String str2) {
        SLog.v("openSDK_LOG.SystemUtils", "OpenUi, validateAppSignatureForPackage");
        try {
            for (Signature signature : context.getPackageManager().getPackageInfo(str, 64).signatures) {
                if (k.f(signature.toCharsString()).equals(str2)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static String b(Context context, String str) {
        String strA;
        SLog.v("openSDK_LOG.SystemUtils", "OpenUi, getSignValidString");
        try {
            String packageName = context.getPackageName();
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(packageName, 64).signatures;
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(signatureArr[0].toByteArray());
            String strA2 = k.a(messageDigest.digest());
            messageDigest.reset();
            SLog.v("openSDK_LOG.SystemUtils", "-->sign: " + strA2);
            messageDigest.update(k.i(packageName + "_" + strA2 + "_" + str + ""));
            strA = k.a(messageDigest.digest());
            try {
                messageDigest.reset();
                SLog.v("openSDK_LOG.SystemUtils", "-->signEncryped: " + strA);
            } catch (Exception e) {
                e = e;
                e.printStackTrace();
                SLog.e("openSDK_LOG.SystemUtils", "OpenUi, getSignValidString error", e);
            }
        } catch (Exception e2) {
            e = e2;
            strA = "";
        }
        return strA;
    }

    public static String a(Activity activity, String str) {
        if (activity == null) {
            SLog.e("openSDK_LOG.SystemUtils", "getEncryptPkgName activity==null !!!!!!");
            return "";
        }
        try {
            byte[] bArrA = d.a(str);
            if (bArrA == null) {
                SLog.e("openSDK_LOG.SystemUtils", "getEncryptPkgName shaBytes==null !!!!!!");
                return "";
            }
            byte[] bArr = new byte[8];
            System.arraycopy(bArrA, 5, bArr, 0, 8);
            byte[] bArr2 = new byte[16];
            System.arraycopy(bArrA, 8, bArr2, 0, 16);
            return d.a(activity.getPackageName(), d.a(bArr2), bArr);
        } catch (Exception e) {
            SLog.e("openSDK_LOG.SystemUtils", "getEncryptPkgName", e);
            return "";
        }
    }

    public static boolean a(Context context, Intent intent) {
        return (context == null || intent == null || context.getPackageManager().queryIntentActivities(intent, 0).size() == 0) ? false : true;
    }

    public static String a(Context context) {
        return context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
    }

    public static int c(Context context, String str) {
        return a(a(context, "com.tencent.mobileqq"), str);
    }

    public static int d(Context context, String str) {
        return a(a(context, Constants.PACKAGE_TIM), str);
    }

    /* JADX WARN: Code duplicated, block: B:67:0x00d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x00c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:? A[SYNTHETIC] */
    @SuppressLint({"SdCardPath"})
    public static boolean a(String str, String str2, int i) {
        InputStream inputStreamOpen;
        FileOutputStream fileOutputStreamOpenFileOutput;
        SLog.i("openSDK_LOG.SystemUtils", "-->extractSecureLib, libName: " + str);
        Context contextA = e.a();
        if (contextA == null) {
            SLog.i("openSDK_LOG.SystemUtils", "-->extractSecureLib, global context is null. ");
            return false;
        }
        SharedPreferences sharedPreferences = contextA.getSharedPreferences("secure_lib", 0);
        File file = new File(contextA.getFilesDir(), str2);
        if (!file.exists()) {
            File parentFile = file.getParentFile();
            if (parentFile != null && parentFile.mkdirs()) {
                try {
                    file.createNewFile();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        } else {
            int i2 = sharedPreferences.getInt("version", 0);
            SLog.i("openSDK_LOG.SystemUtils", "-->extractSecureLib, libVersion: " + i + " | oldVersion: " + i2);
            if (i == i2) {
                return true;
            }
        }
        InputStream inputStream = null;
        try {
            inputStreamOpen = contextA.getAssets().open(str);
            try {
                fileOutputStreamOpenFileOutput = contextA.openFileOutput(str2, 0);
                try {
                    a(inputStreamOpen, fileOutputStreamOpenFileOutput);
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putInt("version", i);
                    editorEdit.commit();
                    if (inputStreamOpen != null) {
                        try {
                            inputStreamOpen.close();
                        } catch (IOException unused) {
                        }
                    }
                    if (fileOutputStreamOpenFileOutput != null) {
                        try {
                            fileOutputStreamOpenFileOutput.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return true;
                } catch (Exception e2) {
                    e = e2;
                    inputStream = inputStreamOpen;
                    try {
                        SLog.e("openSDK_LOG.SystemUtils", "-->extractSecureLib, when copy lib execption.", e);
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (fileOutputStreamOpenFileOutput != null) {
                            try {
                                fileOutputStreamOpenFileOutput.close();
                            } catch (IOException unused4) {
                            }
                        }
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        inputStreamOpen = inputStream;
                        if (inputStreamOpen != null) {
                            try {
                                inputStreamOpen.close();
                            } catch (IOException unused5) {
                            }
                        }
                        if (fileOutputStreamOpenFileOutput != null) {
                            try {
                                fileOutputStreamOpenFileOutput.close();
                                throw th;
                            } catch (IOException unused6) {
                                throw th;
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (inputStreamOpen != null) {
                        inputStreamOpen.close();
                    }
                    if (fileOutputStreamOpenFileOutput != null) {
                        fileOutputStreamOpenFileOutput.close();
                        throw th;
                    }
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                fileOutputStreamOpenFileOutput = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStreamOpenFileOutput = null;
            }
        } catch (Exception e4) {
            e = e4;
            fileOutputStreamOpenFileOutput = null;
        } catch (Throwable th4) {
            th = th4;
            inputStreamOpen = null;
            fileOutputStreamOpenFileOutput = null;
        }
    }

    private static long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        long j = 0;
        while (true) {
            int i = inputStream.read(bArr, 0, bArr.length);
            if (i != -1) {
                outputStream.write(bArr, 0, i);
                j += (long) i;
            } else {
                SLog.i("openSDK_LOG.SystemUtils", "-->copy, copyed size is: " + j);
                return j;
            }
        }
    }

    public static int a(String str) {
        if ("shareToQQ".equals(str)) {
            return Constants.REQUEST_QQ_SHARE;
        }
        if ("shareToQzone".equals(str)) {
            return Constants.REQUEST_QZONE_SHARE;
        }
        if ("addToQQFavorites".equals(str)) {
            return Constants.REQUEST_QQ_FAVORITES;
        }
        if ("sendToMyComputer".equals(str)) {
            return Constants.REQUEST_SEND_TO_MY_COMPUTER;
        }
        if ("shareToTroopBar".equals(str)) {
            return Constants.REQUEST_SHARE_TO_TROOP_BAR;
        }
        if ("action_login".equals(str)) {
            return Constants.REQUEST_LOGIN;
        }
        if ("action_request".equals(str)) {
            return Constants.REQUEST_API;
        }
        return -1;
    }

    public static boolean b(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i = 0; i < installedPackages.size(); i++) {
                if (installedPackages.get(i).packageName.equals("com.tencent.mobileqq")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean c(Context context) {
        return context != null && context.getApplicationInfo().targetSdkVersion >= 29 && Build.VERSION.SDK_INT >= 29 && !a();
    }

    private static boolean a() {
        try {
            return ((Boolean) Environment.class.getMethod("isExternalStorageLegacy", new Class[0]).invoke(Environment.class, new Object[0])).booleanValue();
        } catch (IllegalAccessException unused) {
            return false;
        } catch (NoSuchMethodException unused2) {
            return false;
        } catch (InvocationTargetException unused3) {
            return false;
        }
    }
}
