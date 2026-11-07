package com.tencent.qnet.ui.profile;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class NetEditBaseItem {
    public static final int TYPE_CON_DROP = 3;
    public static final int TYPE_EDIT = 1;
    public static final int TYPE_PROTOCOL = 2;
    public static final int TYPE_UNKNOWN = 0;
    protected String m_name;
    protected int m_type = 0;
    protected View m_view;

    public NetEditBaseItem(String str) {
        this.m_name = str;
    }

    public void setView(View view) {
        this.m_view = view;
    }

    public View getView() {
        return this.m_view;
    }

    public void setTypeProtocol() {
        this.m_type = 2;
    }

    public void setTypeConDrop() {
        this.m_type = 3;
    }

    public String getName() {
        return this.m_name;
    }

    public boolean isTypeEdit() {
        return this.m_type == 1;
    }

    public boolean isTypeProtocol() {
        return this.m_type == 2;
    }

    public boolean isTypeConDrop() {
        return this.m_type == 3;
    }
}
