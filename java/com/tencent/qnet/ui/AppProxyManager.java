package com.tencent.qnet.ui;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AppProxyManager {
    public static AppProxyManager Instance = null;
    private static final String PROXY_APPS = "PROXY_APPS";
    public static boolean isLollipopOrAbove;
    private Context mContext;
    public List<AppInfo> mlistAppInfo = new ArrayList();
    public List<AppInfo> proxyAppInfo = new ArrayList();

    static {
        isLollipopOrAbove = Build.VERSION.SDK_INT >= 21;
    }

    public AppProxyManager(Context context) {
        this.mContext = context;
        Instance = this;
        readProxyAppsList();
    }

    public void removeProxyApp(String str) {
        for (AppInfo appInfo : this.proxyAppInfo) {
            if (appInfo.getPkgName().equals(str)) {
                this.proxyAppInfo.remove(appInfo);
                break;
            }
        }
        writeProxyAppsList();
    }

    public void addProxyApp(String str) {
        for (AppInfo appInfo : this.mlistAppInfo) {
            if (appInfo.getPkgName().equals(str)) {
                this.proxyAppInfo.add(appInfo);
                break;
            }
        }
        writeProxyAppsList();
    }

    public void setProxyApp(String str) {
        this.proxyAppInfo.clear();
        addProxyApp(str);
    }

    public AppInfo getProxyApp() {
        if (this.proxyAppInfo.size() == 1) {
            return this.proxyAppInfo.get(0);
        }
        return null;
    }

    public boolean isAppProxy(String str) {
        Iterator<AppInfo> it = this.proxyAppInfo.iterator();
        while (it.hasNext()) {
            if (it.next().getPkgName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    private void readProxyAppsList() {
        String string = this.mContext.getSharedPreferences("qnetProxyUrl", 0).getString(PROXY_APPS, "");
        try {
            if (this.proxyAppInfo != null) {
                this.proxyAppInfo.clear();
            }
            if (string.isEmpty()) {
                return;
            }
            JSONArray jSONArray = new JSONArray(string);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                AppInfo appInfo = new AppInfo();
                appInfo.setAppLabel(jSONObject.getString("label"));
                appInfo.setPkgName(jSONObject.getString("pkg"));
                this.proxyAppInfo.add(appInfo);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void writeProxyAppsList() {
        SharedPreferences sharedPreferences = this.mContext.getSharedPreferences("qnetProxyUrl", 0);
        try {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.proxyAppInfo.size(); i++) {
                JSONObject jSONObject = new JSONObject();
                AppInfo appInfo = this.proxyAppInfo.get(i);
                jSONObject.put("label", appInfo.getAppLabel());
                jSONObject.put("pkg", appInfo.getPkgName());
                jSONArray.put(jSONObject);
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString(PROXY_APPS, jSONArray.toString());
            editorEdit.apply();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
