package com.mysql.jdbc;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CachedResultSetMetaData {
    Field[] fields;
    java.sql.ResultSetMetaData metadata;
    Map<String, Integer> columnNameToIndex = null;
    Map<String, Integer> fullColumnNameToIndex = null;

    public Map<String, Integer> getColumnNameToIndex() {
        return this.columnNameToIndex;
    }

    public Field[] getFields() {
        return this.fields;
    }

    public Map<String, Integer> getFullColumnNameToIndex() {
        return this.fullColumnNameToIndex;
    }

    public java.sql.ResultSetMetaData getMetadata() {
        return this.metadata;
    }
}
