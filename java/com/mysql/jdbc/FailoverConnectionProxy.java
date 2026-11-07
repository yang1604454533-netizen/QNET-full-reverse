package com.mysql.jdbc;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class FailoverConnectionProxy extends MultiHostConnectionProxy {
    private static final int DEFAULT_PRIMARY_HOST_INDEX = 0;
    private static Class<?>[] INTERFACES_TO_PROXY = null;
    private static final String METHOD_COMMIT = "commit";
    private static final String METHOD_ROLLBACK = "rollback";
    private static final String METHOD_SET_AUTO_COMMIT = "setAutoCommit";
    private static final String METHOD_SET_READ_ONLY = "setReadOnly";
    private static final int NO_CONNECTION_INDEX = -1;
    private int currentHostIndex;
    private boolean enableFallBackToPrimaryHost;
    private boolean explicitlyAutoCommit;
    private Boolean explicitlyReadOnly;
    private boolean failoverReadOnly;
    private long primaryHostFailTimeMillis;
    private int primaryHostIndex;
    private long queriesBeforeRetryPrimaryHost;
    private long queriesIssuedSinceFailover;
    private int retriesAllDown;
    private int secondsBeforeRetryPrimaryHost;

    static {
        if (Util.isJdbc4()) {
            try {
                INTERFACES_TO_PROXY = new Class[]{Class.forName("com.mysql.jdbc.JDBC4MySQLConnection")};
                return;
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
        INTERFACES_TO_PROXY = new Class[]{MySQLConnection.class};
    }

    class FailoverJdbcInterfaceProxy extends MultiHostConnectionProxy.JdbcInterfaceProxy {
        FailoverJdbcInterfaceProxy(Object obj) {
            super(obj);
        }

        @Override // com.mysql.jdbc.MultiHostConnectionProxy.JdbcInterfaceProxy, java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            boolean zStartsWith = method.getName().startsWith("execute");
            if (FailoverConnectionProxy.this.connectedToSecondaryHost() && zStartsWith) {
                FailoverConnectionProxy.this.incrementQueriesIssuedSinceFailover();
            }
            Object objInvoke = super.invoke(obj, method, objArr);
            if (FailoverConnectionProxy.this.explicitlyAutoCommit && zStartsWith && FailoverConnectionProxy.this.readyToFallBackToPrimaryHost()) {
                FailoverConnectionProxy.this.fallBackToPrimaryIfAvailable();
            }
            return objInvoke;
        }
    }

    public static Connection createProxyInstance(List<String> list, Properties properties) throws SQLException {
        return (Connection) Proxy.newProxyInstance(Connection.class.getClassLoader(), INTERFACES_TO_PROXY, new FailoverConnectionProxy(list, properties));
    }

    private FailoverConnectionProxy(List<String> list, Properties properties) throws SQLException {
        super(list, properties);
        this.currentHostIndex = -1;
        this.primaryHostIndex = 0;
        this.explicitlyReadOnly = null;
        this.explicitlyAutoCommit = true;
        this.enableFallBackToPrimaryHost = true;
        this.primaryHostFailTimeMillis = 0L;
        this.queriesIssuedSinceFailover = 0L;
        ConnectionPropertiesImpl connectionPropertiesImpl = new ConnectionPropertiesImpl();
        connectionPropertiesImpl.initializeProperties(properties);
        this.secondsBeforeRetryPrimaryHost = connectionPropertiesImpl.getSecondsBeforeRetryMaster();
        this.queriesBeforeRetryPrimaryHost = connectionPropertiesImpl.getQueriesBeforeRetryMaster();
        this.failoverReadOnly = connectionPropertiesImpl.getFailOverReadOnly();
        this.retriesAllDown = connectionPropertiesImpl.getRetriesAllDown();
        this.enableFallBackToPrimaryHost = this.secondsBeforeRetryPrimaryHost > 0 || this.queriesBeforeRetryPrimaryHost > 0;
        pickNewConnection();
        this.explicitlyAutoCommit = this.currentConnection.getAutoCommit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    public MultiHostConnectionProxy.JdbcInterfaceProxy getNewJdbcInterfaceProxy(Object obj) {
        return new FailoverJdbcInterfaceProxy(obj);
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    boolean shouldExceptionTriggerConnectionSwitch(Throwable th) {
        if (!(th instanceof SQLException)) {
            return false;
        }
        String sQLState = ((SQLException) th).getSQLState();
        return (sQLState != null && sQLState.startsWith("08")) || (th instanceof CommunicationsException);
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    boolean isMasterConnection() {
        return connectedToPrimaryHost();
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    synchronized void pickNewConnection() throws SQLException {
        if (this.isClosed && this.closedExplicitly) {
            return;
        }
        if (!isConnected() || readyToFallBackToPrimaryHost()) {
            try {
                connectTo(this.primaryHostIndex);
            } catch (SQLException unused) {
                resetAutoFallBackCounters();
                failOver(this.primaryHostIndex);
            }
        } else {
            failOver();
        }
    }

    synchronized ConnectionImpl createConnectionForHostIndex(int i) throws SQLException {
        return createConnectionForHost(this.hostList.get(i));
    }

    private synchronized void connectTo(int i) throws SQLException {
        try {
            switchCurrentConnectionTo(i, createConnectionForHostIndex(i));
        } catch (SQLException e) {
            if (this.currentConnection != null) {
                StringBuilder sb = new StringBuilder("Connection to ");
                sb.append(isPrimaryHostIndex(i) ? "primary" : "secondary");
                sb.append(" host '");
                sb.append(this.hostList.get(i));
                sb.append("' failed");
                this.currentConnection.getLog().logWarn(sb.toString(), e);
            }
            throw e;
        }
    }

    private synchronized void switchCurrentConnectionTo(int i, MySQLConnection mySQLConnection) throws SQLException {
        invalidateCurrentConnection();
        boolean zIsReadOnly = false;
        if (isPrimaryHostIndex(i)) {
            if (this.explicitlyReadOnly != null) {
                zIsReadOnly = this.explicitlyReadOnly.booleanValue();
            }
        } else if (this.failoverReadOnly) {
            zIsReadOnly = true;
        } else if (this.explicitlyReadOnly != null) {
            zIsReadOnly = this.explicitlyReadOnly.booleanValue();
        } else if (this.currentConnection != null) {
            zIsReadOnly = this.currentConnection.isReadOnly();
        }
        syncSessionState(this.currentConnection, mySQLConnection, zIsReadOnly);
        this.currentConnection = mySQLConnection;
        this.currentHostIndex = i;
    }

    private synchronized void failOver() throws SQLException {
        failOver(this.currentHostIndex);
    }

    private synchronized void failOver(int i) throws SQLException {
        int i2 = this.currentHostIndex;
        int iNextHost = nextHost(i, false);
        boolean z = i2 == -1 || isPrimaryHostIndex(i2);
        SQLException e = null;
        int i3 = 0;
        boolean z2 = false;
        int iNextHost2 = iNextHost;
        do {
            if (!z) {
                try {
                    z = isPrimaryHostIndex(iNextHost2);
                } catch (SQLException e2) {
                    e = e2;
                    if (shouldExceptionTriggerConnectionSwitch(e)) {
                        int iNextHost3 = nextHost(iNextHost2, i3 > 0);
                        if (iNextHost3 == iNextHost) {
                            iNextHost2 = nextHost(iNextHost2, true);
                            if (iNextHost3 == iNextHost2) {
                                i3++;
                                try {
                                    Thread.sleep(250L);
                                } catch (InterruptedException unused) {
                                }
                            }
                        } else {
                            iNextHost2 = iNextHost3;
                        }
                    } else {
                        throw e;
                    }
                }
            }
            connectTo(iNextHost2);
            if (z && connectedToSecondaryHost()) {
                resetAutoFallBackCounters();
            }
            z2 = true;
            if (i3 >= this.retriesAllDown) {
                break;
            }
        } while (!z2);
        if (!z2) {
            throw e;
        }
    }

    synchronized void fallBackToPrimaryIfAvailable() {
        ConnectionImpl connectionImpl = null;
        try {
            ConnectionImpl connectionImplCreateConnectionForHostIndex = createConnectionForHostIndex(this.primaryHostIndex);
            try {
                switchCurrentConnectionTo(this.primaryHostIndex, connectionImplCreateConnectionForHostIndex);
            } catch (SQLException unused) {
                connectionImpl = connectionImplCreateConnectionForHostIndex;
                if (connectionImpl != null) {
                    try {
                        connectionImpl.close();
                    } catch (SQLException unused2) {
                    }
                }
                resetAutoFallBackCounters();
            }
        } catch (SQLException unused3) {
        }
    }

    private int nextHost(int i, boolean z) {
        int size = (i + 1) % this.hostList.size();
        return (isPrimaryHostIndex(size) && isConnected() && !z && this.enableFallBackToPrimaryHost && !readyToFallBackToPrimaryHost()) ? nextHost(size, z) : size;
    }

    synchronized void incrementQueriesIssuedSinceFailover() {
        this.queriesIssuedSinceFailover++;
    }

    synchronized boolean readyToFallBackToPrimaryHost() {
        return this.enableFallBackToPrimaryHost && connectedToSecondaryHost() && (secondsBeforeRetryPrimaryHostIsMet() || queriesBeforeRetryPrimaryHostIsMet());
    }

    synchronized boolean isConnected() {
        return this.currentHostIndex != -1;
    }

    synchronized boolean isPrimaryHostIndex(int i) {
        return i == this.primaryHostIndex;
    }

    synchronized boolean connectedToPrimaryHost() {
        return isPrimaryHostIndex(this.currentHostIndex);
    }

    synchronized boolean connectedToSecondaryHost() {
        return this.currentHostIndex >= 0 && !isPrimaryHostIndex(this.currentHostIndex);
    }

    private synchronized boolean secondsBeforeRetryPrimaryHostIsMet() {
        return this.secondsBeforeRetryPrimaryHost > 0 && Util.secondsSinceMillis(this.primaryHostFailTimeMillis) >= ((long) this.secondsBeforeRetryPrimaryHost);
    }

    private synchronized boolean queriesBeforeRetryPrimaryHostIsMet() {
        return this.queriesBeforeRetryPrimaryHost > 0 && this.queriesIssuedSinceFailover >= this.queriesBeforeRetryPrimaryHost;
    }

    private synchronized void resetAutoFallBackCounters() {
        this.primaryHostFailTimeMillis = System.currentTimeMillis();
        this.queriesIssuedSinceFailover = 0L;
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    synchronized void doClose() throws SQLException {
        this.currentConnection.close();
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    synchronized void doAbortInternal() throws SQLException {
        this.currentConnection.abortInternal();
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    synchronized void doAbort(Executor executor) throws SQLException {
        this.currentConnection.abort(executor);
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    public synchronized Object invokeMore(Object obj, Method method, Object[] objArr) throws Throwable {
        Object objInvoke;
        Object objProxyIfReturnTypeIsJdbcInterface;
        String name = method.getName();
        if (METHOD_SET_READ_ONLY.equals(name)) {
            this.explicitlyReadOnly = (Boolean) objArr[0];
            if (this.failoverReadOnly && connectedToSecondaryHost()) {
                return null;
            }
        }
        if (this.isClosed && !allowedOnClosedConnection(method)) {
            if (this.autoReconnect && !this.closedExplicitly) {
                this.currentHostIndex = -1;
                pickNewConnection();
                this.isClosed = false;
                this.closedReason = null;
            } else {
                String str = "No operations allowed after connection closed.";
                if (this.closedReason != null) {
                    str = "No operations allowed after connection closed.  " + this.closedReason;
                }
                throw SQLError.createSQLException(str, SQLError.SQL_STATE_CONNECTION_NOT_OPEN, (ExceptionInterceptor) null);
            }
        }
        try {
            objInvoke = method.invoke(this.thisAsConnection, objArr);
            try {
                objProxyIfReturnTypeIsJdbcInterface = proxyIfReturnTypeIsJdbcInterface(method.getReturnType(), objInvoke);
            } catch (InvocationTargetException e) {
                e = e;
                dealWithInvocationException(e);
                objProxyIfReturnTypeIsJdbcInterface = objInvoke;
            }
        } catch (InvocationTargetException e2) {
            e = e2;
            objInvoke = null;
        }
        if (METHOD_SET_AUTO_COMMIT.equals(name)) {
            this.explicitlyAutoCommit = ((Boolean) objArr[0]).booleanValue();
        }
        if ((this.explicitlyAutoCommit || METHOD_COMMIT.equals(name) || METHOD_ROLLBACK.equals(name)) && readyToFallBackToPrimaryHost()) {
            fallBackToPrimaryIfAvailable();
        }
        return objProxyIfReturnTypeIsJdbcInterface;
    }
}
