package com.mysql.fabric.xmlrpc.base;

/* JADX INFO: loaded from: classes.dex */
public class Member {
    protected String name;
    protected Value value;

    public Member() {
    }

    public Member(String str, Value value) {
        setName(str);
        setValue(value);
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public Value getValue() {
        return this.value;
    }

    public void setValue(Value value) {
        this.value = value;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<member>");
        sb.append("<name>" + this.name + "</name>");
        sb.append(this.value.toString());
        sb.append("</member>");
        return sb.toString();
    }
}
