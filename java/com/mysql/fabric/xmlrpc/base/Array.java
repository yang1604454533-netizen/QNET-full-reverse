package com.mysql.fabric.xmlrpc.base;

/* JADX INFO: loaded from: classes.dex */
public class Array {
    protected Data data;

    public Data getData() {
        return this.data;
    }

    public void setData(Data data) {
        this.data = data;
    }

    public void addValue(Value value) {
        if (this.data == null) {
            this.data = new Data();
        }
        this.data.addValue(value);
    }

    public String toString() {
        return "<array>" + this.data.toString() + "</array>";
    }
}
