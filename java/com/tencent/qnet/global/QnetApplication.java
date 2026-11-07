package com.tencent.qnet.global;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
public class QnetApplication extends Application {
    private static boolean bReleaseMode = true;
    private static Context mContext;
    private SharedPreferences mSetting;
    private WindowManager.LayoutParams mWMParas;

    public static boolean ReleaseMode() {
        return bReleaseMode;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        if (this.mWMParas == null) {
            this.mWMParas = new WindowManager.LayoutParams();
        }
        if (mContext == null) {
            mContext = getApplicationContext();
        }
        if (this.mSetting == null) {
            this.mSetting = getSharedPreferences("wetest_setting", 0);
        }
    }

    public static Context getContext() {
        return mContext;
    }

    public SharedPreferences getmSetting() {
        return this.mSetting;
    }
}
