package com.mysql.fabric.xmlrpc.base;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Data {
    protected List<Value> value;

    public List<Value> getValue() {
        if (this.value == null) {
            this.value = new ArrayList();
        }
        return this.value;
    }

    public void addValue(Value value) {
        getValue().add(value);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.value != null) {
            sb.append("<data>");
            for (int i = 0; i < this.value.size(); i++) {
                sb.append(this.value.get(i).toString());
            }
            sb.append("</data>");
        }
        return sb.toString();
    }
}
