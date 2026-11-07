package com.mysql.jdbc;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class MultiHostConnectionProxy implements InvocationHandler {
    private static Constructor<?> JDBC_4_MS_CONNECTION_CTOR = null;
    private static final String METHOD_ABORT = "abort";
    private static final String METHOD_ABORT_INTERNAL = "abortInternal";
    private static final String METHOD_CLOSE = "close";
    private static final String METHOD_EQUALS = "equals";
    private static final String METHOD_GET_AUTO_COMMIT = "getAutoCommit";
    private static final String METHOD_GET_CATALOG = "getCatalog";
    private static final String METHOD_GET_MULTI_HOST_SAFE_PROXY = "getMultiHostSafeProxy";
    private static final String METHOD_GET_SESSION_MAX_ROWS = "getSessionMaxRows";
    private static final String METHOD_GET_TRANSACTION_ISOLATION = "getTransactionIsolation";
    private static final String METHOD_HASH_CODE = "hashCode";
    private static final String METHOD_IS_CLOSED = "isClosed";
    boolean autoReconnect;
    boolean closedExplicitly;
    String closedReason;
    MySQLConnection currentConnection;
    List<String> hostList;
    boolean isClosed;
    protected Throwable lastExceptionDealtWith;
    Properties localProps;
    MySQLConnection proxyConnection;
    MySQLConnection thisAsConnection;

    abstract void doAbort(Executor executor) throws SQLException;

    abstract void doAbortInternal() throws SQLException;

    abstract void doClose() throws SQLException;

    abstract Object invokeMore(Object obj, Method method, Object[] objArr) throws Throwable;

    abstract boolean isMasterConnection();

    abstract void pickNewConnection() throws SQLException;

    abstract boolean shouldExceptionTriggerConnectionSwitch(Throwable th);

    static {
        if (Util.isJdbc4()) {
            try {
                JDBC_4_MS_CONNECTION_CTOR = Class.forName("com.mysql.jdbc.JDBC4MultiHostMySQLConnection").getConstructor(MultiHostConnectionProxy.class);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            } catch (SecurityException e3) {
                throw new RuntimeException(e3);
            }
        }
    }

    class JdbcInterfaceProxy implements InvocationHandler {
        Object invokeOn;

        JdbcInterfaceProxy(Object obj) {
            this.invokeOn = null;
            this.invokeOn = obj;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            Object objInvoke;
            Object objProxyIfReturnTypeIsJdbcInterface;
            if (MultiHostConnectionProxy.METHOD_EQUALS.equals(method.getName())) {
                return Boolean.valueOf(objArr[0].equals(this));
            }
            synchronized (MultiHostConnectionProxy.this) {
                try {
                    objInvoke = method.invoke(this.invokeOn, objArr);
                    try {
                        objProxyIfReturnTypeIsJdbcInterface = MultiHostConnectionProxy.this.proxyIfReturnTypeIsJdbcInterface(method.getReturnType(), objInvoke);
                    } catch (InvocationTargetException e) {
                        e = e;
                        MultiHostConnectionProxy.this.dealWithInvocationException(e);
                        objProxyIfReturnTypeIsJdbcInterface = objInvoke;
                    }
                } catch (InvocationTargetException e2) {
                    e = e2;
                    objInvoke = null;
                }
            }
            return objProxyIfReturnTypeIsJdbcInterface;
        }
    }

    MultiHostConnectionProxy() throws SQLException {
        this.autoReconnect = false;
        this.thisAsConnection = null;
        this.proxyConnection = null;
        this.currentConnection = null;
        this.isClosed = false;
        this.closedExplicitly = false;
        this.closedReason = null;
        this.lastExceptionDealtWith = null;
        this.thisAsConnection = getNewWrapperForThisAsConnection();
    }

    MultiHostConnectionProxy(List<String> list, Properties properties) throws SQLException {
        this();
        initializeHostsSpecs(list, properties);
    }

    int initializeHostsSpecs(List<String> list, Properties properties) {
        int i = 0;
        this.autoReconnect = "true".equalsIgnoreCase(properties.getProperty("autoReconnect")) || "true".equalsIgnoreCase(properties.getProperty("autoReconnectForPools"));
        this.hostList = list;
        int size = this.hostList.size();
        this.localProps = (Properties) properties.clone();
        this.localProps.remove(NonRegisteringDriver.HOST_PROPERTY_KEY);
        this.localProps.remove(NonRegisteringDriver.PORT_PROPERTY_KEY);
        while (i < size) {
            Properties properties2 = this.localProps;
            StringBuilder sb = new StringBuilder();
            sb.append("HOST.");
            i++;
            sb.append(i);
            properties2.remove(sb.toString());
            this.localProps.remove("PORT." + i);
        }
        this.localProps.remove(NonRegisteringDriver.NUM_HOSTS_PROPERTY_KEY);
        this.localProps.setProperty("useLocalSessionState", "true");
        return size;
    }

    MySQLConnection getNewWrapperForThisAsConnection() throws SQLException {
        return (Util.isJdbc4() || JDBC_4_MS_CONNECTION_CTOR != null) ? (MySQLConnection) Util.handleNewInstance(JDBC_4_MS_CONNECTION_CTOR, new Object[]{this}, null) : new MultiHostMySQLConnection(this);
    }

    protected MySQLConnection getProxy() {
        return this.proxyConnection != null ? this.proxyConnection : this.thisAsConnection;
    }

    protected final void setProxy(MySQLConnection mySQLConnection) {
        this.proxyConnection = mySQLConnection;
        propagateProxyDown(mySQLConnection);
    }

    protected void propagateProxyDown(MySQLConnection mySQLConnection) {
        this.currentConnection.setProxy(mySQLConnection);
    }

    Object proxyIfReturnTypeIsJdbcInterface(Class<?> cls, Object obj) {
        if (obj == null || !Util.isJdbcInterface(cls)) {
            return obj;
        }
        Class<?> cls2 = obj.getClass();
        return Proxy.newProxyInstance(cls2.getClassLoader(), Util.getImplementedInterfaces(cls2), getNewJdbcInterfaceProxy(obj));
    }

    InvocationHandler getNewJdbcInterfaceProxy(Object obj) {
        return new JdbcInterfaceProxy(obj);
    }

    void dealWithInvocationException(InvocationTargetException invocationTargetException) throws Throwable {
        Throwable targetException = invocationTargetException.getTargetException();
        if (targetException != null) {
            if (this.lastExceptionDealtWith != targetException && shouldExceptionTriggerConnectionSwitch(targetException)) {
                invalidateCurrentConnection();
                pickNewConnection();
                this.lastExceptionDealtWith = targetException;
                throw targetException;
            }
            throw targetException;
        }
        throw invocationTargetException;
    }

    synchronized void invalidateCurrentConnection() throws SQLException {
        invalidateConnection(this.currentConnection);
    }

    synchronized void invalidateConnection(MySQLConnection mySQLConnection) throws SQLException {
        if (mySQLConnection != null) {
            try {
                if (!mySQLConnection.isClosed()) {
                    mySQLConnection.realClose(true, !mySQLConnection.getAutoCommit(), true, null);
                }
            } catch (SQLException unused) {
            }
        }
    }

    synchronized ConnectionImpl createConnectionForHost(String str) throws SQLException {
        ConnectionImpl connectionImpl;
        Properties properties = (Properties) this.localProps.clone();
        String[] hostPortPair = NonRegisteringDriver.parseHostPortPair(str);
        String str2 = hostPortPair[0];
        String str3 = hostPortPair[1];
        String property = properties.getProperty(NonRegisteringDriver.DBNAME_PROPERTY_KEY);
        if (str2 == null) {
            throw new SQLException("Could not find a hostname to start a connection to");
        }
        if (str3 == null) {
            str3 = "3306";
        }
        properties.setProperty(NonRegisteringDriver.HOST_PROPERTY_KEY, str2);
        properties.setProperty(NonRegisteringDriver.PORT_PROPERTY_KEY, str3);
        properties.setProperty("HOST.1", str2);
        properties.setProperty("PORT.1", str3);
        properties.setProperty(NonRegisteringDriver.NUM_HOSTS_PROPERTY_KEY, "1");
        properties.setProperty("roundRobinLoadBalance", "false");
        connectionImpl = (ConnectionImpl) ConnectionImpl.getInstance(str2, Integer.parseInt(str3), properties, property, "jdbc:mysql://" + str2 + ":" + str3 + "/");
        connectionImpl.setProxy(getProxy());
        return connectionImpl;
    }

    static void syncSessionState(Connection connection, Connection connection2) throws SQLException {
        if (connection == null || connection2 == null) {
            return;
        }
        syncSessionState(connection, connection2, connection.isReadOnly());
    }

    static void syncSessionState(Connection connection, Connection connection2, boolean z) throws SQLException {
        if (connection2 != null) {
            connection2.setReadOnly(z);
        }
        if (connection == null || connection2 == null) {
            return;
        }
        connection2.setAutoCommit(connection.getAutoCommit());
        connection2.setCatalog(connection.getCatalog());
        connection2.setTransactionIsolation(connection.getTransactionIsolation());
        connection2.setSessionMaxRows(connection.getSessionMaxRows());
    }

    @Override // java.lang.reflect.InvocationHandler
    public synchronized Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        String name = method.getName();
        if (METHOD_GET_MULTI_HOST_SAFE_PROXY.equals(name)) {
            return this.thisAsConnection;
        }
        if (METHOD_EQUALS.equals(name)) {
            return Boolean.valueOf(objArr[0].equals(this));
        }
        if (METHOD_HASH_CODE.equals(name)) {
            return Integer.valueOf(hashCode());
        }
        if (METHOD_CLOSE.equals(name)) {
            doClose();
            this.isClosed = true;
            this.closedReason = "Connection explicitly closed.";
            this.closedExplicitly = true;
            return null;
        }
        if (METHOD_ABORT_INTERNAL.equals(name)) {
            doAbortInternal();
            this.currentConnection.abortInternal();
            this.isClosed = true;
            this.closedReason = "Connection explicitly closed.";
            return null;
        }
        if (METHOD_ABORT.equals(name) && objArr.length == 1) {
            doAbort((Executor) objArr[0]);
            this.isClosed = true;
            this.closedReason = "Connection explicitly closed.";
            return null;
        }
        if (METHOD_IS_CLOSED.equals(name)) {
            return Boolean.valueOf(this.isClosed);
        }
        try {
            try {
                return invokeMore(obj, method, objArr);
            } catch (Exception e) {
                for (Class<?> cls : method.getExceptionTypes()) {
                    if (cls.isAssignableFrom(e.getClass())) {
                        throw e;
                    }
                }
                throw new IllegalStateException(e.getMessage(), e);
            }
        } catch (InvocationTargetException e2) {
            if (e2.getCause() != null) {
                throw e2.getCause();
            }
            throw e2;
        }
    }

    protected boolean allowedOnClosedConnection(Method method) {
        String name = method.getName();
        return name.equals(METHOD_GET_AUTO_COMMIT) || name.equals(METHOD_GET_CATALOG) || name.equals(METHOD_GET_TRANSACTION_ISOLATION) || name.equals(METHOD_GET_SESSION_MAX_ROWS);
    }
}
