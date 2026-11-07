package com.mysql.fabric.xmlrpc.base;

/* JADX INFO: loaded from: classes.dex */
public class Param {
    protected Value value;

    public Param() {
    }

    public Param(Value value) {
        this.value = value;
    }

    public Value getValue() {
        return this.value;
    }

    public void setValue(Value value) {
        this.value = value;
    }

    public String toString() {
        return "<param>" + this.value.toString() + "</param>";
    }
}
