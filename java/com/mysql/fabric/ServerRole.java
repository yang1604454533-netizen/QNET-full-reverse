package com.mysql.fabric;

/* JADX INFO: loaded from: classes.dex */
public enum ServerRole {
    FAULTY,
    SPARE,
    SECONDARY,
    PRIMARY,
    CONFIGURING;

    public static ServerRole getFromConstant(Integer num) {
        return values()[num.intValue()];
    }
}
