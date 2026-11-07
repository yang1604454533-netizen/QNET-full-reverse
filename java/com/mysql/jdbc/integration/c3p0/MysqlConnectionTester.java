package com.mysql.jdbc.integration.c3p0;

import com.mchange.v2.c3p0.C3P0ProxyConnection;
import com.mchange.v2.c3p0.QueryConnectionTester;
import com.mysql.jdbc.CommunicationsException;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/* JADX INFO: loaded from: classes.dex */
public final class MysqlConnectionTester implements QueryConnectionTester {
    private static final Object[] NO_ARGS_ARRAY = new Object[0];
    private static final long serialVersionUID = 3256444690067896368L;
    private transient Method pingMethod;

    public int activeCheckConnection(Connection connection, String str) {
        return 0;
    }

    public MysqlConnectionTester() {
        try {
            this.pingMethod = com.mysql.jdbc.Connection.class.getMethod("ping", (Class[]) null);
        } catch (Exception unused) {
        }
    }

    public int activeCheckConnection(Connection connection) throws Throwable {
        Throwable th;
        Statement statementCreateStatement;
        try {
            if (this.pingMethod != null) {
                if (connection instanceof com.mysql.jdbc.Connection) {
                    ((com.mysql.jdbc.Connection) connection).ping();
                    return 0;
                }
                ((C3P0ProxyConnection) connection).rawConnectionOperation(this.pingMethod, C3P0ProxyConnection.RAW_CONNECTION, NO_ARGS_ARRAY);
                return 0;
            }
            try {
                statementCreateStatement = connection.createStatement();
                try {
                    statementCreateStatement.executeQuery("SELECT 1").close();
                    if (statementCreateStatement == null) {
                        return 0;
                    }
                    statementCreateStatement.close();
                    return 0;
                } catch (Throwable th2) {
                    th = th2;
                    if (statementCreateStatement == null) {
                        throw th;
                    }
                    statementCreateStatement.close();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                statementCreateStatement = null;
            }
        } catch (Exception unused) {
            return -1;
        }
    }

    public int statusOnException(Connection connection, Throwable th) {
        if ((th instanceof CommunicationsException) || "com.mysql.jdbc.exceptions.jdbc4.CommunicationsException".equals(th.getClass().getName()) || !(th instanceof SQLException)) {
            return -1;
        }
        String sQLState = ((SQLException) th).getSQLState();
        return (sQLState == null || !sQLState.startsWith("08")) ? 0 : -1;
    }
}
