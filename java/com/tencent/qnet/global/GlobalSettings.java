package com.tencent.qnet.global;

import android.content.SharedPreferences;
import android.util.Log;
import com.tencent.qim.R;

/* JADX INFO: loaded from: classes.dex */
public class GlobalSettings {
    public static String LOG_TAG = "QNET_TAG";
    private static String PREF_TAG = "SETTINGS_PRES";
    private static GlobalSettings mInstance;
    public String appVersion = "";

    private GlobalSettings() {
    }

    public static GlobalSettings getInstance() {
        if (mInstance == null) {
            synchronized (GlobalSettings.class) {
                if (mInstance == null) {
                    mInstance = new GlobalSettings();
                }
            }
        }
        return mInstance;
    }

    public boolean showFWCtrl() {
        return QnetApplication.getContext().getSharedPreferences(PREF_TAG, 0).getBoolean(QnetApplication.getContext().getString(R.string.setting_key_fw_ctrl), true);
    }

    public boolean showFWInfo() {
        return QnetApplication.getContext().getSharedPreferences(PREF_TAG, 0).getBoolean(QnetApplication.getContext().getString(R.string.setting_key_fw_info), true);
    }

    public boolean dumpPcap() {
        return QnetApplication.getContext().getSharedPreferences(PREF_TAG, 0).getBoolean(QnetApplication.getContext().getString(R.string.setting_key_dump_pcap), false);
    }

    public void setShowFWCtrl(boolean z) {
        SharedPreferences.Editor editorEdit = QnetApplication.getContext().getSharedPreferences(PREF_TAG, 0).edit();
        editorEdit.putBoolean(QnetApplication.getContext().getString(R.string.setting_key_fw_ctrl), z);
        editorEdit.commit();
    }

    public void setShowFWInfo(boolean z) {
        SharedPreferences.Editor editorEdit = QnetApplication.getContext().getSharedPreferences(PREF_TAG, 0).edit();
        editorEdit.putBoolean(QnetApplication.getContext().getString(R.string.setting_key_fw_info), z);
        editorEdit.commit();
    }

    public void setDumpPcap(boolean z) {
        SharedPreferences.Editor editorEdit = QnetApplication.getContext().getSharedPreferences(PREF_TAG, 0).edit();
        editorEdit.putBoolean(QnetApplication.getContext().getString(R.string.setting_key_dump_pcap), z);
        editorEdit.commit();
    }

    public String getUserName() {
        String string = ((QnetApplication) QnetApplication.getContext()).getmSetting().getString("nick", "");
        if (string.isEmpty()) {
            string = "test_user";
        }
        Log.v(LOG_TAG, "nick name : " + string);
        return string;
    }

    public String getLastLoginDate() {
        return QnetApplication.getContext().getSharedPreferences(PREF_TAG, 0).getString("last_login_date", "");
    }

    public void setLastLoginDate(String str) {
        SharedPreferences.Editor editorEdit = QnetApplication.getContext().getSharedPreferences(PREF_TAG, 0).edit();
        editorEdit.putString("last_login_date", str);
        editorEdit.commit();
    }
}
