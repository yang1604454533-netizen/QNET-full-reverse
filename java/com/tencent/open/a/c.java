package com.tencent.open.a;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.tencent.open.log.SLog;
import java.util.Locale;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public class c {
    static String a;
    static String b;
    static String c;
    private static String d;
    private static String e;

    public static String a() {
        WifiManager wifiManager;
        WifiInfo connectionInfo;
        try {
            Context contextA = com.tencent.open.utils.e.a();
            return (contextA == null || (wifiManager = (WifiManager) contextA.getSystemService("wifi")) == null || (connectionInfo = wifiManager.getConnectionInfo()) == null) ? "" : connectionInfo.getMacAddress();
        } catch (SecurityException e2) {
            SLog.e("openSDK_LOG.MobileInfoUtil", "getLocalMacAddress>>>", e2);
            return "";
        }
    }

    public static String a(Context context) {
        if (!TextUtils.isEmpty(d)) {
            return d;
        }
        if (context == null) {
            return "";
        }
        d = "";
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            d = windowManager.getDefaultDisplay().getWidth() + "x" + windowManager.getDefaultDisplay().getHeight();
        }
        return d;
    }

    public static String b() {
        return Locale.getDefault().getLanguage();
    }

    public static String b(Context context) {
        if (a != null && a.length() > 0) {
            return a;
        }
        if (context == null) {
            return "";
        }
        try {
            a = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
            return a;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String c(Context context) {
        if (b != null && b.length() > 0) {
            return b;
        }
        if (context == null) {
            return "";
        }
        try {
            b = ((TelephonyManager) context.getSystemService("phone")).getSimSerialNumber();
            return b;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String d(Context context) {
        if (c != null && c.length() > 0) {
            return c;
        }
        if (context == null) {
            return "";
        }
        try {
            c = Settings.Secure.getString(context.getContentResolver(), "android_id");
            return c;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String e(Context context) {
        try {
            if (e == null) {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                DisplayMetrics displayMetrics = new DisplayMetrics();
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                StringBuilder sb = new StringBuilder();
                sb.append("imei=");
                sb.append(b(context));
                sb.append('&');
                sb.append("model=");
                sb.append(Build.MODEL);
                sb.append('&');
                sb.append("os=");
                sb.append(Build.VERSION.RELEASE);
                sb.append('&');
                sb.append("apilevel=");
                sb.append(Build.VERSION.SDK_INT);
                sb.append('&');
                String strB = a.b(context);
                if (strB == null) {
                    strB = "";
                }
                sb.append("network=");
                sb.append(strB);
                sb.append('&');
                sb.append("sdcard=");
                sb.append(Environment.getExternalStorageState().equals("mounted") ? 1 : 0);
                sb.append('&');
                sb.append("display=");
                sb.append(displayMetrics.widthPixels);
                sb.append('*');
                sb.append(displayMetrics.heightPixels);
                sb.append('&');
                sb.append("manu=");
                sb.append(Build.MANUFACTURER);
                sb.append("&");
                sb.append("wifi=");
                sb.append(a.e(context));
                e = sb.toString();
            }
            return e;
        } catch (Exception unused) {
            return null;
        }
    }
}
