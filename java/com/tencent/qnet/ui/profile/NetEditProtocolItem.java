package com.tencent.qnet.ui.profile;

/* JADX INFO: loaded from: classes.dex */
public class NetEditProtocolItem extends NetEditBaseItem {
    private String m_value;

    public NetEditProtocolItem(String str, String str2) {
        super(str);
        this.m_type = 2;
        this.m_value = str2;
    }

    public void setItemValue(String str) {
        this.m_value = str;
    }

    public String toString() {
        return this.m_value;
    }

    public String getValue() {
        return this.m_value;
    }
}
