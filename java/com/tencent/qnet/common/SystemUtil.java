package com.tencent.qnet.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class SystemUtil {
    public static String getSystemLanguage() {
        return Locale.getDefault().getLanguage();
    }

    public static Locale[] getSystemLanguageList() {
        return Locale.getAvailableLocales();
    }

    public static String getSystemVersion() {
        return Build.VERSION.RELEASE;
    }

    public static String getSystemModel() {
        return Build.MODEL;
    }

    public static String getDeviceBrand() {
        return Build.BRAND;
    }

    public static PackageInfo getAppVersionInfo(Context context) throws Exception {
        return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
    }
}
