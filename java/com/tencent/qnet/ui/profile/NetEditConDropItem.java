package com.tencent.qnet.ui.profile;

/* JADX INFO: loaded from: classes.dex */
public class NetEditConDropItem extends NetEditBaseItem {
    private int m_drop;
    private int m_pass;

    public NetEditConDropItem(String str, int i, int i2) {
        super(str);
        this.m_type = 3;
        this.m_pass = i;
        this.m_drop = i2;
    }

    public void setItemValue(int i, int i2) {
        this.m_pass = i;
        this.m_drop = i2;
    }

    public String toString() {
        return String.format("%d / %d", Integer.valueOf(this.m_pass), Integer.valueOf(this.m_drop));
    }

    public int getPass() {
        return this.m_pass;
    }

    public int getDrop() {
        return this.m_drop;
    }
}
