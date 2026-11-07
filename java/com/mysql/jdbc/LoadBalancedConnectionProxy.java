package com.mysql.jdbc;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class LoadBalancedConnectionProxy extends MultiHostConnectionProxy implements PingTarget {
    public static final String BLACKLIST_TIMEOUT_PROPERTY_KEY = "loadBalanceBlacklistTimeout";
    public static final String HOST_REMOVAL_GRACE_PERIOD_PROPERTY_KEY = "loadBalanceHostRemovalGracePeriod";
    private static Class<?>[] INTERFACES_TO_PROXY;
    private static Constructor<?> JDBC_4_LB_CONNECTION_CTOR;
    private static Map<String, Long> globalBlacklist = new HashMap();
    private static LoadBalancedConnection nullLBConnectionInstance;
    private int autoCommitSwapThreshold;
    private BalanceStrategy balancer;
    private ConnectionGroup connectionGroup;
    private long connectionGroupProxyID;
    private Map<ConnectionImpl, String> connectionsToHostsMap;
    private LoadBalanceExceptionChecker exceptionChecker;
    private int globalBlacklistTimeout;
    private int hostRemovalGracePeriod;
    private Map<String, Integer> hostsToListIndexMap;
    protected Map<String, ConnectionImpl> liveConnections;
    private long[] responseTimes;
    private int retriesAllDown;
    private long totalPhysicalConnections = 0;
    private Set<String> hostsToRemove = new HashSet();
    private boolean inTransaction = false;
    private long transactionStartTime = 0;
    private long transactionCount = 0;

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    boolean isMasterConnection() {
        return true;
    }

    static {
        if (Util.isJdbc4()) {
            try {
                JDBC_4_LB_CONNECTION_CTOR = Class.forName("com.mysql.jdbc.JDBC4LoadBalancedMySQLConnection").getConstructor(LoadBalancedConnectionProxy.class);
                INTERFACES_TO_PROXY = new Class[]{LoadBalancedConnection.class, Class.forName("com.mysql.jdbc.JDBC4MySQLConnection")};
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            } catch (SecurityException e3) {
                throw new RuntimeException(e3);
            }
        } else {
            INTERFACES_TO_PROXY = new Class[]{LoadBalancedConnection.class};
        }
        nullLBConnectionInstance = null;
    }

    public static LoadBalancedConnection createProxyInstance(List<String> list, Properties properties) throws SQLException {
        return (LoadBalancedConnection) Proxy.newProxyInstance(LoadBalancedConnection.class.getClassLoader(), INTERFACES_TO_PROXY, new LoadBalancedConnectionProxy(list, properties));
    }

    private LoadBalancedConnectionProxy(List<String> list, Properties properties) throws SQLException {
        this.connectionGroup = null;
        this.connectionGroupProxyID = 0L;
        this.autoCommitSwapThreshold = 0;
        this.globalBlacklistTimeout = 0;
        this.hostRemovalGracePeriod = 0;
        String property = properties.getProperty("loadBalanceConnectionGroup", null);
        String property2 = properties.getProperty("loadBalanceEnableJMX", "false");
        try {
            boolean z = Boolean.parseBoolean(property2);
            if (property != null) {
                this.connectionGroup = ConnectionGroupManager.getConnectionGroupInstance(property);
                if (z) {
                    ConnectionGroupManager.registerJmx();
                }
                this.connectionGroupProxyID = this.connectionGroup.registerConnectionProxy(this, list);
                list = new ArrayList<>(this.connectionGroup.getInitialHosts());
            }
            int iInitializeHostsSpecs = initializeHostsSpecs(list, properties);
            this.liveConnections = new HashMap(iInitializeHostsSpecs);
            this.hostsToListIndexMap = new HashMap(iInitializeHostsSpecs);
            for (int i = 0; i < iInitializeHostsSpecs; i++) {
                this.hostsToListIndexMap.put(this.hostList.get(i), Integer.valueOf(i));
            }
            this.connectionsToHostsMap = new HashMap(iInitializeHostsSpecs);
            this.responseTimes = new long[iInitializeHostsSpecs];
            String property3 = this.localProps.getProperty("retriesAllDown", "120");
            try {
                this.retriesAllDown = Integer.parseInt(property3);
                String property4 = this.localProps.getProperty(BLACKLIST_TIMEOUT_PROPERTY_KEY, "0");
                try {
                    this.globalBlacklistTimeout = Integer.parseInt(property4);
                    String property5 = this.localProps.getProperty(HOST_REMOVAL_GRACE_PERIOD_PROPERTY_KEY, "15000");
                    try {
                        this.hostRemovalGracePeriod = Integer.parseInt(property5);
                        String property6 = this.localProps.getProperty("loadBalanceStrategy", "random");
                        if ("random".equals(property6)) {
                            this.balancer = (BalanceStrategy) Util.loadExtensions(null, properties, RandomBalanceStrategy.class.getName(), "InvalidLoadBalanceStrategy", null).get(0);
                        } else if ("bestResponseTime".equals(property6)) {
                            this.balancer = (BalanceStrategy) Util.loadExtensions(null, properties, BestResponseTimeBalanceStrategy.class.getName(), "InvalidLoadBalanceStrategy", null).get(0);
                        } else if ("serverAffinity".equals(property6)) {
                            this.balancer = (BalanceStrategy) Util.loadExtensions(null, properties, ServerAffinityStrategy.class.getName(), "InvalidLoadBalanceStrategy", null).get(0);
                        } else {
                            this.balancer = (BalanceStrategy) Util.loadExtensions(null, properties, property6, "InvalidLoadBalanceStrategy", null).get(0);
                        }
                        String property7 = properties.getProperty("loadBalanceAutoCommitStatementThreshold", "0");
                        try {
                            this.autoCommitSwapThreshold = Integer.parseInt(property7);
                            String property8 = properties.getProperty("loadBalanceAutoCommitStatementRegex", "");
                            if (!"".equals(property8)) {
                                try {
                                    "".matches(property8);
                                } catch (Exception unused) {
                                    throw SQLError.createSQLException(Messages.getString("LoadBalancedConnectionProxy.badValueForLoadBalanceAutoCommitStatementRegex", new Object[]{property8}), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (ExceptionInterceptor) null);
                                }
                            }
                            if (this.autoCommitSwapThreshold > 0) {
                                String property9 = this.localProps.getProperty("statementInterceptors");
                                if (property9 == null) {
                                    this.localProps.setProperty("statementInterceptors", "com.mysql.jdbc.LoadBalancedAutoCommitInterceptor");
                                } else if (property9.length() > 0) {
                                    this.localProps.setProperty("statementInterceptors", property9 + ",com.mysql.jdbc.LoadBalancedAutoCommitInterceptor");
                                }
                                properties.setProperty("statementInterceptors", this.localProps.getProperty("statementInterceptors"));
                            }
                            this.balancer.init(null, properties);
                            this.exceptionChecker = (LoadBalanceExceptionChecker) Util.loadExtensions(null, properties, this.localProps.getProperty("loadBalanceExceptionChecker", "com.mysql.jdbc.StandardLoadBalanceExceptionChecker"), "InvalidLoadBalanceExceptionChecker", null).get(0);
                            pickNewConnection();
                        } catch (NumberFormatException unused2) {
                            throw SQLError.createSQLException(Messages.getString("LoadBalancedConnectionProxy.badValueForLoadBalanceAutoCommitStatementThreshold", new Object[]{property7}), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (ExceptionInterceptor) null);
                        }
                    } catch (NumberFormatException unused3) {
                        throw SQLError.createSQLException(Messages.getString("LoadBalancedConnectionProxy.badValueForLoadBalanceHostRemovalGracePeriod", new Object[]{property5}), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (ExceptionInterceptor) null);
                    }
                } catch (NumberFormatException unused4) {
                    throw SQLError.createSQLException(Messages.getString("LoadBalancedConnectionProxy.badValueForLoadBalanceBlacklistTimeout", new Object[]{property4}), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (ExceptionInterceptor) null);
                }
            } catch (NumberFormatException unused5) {
                throw SQLError.createSQLException(Messages.getString("LoadBalancedConnectionProxy.badValueForRetriesAllDown", new Object[]{property3}), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (ExceptionInterceptor) null);
            }
        } catch (Exception unused6) {
            throw SQLError.createSQLException(Messages.getString("LoadBalancedConnectionProxy.badValueForLoadBalanceEnableJMX", new Object[]{property2}), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (ExceptionInterceptor) null);
        }
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    MySQLConnection getNewWrapperForThisAsConnection() throws SQLException {
        return (Util.isJdbc4() || JDBC_4_LB_CONNECTION_CTOR != null) ? (MySQLConnection) Util.handleNewInstance(JDBC_4_LB_CONNECTION_CTOR, new Object[]{this}, null) : new LoadBalancedMySQLConnection(this);
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    protected void propagateProxyDown(MySQLConnection mySQLConnection) {
        Iterator<ConnectionImpl> it = this.liveConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setProxy(mySQLConnection);
        }
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    boolean shouldExceptionTriggerConnectionSwitch(Throwable th) {
        return (th instanceof SQLException) && this.exceptionChecker.shouldExceptionTriggerFailover((SQLException) th);
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    synchronized void invalidateConnection(MySQLConnection mySQLConnection) throws SQLException {
        super.invalidateConnection(mySQLConnection);
        if (isGlobalBlacklistEnabled()) {
            addToGlobalBlacklist(this.connectionsToHostsMap.get(mySQLConnection));
        }
        this.liveConnections.remove(this.connectionsToHostsMap.get(mySQLConnection));
        String strRemove = this.connectionsToHostsMap.remove(mySQLConnection);
        if (strRemove != null && this.hostsToListIndexMap.containsKey(strRemove)) {
            int iIntValue = this.hostsToListIndexMap.get(strRemove).intValue();
            synchronized (this.responseTimes) {
                this.responseTimes[iIntValue] = 0;
            }
        }
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    synchronized void pickNewConnection() throws SQLException {
        if (this.isClosed && this.closedExplicitly) {
            return;
        }
        if (this.currentConnection == null) {
            this.currentConnection = this.balancer.pickConnection(this, Collections.unmodifiableList(this.hostList), Collections.unmodifiableMap(this.liveConnections), (long[]) this.responseTimes.clone(), this.retriesAllDown);
            return;
        }
        if (this.currentConnection.isClosed()) {
            invalidateCurrentConnection();
        }
        int loadBalancePingTimeout = this.currentConnection.getLoadBalancePingTimeout();
        boolean loadBalanceValidateConnectionOnSwapServer = this.currentConnection.getLoadBalanceValidateConnectionOnSwapServer();
        int size = this.hostList.size();
        for (int i = 0; i < size; i++) {
            ConnectionImpl connectionImpl = null;
            try {
                ConnectionImpl connectionImplPickConnection = this.balancer.pickConnection(this, Collections.unmodifiableList(this.hostList), Collections.unmodifiableMap(this.liveConnections), (long[]) this.responseTimes.clone(), this.retriesAllDown);
                try {
                    if (this.currentConnection != null) {
                        if (loadBalanceValidateConnectionOnSwapServer) {
                            if (loadBalancePingTimeout == 0) {
                                connectionImplPickConnection.ping();
                            } else {
                                connectionImplPickConnection.pingInternal(true, loadBalancePingTimeout);
                            }
                        }
                        syncSessionState(this.currentConnection, connectionImplPickConnection);
                    }
                    this.currentConnection = connectionImplPickConnection;
                    return;
                } catch (SQLException e) {
                    e = e;
                    connectionImpl = connectionImplPickConnection;
                    if (shouldExceptionTriggerConnectionSwitch(e) && connectionImpl != null) {
                        invalidateConnection(connectionImpl);
                    }
                }
            } catch (SQLException e2) {
                e = e2;
            }
        }
        this.isClosed = true;
        this.closedReason = "Connection closed after inability to pick valid new connection during load-balance.";
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    public synchronized ConnectionImpl createConnectionForHost(String str) throws SQLException {
        ConnectionImpl connectionImplCreateConnectionForHost;
        connectionImplCreateConnectionForHost = super.createConnectionForHost(str);
        this.liveConnections.put(str, connectionImplCreateConnectionForHost);
        this.connectionsToHostsMap.put(connectionImplCreateConnectionForHost, str);
        this.totalPhysicalConnections++;
        return connectionImplCreateConnectionForHost;
    }

    private synchronized void closeAllConnections() {
        Iterator<ConnectionImpl> it = this.liveConnections.values().iterator();
        while (it.hasNext()) {
            try {
                it.next().close();
            } catch (SQLException unused) {
            }
        }
        if (!this.isClosed) {
            this.balancer.destroy();
            if (this.connectionGroup != null) {
                this.connectionGroup.closeConnectionProxy(this);
            }
        }
        this.liveConnections.clear();
        this.connectionsToHostsMap.clear();
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    synchronized void doClose() {
        closeAllConnections();
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    synchronized void doAbortInternal() {
        Iterator<ConnectionImpl> it = this.liveConnections.values().iterator();
        while (it.hasNext()) {
            try {
                it.next().abortInternal();
            } catch (SQLException unused) {
            }
        }
        if (!this.isClosed) {
            this.balancer.destroy();
            if (this.connectionGroup != null) {
                this.connectionGroup.closeConnectionProxy(this);
            }
        }
        this.liveConnections.clear();
        this.connectionsToHostsMap.clear();
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    synchronized void doAbort(Executor executor) {
        Iterator<ConnectionImpl> it = this.liveConnections.values().iterator();
        while (it.hasNext()) {
            try {
                it.next().abort(executor);
            } catch (SQLException unused) {
            }
        }
        if (!this.isClosed) {
            this.balancer.destroy();
            if (this.connectionGroup != null) {
                this.connectionGroup.closeConnectionProxy(this);
            }
        }
        this.liveConnections.clear();
        this.connectionsToHostsMap.clear();
    }

    @Override // com.mysql.jdbc.MultiHostConnectionProxy
    public synchronized Object invokeMore(Object obj, Method method, Object[] objArr) throws Throwable {
        Object objInvoke;
        Object objProxyIfReturnTypeIsJdbcInterface;
        String name = method.getName();
        if (this.isClosed && !allowedOnClosedConnection(method) && method.getExceptionTypes().length > 0) {
            if (this.autoReconnect && !this.closedExplicitly) {
                this.currentConnection = null;
                pickNewConnection();
                this.isClosed = false;
                this.closedReason = null;
            } else {
                String str = "No operations allowed after connection closed.";
                if (this.closedReason != null) {
                    str = "No operations allowed after connection closed. " + this.closedReason;
                }
                throw SQLError.createSQLException(str, SQLError.SQL_STATE_CONNECTION_NOT_OPEN, (ExceptionInterceptor) null);
            }
        }
        if (!this.inTransaction) {
            this.inTransaction = true;
            this.transactionStartTime = System.nanoTime();
            this.transactionCount++;
        }
        try {
            try {
                objInvoke = method.invoke(this.thisAsConnection, objArr);
                if (objInvoke != null) {
                    try {
                        if (objInvoke instanceof Statement) {
                            ((Statement) objInvoke).setPingTarget(this);
                        }
                        objProxyIfReturnTypeIsJdbcInterface = proxyIfReturnTypeIsJdbcInterface(method.getReturnType(), objInvoke);
                    } catch (InvocationTargetException e) {
                        e = e;
                        dealWithInvocationException(e);
                        if ("commit".equals(name) || "rollback".equals(name)) {
                            this.inTransaction = false;
                            String str2 = this.connectionsToHostsMap.get(this.currentConnection);
                            if (str2 != null) {
                                synchronized (this.responseTimes) {
                                    Integer num = this.hostsToListIndexMap.get(str2);
                                    if (num != null && num.intValue() < this.responseTimes.length) {
                                        this.responseTimes[num.intValue()] = System.nanoTime() - this.transactionStartTime;
                                    }
                                }
                            }
                            pickNewConnection();
                        }
                        objProxyIfReturnTypeIsJdbcInterface = objInvoke;
                    }
                } else {
                    objProxyIfReturnTypeIsJdbcInterface = objInvoke;
                }
                if ("commit".equals(name) || "rollback".equals(name)) {
                    this.inTransaction = false;
                    String str3 = this.connectionsToHostsMap.get(this.currentConnection);
                    if (str3 != null) {
                        synchronized (this.responseTimes) {
                            Integer num2 = this.hostsToListIndexMap.get(str3);
                            if (num2 != null && num2.intValue() < this.responseTimes.length) {
                                this.responseTimes[num2.intValue()] = System.nanoTime() - this.transactionStartTime;
                            }
                        }
                    }
                    pickNewConnection();
                }
            } catch (InvocationTargetException e2) {
                e = e2;
                objInvoke = null;
            }
        } catch (Throwable th) {
            if ("commit".equals(name) || "rollback".equals(name)) {
                this.inTransaction = false;
                String str4 = this.connectionsToHostsMap.get(this.currentConnection);
                if (str4 != null) {
                    synchronized (this.responseTimes) {
                        Integer num3 = this.hostsToListIndexMap.get(str4);
                        if (num3 != null && num3.intValue() < this.responseTimes.length) {
                            this.responseTimes[num3.intValue()] = System.nanoTime() - this.transactionStartTime;
                        }
                    }
                }
                pickNewConnection();
            }
            throw th;
        }
        return objProxyIfReturnTypeIsJdbcInterface;
    }

    @Override // com.mysql.jdbc.PingTarget
    public synchronized void doPing() throws SQLException {
        SQLException sQLException = null;
        boolean z = false;
        int loadBalancePingTimeout = this.currentConnection.getLoadBalancePingTimeout();
        for (String str : this.hostList) {
            ConnectionImpl connectionImpl = this.liveConnections.get(str);
            if (connectionImpl != null) {
                if (loadBalancePingTimeout == 0) {
                    try {
                        connectionImpl.ping();
                    } catch (SQLException e) {
                        if (str.equals(this.connectionsToHostsMap.get(this.currentConnection))) {
                            closeAllConnections();
                            this.isClosed = true;
                            this.closedReason = "Connection closed because ping of current connection failed.";
                            throw e;
                        }
                        if (!e.getMessage().equals(Messages.getString("Connection.exceededConnectionLifetime"))) {
                            if (isGlobalBlacklistEnabled()) {
                                addToGlobalBlacklist(str);
                            }
                        } else {
                            if (sQLException == null) {
                            }
                            this.liveConnections.remove(this.connectionsToHostsMap.get(connectionImpl));
                        }
                        sQLException = e;
                        this.liveConnections.remove(this.connectionsToHostsMap.get(connectionImpl));
                    }
                } else {
                    connectionImpl.pingInternal(true, loadBalancePingTimeout);
                }
                z = true;
            }
        }
        if (!z) {
            closeAllConnections();
            this.isClosed = true;
            this.closedReason = "Connection closed due to inability to ping any active connections.";
            if (sQLException != null) {
                throw sQLException;
            }
            ((ConnectionImpl) this.currentConnection).throwConnectionClosedException();
        }
    }

    public void addToGlobalBlacklist(String str, long j) {
        if (isGlobalBlacklistEnabled()) {
            synchronized (globalBlacklist) {
                globalBlacklist.put(str, Long.valueOf(j));
            }
        }
    }

    public void addToGlobalBlacklist(String str) {
        addToGlobalBlacklist(str, System.currentTimeMillis() + ((long) this.globalBlacklistTimeout));
    }

    public boolean isGlobalBlacklistEnabled() {
        return this.globalBlacklistTimeout > 0;
    }

    public synchronized Map<String, Long> getGlobalBlacklist() {
        if (!isGlobalBlacklistEnabled()) {
            if (this.hostsToRemove.isEmpty()) {
                return new HashMap(1);
            }
            HashMap map = new HashMap();
            Iterator<String> it = this.hostsToRemove.iterator();
            while (it.hasNext()) {
                map.put(it.next(), Long.valueOf(System.currentTimeMillis() + 5000));
            }
            return map;
        }
        HashMap map2 = new HashMap(globalBlacklist.size());
        synchronized (globalBlacklist) {
            map2.putAll(globalBlacklist);
        }
        Set setKeySet = map2.keySet();
        setKeySet.retainAll(this.hostList);
        Iterator it2 = setKeySet.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            Long l = globalBlacklist.get(str);
            if (l != null && l.longValue() < System.currentTimeMillis()) {
                synchronized (globalBlacklist) {
                    globalBlacklist.remove(str);
                }
                it2.remove();
            }
        }
        if (setKeySet.size() != this.hostList.size()) {
            return map2;
        }
        return new HashMap(1);
    }

    public void removeHostWhenNotInUse(String str) throws SQLException {
        if (this.hostRemovalGracePeriod <= 0) {
            removeHost(str);
            return;
        }
        int i = this.hostRemovalGracePeriod <= 1000 ? this.hostRemovalGracePeriod : 1000;
        synchronized (this) {
            long j = i;
            addToGlobalBlacklist(str, System.currentTimeMillis() + ((long) this.hostRemovalGracePeriod) + j);
            long jCurrentTimeMillis = System.currentTimeMillis();
            while (System.currentTimeMillis() < ((long) this.hostRemovalGracePeriod) + jCurrentTimeMillis) {
                this.hostsToRemove.add(str);
                if (!str.equals(this.currentConnection.getHostPortPair())) {
                    removeHost(str);
                    return;
                }
                try {
                    Thread.sleep(j);
                } catch (InterruptedException unused) {
                }
            }
            removeHost(str);
        }
    }

    public synchronized void removeHost(String str) throws SQLException {
        if (this.connectionGroup != null && this.connectionGroup.getInitialHosts().size() == 1 && this.connectionGroup.getInitialHosts().contains(str)) {
            throw SQLError.createSQLException("Cannot remove only configured host.", null);
        }
        this.hostsToRemove.add(str);
        this.connectionsToHostsMap.remove(this.liveConnections.remove(str));
        if (this.hostsToListIndexMap.remove(str) != null) {
            long[] jArr = new long[this.responseTimes.length - 1];
            int i = 0;
            for (String str2 : this.hostList) {
                if (!this.hostsToRemove.contains(str2)) {
                    Integer num = this.hostsToListIndexMap.get(str2);
                    if (num != null && num.intValue() < this.responseTimes.length) {
                        jArr[i] = this.responseTimes[num.intValue()];
                    }
                    this.hostsToListIndexMap.put(str2, Integer.valueOf(i));
                    i++;
                }
            }
            this.responseTimes = jArr;
        }
        if (str.equals(this.currentConnection.getHostPortPair())) {
            invalidateConnection(this.currentConnection);
            pickNewConnection();
        }
    }

    public synchronized boolean addHost(String str) {
        if (this.hostsToListIndexMap.containsKey(str)) {
            return false;
        }
        long[] jArr = new long[this.responseTimes.length + 1];
        System.arraycopy(this.responseTimes, 0, jArr, 0, this.responseTimes.length);
        this.responseTimes = jArr;
        if (!this.hostList.contains(str)) {
            this.hostList.add(str);
        }
        this.hostsToListIndexMap.put(str, Integer.valueOf(this.responseTimes.length - 1));
        this.hostsToRemove.remove(str);
        return true;
    }

    public synchronized boolean inTransaction() {
        return this.inTransaction;
    }

    public synchronized long getTransactionCount() {
        return this.transactionCount;
    }

    public synchronized long getActivePhysicalConnectionCount() {
        return this.liveConnections.size();
    }

    public synchronized long getTotalPhysicalConnectionCount() {
        return this.totalPhysicalConnections;
    }

    public synchronized long getConnectionGroupProxyID() {
        return this.connectionGroupProxyID;
    }

    public synchronized String getCurrentActiveHost() {
        String str;
        MySQLConnection mySQLConnection = this.currentConnection;
        if (mySQLConnection == null || (str = this.connectionsToHostsMap.get(mySQLConnection)) == null) {
            return null;
        }
        return str.toString();
    }

    public synchronized long getCurrentTransactionDuration() {
        if (!this.inTransaction || this.transactionStartTime <= 0) {
            return 0L;
        }
        return System.nanoTime() - this.transactionStartTime;
    }

    private static class NullLoadBalancedConnectionProxy implements InvocationHandler {
        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(Messages.getString("LoadBalancedConnectionProxy.unusableConnection"), SQLError.SQL_STATE_INVALID_TRANSACTION_STATE, MysqlErrorNumbers.ERROR_CODE_NULL_LOAD_BALANCED_CONNECTION, true, (ExceptionInterceptor) null);
            for (Class<?> cls : method.getExceptionTypes()) {
                if (cls.isAssignableFrom(sQLExceptionCreateSQLException.getClass())) {
                    throw sQLExceptionCreateSQLException;
                }
            }
            throw new IllegalStateException(sQLExceptionCreateSQLException.getMessage(), sQLExceptionCreateSQLException);
        }
    }

    static synchronized LoadBalancedConnection getNullLoadBalancedConnectionInstance() {
        if (nullLBConnectionInstance == null) {
            nullLBConnectionInstance = (LoadBalancedConnection) Proxy.newProxyInstance(LoadBalancedConnection.class.getClassLoader(), INTERFACES_TO_PROXY, new NullLoadBalancedConnectionProxy());
        }
        return nullLBConnectionInstance;
    }
}
