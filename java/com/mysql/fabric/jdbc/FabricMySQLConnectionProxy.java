package com.mysql.fabric.jdbc;

import com.mysql.fabric.FabricCommunicationException;
import com.mysql.fabric.FabricConnection;
import com.mysql.fabric.Server;
import com.mysql.fabric.ServerGroup;
import com.mysql.fabric.ShardMapping;
import com.mysql.jdbc.Buffer;
import com.mysql.jdbc.CachedResultSetMetaData;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ConnectionPropertiesImpl;
import com.mysql.jdbc.ExceptionInterceptor;
import com.mysql.jdbc.Extension;
import com.mysql.jdbc.Field;
import com.mysql.jdbc.MySQLConnection;
import com.mysql.jdbc.MysqlIO;
import com.mysql.jdbc.NonRegisteringDriver;
import com.mysql.jdbc.ReplicationConnection;
import com.mysql.jdbc.ReplicationConnectionGroup;
import com.mysql.jdbc.ReplicationConnectionGroupManager;
import com.mysql.jdbc.ReplicationConnectionProxy;
import com.mysql.jdbc.ResultSetInternalMethods;
import com.mysql.jdbc.SQLError;
import com.mysql.jdbc.ServerPreparedStatement;
import com.mysql.jdbc.SingleByteCharsetConverter;
import com.mysql.jdbc.Statement;
import com.mysql.jdbc.StatementImpl;
import com.mysql.jdbc.StatementInterceptorV2;
import com.mysql.jdbc.Util;
import com.mysql.jdbc.exceptions.MySQLNonTransientConnectionException;
import com.mysql.jdbc.log.Log;
import com.mysql.jdbc.log.LogFactory;
import com.mysql.jdbc.profiler.ProfilerEventHandler;
import java.sql.CallableStatement;
import java.sql.DatabaseMetaData;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.sql.Savepoint;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.TimeZone;
import java.util.Timer;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class FabricMySQLConnectionProxy extends ConnectionPropertiesImpl implements FabricMySQLConnection, FabricMySQLConnectionProperties {
    private static final Class<?> JDBC4_NON_TRANSIENT_CONN_EXCEPTION;
    private static final Set<String> replConnGroupLocks = Collections.synchronizedSet(new HashSet());
    private static final long serialVersionUID = 5845485979107347258L;
    protected ReplicationConnection currentConnection;
    protected String database;
    protected FabricConnection fabricConnection;
    private String fabricPassword;
    private String fabricProtocol;
    private String fabricServerGroup;
    private String fabricShardKey;
    private String fabricShardTable;
    private String fabricUsername;
    protected String host;
    private Log log;
    protected String password;
    protected String port;
    private boolean reportErrors;
    protected ServerGroup serverGroup;
    protected String serverGroupName;
    protected String shardKey;
    protected ShardMapping shardMapping;
    protected String shardTable;
    protected String username;
    protected boolean closed = false;
    protected boolean transactionInProgress = false;
    protected Map<ServerGroup, ReplicationConnection> serverConnections = new HashMap();
    protected Set<String> queryTables = new HashSet();
    protected boolean readOnly = false;
    protected boolean autoCommit = true;
    protected int transactionIsolation = 4;

    @Override // com.mysql.jdbc.Connection
    public void abort(Executor executor) throws SQLException {
    }

    @Override // com.mysql.jdbc.Connection
    public void abortInternal() throws SQLException {
    }

    @Override // com.mysql.jdbc.Connection
    public void checkClosed() throws SQLException {
    }

    @Override // com.mysql.jdbc.Connection
    @Deprecated
    public void clearHasTriedMaster() {
    }

    @Override // java.sql.Connection
    public void clearWarnings() {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void decachePreparedStatement(ServerPreparedStatement serverPreparedStatement) throws SQLException {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void dumpTestcaseQuery(String str) {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public Connection duplicate() throws SQLException {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection, com.mysql.jdbc.Connection
    public int getActiveStatementCount() {
        return -1;
    }

    @Override // com.mysql.jdbc.MySQLConnection, com.mysql.jdbc.Connection
    public int getAutoIncrementIncrement() {
        return -1;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public CachedResultSetMetaData getCachedMetaData(String str) {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public Timer getCancelTimer() {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public SingleByteCharsetConverter getCharsetConverter(String str) throws SQLException {
        return null;
    }

    @Override // java.sql.Connection
    public String getClientInfo(String str) {
        return null;
    }

    @Override // java.sql.Connection
    public Properties getClientInfo() {
        return null;
    }

    @Override // com.mysql.jdbc.Connection
    public Object getConnectionMutex() {
        return this;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public TimeZone getDefaultTimeZone() {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public String getEncodingForIndex(int i) throws SQLException {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public String getErrorMessageEncoding() {
        return null;
    }

    @Override // java.sql.Connection
    public int getHoldability() {
        return -1;
    }

    @Override // com.mysql.jdbc.MySQLConnection, com.mysql.jdbc.Connection
    public String getHost() {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public long getId() {
        return -1L;
    }

    @Override // com.mysql.jdbc.MySQLConnection, com.mysql.jdbc.Connection
    public long getIdleFor() {
        return -1L;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public int getMaxBytesPerChar(Integer num, String str) throws SQLException {
        return -1;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public int getMaxBytesPerChar(String str) throws SQLException {
        return -1;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public int getNetBufferLength() {
        return -1;
    }

    @Override // com.mysql.jdbc.Connection
    public int getNetworkTimeout() throws SQLException {
        return -1;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public ProfilerEventHandler getProfilerEventHandlerInstance() {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection, com.mysql.jdbc.Connection
    public Properties getProperties() {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public boolean getRequiresEscapingEncoder() {
        return false;
    }

    @Override // com.mysql.jdbc.Connection
    public String getSchema() throws SQLException {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public int getServerMajorVersion() {
        return -1;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public int getServerMinorVersion() {
        return -1;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public int getServerSubMinorVersion() {
        return -1;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public String getServerVariable(String str) {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public String getServerVersion() {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public Calendar getSessionLockedCalendar() {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection, com.mysql.jdbc.Connection
    public String getStatementComment() {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public List<StatementInterceptorV2> getStatementInterceptorsInstances() {
        return null;
    }

    @Override // java.sql.Connection
    public int getTransactionIsolation() {
        return -1;
    }

    @Override // java.sql.Connection
    public Map<String, Class<?>> getTypeMap() {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public String getURL() {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public String getUser() {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public Calendar getUtcCalendar() {
        return null;
    }

    @Override // com.mysql.jdbc.Connection
    public boolean hasSameProperties(Connection connection) {
        return false;
    }

    @Override // com.mysql.jdbc.Connection
    @Deprecated
    public boolean hasTriedMaster() {
        return false;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void incrementNumberOfPreparedExecutes() {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void incrementNumberOfPrepares() {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void incrementNumberOfResultSetsCreated() {
    }

    @Override // com.mysql.jdbc.Connection
    public void initializeExtension(Extension extension) throws SQLException {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void initializeResultsMetadataFromCache(String str, CachedResultSetMetaData cachedResultSetMetaData, ResultSetInternalMethods resultSetInternalMethods) throws SQLException {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void initializeSafeStatementInterceptors() throws SQLException {
    }

    @Override // com.mysql.jdbc.MySQLConnection, com.mysql.jdbc.Connection
    public boolean isAbonormallyLongQuery(long j) {
        return false;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public boolean isClientTzUTC() {
        return false;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public boolean isCursorFetchEnabled() throws SQLException {
        return false;
    }

    @Override // com.mysql.jdbc.Connection
    public boolean isInGlobalTx() {
        return false;
    }

    @Override // com.mysql.jdbc.Connection
    public boolean isMasterConnection() {
        return false;
    }

    @Override // com.mysql.jdbc.Connection
    public boolean isNoBackslashEscapesSet() {
        return false;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public boolean isProxySet() {
        return false;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public boolean isReadInfoMsgEnabled() {
        return false;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public boolean isRunningOnJDK13() {
        return false;
    }

    @Override // com.mysql.jdbc.Connection
    public boolean isSameResource(Connection connection) {
        return false;
    }

    @Override // com.mysql.jdbc.Connection
    public boolean isServerLocal() throws SQLException {
        return false;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public boolean isServerTzUTC() {
        return false;
    }

    @Override // java.sql.Wrapper
    public boolean isWrapperFor(Class<?> cls) {
        return false;
    }

    public void maxRowsChanged(Statement statement) {
    }

    @Override // com.mysql.jdbc.Connection
    public boolean parserKnowsUnicode() {
        return false;
    }

    @Override // com.mysql.jdbc.Connection
    public void ping() throws SQLException {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void pingInternal(boolean z, int i) throws SQLException {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void realClose(boolean z, boolean z2, boolean z3, Throwable th) throws SQLException {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void recachePreparedStatement(ServerPreparedStatement serverPreparedStatement) throws SQLException {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void registerQueryExecutionTime(long j) {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void registerStatement(Statement statement) {
    }

    @Override // java.sql.Connection
    public void releaseSavepoint(Savepoint savepoint) {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void reportNumberOfTablesAccessed(int i) {
    }

    @Override // com.mysql.jdbc.Connection
    public void reportQueryTime(long j) {
    }

    @Override // com.mysql.jdbc.Connection
    public void resetServerState() throws SQLException {
    }

    @Override // com.mysql.jdbc.Connection
    public void setFailedOver(boolean z) {
    }

    @Override // com.mysql.jdbc.Connection
    public void setNetworkTimeout(Executor executor, int i) throws SQLException {
    }

    @Override // com.mysql.jdbc.Connection
    @Deprecated
    public void setPreferSlaveDuringFailover(boolean z) {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void setProfilerEventHandlerInstance(ProfilerEventHandler profilerEventHandler) {
    }

    @Override // com.mysql.jdbc.MySQLConnection, com.mysql.jdbc.Connection
    public void setProxy(MySQLConnection mySQLConnection) {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void setReadInfoMsgEnabled(boolean z) {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void setReadOnlyInternal(boolean z) throws SQLException {
    }

    @Override // com.mysql.jdbc.Connection
    public void setSchema(String str) throws SQLException {
    }

    @Override // com.mysql.jdbc.Connection
    public void setStatementComment(String str) {
    }

    @Override // com.mysql.jdbc.Connection
    public boolean supportsTransactions() {
        return true;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void throwConnectionClosedException() throws SQLException {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void unSafeStatementInterceptors() throws SQLException {
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void unregisterStatement(Statement statement) {
    }

    public void unsetMaxRows(Statement statement) throws SQLException {
    }

    @Override // java.sql.Wrapper
    public <T> T unwrap(Class<T> cls) {
        return null;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public boolean useAnsiQuotedIdentifiers() {
        return false;
    }

    public boolean useMaxRows() {
        return false;
    }

    static {
        Class<?> cls = null;
        try {
            if (Util.isJdbc4()) {
                cls = Class.forName("com.mysql.jdbc.exceptions.jdbc4.MySQLNonTransientConnectionException");
            }
        } catch (ClassNotFoundException unused) {
        }
        JDBC4_NON_TRANSIENT_CONN_EXCEPTION = cls;
    }

    public FabricMySQLConnectionProxy(Properties properties) throws SQLException {
        String str;
        this.reportErrors = false;
        this.fabricShardKey = properties.getProperty(FabricMySQLDriver.FABRIC_SHARD_KEY_PROPERTY_KEY);
        this.fabricShardTable = properties.getProperty(FabricMySQLDriver.FABRIC_SHARD_TABLE_PROPERTY_KEY);
        this.fabricServerGroup = properties.getProperty(FabricMySQLDriver.FABRIC_SERVER_GROUP_PROPERTY_KEY);
        this.fabricProtocol = properties.getProperty(FabricMySQLDriver.FABRIC_PROTOCOL_PROPERTY_KEY);
        this.fabricUsername = properties.getProperty(FabricMySQLDriver.FABRIC_USERNAME_PROPERTY_KEY);
        this.fabricPassword = properties.getProperty(FabricMySQLDriver.FABRIC_PASSWORD_PROPERTY_KEY);
        this.reportErrors = Boolean.valueOf(properties.getProperty(FabricMySQLDriver.FABRIC_REPORT_ERRORS_PROPERTY_KEY)).booleanValue();
        properties.remove(FabricMySQLDriver.FABRIC_SHARD_KEY_PROPERTY_KEY);
        properties.remove(FabricMySQLDriver.FABRIC_SHARD_TABLE_PROPERTY_KEY);
        properties.remove(FabricMySQLDriver.FABRIC_SERVER_GROUP_PROPERTY_KEY);
        properties.remove(FabricMySQLDriver.FABRIC_PROTOCOL_PROPERTY_KEY);
        properties.remove(FabricMySQLDriver.FABRIC_USERNAME_PROPERTY_KEY);
        properties.remove(FabricMySQLDriver.FABRIC_PASSWORD_PROPERTY_KEY);
        properties.remove(FabricMySQLDriver.FABRIC_REPORT_ERRORS_PROPERTY_KEY);
        this.host = properties.getProperty(NonRegisteringDriver.HOST_PROPERTY_KEY);
        this.port = properties.getProperty(NonRegisteringDriver.PORT_PROPERTY_KEY);
        this.username = properties.getProperty(NonRegisteringDriver.USER_PROPERTY_KEY);
        this.password = properties.getProperty(NonRegisteringDriver.PASSWORD_PROPERTY_KEY);
        this.database = properties.getProperty(NonRegisteringDriver.DBNAME_PROPERTY_KEY);
        if (this.username == null) {
            this.username = "";
        }
        if (this.password == null) {
            this.password = "";
        }
        String property = properties.getProperty("exceptionInterceptors");
        if (property == null || "null".equals("exceptionInterceptors")) {
            str = "";
        } else {
            str = property + ",";
        }
        properties.setProperty("exceptionInterceptors", str + "com.mysql.fabric.jdbc.ErrorReportingExceptionInterceptor");
        initializeProperties(properties);
        if (this.fabricServerGroup != null && this.fabricShardTable != null) {
            throw SQLError.createSQLException("Server group and shard table are mutually exclusive. Only one may be provided.", SQLError.SQL_STATE_CONNECTION_REJECTED, (Throwable) null, getExceptionInterceptor(), this);
        }
        try {
            this.fabricConnection = new FabricConnection(this.fabricProtocol + "://" + this.host + ":" + this.port, this.fabricUsername, this.fabricPassword);
            this.log = LogFactory.getLogger(getLogger(), "FabricMySQLConnectionProxy", null);
            setShardTable(this.fabricShardTable);
            setShardKey(this.fabricShardKey);
            setServerGroupName(this.fabricServerGroup);
        } catch (FabricCommunicationException e) {
            throw SQLError.createSQLException("Unable to establish connection to the Fabric server", SQLError.SQL_STATE_CONNECTION_REJECTED, e, getExceptionInterceptor(), this);
        }
    }

    synchronized SQLException interceptException(SQLException sQLException, Connection connection, String str, String str2, String str3) throws FabricCommunicationException {
        if (((sQLException.getSQLState() == null || !sQLException.getSQLState().startsWith("08")) && !MySQLNonTransientConnectionException.class.isAssignableFrom(sQLException.getClass()) && (JDBC4_NON_TRANSIENT_CONN_EXCEPTION == null || !JDBC4_NON_TRANSIENT_CONN_EXCEPTION.isAssignableFrom(sQLException.getClass()))) || (sQLException.getCause() != null && FabricCommunicationException.class.isAssignableFrom(sQLException.getCause().getClass()))) {
            return null;
        }
        Server server = this.serverGroup.getServer(str2 + ":" + str3);
        if (server == null) {
            return null;
        }
        if (this.reportErrors) {
            this.fabricConnection.getClient().reportServerError(server, sQLException.toString(), true);
        }
        try {
            if (replConnGroupLocks.add(this.serverGroup.getName())) {
                try {
                    this.fabricConnection.refreshStatePassive();
                    setCurrentServerGroup(this.serverGroup.getName());
                    try {
                        syncGroupServersToReplicationConnectionGroup(ReplicationConnectionGroupManager.getConnectionGroup(str));
                        replConnGroupLocks.remove(this.serverGroup.getName());
                        return null;
                    } catch (SQLException e) {
                        replConnGroupLocks.remove(this.serverGroup.getName());
                        return e;
                    }
                } catch (SQLException e2) {
                    SQLException sQLExceptionCreateSQLException = SQLError.createSQLException("Unable to refresh Fabric state. Failover impossible", SQLError.SQL_STATE_CONNECTION_FAILURE, e2, (ExceptionInterceptor) null);
                    replConnGroupLocks.remove(this.serverGroup.getName());
                    return sQLExceptionCreateSQLException;
                }
            }
            return SQLError.createSQLException("Fabric state syncing already in progress in another thread.", SQLError.SQL_STATE_CONNECTION_FAILURE, sQLException, (ExceptionInterceptor) null);
        } catch (Throwable th) {
            replConnGroupLocks.remove(this.serverGroup.getName());
            throw th;
        }
    }

    private void refreshStateIfNecessary() throws SQLException {
        if (this.fabricConnection.isStateExpired()) {
            this.fabricConnection.refreshStatePassive();
            if (this.serverGroup != null) {
                setCurrentServerGroup(this.serverGroup.getName());
            }
        }
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnection
    public void setShardKey(String str) throws SQLException {
        ensureNoTransactionInProgress();
        this.currentConnection = null;
        if (str != null) {
            if (this.serverGroupName != null) {
                throw SQLError.createSQLException("Shard key cannot be provided when server group is chosen directly.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (Throwable) null, getExceptionInterceptor(), this);
            }
            if (this.shardTable == null) {
                throw SQLError.createSQLException("Shard key cannot be provided without a shard table.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (Throwable) null, getExceptionInterceptor(), this);
            }
            setCurrentServerGroup(this.shardMapping.getGroupNameForKey(str));
        } else if (this.shardTable != null) {
            setCurrentServerGroup(this.shardMapping.getGlobalGroupName());
        }
        this.shardKey = str;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnection
    public String getShardKey() {
        return this.shardKey;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnection
    public void setShardTable(String str) throws SQLException {
        String str2;
        ensureNoTransactionInProgress();
        this.currentConnection = null;
        if (this.serverGroupName != null) {
            throw SQLError.createSQLException("Server group and shard table are mutually exclusive. Only one may be provided.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (Throwable) null, getExceptionInterceptor(), this);
        }
        this.shardKey = null;
        this.serverGroup = null;
        this.shardTable = str;
        if (str == null) {
            this.shardMapping = null;
            return;
        }
        String str3 = this.database;
        if (str.contains(".")) {
            String[] strArrSplit = str.split("\\.");
            String str4 = strArrSplit[0];
            str2 = strArrSplit[1];
            str3 = str4;
        } else {
            str2 = str;
        }
        this.shardMapping = this.fabricConnection.getShardMapping(str3, str2);
        if (this.shardMapping == null) {
            throw SQLError.createSQLException("Shard mapping not found for table `" + str + "'", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (Throwable) null, getExceptionInterceptor(), this);
        }
        setCurrentServerGroup(this.shardMapping.getGlobalGroupName());
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnection
    public String getShardTable() {
        return this.shardTable;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnection
    public void setServerGroupName(String str) throws SQLException {
        ensureNoTransactionInProgress();
        this.currentConnection = null;
        if (str != null) {
            setCurrentServerGroup(str);
        }
        this.serverGroupName = str;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnection
    public String getServerGroupName() {
        return this.serverGroupName;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnection
    public void clearServerSelectionCriteria() throws SQLException {
        ensureNoTransactionInProgress();
        this.shardTable = null;
        this.shardKey = null;
        this.serverGroupName = null;
        this.serverGroup = null;
        this.queryTables.clear();
        this.currentConnection = null;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnection
    public ServerGroup getCurrentServerGroup() {
        return this.serverGroup;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnection
    public void clearQueryTables() throws SQLException {
        ensureNoTransactionInProgress();
        this.currentConnection = null;
        this.queryTables.clear();
        setShardTable(null);
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnection
    public void addQueryTable(String str) throws SQLException {
        ensureNoTransactionInProgress();
        this.currentConnection = null;
        if (this.shardMapping == null) {
            if (this.fabricConnection.getShardMapping(this.database, str) != null) {
                setShardTable(str);
            }
        } else {
            ShardMapping shardMapping = this.fabricConnection.getShardMapping(this.database, str);
            if (shardMapping != null && !shardMapping.equals(this.shardMapping)) {
                throw SQLError.createSQLException("Cross-shard query not allowed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (Throwable) null, getExceptionInterceptor(), this);
            }
        }
        this.queryTables.add(str);
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnection
    public Set<String> getQueryTables() {
        return this.queryTables;
    }

    protected void setCurrentServerGroup(String str) throws SQLException {
        this.serverGroup = this.fabricConnection.getServerGroup(str);
        if (this.serverGroup == null) {
            throw SQLError.createSQLException("Cannot find server group: `" + str + "'", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (Throwable) null, getExceptionInterceptor(), this);
        }
        ReplicationConnectionGroup connectionGroup = ReplicationConnectionGroupManager.getConnectionGroup(str);
        if (connectionGroup == null || !replConnGroupLocks.add(this.serverGroup.getName())) {
            return;
        }
        try {
            syncGroupServersToReplicationConnectionGroup(connectionGroup);
        } finally {
            replConnGroupLocks.remove(this.serverGroup.getName());
        }
    }

    protected MySQLConnection getActiveMySQLConnectionChecked() throws SQLException {
        return (MySQLConnection) ((ReplicationConnection) getActiveConnection()).getCurrentConnection();
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public MySQLConnection getActiveMySQLConnection() {
        try {
            return getActiveMySQLConnectionChecked();
        } catch (SQLException e) {
            throw new IllegalStateException("Unable to determine active connection", e);
        }
    }

    protected Connection getActiveConnectionPassive() {
        try {
            return getActiveConnection();
        } catch (SQLException e) {
            throw new IllegalStateException("Unable to determine active connection", e);
        }
    }

    private void syncGroupServersToReplicationConnectionGroup(ReplicationConnectionGroup replicationConnectionGroup) throws SQLException {
        String next = replicationConnectionGroup.getMasterHosts().size() == 1 ? replicationConnectionGroup.getMasterHosts().iterator().next() : null;
        if (next != null && (this.serverGroup.getMaster() == null || !next.equals(this.serverGroup.getMaster().getHostPortString()))) {
            try {
                replicationConnectionGroup.removeMasterHost(next, false);
            } catch (SQLException e) {
                getLog().logWarn("Unable to remove master: " + next, e);
            }
        }
        Server master = this.serverGroup.getMaster();
        if (master != null && replicationConnectionGroup.getMasterHosts().size() == 0) {
            getLog().logInfo("Changing master for group '" + replicationConnectionGroup.getGroupName() + "' to: " + master);
            try {
                if (!replicationConnectionGroup.getSlaveHosts().contains(master.getHostPortString())) {
                    replicationConnectionGroup.addSlaveHost(master.getHostPortString());
                }
                replicationConnectionGroup.promoteSlaveToMaster(master.getHostPortString());
            } catch (SQLException e2) {
                throw SQLError.createSQLException("Unable to promote new master '" + master.toString() + "'", e2.getSQLState(), e2, (ExceptionInterceptor) null);
            }
        }
        for (Server server : this.serverGroup.getServers()) {
            if (server.isSlave()) {
                try {
                    replicationConnectionGroup.addSlaveHost(server.getHostPortString());
                } catch (SQLException e3) {
                    getLog().logWarn("Unable to add slave: " + server.toString(), e3);
                }
            }
        }
        for (String str : replicationConnectionGroup.getSlaveHosts()) {
            Server server2 = this.serverGroup.getServer(str);
            if (server2 == null || !server2.isSlave()) {
                try {
                    replicationConnectionGroup.removeSlaveHost(str, true);
                } catch (SQLException e4) {
                    getLog().logWarn("Unable to remove slave: " + str, e4);
                }
            }
        }
    }

    protected Connection getActiveConnection() throws SQLException {
        if (!this.transactionInProgress) {
            refreshStateIfNecessary();
        }
        if (this.currentConnection != null) {
            return this.currentConnection;
        }
        if (getCurrentServerGroup() == null) {
            throw SQLError.createSQLException("No server group selected.", SQLError.SQL_STATE_CONNECTION_REJECTED, (Throwable) null, getExceptionInterceptor(), this);
        }
        this.currentConnection = this.serverConnections.get(this.serverGroup);
        if (this.currentConnection != null) {
            return this.currentConnection;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Server server : this.serverGroup.getServers()) {
            if (server.isMaster()) {
                arrayList.add(server.getHostPortString());
            } else if (server.isSlave()) {
                arrayList2.add(server.getHostPortString());
            }
        }
        Properties propertiesExposeAsProperties = exposeAsProperties(null);
        ReplicationConnectionGroup connectionGroup = ReplicationConnectionGroupManager.getConnectionGroup(this.serverGroup.getName());
        if (connectionGroup != null && replConnGroupLocks.add(this.serverGroup.getName())) {
            try {
                syncGroupServersToReplicationConnectionGroup(connectionGroup);
                replConnGroupLocks.remove(this.serverGroup.getName());
            } catch (Throwable th) {
                replConnGroupLocks.remove(this.serverGroup.getName());
                throw th;
            }
        }
        propertiesExposeAsProperties.put("replicationConnectionGroup", this.serverGroup.getName());
        propertiesExposeAsProperties.setProperty(NonRegisteringDriver.USER_PROPERTY_KEY, this.username);
        propertiesExposeAsProperties.setProperty(NonRegisteringDriver.PASSWORD_PROPERTY_KEY, this.password);
        propertiesExposeAsProperties.setProperty(NonRegisteringDriver.DBNAME_PROPERTY_KEY, getCatalog());
        propertiesExposeAsProperties.setProperty("connectionAttributes", "fabricHaGroup:" + this.serverGroup.getName());
        propertiesExposeAsProperties.setProperty("retriesAllDown", "1");
        propertiesExposeAsProperties.setProperty("allowMasterDownConnections", "true");
        propertiesExposeAsProperties.setProperty("allowSlaveDownConnections", "true");
        propertiesExposeAsProperties.setProperty("readFromMasterWhenNoSlaves", "true");
        this.currentConnection = ReplicationConnectionProxy.createProxyInstance(arrayList, propertiesExposeAsProperties, arrayList2, propertiesExposeAsProperties);
        this.serverConnections.put(this.serverGroup, this.currentConnection);
        this.currentConnection.setProxy(this);
        this.currentConnection.setAutoCommit(this.autoCommit);
        this.currentConnection.setReadOnly(this.readOnly);
        this.currentConnection.setTransactionIsolation(this.transactionIsolation);
        return this.currentConnection;
    }

    private void ensureOpen() throws SQLException {
        if (this.closed) {
            throw SQLError.createSQLException("No operations allowed after connection closed.", SQLError.SQL_STATE_CONNECTION_NOT_OPEN, getExceptionInterceptor());
        }
    }

    private void ensureNoTransactionInProgress() throws SQLException {
        ensureOpen();
        if (this.transactionInProgress && !this.autoCommit) {
            throw SQLError.createSQLException("Not allow while a transaction is active.", SQLError.SQL_STATE_INVALID_TRANSACTION_STATE, getExceptionInterceptor());
        }
    }

    @Override // java.sql.Connection, java.lang.AutoCloseable
    public void close() throws SQLException {
        this.closed = true;
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            try {
                it.next().close();
            } catch (SQLException unused) {
            }
        }
    }

    @Override // java.sql.Connection
    public boolean isClosed() {
        return this.closed;
    }

    @Override // java.sql.Connection
    public boolean isValid(int i) throws SQLException {
        return !this.closed;
    }

    @Override // java.sql.Connection
    public void setReadOnly(boolean z) throws SQLException {
        this.readOnly = z;
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setReadOnly(z);
        }
    }

    @Override // com.mysql.jdbc.MySQLConnection, java.sql.Connection
    public boolean isReadOnly() throws SQLException {
        return this.readOnly;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public boolean isReadOnly(boolean z) throws SQLException {
        return this.readOnly;
    }

    @Override // java.sql.Connection
    public void setCatalog(String str) throws SQLException {
        this.database = str;
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setCatalog(str);
        }
    }

    @Override // java.sql.Connection
    public String getCatalog() {
        return this.database;
    }

    @Override // java.sql.Connection
    public void rollback() throws SQLException {
        getActiveConnection().rollback();
        transactionCompleted();
    }

    @Override // java.sql.Connection
    public void rollback(Savepoint savepoint) throws SQLException {
        getActiveConnection().rollback();
        transactionCompleted();
    }

    @Override // java.sql.Connection
    public void commit() throws SQLException {
        getActiveConnection().commit();
        transactionCompleted();
    }

    @Override // java.sql.Connection
    public void setAutoCommit(boolean z) throws SQLException {
        this.autoCommit = z;
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setAutoCommit(this.autoCommit);
        }
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void transactionBegun() throws SQLException {
        if (this.autoCommit) {
            return;
        }
        this.transactionInProgress = true;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void transactionCompleted() throws SQLException {
        this.transactionInProgress = false;
        refreshStateIfNecessary();
    }

    @Override // java.sql.Connection
    public boolean getAutoCommit() {
        return this.autoCommit;
    }

    @Override // com.mysql.jdbc.MySQLConnection
    @Deprecated
    public MySQLConnection getLoadBalanceSafeProxy() {
        return getMultiHostSafeProxy();
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public MySQLConnection getMultiHostSafeProxy() {
        return getActiveMySQLConnection();
    }

    @Override // java.sql.Connection
    public void setTransactionIsolation(int i) throws SQLException {
        this.transactionIsolation = i;
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setTransactionIsolation(i);
        }
    }

    @Override // java.sql.Connection
    public void setTypeMap(Map<String, Class<?>> map) throws SQLException {
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setTypeMap(map);
        }
    }

    @Override // java.sql.Connection
    public void setHoldability(int i) throws SQLException {
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setHoldability(i);
        }
    }

    @Override // java.sql.Connection
    public Savepoint setSavepoint() throws SQLException {
        return getActiveConnection().setSavepoint();
    }

    @Override // java.sql.Connection
    public Savepoint setSavepoint(String str) throws SQLException {
        this.transactionInProgress = true;
        return getActiveConnection().setSavepoint(str);
    }

    @Override // java.sql.Connection
    public CallableStatement prepareCall(String str) throws SQLException {
        transactionBegun();
        return getActiveConnection().prepareCall(str);
    }

    @Override // java.sql.Connection
    public CallableStatement prepareCall(String str, int i, int i2) throws SQLException {
        transactionBegun();
        return getActiveConnection().prepareCall(str, i, i2);
    }

    @Override // java.sql.Connection
    public CallableStatement prepareCall(String str, int i, int i2, int i3) throws SQLException {
        transactionBegun();
        return getActiveConnection().prepareCall(str, i, i2, i3);
    }

    @Override // java.sql.Connection
    public PreparedStatement prepareStatement(String str) throws SQLException {
        transactionBegun();
        return getActiveConnection().prepareStatement(str);
    }

    @Override // java.sql.Connection
    public PreparedStatement prepareStatement(String str, int i) throws SQLException {
        transactionBegun();
        return getActiveConnection().prepareStatement(str, i);
    }

    @Override // java.sql.Connection
    public PreparedStatement prepareStatement(String str, int[] iArr) throws SQLException {
        transactionBegun();
        return getActiveConnection().prepareStatement(str, iArr);
    }

    @Override // java.sql.Connection
    public PreparedStatement prepareStatement(String str, int i, int i2) throws SQLException {
        transactionBegun();
        return getActiveConnection().prepareStatement(str, i, i2);
    }

    @Override // java.sql.Connection
    public PreparedStatement prepareStatement(String str, int i, int i2, int i3) throws SQLException {
        transactionBegun();
        return getActiveConnection().prepareStatement(str, i, i2, i3);
    }

    @Override // java.sql.Connection
    public PreparedStatement prepareStatement(String str, String[] strArr) throws SQLException {
        transactionBegun();
        return getActiveConnection().prepareStatement(str, strArr);
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement clientPrepareStatement(String str) throws SQLException {
        transactionBegun();
        return getActiveConnection().clientPrepareStatement(str);
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement clientPrepareStatement(String str, int i) throws SQLException {
        transactionBegun();
        return getActiveConnection().clientPrepareStatement(str, i);
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement clientPrepareStatement(String str, int i, int i2) throws SQLException {
        transactionBegun();
        return getActiveConnection().clientPrepareStatement(str, i, i2);
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement clientPrepareStatement(String str, int[] iArr) throws SQLException {
        transactionBegun();
        return getActiveConnection().clientPrepareStatement(str, iArr);
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement clientPrepareStatement(String str, int i, int i2, int i3) throws SQLException {
        transactionBegun();
        return getActiveConnection().clientPrepareStatement(str, i, i2, i3);
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement clientPrepareStatement(String str, String[] strArr) throws SQLException {
        transactionBegun();
        return getActiveConnection().clientPrepareStatement(str, strArr);
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement serverPrepareStatement(String str) throws SQLException {
        transactionBegun();
        return getActiveConnection().serverPrepareStatement(str);
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement serverPrepareStatement(String str, int i) throws SQLException {
        transactionBegun();
        return getActiveConnection().serverPrepareStatement(str, i);
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement serverPrepareStatement(String str, int i, int i2) throws SQLException {
        transactionBegun();
        return getActiveConnection().serverPrepareStatement(str, i, i2);
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement serverPrepareStatement(String str, int i, int i2, int i3) throws SQLException {
        transactionBegun();
        return getActiveConnection().serverPrepareStatement(str, i, i2, i3);
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement serverPrepareStatement(String str, int[] iArr) throws SQLException {
        transactionBegun();
        return getActiveConnection().serverPrepareStatement(str, iArr);
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement serverPrepareStatement(String str, String[] strArr) throws SQLException {
        transactionBegun();
        return getActiveConnection().serverPrepareStatement(str, strArr);
    }

    @Override // java.sql.Connection
    public java.sql.Statement createStatement() throws SQLException {
        transactionBegun();
        return getActiveConnection().createStatement();
    }

    @Override // java.sql.Connection
    public java.sql.Statement createStatement(int i, int i2) throws SQLException {
        transactionBegun();
        return getActiveConnection().createStatement(i, i2);
    }

    @Override // java.sql.Connection
    public java.sql.Statement createStatement(int i, int i2, int i3) throws SQLException {
        transactionBegun();
        return getActiveConnection().createStatement(i, i2, i3);
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public ResultSetInternalMethods execSQL(StatementImpl statementImpl, String str, int i, Buffer buffer, int i2, int i3, boolean z, String str2, Field[] fieldArr) throws SQLException {
        return getActiveMySQLConnectionChecked().execSQL(statementImpl, str, i, buffer, i2, i3, z, str2, fieldArr);
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public ResultSetInternalMethods execSQL(StatementImpl statementImpl, String str, int i, Buffer buffer, int i2, int i3, boolean z, String str2, Field[] fieldArr, boolean z2) throws SQLException {
        return getActiveMySQLConnectionChecked().execSQL(statementImpl, str, i, buffer, i2, i3, z, str2, fieldArr, z2);
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public String extractSqlFromPacket(String str, Buffer buffer, int i) throws SQLException {
        return getActiveMySQLConnectionChecked().extractSqlFromPacket(str, buffer, i);
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public StringBuilder generateConnectionCommentBlock(StringBuilder sb) {
        return getActiveMySQLConnection().generateConnectionCommentBlock(sb);
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public MysqlIO getIO() throws SQLException {
        return getActiveMySQLConnectionChecked().getIO();
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public Calendar getCalendarInstanceForSessionOrNew() {
        return getActiveMySQLConnection().getCalendarInstanceForSessionOrNew();
    }

    @Override // com.mysql.jdbc.Connection
    @Deprecated
    public String getServerCharacterEncoding() {
        return getServerCharset();
    }

    @Override // com.mysql.jdbc.MySQLConnection, com.mysql.jdbc.Connection
    public String getServerCharset() {
        return getActiveMySQLConnection().getServerCharset();
    }

    @Override // com.mysql.jdbc.MySQLConnection, com.mysql.jdbc.Connection
    public TimeZone getServerTimezoneTZ() {
        return getActiveMySQLConnection().getServerTimezoneTZ();
    }

    @Override // com.mysql.jdbc.Connection
    public boolean versionMeetsMinimum(int i, int i2, int i3) throws SQLException {
        return getActiveConnection().versionMeetsMinimum(i, i2, i3);
    }

    @Override // com.mysql.jdbc.Connection
    public boolean supportsIsolationLevel() {
        return getActiveConnectionPassive().supportsIsolationLevel();
    }

    @Override // com.mysql.jdbc.Connection
    public boolean supportsQuotedIdentifiers() {
        return getActiveConnectionPassive().supportsQuotedIdentifiers();
    }

    @Override // java.sql.Connection
    public DatabaseMetaData getMetaData() throws SQLException {
        return getActiveConnection().getMetaData();
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public String getCharacterSetMetadata() {
        return getActiveMySQLConnection().getCharacterSetMetadata();
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public java.sql.Statement getMetadataSafeStatement() throws SQLException {
        return getActiveMySQLConnectionChecked().getMetadataSafeStatement();
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public void createNewIO(boolean z) throws SQLException {
        throw SQLError.createSQLFeatureNotSupportedException();
    }

    @Override // com.mysql.jdbc.MySQLConnection, com.mysql.jdbc.Connection
    public void shutdownServer() throws SQLException {
        throw SQLError.createSQLFeatureNotSupportedException();
    }

    @Override // com.mysql.jdbc.Connection
    public void setInGlobalTx(boolean z) {
        throw new RuntimeException("Global transactions not supported.");
    }

    @Override // com.mysql.jdbc.Connection
    public void changeUser(String str, String str2) throws SQLException {
        throw SQLError.createSQLException("User change not allowed.", getExceptionInterceptor());
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public void setFabricShardKey(String str) {
        this.fabricShardKey = str;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public String getFabricShardKey() {
        return this.fabricShardKey;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public void setFabricShardTable(String str) {
        this.fabricShardTable = str;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public String getFabricShardTable() {
        return this.fabricShardTable;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public void setFabricServerGroup(String str) {
        this.fabricServerGroup = str;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public String getFabricServerGroup() {
        return this.fabricServerGroup;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public void setFabricProtocol(String str) {
        this.fabricProtocol = str;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public String getFabricProtocol() {
        return this.fabricProtocol;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public void setFabricUsername(String str) {
        this.fabricUsername = str;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public String getFabricUsername() {
        return this.fabricUsername;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public void setFabricPassword(String str) {
        this.fabricPassword = str;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public String getFabricPassword() {
        return this.fabricPassword;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public void setFabricReportErrors(boolean z) {
        this.reportErrors = z;
    }

    @Override // com.mysql.fabric.jdbc.FabricMySQLConnectionProperties
    public boolean getFabricReportErrors() {
        return this.reportErrors;
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setAllowLoadLocalInfile(boolean z) {
        super.setAllowLoadLocalInfile(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setAllowLoadLocalInfile(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setAllowMultiQueries(boolean z) {
        super.setAllowMultiQueries(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setAllowMultiQueries(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setAllowNanAndInf(boolean z) {
        super.setAllowNanAndInf(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setAllowNanAndInf(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setAllowUrlInLocalInfile(boolean z) {
        super.setAllowUrlInLocalInfile(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setAllowUrlInLocalInfile(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setAlwaysSendSetIsolation(boolean z) {
        super.setAlwaysSendSetIsolation(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setAlwaysSendSetIsolation(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setAutoDeserialize(boolean z) {
        super.setAutoDeserialize(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setAutoDeserialize(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setAutoGenerateTestcaseScript(boolean z) {
        super.setAutoGenerateTestcaseScript(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setAutoGenerateTestcaseScript(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setAutoReconnect(boolean z) {
        super.setAutoReconnect(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setAutoReconnect(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setAutoReconnectForConnectionPools(boolean z) {
        super.setAutoReconnectForConnectionPools(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setAutoReconnectForConnectionPools(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setAutoReconnectForPools(boolean z) {
        super.setAutoReconnectForPools(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setAutoReconnectForPools(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setBlobSendChunkSize(String str) throws SQLException {
        super.setBlobSendChunkSize(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setBlobSendChunkSize(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setCacheCallableStatements(boolean z) {
        super.setCacheCallableStatements(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setCacheCallableStatements(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setCachePreparedStatements(boolean z) {
        super.setCachePreparedStatements(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setCachePreparedStatements(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setCacheResultSetMetadata(boolean z) {
        super.setCacheResultSetMetadata(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setCacheResultSetMetadata(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setCacheServerConfiguration(boolean z) {
        super.setCacheServerConfiguration(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setCacheServerConfiguration(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setCallableStatementCacheSize(int i) throws SQLException {
        super.setCallableStatementCacheSize(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setCallableStatementCacheSize(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setCapitalizeDBMDTypes(boolean z) {
        super.setCapitalizeDBMDTypes(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setCapitalizeDBMDTypes(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setCapitalizeTypeNames(boolean z) {
        super.setCapitalizeTypeNames(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setCapitalizeTypeNames(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setCharacterEncoding(String str) {
        super.setCharacterEncoding(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setCharacterEncoding(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setCharacterSetResults(String str) {
        super.setCharacterSetResults(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setCharacterSetResults(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setClobberStreamingResults(boolean z) {
        super.setClobberStreamingResults(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setClobberStreamingResults(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setClobCharacterEncoding(String str) {
        super.setClobCharacterEncoding(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setClobCharacterEncoding(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setConnectionCollation(String str) {
        super.setConnectionCollation(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setConnectionCollation(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setConnectTimeout(int i) throws SQLException {
        super.setConnectTimeout(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setConnectTimeout(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setContinueBatchOnError(boolean z) {
        super.setContinueBatchOnError(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setContinueBatchOnError(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setCreateDatabaseIfNotExist(boolean z) {
        super.setCreateDatabaseIfNotExist(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setCreateDatabaseIfNotExist(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setDefaultFetchSize(int i) throws SQLException {
        super.setDefaultFetchSize(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setDefaultFetchSize(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setDetectServerPreparedStmts(boolean z) {
        super.setDetectServerPreparedStmts(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setDetectServerPreparedStmts(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setDontTrackOpenResources(boolean z) {
        super.setDontTrackOpenResources(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setDontTrackOpenResources(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setDumpQueriesOnException(boolean z) {
        super.setDumpQueriesOnException(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setDumpQueriesOnException(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setDynamicCalendars(boolean z) {
        super.setDynamicCalendars(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setDynamicCalendars(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setElideSetAutoCommits(boolean z) {
        super.setElideSetAutoCommits(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setElideSetAutoCommits(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setEmptyStringsConvertToZero(boolean z) {
        super.setEmptyStringsConvertToZero(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setEmptyStringsConvertToZero(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setEmulateLocators(boolean z) {
        super.setEmulateLocators(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setEmulateLocators(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setEmulateUnsupportedPstmts(boolean z) {
        super.setEmulateUnsupportedPstmts(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setEmulateUnsupportedPstmts(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setEnablePacketDebug(boolean z) {
        super.setEnablePacketDebug(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setEnablePacketDebug(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setEncoding(String str) {
        super.setEncoding(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setEncoding(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setExplainSlowQueries(boolean z) {
        super.setExplainSlowQueries(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setExplainSlowQueries(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setFailOverReadOnly(boolean z) {
        super.setFailOverReadOnly(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setFailOverReadOnly(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setGatherPerformanceMetrics(boolean z) {
        super.setGatherPerformanceMetrics(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setGatherPerformanceMetrics(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setHoldResultsOpenOverStatementClose(boolean z) {
        super.setHoldResultsOpenOverStatementClose(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setHoldResultsOpenOverStatementClose(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setIgnoreNonTxTables(boolean z) {
        super.setIgnoreNonTxTables(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setIgnoreNonTxTables(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setInitialTimeout(int i) throws SQLException {
        super.setInitialTimeout(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setInitialTimeout(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setIsInteractiveClient(boolean z) {
        super.setIsInteractiveClient(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setIsInteractiveClient(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setJdbcCompliantTruncation(boolean z) {
        super.setJdbcCompliantTruncation(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setJdbcCompliantTruncation(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLocatorFetchBufferSize(String str) throws SQLException {
        super.setLocatorFetchBufferSize(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLocatorFetchBufferSize(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLogger(String str) {
        super.setLogger(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLogger(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLoggerClassName(String str) {
        super.setLoggerClassName(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLoggerClassName(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLogSlowQueries(boolean z) {
        super.setLogSlowQueries(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLogSlowQueries(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setMaintainTimeStats(boolean z) {
        super.setMaintainTimeStats(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setMaintainTimeStats(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setMaxQuerySizeToLog(int i) throws SQLException {
        super.setMaxQuerySizeToLog(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setMaxQuerySizeToLog(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setMaxReconnects(int i) throws SQLException {
        super.setMaxReconnects(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setMaxReconnects(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setMaxRows(int i) throws SQLException {
        super.setMaxRows(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setMaxRows(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setMetadataCacheSize(int i) throws SQLException {
        super.setMetadataCacheSize(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setMetadataCacheSize(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setNoDatetimeStringSync(boolean z) {
        super.setNoDatetimeStringSync(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setNoDatetimeStringSync(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setNullCatalogMeansCurrent(boolean z) {
        super.setNullCatalogMeansCurrent(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setNullCatalogMeansCurrent(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setNullNamePatternMatchesAll(boolean z) {
        super.setNullNamePatternMatchesAll(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setNullNamePatternMatchesAll(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setPacketDebugBufferSize(int i) throws SQLException {
        super.setPacketDebugBufferSize(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setPacketDebugBufferSize(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setParanoid(boolean z) {
        super.setParanoid(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setParanoid(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setPedantic(boolean z) {
        super.setPedantic(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setPedantic(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setPreparedStatementCacheSize(int i) throws SQLException {
        super.setPreparedStatementCacheSize(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setPreparedStatementCacheSize(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setPreparedStatementCacheSqlLimit(int i) throws SQLException {
        super.setPreparedStatementCacheSqlLimit(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setPreparedStatementCacheSqlLimit(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setProfileSql(boolean z) {
        super.setProfileSql(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setProfileSql(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setProfileSQL(boolean z) {
        super.setProfileSQL(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setProfileSQL(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setPropertiesTransform(String str) {
        super.setPropertiesTransform(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setPropertiesTransform(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setQueriesBeforeRetryMaster(int i) throws SQLException {
        super.setQueriesBeforeRetryMaster(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setQueriesBeforeRetryMaster(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setReconnectAtTxEnd(boolean z) {
        super.setReconnectAtTxEnd(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setReconnectAtTxEnd(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setRelaxAutoCommit(boolean z) {
        super.setRelaxAutoCommit(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setRelaxAutoCommit(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setReportMetricsIntervalMillis(int i) throws SQLException {
        super.setReportMetricsIntervalMillis(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setReportMetricsIntervalMillis(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setRequireSSL(boolean z) {
        super.setRequireSSL(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setRequireSSL(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setRetainStatementAfterResultSetClose(boolean z) {
        super.setRetainStatementAfterResultSetClose(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setRetainStatementAfterResultSetClose(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setRollbackOnPooledClose(boolean z) {
        super.setRollbackOnPooledClose(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setRollbackOnPooledClose(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setRoundRobinLoadBalance(boolean z) {
        super.setRoundRobinLoadBalance(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setRoundRobinLoadBalance(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setRunningCTS13(boolean z) {
        super.setRunningCTS13(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setRunningCTS13(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setSecondsBeforeRetryMaster(int i) throws SQLException {
        super.setSecondsBeforeRetryMaster(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setSecondsBeforeRetryMaster(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setServerTimezone(String str) {
        super.setServerTimezone(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setServerTimezone(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setSessionVariables(String str) {
        super.setSessionVariables(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setSessionVariables(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setSlowQueryThresholdMillis(int i) throws SQLException {
        super.setSlowQueryThresholdMillis(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setSlowQueryThresholdMillis(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setSocketFactoryClassName(String str) {
        super.setSocketFactoryClassName(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setSocketFactoryClassName(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setSocketTimeout(int i) throws SQLException {
        super.setSocketTimeout(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setSocketTimeout(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setStrictFloatingPoint(boolean z) {
        super.setStrictFloatingPoint(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setStrictFloatingPoint(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setStrictUpdates(boolean z) {
        super.setStrictUpdates(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setStrictUpdates(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setTinyInt1isBit(boolean z) {
        super.setTinyInt1isBit(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setTinyInt1isBit(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setTraceProtocol(boolean z) {
        super.setTraceProtocol(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setTraceProtocol(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setTransformedBitIsBoolean(boolean z) {
        super.setTransformedBitIsBoolean(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setTransformedBitIsBoolean(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseCompression(boolean z) {
        super.setUseCompression(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseCompression(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseFastIntParsing(boolean z) {
        super.setUseFastIntParsing(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseFastIntParsing(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseHostsInPrivileges(boolean z) {
        super.setUseHostsInPrivileges(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseHostsInPrivileges(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseInformationSchema(boolean z) {
        super.setUseInformationSchema(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseInformationSchema(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseLocalSessionState(boolean z) {
        super.setUseLocalSessionState(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseLocalSessionState(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseOldUTF8Behavior(boolean z) {
        super.setUseOldUTF8Behavior(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseOldUTF8Behavior(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseOnlyServerErrorMessages(boolean z) {
        super.setUseOnlyServerErrorMessages(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseOnlyServerErrorMessages(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseReadAheadInput(boolean z) {
        super.setUseReadAheadInput(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseReadAheadInput(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseServerPreparedStmts(boolean z) {
        super.setUseServerPreparedStmts(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseServerPreparedStmts(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseSqlStateCodes(boolean z) {
        super.setUseSqlStateCodes(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseSqlStateCodes(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseSSL(boolean z) {
        super.setUseSSL(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseSSL(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseStreamLengthsInPrepStmts(boolean z) {
        super.setUseStreamLengthsInPrepStmts(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseStreamLengthsInPrepStmts(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseTimezone(boolean z) {
        super.setUseTimezone(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseTimezone(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseUltraDevWorkAround(boolean z) {
        super.setUseUltraDevWorkAround(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseUltraDevWorkAround(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseUnbufferedInput(boolean z) {
        super.setUseUnbufferedInput(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseUnbufferedInput(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseUnicode(boolean z) {
        super.setUseUnicode(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseUnicode(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseUsageAdvisor(boolean z) {
        super.setUseUsageAdvisor(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseUsageAdvisor(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setYearIsDateType(boolean z) {
        super.setYearIsDateType(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setYearIsDateType(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setZeroDateTimeBehavior(String str) {
        super.setZeroDateTimeBehavior(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setZeroDateTimeBehavior(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseCursorFetch(boolean z) {
        super.setUseCursorFetch(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseCursorFetch(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setOverrideSupportsIntegrityEnhancementFacility(boolean z) {
        super.setOverrideSupportsIntegrityEnhancementFacility(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setOverrideSupportsIntegrityEnhancementFacility(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setNoTimezoneConversionForTimeType(boolean z) {
        super.setNoTimezoneConversionForTimeType(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setNoTimezoneConversionForTimeType(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseJDBCCompliantTimezoneShift(boolean z) {
        super.setUseJDBCCompliantTimezoneShift(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseJDBCCompliantTimezoneShift(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setAutoClosePStmtStreams(boolean z) {
        super.setAutoClosePStmtStreams(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setAutoClosePStmtStreams(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setProcessEscapeCodesForPrepStmts(boolean z) {
        super.setProcessEscapeCodesForPrepStmts(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setProcessEscapeCodesForPrepStmts(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseGmtMillisForDatetimes(boolean z) {
        super.setUseGmtMillisForDatetimes(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseGmtMillisForDatetimes(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setDumpMetadataOnColumnNotFound(boolean z) {
        super.setDumpMetadataOnColumnNotFound(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setDumpMetadataOnColumnNotFound(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setResourceId(String str) {
        super.setResourceId(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setResourceId(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setRewriteBatchedStatements(boolean z) {
        super.setRewriteBatchedStatements(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setRewriteBatchedStatements(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setJdbcCompliantTruncationForReads(boolean z) {
        super.setJdbcCompliantTruncationForReads(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setJdbcCompliantTruncationForReads(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseJvmCharsetConverters(boolean z) {
        super.setUseJvmCharsetConverters(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseJvmCharsetConverters(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setPinGlobalTxToPhysicalConnection(boolean z) {
        super.setPinGlobalTxToPhysicalConnection(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setPinGlobalTxToPhysicalConnection(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setGatherPerfMetrics(boolean z) {
        super.setGatherPerfMetrics(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setGatherPerfMetrics(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUltraDevHack(boolean z) {
        super.setUltraDevHack(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUltraDevHack(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setInteractiveClient(boolean z) {
        super.setInteractiveClient(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setInteractiveClient(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setSocketFactory(String str) {
        super.setSocketFactory(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setSocketFactory(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseServerPrepStmts(boolean z) {
        super.setUseServerPrepStmts(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseServerPrepStmts(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setCacheCallableStmts(boolean z) {
        super.setCacheCallableStmts(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setCacheCallableStmts(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setCachePrepStmts(boolean z) {
        super.setCachePrepStmts(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setCachePrepStmts(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setCallableStmtCacheSize(int i) throws SQLException {
        super.setCallableStmtCacheSize(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setCallableStmtCacheSize(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setPrepStmtCacheSize(int i) throws SQLException {
        super.setPrepStmtCacheSize(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setPrepStmtCacheSize(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setPrepStmtCacheSqlLimit(int i) throws SQLException {
        super.setPrepStmtCacheSqlLimit(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setPrepStmtCacheSqlLimit(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setNoAccessToProcedureBodies(boolean z) {
        super.setNoAccessToProcedureBodies(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setNoAccessToProcedureBodies(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseOldAliasMetadataBehavior(boolean z) {
        super.setUseOldAliasMetadataBehavior(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseOldAliasMetadataBehavior(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setClientCertificateKeyStorePassword(String str) {
        super.setClientCertificateKeyStorePassword(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setClientCertificateKeyStorePassword(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setClientCertificateKeyStoreType(String str) {
        super.setClientCertificateKeyStoreType(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setClientCertificateKeyStoreType(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setClientCertificateKeyStoreUrl(String str) {
        super.setClientCertificateKeyStoreUrl(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setClientCertificateKeyStoreUrl(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setTrustCertificateKeyStorePassword(String str) {
        super.setTrustCertificateKeyStorePassword(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setTrustCertificateKeyStorePassword(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setTrustCertificateKeyStoreType(String str) {
        super.setTrustCertificateKeyStoreType(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setTrustCertificateKeyStoreType(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setTrustCertificateKeyStoreUrl(String str) {
        super.setTrustCertificateKeyStoreUrl(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setTrustCertificateKeyStoreUrl(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseSSPSCompatibleTimezoneShift(boolean z) {
        super.setUseSSPSCompatibleTimezoneShift(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseSSPSCompatibleTimezoneShift(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setTreatUtilDateAsTimestamp(boolean z) {
        super.setTreatUtilDateAsTimestamp(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setTreatUtilDateAsTimestamp(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseFastDateParsing(boolean z) {
        super.setUseFastDateParsing(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseFastDateParsing(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLocalSocketAddress(String str) {
        super.setLocalSocketAddress(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLocalSocketAddress(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseConfigs(String str) {
        super.setUseConfigs(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseConfigs(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setGenerateSimpleParameterMetadata(boolean z) {
        super.setGenerateSimpleParameterMetadata(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setGenerateSimpleParameterMetadata(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLogXaCommands(boolean z) {
        super.setLogXaCommands(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLogXaCommands(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setResultSetSizeThreshold(int i) throws SQLException {
        super.setResultSetSizeThreshold(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setResultSetSizeThreshold(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setNetTimeoutForStreamingResults(int i) throws SQLException {
        super.setNetTimeoutForStreamingResults(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setNetTimeoutForStreamingResults(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setEnableQueryTimeouts(boolean z) {
        super.setEnableQueryTimeouts(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setEnableQueryTimeouts(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setPadCharsWithSpace(boolean z) {
        super.setPadCharsWithSpace(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setPadCharsWithSpace(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseDynamicCharsetInfo(boolean z) {
        super.setUseDynamicCharsetInfo(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseDynamicCharsetInfo(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setClientInfoProvider(String str) {
        super.setClientInfoProvider(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setClientInfoProvider(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setPopulateInsertRowWithDefaultValues(boolean z) {
        super.setPopulateInsertRowWithDefaultValues(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setPopulateInsertRowWithDefaultValues(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceStrategy(String str) {
        super.setLoadBalanceStrategy(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLoadBalanceStrategy(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setTcpNoDelay(boolean z) {
        super.setTcpNoDelay(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setTcpNoDelay(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setTcpKeepAlive(boolean z) {
        super.setTcpKeepAlive(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setTcpKeepAlive(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setTcpRcvBuf(int i) throws SQLException {
        super.setTcpRcvBuf(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setTcpRcvBuf(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setTcpSndBuf(int i) throws SQLException {
        super.setTcpSndBuf(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setTcpSndBuf(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setTcpTrafficClass(int i) throws SQLException {
        super.setTcpTrafficClass(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setTcpTrafficClass(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseNanosForElapsedTime(boolean z) {
        super.setUseNanosForElapsedTime(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseNanosForElapsedTime(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setSlowQueryThresholdNanos(long j) throws SQLException {
        super.setSlowQueryThresholdNanos(j);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setSlowQueryThresholdNanos(j);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setStatementInterceptors(String str) {
        super.setStatementInterceptors(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setStatementInterceptors(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseDirectRowUnpack(boolean z) {
        super.setUseDirectRowUnpack(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseDirectRowUnpack(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLargeRowSizeThreshold(String str) throws SQLException {
        super.setLargeRowSizeThreshold(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLargeRowSizeThreshold(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseBlobToStoreUTF8OutsideBMP(boolean z) {
        super.setUseBlobToStoreUTF8OutsideBMP(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseBlobToStoreUTF8OutsideBMP(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUtf8OutsideBmpExcludedColumnNamePattern(String str) {
        super.setUtf8OutsideBmpExcludedColumnNamePattern(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUtf8OutsideBmpExcludedColumnNamePattern(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUtf8OutsideBmpIncludedColumnNamePattern(String str) {
        super.setUtf8OutsideBmpIncludedColumnNamePattern(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUtf8OutsideBmpIncludedColumnNamePattern(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setIncludeInnodbStatusInDeadlockExceptions(boolean z) {
        super.setIncludeInnodbStatusInDeadlockExceptions(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setIncludeInnodbStatusInDeadlockExceptions(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setIncludeThreadDumpInDeadlockExceptions(boolean z) {
        super.setIncludeThreadDumpInDeadlockExceptions(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setIncludeThreadDumpInDeadlockExceptions(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setIncludeThreadNamesAsStatementComment(boolean z) {
        super.setIncludeThreadNamesAsStatementComment(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setIncludeThreadNamesAsStatementComment(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setBlobsAreStrings(boolean z) {
        super.setBlobsAreStrings(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setBlobsAreStrings(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setFunctionsNeverReturnBlobs(boolean z) {
        super.setFunctionsNeverReturnBlobs(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setFunctionsNeverReturnBlobs(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setAutoSlowLog(boolean z) {
        super.setAutoSlowLog(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setAutoSlowLog(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setConnectionLifecycleInterceptors(String str) {
        super.setConnectionLifecycleInterceptors(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setConnectionLifecycleInterceptors(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setProfilerEventHandler(String str) {
        super.setProfilerEventHandler(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setProfilerEventHandler(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setVerifyServerCertificate(boolean z) {
        super.setVerifyServerCertificate(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setVerifyServerCertificate(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseLegacyDatetimeCode(boolean z) {
        super.setUseLegacyDatetimeCode(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseLegacyDatetimeCode(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setSelfDestructOnPingSecondsLifetime(int i) throws SQLException {
        super.setSelfDestructOnPingSecondsLifetime(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setSelfDestructOnPingSecondsLifetime(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setSelfDestructOnPingMaxOperations(int i) throws SQLException {
        super.setSelfDestructOnPingMaxOperations(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setSelfDestructOnPingMaxOperations(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseColumnNamesInFindColumn(boolean z) {
        super.setUseColumnNamesInFindColumn(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseColumnNamesInFindColumn(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseLocalTransactionState(boolean z) {
        super.setUseLocalTransactionState(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseLocalTransactionState(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setCompensateOnDuplicateKeyUpdateCounts(boolean z) {
        super.setCompensateOnDuplicateKeyUpdateCounts(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setCompensateOnDuplicateKeyUpdateCounts(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setUseAffectedRows(boolean z) {
        super.setUseAffectedRows(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setUseAffectedRows(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setPasswordCharacterEncoding(String str) {
        super.setPasswordCharacterEncoding(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setPasswordCharacterEncoding(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceBlacklistTimeout(int i) throws SQLException {
        super.setLoadBalanceBlacklistTimeout(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLoadBalanceBlacklistTimeout(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setRetriesAllDown(int i) throws SQLException {
        super.setRetriesAllDown(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setRetriesAllDown(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setExceptionInterceptors(String str) {
        super.setExceptionInterceptors(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setExceptionInterceptors(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setQueryTimeoutKillsConnection(boolean z) {
        super.setQueryTimeoutKillsConnection(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setQueryTimeoutKillsConnection(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLoadBalancePingTimeout(int i) throws SQLException {
        super.setLoadBalancePingTimeout(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLoadBalancePingTimeout(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceValidateConnectionOnSwapServer(boolean z) {
        super.setLoadBalanceValidateConnectionOnSwapServer(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLoadBalanceValidateConnectionOnSwapServer(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceConnectionGroup(String str) {
        super.setLoadBalanceConnectionGroup(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLoadBalanceConnectionGroup(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceExceptionChecker(String str) {
        super.setLoadBalanceExceptionChecker(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLoadBalanceExceptionChecker(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceSQLStateFailover(String str) {
        super.setLoadBalanceSQLStateFailover(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLoadBalanceSQLStateFailover(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceSQLExceptionSubclassFailover(String str) {
        super.setLoadBalanceSQLExceptionSubclassFailover(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLoadBalanceSQLExceptionSubclassFailover(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceEnableJMX(boolean z) {
        super.setLoadBalanceEnableJMX(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLoadBalanceEnableJMX(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceAutoCommitStatementThreshold(int i) throws SQLException {
        super.setLoadBalanceAutoCommitStatementThreshold(i);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLoadBalanceAutoCommitStatementThreshold(i);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceAutoCommitStatementRegex(String str) {
        super.setLoadBalanceAutoCommitStatementRegex(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setLoadBalanceAutoCommitStatementRegex(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setAuthenticationPlugins(String str) {
        super.setAuthenticationPlugins(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setAuthenticationPlugins(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setDisabledAuthenticationPlugins(String str) {
        super.setDisabledAuthenticationPlugins(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setDisabledAuthenticationPlugins(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setDefaultAuthenticationPlugin(String str) {
        super.setDefaultAuthenticationPlugin(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setDefaultAuthenticationPlugin(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setParseInfoCacheFactory(String str) {
        super.setParseInfoCacheFactory(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setParseInfoCacheFactory(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setServerConfigCacheFactory(String str) {
        super.setServerConfigCacheFactory(str);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setServerConfigCacheFactory(str);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setDisconnectOnExpiredPasswords(boolean z) {
        super.setDisconnectOnExpiredPasswords(z);
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setDisconnectOnExpiredPasswords(z);
        }
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties
    public void setGetProceduresReturnsFunctions(boolean z) {
        super.setGetProceduresReturnsFunctions(z);
    }

    @Override // com.mysql.jdbc.MySQLConnection, com.mysql.jdbc.Connection
    public Log getLog() {
        return this.log;
    }

    @Override // com.mysql.jdbc.Connection
    public void setSessionMaxRows(int i) throws SQLException {
        Iterator<ReplicationConnection> it = this.serverConnections.values().iterator();
        while (it.hasNext()) {
            it.next().setSessionMaxRows(i);
        }
    }

    @Override // com.mysql.jdbc.Connection
    public int getSessionMaxRows() {
        return getActiveConnectionPassive().getSessionMaxRows();
    }

    @Override // com.mysql.jdbc.MySQLConnection
    @Deprecated
    public String getCharsetNameForIndex(int i) throws SQLException {
        return getEncodingForIndex(i);
    }

    @Override // com.mysql.jdbc.ConnectionPropertiesImpl, com.mysql.jdbc.ConnectionProperties, com.mysql.jdbc.MySQLConnection
    public ExceptionInterceptor getExceptionInterceptor() {
        if (this.currentConnection == null) {
            return null;
        }
        return this.currentConnection.getExceptionInterceptor();
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public String getHostPortPair() {
        return getActiveMySQLConnection().getHostPortPair();
    }

    @Override // com.mysql.jdbc.MySQLConnection, com.mysql.jdbc.Connection
    public boolean lowerCaseTableNames() {
        return getActiveMySQLConnection().lowerCaseTableNames();
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public boolean serverSupportsConvertFn() throws SQLException {
        return getActiveMySQLConnectionChecked().serverSupportsConvertFn();
    }

    @Override // com.mysql.jdbc.MySQLConnection
    public boolean storesLowerCaseTableName() {
        return getActiveMySQLConnection().storesLowerCaseTableName();
    }

    @Override // java.sql.Connection
    public SQLWarning getWarnings() throws SQLException {
        return getActiveMySQLConnectionChecked().getWarnings();
    }

    @Override // java.sql.Connection
    public String nativeSQL(String str) throws SQLException {
        return getActiveMySQLConnectionChecked().nativeSQL(str);
    }
}
