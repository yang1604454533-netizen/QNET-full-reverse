package com.mysql.jdbc.jdbc2.optional;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ExceptionInterceptor;
import com.mysql.jdbc.SQLError;
import com.mysql.jdbc.Util;
import java.lang.reflect.Constructor;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.sql.ConnectionEvent;
import javax.sql.ConnectionEventListener;
import javax.sql.PooledConnection;

/* JADX INFO: loaded from: classes.dex */
public class MysqlPooledConnection implements PooledConnection {
    public static final int CONNECTION_CLOSED_EVENT = 2;
    public static final int CONNECTION_ERROR_EVENT = 1;
    private static final Constructor<?> JDBC_4_POOLED_CONNECTION_WRAPPER_CTOR;
    private ExceptionInterceptor exceptionInterceptor;
    private Connection physicalConn;
    private java.sql.Connection logicalHandle = null;
    private Map<ConnectionEventListener, ConnectionEventListener> connectionEventListeners = new HashMap();

    static {
        if (Util.isJdbc4()) {
            try {
                JDBC_4_POOLED_CONNECTION_WRAPPER_CTOR = Class.forName("com.mysql.jdbc.jdbc2.optional.JDBC4MysqlPooledConnection").getConstructor(Connection.class);
                return;
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            } catch (SecurityException e3) {
                throw new RuntimeException(e3);
            }
        }
        JDBC_4_POOLED_CONNECTION_WRAPPER_CTOR = null;
    }

    protected static MysqlPooledConnection getInstance(Connection connection) throws SQLException {
        return !Util.isJdbc4() ? new MysqlPooledConnection(connection) : (MysqlPooledConnection) Util.handleNewInstance(JDBC_4_POOLED_CONNECTION_WRAPPER_CTOR, new Object[]{connection}, connection.getExceptionInterceptor());
    }

    public MysqlPooledConnection(Connection connection) {
        this.physicalConn = connection;
        this.exceptionInterceptor = this.physicalConn.getExceptionInterceptor();
    }

    @Override // javax.sql.PooledConnection
    public synchronized void addConnectionEventListener(ConnectionEventListener connectionEventListener) {
        if (this.connectionEventListeners != null) {
            this.connectionEventListeners.put(connectionEventListener, connectionEventListener);
        }
    }

    @Override // javax.sql.PooledConnection
    public synchronized void removeConnectionEventListener(ConnectionEventListener connectionEventListener) {
        if (this.connectionEventListeners != null) {
            this.connectionEventListeners.remove(connectionEventListener);
        }
    }

    @Override // javax.sql.PooledConnection
    public synchronized java.sql.Connection getConnection() throws SQLException {
        return getConnection(true, false);
    }

    protected synchronized java.sql.Connection getConnection(boolean z, boolean z2) throws SQLException {
        if (this.physicalConn == null) {
            SQLException sQLExceptionCreateSQLException = SQLError.createSQLException("Physical Connection doesn't exist", this.exceptionInterceptor);
            callConnectionEventListeners(1, sQLExceptionCreateSQLException);
            throw sQLExceptionCreateSQLException;
        }
        try {
            if (this.logicalHandle != null) {
                ((ConnectionWrapper) this.logicalHandle).close(false);
            }
            if (z) {
                this.physicalConn.resetServerState();
            }
            this.logicalHandle = ConnectionWrapper.getInstance(this, this.physicalConn, z2);
        } catch (SQLException e) {
            callConnectionEventListeners(1, e);
            throw e;
        }
        return this.logicalHandle;
    }

    @Override // javax.sql.PooledConnection
    public synchronized void close() throws SQLException {
        if (this.physicalConn != null) {
            this.physicalConn.close();
            this.physicalConn = null;
        }
        if (this.connectionEventListeners != null) {
            this.connectionEventListeners.clear();
            this.connectionEventListeners = null;
        }
    }

    protected synchronized void callConnectionEventListeners(int i, SQLException sQLException) {
        if (this.connectionEventListeners == null) {
            return;
        }
        Iterator<Map.Entry<ConnectionEventListener, ConnectionEventListener>> it = this.connectionEventListeners.entrySet().iterator();
        ConnectionEvent connectionEvent = new ConnectionEvent(this, sQLException);
        while (it.hasNext()) {
            ConnectionEventListener value = it.next().getValue();
            if (i == 2) {
                value.connectionClosed(connectionEvent);
            } else if (i == 1) {
                value.connectionErrorOccurred(connectionEvent);
            }
        }
    }

    protected ExceptionInterceptor getExceptionInterceptor() {
        return this.exceptionInterceptor;
    }
}
