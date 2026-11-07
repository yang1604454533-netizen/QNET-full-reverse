package com.tencent.qnet.ui;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public class AppInfo {
    private Drawable appIcon;
    private String appLabel;
    private String pkgName;

    public Drawable getAppIcon() {
        return this.appIcon;
    }

    public String getAppLabel() {
        return this.appLabel;
    }

    public String getPkgName() {
        return this.pkgName;
    }

    public void setAppIcon(Drawable drawable) {
        this.appIcon = drawable;
    }

    public void setAppLabel(String str) {
        this.appLabel = str;
    }

    public void setPkgName(String str) {
        this.pkgName = str;
    }
}
