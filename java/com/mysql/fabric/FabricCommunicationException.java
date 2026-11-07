package com.mysql.fabric;

/* JADX INFO: loaded from: classes.dex */
public class FabricCommunicationException extends Exception {
    private static final long serialVersionUID = 1;

    public FabricCommunicationException(Throwable th) {
        super(th);
    }

    public FabricCommunicationException(String str) {
        super(str);
    }

    public FabricCommunicationException(String str, Throwable th) {
        super(str, th);
    }
}
