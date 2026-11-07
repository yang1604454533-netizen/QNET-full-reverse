package com.mysql.fabric;

/* JADX INFO: loaded from: classes.dex */
public enum ServerMode {
    OFFLINE,
    READ_ONLY,
    WRITE_ONLY,
    READ_WRITE;

    public static ServerMode getFromConstant(Integer num) {
        return values()[num.intValue()];
    }
}
