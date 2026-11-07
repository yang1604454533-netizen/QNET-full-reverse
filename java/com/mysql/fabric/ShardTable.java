package com.mysql.fabric;

/* JADX INFO: loaded from: classes.dex */
public class ShardTable {
    private String column;
    private String database;
    private String table;

    public ShardTable(String str, String str2, String str3) {
        this.database = str;
        this.table = str2;
        this.column = str3;
    }

    public String getDatabase() {
        return this.database;
    }

    public String getTable() {
        return this.table;
    }

    public String getColumn() {
        return this.column;
    }
}
