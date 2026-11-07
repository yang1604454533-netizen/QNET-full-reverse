package com.tencent.qnet.ui.profile;

/* JADX INFO: loaded from: classes.dex */
public class NetEditTextItem extends NetEditBaseItem {
    private int m_value;

    public NetEditTextItem(String str, int i) {
        super(str);
        this.m_type = 1;
        this.m_value = i;
    }

    public void setItemValue(int i) {
        this.m_value = i;
    }

    public String toString() {
        return String.format("%d", Integer.valueOf(this.m_value));
    }

    public int getValue() {
        return this.m_value;
    }
}
