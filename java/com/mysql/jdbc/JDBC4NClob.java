package com.mysql.jdbc;

import java.sql.NClob;

/* JADX INFO: loaded from: classes.dex */
public class JDBC4NClob extends Clob implements NClob {
    JDBC4NClob(ExceptionInterceptor exceptionInterceptor) {
        super(exceptionInterceptor);
    }

    JDBC4NClob(String str, ExceptionInterceptor exceptionInterceptor) {
        super(str, exceptionInterceptor);
    }
}
