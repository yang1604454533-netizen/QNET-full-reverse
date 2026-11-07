package com.mysql.jdbc.jdbc2.optional;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ExceptionInterceptor;
import com.mysql.jdbc.Extension;
import com.mysql.jdbc.MySQLConnection;
import com.mysql.jdbc.MysqlErrorNumbers;
import com.mysql.jdbc.SQLError;
import com.mysql.jdbc.Util;
import com.mysql.jdbc.log.Log;
import java.lang.reflect.Constructor;
import java.sql.CallableStatement;
import java.sql.DatabaseMetaData;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.sql.Savepoint;
import java.sql.Statement;
import java.util.Map;
import java.util.Properties;
import java.util.TimeZone;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class ConnectionWrapper extends WrapperBase implements Connection {
    private static final Constructor<?> JDBC_4_CONNECTION_WRAPPER_CTOR;
    private boolean closed;
    private String invalidHandleStr;
    private boolean isForXa;
    protected Connection mc;

    static {
        if (Util.isJdbc4()) {
            try {
                JDBC_4_CONNECTION_WRAPPER_CTOR = Class.forName("com.mysql.jdbc.jdbc2.optional.JDBC4ConnectionWrapper").getConstructor(MysqlPooledConnection.class, Connection.class, Boolean.TYPE);
                return;
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            } catch (SecurityException e3) {
                throw new RuntimeException(e3);
            }
        }
        JDBC_4_CONNECTION_WRAPPER_CTOR = null;
    }

    protected static ConnectionWrapper getInstance(MysqlPooledConnection mysqlPooledConnection, Connection connection, boolean z) throws SQLException {
        return !Util.isJdbc4() ? new ConnectionWrapper(mysqlPooledConnection, connection, z) : (ConnectionWrapper) Util.handleNewInstance(JDBC_4_CONNECTION_WRAPPER_CTOR, new Object[]{mysqlPooledConnection, connection, Boolean.valueOf(z)}, mysqlPooledConnection.getExceptionInterceptor());
    }

    public ConnectionWrapper(MysqlPooledConnection mysqlPooledConnection, Connection connection, boolean z) throws SQLException {
        super(mysqlPooledConnection);
        this.mc = null;
        this.invalidHandleStr = "Logical handle no longer valid";
        this.mc = connection;
        this.closed = false;
        this.isForXa = z;
        if (this.isForXa) {
            setInGlobalTx(false);
        }
    }

    @Override // java.sql.Connection
    public void setAutoCommit(boolean z) throws SQLException {
        checkClosed();
        if (z && isInGlobalTx()) {
            throw SQLError.createSQLException("Can't set autocommit to 'true' on an XAConnection", SQLError.SQL_STATE_INVALID_TRANSACTION_TERMINATION, MysqlErrorNumbers.ER_XA_RMERR, this.exceptionInterceptor);
        }
        try {
            this.mc.setAutoCommit(z);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Connection
    public boolean getAutoCommit() throws SQLException {
        checkClosed();
        try {
            return this.mc.getAutoCommit();
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return false;
        }
    }

    @Override // java.sql.Connection
    public void setCatalog(String str) throws SQLException {
        checkClosed();
        try {
            this.mc.setCatalog(str);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Connection
    public String getCatalog() throws SQLException {
        checkClosed();
        try {
            return this.mc.getCatalog();
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public boolean isClosed() throws SQLException {
        return this.closed || this.mc.isClosed();
    }

    @Override // com.mysql.jdbc.Connection
    public boolean isMasterConnection() {
        return this.mc.isMasterConnection();
    }

    @Override // java.sql.Connection
    public void setHoldability(int i) throws SQLException {
        checkClosed();
        try {
            this.mc.setHoldability(i);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Connection
    public int getHoldability() throws SQLException {
        checkClosed();
        try {
            return this.mc.getHoldability();
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 1;
        }
    }

    @Override // com.mysql.jdbc.Connection
    public long getIdleFor() {
        return this.mc.getIdleFor();
    }

    @Override // java.sql.Connection
    public DatabaseMetaData getMetaData() throws SQLException {
        checkClosed();
        try {
            return this.mc.getMetaData();
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public void setReadOnly(boolean z) throws SQLException {
        checkClosed();
        try {
            this.mc.setReadOnly(z);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Connection
    public boolean isReadOnly() throws SQLException {
        checkClosed();
        try {
            return this.mc.isReadOnly();
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return false;
        }
    }

    @Override // java.sql.Connection
    public Savepoint setSavepoint() throws SQLException {
        checkClosed();
        if (isInGlobalTx()) {
            throw SQLError.createSQLException("Can't set autocommit to 'true' on an XAConnection", SQLError.SQL_STATE_INVALID_TRANSACTION_TERMINATION, MysqlErrorNumbers.ER_XA_RMERR, this.exceptionInterceptor);
        }
        try {
            return this.mc.setSavepoint();
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public Savepoint setSavepoint(String str) throws SQLException {
        checkClosed();
        if (isInGlobalTx()) {
            throw SQLError.createSQLException("Can't set autocommit to 'true' on an XAConnection", SQLError.SQL_STATE_INVALID_TRANSACTION_TERMINATION, MysqlErrorNumbers.ER_XA_RMERR, this.exceptionInterceptor);
        }
        try {
            return this.mc.setSavepoint(str);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public void setTransactionIsolation(int i) throws SQLException {
        checkClosed();
        try {
            this.mc.setTransactionIsolation(i);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Connection
    public int getTransactionIsolation() throws SQLException {
        checkClosed();
        try {
            return this.mc.getTransactionIsolation();
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 4;
        }
    }

    @Override // java.sql.Connection
    public Map<String, Class<?>> getTypeMap() throws SQLException {
        checkClosed();
        try {
            return this.mc.getTypeMap();
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public SQLWarning getWarnings() throws SQLException {
        checkClosed();
        try {
            return this.mc.getWarnings();
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public void clearWarnings() throws SQLException {
        checkClosed();
        try {
            this.mc.clearWarnings();
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Connection, java.lang.AutoCloseable
    public void close() throws SQLException {
        close(true);
    }

    @Override // java.sql.Connection
    public void commit() throws SQLException {
        checkClosed();
        if (isInGlobalTx()) {
            throw SQLError.createSQLException("Can't call commit() on an XAConnection associated with a global transaction", SQLError.SQL_STATE_INVALID_TRANSACTION_TERMINATION, MysqlErrorNumbers.ER_XA_RMERR, this.exceptionInterceptor);
        }
        try {
            this.mc.commit();
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Connection
    public Statement createStatement() throws SQLException {
        checkClosed();
        try {
            return StatementWrapper.getInstance(this, this.pooledConnection, this.mc.createStatement());
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public Statement createStatement(int i, int i2) throws SQLException {
        checkClosed();
        try {
            return StatementWrapper.getInstance(this, this.pooledConnection, this.mc.createStatement(i, i2));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public Statement createStatement(int i, int i2, int i3) throws SQLException {
        checkClosed();
        try {
            return StatementWrapper.getInstance(this, this.pooledConnection, this.mc.createStatement(i, i2, i3));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public String nativeSQL(String str) throws SQLException {
        checkClosed();
        try {
            return this.mc.nativeSQL(str);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public CallableStatement prepareCall(String str) throws SQLException {
        checkClosed();
        try {
            return CallableStatementWrapper.getInstance(this, this.pooledConnection, this.mc.prepareCall(str));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public CallableStatement prepareCall(String str, int i, int i2) throws SQLException {
        checkClosed();
        try {
            return CallableStatementWrapper.getInstance(this, this.pooledConnection, this.mc.prepareCall(str, i, i2));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public CallableStatement prepareCall(String str, int i, int i2, int i3) throws SQLException {
        checkClosed();
        try {
            return CallableStatementWrapper.getInstance(this, this.pooledConnection, this.mc.prepareCall(str, i, i2, i3));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    public PreparedStatement clientPrepare(String str) throws SQLException {
        checkClosed();
        try {
            return new PreparedStatementWrapper(this, this.pooledConnection, this.mc.clientPrepareStatement(str));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    public PreparedStatement clientPrepare(String str, int i, int i2) throws SQLException {
        checkClosed();
        try {
            return new PreparedStatementWrapper(this, this.pooledConnection, this.mc.clientPrepareStatement(str, i, i2));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public PreparedStatement prepareStatement(String str) throws SQLException {
        checkClosed();
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.prepareStatement(str));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public PreparedStatement prepareStatement(String str, int i, int i2) throws SQLException {
        checkClosed();
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.prepareStatement(str, i, i2));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public PreparedStatement prepareStatement(String str, int i, int i2, int i3) throws SQLException {
        checkClosed();
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.prepareStatement(str, i, i2, i3));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public PreparedStatement prepareStatement(String str, int i) throws SQLException {
        checkClosed();
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.prepareStatement(str, i));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public PreparedStatement prepareStatement(String str, int[] iArr) throws SQLException {
        checkClosed();
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.prepareStatement(str, iArr));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public PreparedStatement prepareStatement(String str, String[] strArr) throws SQLException {
        checkClosed();
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.prepareStatement(str, strArr));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Connection
    public void releaseSavepoint(Savepoint savepoint) throws SQLException {
        checkClosed();
        try {
            this.mc.releaseSavepoint(savepoint);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Connection
    public void rollback() throws SQLException {
        checkClosed();
        if (isInGlobalTx()) {
            throw SQLError.createSQLException("Can't call rollback() on an XAConnection associated with a global transaction", SQLError.SQL_STATE_INVALID_TRANSACTION_TERMINATION, MysqlErrorNumbers.ER_XA_RMERR, this.exceptionInterceptor);
        }
        try {
            this.mc.rollback();
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Connection
    public void rollback(Savepoint savepoint) throws SQLException {
        checkClosed();
        if (isInGlobalTx()) {
            throw SQLError.createSQLException("Can't call rollback() on an XAConnection associated with a global transaction", SQLError.SQL_STATE_INVALID_TRANSACTION_TERMINATION, MysqlErrorNumbers.ER_XA_RMERR, this.exceptionInterceptor);
        }
        try {
            this.mc.rollback(savepoint);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // com.mysql.jdbc.Connection
    public boolean isSameResource(Connection connection) {
        if (connection instanceof ConnectionWrapper) {
            return this.mc.isSameResource(((ConnectionWrapper) connection).mc);
        }
        return this.mc.isSameResource(connection);
    }

    protected void close(boolean z) throws SQLException {
        synchronized (this.pooledConnection) {
            if (this.closed) {
                return;
            }
            if (!isInGlobalTx() && this.mc.getRollbackOnPooledClose() && !getAutoCommit()) {
                rollback();
            }
            if (z) {
                this.pooledConnection.callConnectionEventListeners(2, null);
            }
            this.closed = true;
        }
    }

    @Override // com.mysql.jdbc.Connection
    public void checkClosed() throws SQLException {
        if (this.closed) {
            throw SQLError.createSQLException(this.invalidHandleStr, this.exceptionInterceptor);
        }
    }

    @Override // com.mysql.jdbc.Connection
    public boolean isInGlobalTx() {
        return this.mc.isInGlobalTx();
    }

    @Override // com.mysql.jdbc.Connection
    public void setInGlobalTx(boolean z) {
        this.mc.setInGlobalTx(z);
    }

    @Override // com.mysql.jdbc.Connection
    public void ping() throws SQLException {
        if (this.mc != null) {
            this.mc.ping();
        }
    }

    @Override // com.mysql.jdbc.Connection
    public void changeUser(String str, String str2) throws SQLException {
        checkClosed();
        try {
            this.mc.changeUser(str, str2);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // com.mysql.jdbc.Connection
    @Deprecated
    public void clearHasTriedMaster() {
        this.mc.clearHasTriedMaster();
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement clientPrepareStatement(String str) throws SQLException {
        checkClosed();
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.clientPrepareStatement(str));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement clientPrepareStatement(String str, int i) throws SQLException {
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.clientPrepareStatement(str, i));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement clientPrepareStatement(String str, int i, int i2) throws SQLException {
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.clientPrepareStatement(str, i, i2));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement clientPrepareStatement(String str, int i, int i2, int i3) throws SQLException {
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.clientPrepareStatement(str, i, i2, i3));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement clientPrepareStatement(String str, int[] iArr) throws SQLException {
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.clientPrepareStatement(str, iArr));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement clientPrepareStatement(String str, String[] strArr) throws SQLException {
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.clientPrepareStatement(str, strArr));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // com.mysql.jdbc.Connection
    public int getActiveStatementCount() {
        return this.mc.getActiveStatementCount();
    }

    @Override // com.mysql.jdbc.Connection
    public Log getLog() throws SQLException {
        return this.mc.getLog();
    }

    @Override // com.mysql.jdbc.Connection
    @Deprecated
    public String getServerCharacterEncoding() {
        return getServerCharset();
    }

    @Override // com.mysql.jdbc.Connection
    public String getServerCharset() {
        return this.mc.getServerCharset();
    }

    @Override // com.mysql.jdbc.Connection
    public TimeZone getServerTimezoneTZ() {
        return this.mc.getServerTimezoneTZ();
    }

    @Override // com.mysql.jdbc.Connection
    public String getStatementComment() {
        return this.mc.getStatementComment();
    }

    @Override // com.mysql.jdbc.Connection
    @Deprecated
    public boolean hasTriedMaster() {
        return this.mc.hasTriedMaster();
    }

    @Override // com.mysql.jdbc.Connection
    public boolean isAbonormallyLongQuery(long j) {
        return this.mc.isAbonormallyLongQuery(j);
    }

    @Override // com.mysql.jdbc.Connection
    public boolean isNoBackslashEscapesSet() {
        return this.mc.isNoBackslashEscapesSet();
    }

    @Override // com.mysql.jdbc.Connection
    public boolean lowerCaseTableNames() {
        return this.mc.lowerCaseTableNames();
    }

    @Override // com.mysql.jdbc.Connection
    public boolean parserKnowsUnicode() {
        return this.mc.parserKnowsUnicode();
    }

    @Override // com.mysql.jdbc.Connection
    public void reportQueryTime(long j) {
        this.mc.reportQueryTime(j);
    }

    @Override // com.mysql.jdbc.Connection
    public void resetServerState() throws SQLException {
        checkClosed();
        try {
            this.mc.resetServerState();
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement serverPrepareStatement(String str) throws SQLException {
        checkClosed();
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.serverPrepareStatement(str));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement serverPrepareStatement(String str, int i) throws SQLException {
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.serverPrepareStatement(str, i));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement serverPrepareStatement(String str, int i, int i2) throws SQLException {
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.serverPrepareStatement(str, i, i2));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement serverPrepareStatement(String str, int i, int i2, int i3) throws SQLException {
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.serverPrepareStatement(str, i, i2, i3));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement serverPrepareStatement(String str, int[] iArr) throws SQLException {
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.serverPrepareStatement(str, iArr));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // com.mysql.jdbc.Connection
    public PreparedStatement serverPrepareStatement(String str, String[] strArr) throws SQLException {
        try {
            return PreparedStatementWrapper.getInstance(this, this.pooledConnection, this.mc.serverPrepareStatement(str, strArr));
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // com.mysql.jdbc.Connection
    public void setFailedOver(boolean z) {
        this.mc.setFailedOver(z);
    }

    @Override // com.mysql.jdbc.Connection
    @Deprecated
    public void setPreferSlaveDuringFailover(boolean z) {
        this.mc.setPreferSlaveDuringFailover(z);
    }

    @Override // com.mysql.jdbc.Connection
    public void setStatementComment(String str) {
        this.mc.setStatementComment(str);
    }

    @Override // com.mysql.jdbc.Connection
    public void shutdownServer() throws SQLException {
        checkClosed();
        try {
            this.mc.shutdownServer();
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // com.mysql.jdbc.Connection
    public boolean supportsIsolationLevel() {
        return this.mc.supportsIsolationLevel();
    }

    @Override // com.mysql.jdbc.Connection
    public boolean supportsQuotedIdentifiers() {
        return this.mc.supportsQuotedIdentifiers();
    }

    @Override // com.mysql.jdbc.Connection
    public boolean supportsTransactions() {
        return this.mc.supportsTransactions();
    }

    @Override // com.mysql.jdbc.Connection
    public boolean versionMeetsMinimum(int i, int i2, int i3) throws SQLException {
        checkClosed();
        try {
            return this.mc.versionMeetsMinimum(i, i2, i3);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return false;
        }
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String exposeAsXml() throws SQLException {
        checkClosed();
        try {
            return this.mc.exposeAsXml();
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAllowLoadLocalInfile() {
        return this.mc.getAllowLoadLocalInfile();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAllowMultiQueries() {
        return this.mc.getAllowMultiQueries();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAllowNanAndInf() {
        return this.mc.getAllowNanAndInf();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAllowUrlInLocalInfile() {
        return this.mc.getAllowUrlInLocalInfile();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAlwaysSendSetIsolation() {
        return this.mc.getAlwaysSendSetIsolation();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAutoClosePStmtStreams() {
        return this.mc.getAutoClosePStmtStreams();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAutoDeserialize() {
        return this.mc.getAutoDeserialize();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAutoGenerateTestcaseScript() {
        return this.mc.getAutoGenerateTestcaseScript();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAutoReconnectForPools() {
        return this.mc.getAutoReconnectForPools();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAutoSlowLog() {
        return this.mc.getAutoSlowLog();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getBlobSendChunkSize() {
        return this.mc.getBlobSendChunkSize();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getBlobsAreStrings() {
        return this.mc.getBlobsAreStrings();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCacheCallableStatements() {
        return this.mc.getCacheCallableStatements();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCacheCallableStmts() {
        return this.mc.getCacheCallableStmts();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCachePrepStmts() {
        return this.mc.getCachePrepStmts();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCachePreparedStatements() {
        return this.mc.getCachePreparedStatements();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCacheResultSetMetadata() {
        return this.mc.getCacheResultSetMetadata();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCacheServerConfiguration() {
        return this.mc.getCacheServerConfiguration();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getCallableStatementCacheSize() {
        return this.mc.getCallableStatementCacheSize();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getCallableStmtCacheSize() {
        return this.mc.getCallableStmtCacheSize();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCapitalizeTypeNames() {
        return this.mc.getCapitalizeTypeNames();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getCharacterSetResults() {
        return this.mc.getCharacterSetResults();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getClientCertificateKeyStorePassword() {
        return this.mc.getClientCertificateKeyStorePassword();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getClientCertificateKeyStoreType() {
        return this.mc.getClientCertificateKeyStoreType();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getClientCertificateKeyStoreUrl() {
        return this.mc.getClientCertificateKeyStoreUrl();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getClientInfoProvider() {
        return this.mc.getClientInfoProvider();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getClobCharacterEncoding() {
        return this.mc.getClobCharacterEncoding();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getClobberStreamingResults() {
        return this.mc.getClobberStreamingResults();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getConnectTimeout() {
        return this.mc.getConnectTimeout();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getConnectionCollation() {
        return this.mc.getConnectionCollation();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getConnectionLifecycleInterceptors() {
        return this.mc.getConnectionLifecycleInterceptors();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getContinueBatchOnError() {
        return this.mc.getContinueBatchOnError();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCreateDatabaseIfNotExist() {
        return this.mc.getCreateDatabaseIfNotExist();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getDefaultFetchSize() {
        return this.mc.getDefaultFetchSize();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getDontTrackOpenResources() {
        return this.mc.getDontTrackOpenResources();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getDumpMetadataOnColumnNotFound() {
        return this.mc.getDumpMetadataOnColumnNotFound();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getDumpQueriesOnException() {
        return this.mc.getDumpQueriesOnException();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getDynamicCalendars() {
        return this.mc.getDynamicCalendars();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getElideSetAutoCommits() {
        return this.mc.getElideSetAutoCommits();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getEmptyStringsConvertToZero() {
        return this.mc.getEmptyStringsConvertToZero();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getEmulateLocators() {
        return this.mc.getEmulateLocators();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getEmulateUnsupportedPstmts() {
        return this.mc.getEmulateUnsupportedPstmts();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getEnablePacketDebug() {
        return this.mc.getEnablePacketDebug();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getEnableQueryTimeouts() {
        return this.mc.getEnableQueryTimeouts();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getEncoding() {
        return this.mc.getEncoding();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getExplainSlowQueries() {
        return this.mc.getExplainSlowQueries();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getFailOverReadOnly() {
        return this.mc.getFailOverReadOnly();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getFunctionsNeverReturnBlobs() {
        return this.mc.getFunctionsNeverReturnBlobs();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getGatherPerfMetrics() {
        return this.mc.getGatherPerfMetrics();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getGatherPerformanceMetrics() {
        return this.mc.getGatherPerformanceMetrics();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getGenerateSimpleParameterMetadata() {
        return this.mc.getGenerateSimpleParameterMetadata();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getHoldResultsOpenOverStatementClose() {
        return this.mc.getHoldResultsOpenOverStatementClose();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getIgnoreNonTxTables() {
        return this.mc.getIgnoreNonTxTables();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getIncludeInnodbStatusInDeadlockExceptions() {
        return this.mc.getIncludeInnodbStatusInDeadlockExceptions();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getInitialTimeout() {
        return this.mc.getInitialTimeout();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getInteractiveClient() {
        return this.mc.getInteractiveClient();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getIsInteractiveClient() {
        return this.mc.getIsInteractiveClient();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getJdbcCompliantTruncation() {
        return this.mc.getJdbcCompliantTruncation();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getJdbcCompliantTruncationForReads() {
        return this.mc.getJdbcCompliantTruncationForReads();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLargeRowSizeThreshold() {
        return this.mc.getLargeRowSizeThreshold();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLoadBalanceStrategy() {
        return this.mc.getLoadBalanceStrategy();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getServerAffinityOrder() {
        return this.mc.getServerAffinityOrder();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLocalSocketAddress() {
        return this.mc.getLocalSocketAddress();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getLocatorFetchBufferSize() {
        return this.mc.getLocatorFetchBufferSize();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getLogSlowQueries() {
        return this.mc.getLogSlowQueries();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getLogXaCommands() {
        return this.mc.getLogXaCommands();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLogger() {
        return this.mc.getLogger();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLoggerClassName() {
        return this.mc.getLoggerClassName();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getMaintainTimeStats() {
        return this.mc.getMaintainTimeStats();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getMaxQuerySizeToLog() {
        return this.mc.getMaxQuerySizeToLog();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getMaxReconnects() {
        return this.mc.getMaxReconnects();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getMaxRows() {
        return this.mc.getMaxRows();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getMetadataCacheSize() {
        return this.mc.getMetadataCacheSize();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getNetTimeoutForStreamingResults() {
        return this.mc.getNetTimeoutForStreamingResults();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getNoAccessToProcedureBodies() {
        return this.mc.getNoAccessToProcedureBodies();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getNoDatetimeStringSync() {
        return this.mc.getNoDatetimeStringSync();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getNoTimezoneConversionForTimeType() {
        return this.mc.getNoTimezoneConversionForTimeType();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getNoTimezoneConversionForDateType() {
        return this.mc.getNoTimezoneConversionForDateType();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCacheDefaultTimezone() {
        return this.mc.getCacheDefaultTimezone();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getNullCatalogMeansCurrent() {
        return this.mc.getNullCatalogMeansCurrent();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getNullNamePatternMatchesAll() {
        return this.mc.getNullNamePatternMatchesAll();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getOverrideSupportsIntegrityEnhancementFacility() {
        return this.mc.getOverrideSupportsIntegrityEnhancementFacility();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getPacketDebugBufferSize() {
        return this.mc.getPacketDebugBufferSize();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getPadCharsWithSpace() {
        return this.mc.getPadCharsWithSpace();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getParanoid() {
        return this.mc.getParanoid();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getPedantic() {
        return this.mc.getPedantic();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getPinGlobalTxToPhysicalConnection() {
        return this.mc.getPinGlobalTxToPhysicalConnection();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getPopulateInsertRowWithDefaultValues() {
        return this.mc.getPopulateInsertRowWithDefaultValues();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getPrepStmtCacheSize() {
        return this.mc.getPrepStmtCacheSize();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getPrepStmtCacheSqlLimit() {
        return this.mc.getPrepStmtCacheSqlLimit();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getPreparedStatementCacheSize() {
        return this.mc.getPreparedStatementCacheSize();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getPreparedStatementCacheSqlLimit() {
        return this.mc.getPreparedStatementCacheSqlLimit();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getProcessEscapeCodesForPrepStmts() {
        return this.mc.getProcessEscapeCodesForPrepStmts();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getProfileSQL() {
        return this.mc.getProfileSQL();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getProfileSql() {
        return this.mc.getProfileSql();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getPropertiesTransform() {
        return this.mc.getPropertiesTransform();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getQueriesBeforeRetryMaster() {
        return this.mc.getQueriesBeforeRetryMaster();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getReconnectAtTxEnd() {
        return this.mc.getReconnectAtTxEnd();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getRelaxAutoCommit() {
        return this.mc.getRelaxAutoCommit();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getReportMetricsIntervalMillis() {
        return this.mc.getReportMetricsIntervalMillis();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getRequireSSL() {
        return this.mc.getRequireSSL();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getResourceId() {
        return this.mc.getResourceId();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getResultSetSizeThreshold() {
        return this.mc.getResultSetSizeThreshold();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getRewriteBatchedStatements() {
        return this.mc.getRewriteBatchedStatements();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getRollbackOnPooledClose() {
        return this.mc.getRollbackOnPooledClose();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getRoundRobinLoadBalance() {
        return this.mc.getRoundRobinLoadBalance();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getRunningCTS13() {
        return this.mc.getRunningCTS13();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getSecondsBeforeRetryMaster() {
        return this.mc.getSecondsBeforeRetryMaster();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getServerTimezone() {
        return this.mc.getServerTimezone();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getSessionVariables() {
        return this.mc.getSessionVariables();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getSlowQueryThresholdMillis() {
        return this.mc.getSlowQueryThresholdMillis();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public long getSlowQueryThresholdNanos() {
        return this.mc.getSlowQueryThresholdNanos();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getSocketFactory() {
        return this.mc.getSocketFactory();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getSocketFactoryClassName() {
        return this.mc.getSocketFactoryClassName();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getSocketTimeout() {
        return this.mc.getSocketTimeout();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getStatementInterceptors() {
        return this.mc.getStatementInterceptors();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getStrictFloatingPoint() {
        return this.mc.getStrictFloatingPoint();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getStrictUpdates() {
        return this.mc.getStrictUpdates();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getTcpKeepAlive() {
        return this.mc.getTcpKeepAlive();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getTcpNoDelay() {
        return this.mc.getTcpNoDelay();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getTcpRcvBuf() {
        return this.mc.getTcpRcvBuf();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getTcpSndBuf() {
        return this.mc.getTcpSndBuf();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getTcpTrafficClass() {
        return this.mc.getTcpTrafficClass();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getTinyInt1isBit() {
        return this.mc.getTinyInt1isBit();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getTraceProtocol() {
        return this.mc.getTraceProtocol();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getTransformedBitIsBoolean() {
        return this.mc.getTransformedBitIsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getTreatUtilDateAsTimestamp() {
        return this.mc.getTreatUtilDateAsTimestamp();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getTrustCertificateKeyStorePassword() {
        return this.mc.getTrustCertificateKeyStorePassword();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getTrustCertificateKeyStoreType() {
        return this.mc.getTrustCertificateKeyStoreType();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getTrustCertificateKeyStoreUrl() {
        return this.mc.getTrustCertificateKeyStoreUrl();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUltraDevHack() {
        return this.mc.getUltraDevHack();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseBlobToStoreUTF8OutsideBMP() {
        return this.mc.getUseBlobToStoreUTF8OutsideBMP();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseCompression() {
        return this.mc.getUseCompression();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getUseConfigs() {
        return this.mc.getUseConfigs();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseCursorFetch() {
        return this.mc.getUseCursorFetch();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseDirectRowUnpack() {
        return this.mc.getUseDirectRowUnpack();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseDynamicCharsetInfo() {
        return this.mc.getUseDynamicCharsetInfo();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseFastDateParsing() {
        return this.mc.getUseFastDateParsing();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseFastIntParsing() {
        return this.mc.getUseFastIntParsing();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseGmtMillisForDatetimes() {
        return this.mc.getUseGmtMillisForDatetimes();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseHostsInPrivileges() {
        return this.mc.getUseHostsInPrivileges();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseInformationSchema() {
        return this.mc.getUseInformationSchema();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseJDBCCompliantTimezoneShift() {
        return this.mc.getUseJDBCCompliantTimezoneShift();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseJvmCharsetConverters() {
        return this.mc.getUseJvmCharsetConverters();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseLocalSessionState() {
        return this.mc.getUseLocalSessionState();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseNanosForElapsedTime() {
        return this.mc.getUseNanosForElapsedTime();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseOldAliasMetadataBehavior() {
        return this.mc.getUseOldAliasMetadataBehavior();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseOldUTF8Behavior() {
        return this.mc.getUseOldUTF8Behavior();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseOnlyServerErrorMessages() {
        return this.mc.getUseOnlyServerErrorMessages();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseReadAheadInput() {
        return this.mc.getUseReadAheadInput();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseSSL() {
        return this.mc.getUseSSL();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseSSPSCompatibleTimezoneShift() {
        return this.mc.getUseSSPSCompatibleTimezoneShift();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseServerPrepStmts() {
        return this.mc.getUseServerPrepStmts();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseServerPreparedStmts() {
        return this.mc.getUseServerPreparedStmts();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseSqlStateCodes() {
        return this.mc.getUseSqlStateCodes();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseStreamLengthsInPrepStmts() {
        return this.mc.getUseStreamLengthsInPrepStmts();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseTimezone() {
        return this.mc.getUseTimezone();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseUltraDevWorkAround() {
        return this.mc.getUseUltraDevWorkAround();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseUnbufferedInput() {
        return this.mc.getUseUnbufferedInput();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseUnicode() {
        return this.mc.getUseUnicode();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseUsageAdvisor() {
        return this.mc.getUseUsageAdvisor();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getUtf8OutsideBmpExcludedColumnNamePattern() {
        return this.mc.getUtf8OutsideBmpExcludedColumnNamePattern();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getUtf8OutsideBmpIncludedColumnNamePattern() {
        return this.mc.getUtf8OutsideBmpIncludedColumnNamePattern();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getYearIsDateType() {
        return this.mc.getYearIsDateType();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getZeroDateTimeBehavior() {
        return this.mc.getZeroDateTimeBehavior();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAllowLoadLocalInfile(boolean z) {
        this.mc.setAllowLoadLocalInfile(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAllowMultiQueries(boolean z) {
        this.mc.setAllowMultiQueries(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAllowNanAndInf(boolean z) {
        this.mc.setAllowNanAndInf(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAllowUrlInLocalInfile(boolean z) {
        this.mc.setAllowUrlInLocalInfile(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAlwaysSendSetIsolation(boolean z) {
        this.mc.setAlwaysSendSetIsolation(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAutoClosePStmtStreams(boolean z) {
        this.mc.setAutoClosePStmtStreams(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAutoDeserialize(boolean z) {
        this.mc.setAutoDeserialize(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAutoGenerateTestcaseScript(boolean z) {
        this.mc.setAutoGenerateTestcaseScript(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAutoReconnect(boolean z) {
        this.mc.setAutoReconnect(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAutoReconnectForConnectionPools(boolean z) {
        this.mc.setAutoReconnectForConnectionPools(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAutoReconnectForPools(boolean z) {
        this.mc.setAutoReconnectForPools(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAutoSlowLog(boolean z) {
        this.mc.setAutoSlowLog(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setBlobSendChunkSize(String str) throws SQLException {
        this.mc.setBlobSendChunkSize(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setBlobsAreStrings(boolean z) {
        this.mc.setBlobsAreStrings(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setCacheCallableStatements(boolean z) {
        this.mc.setCacheCallableStatements(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setCacheCallableStmts(boolean z) {
        this.mc.setCacheCallableStmts(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setCachePrepStmts(boolean z) {
        this.mc.setCachePrepStmts(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setCachePreparedStatements(boolean z) {
        this.mc.setCachePreparedStatements(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setCacheResultSetMetadata(boolean z) {
        this.mc.setCacheResultSetMetadata(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setCacheServerConfiguration(boolean z) {
        this.mc.setCacheServerConfiguration(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setCallableStatementCacheSize(int i) throws SQLException {
        this.mc.setCallableStatementCacheSize(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setCallableStmtCacheSize(int i) throws SQLException {
        this.mc.setCallableStmtCacheSize(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setCapitalizeDBMDTypes(boolean z) {
        this.mc.setCapitalizeDBMDTypes(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setCapitalizeTypeNames(boolean z) {
        this.mc.setCapitalizeTypeNames(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setCharacterEncoding(String str) {
        this.mc.setCharacterEncoding(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setCharacterSetResults(String str) {
        this.mc.setCharacterSetResults(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setClientCertificateKeyStorePassword(String str) {
        this.mc.setClientCertificateKeyStorePassword(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setClientCertificateKeyStoreType(String str) {
        this.mc.setClientCertificateKeyStoreType(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setClientCertificateKeyStoreUrl(String str) {
        this.mc.setClientCertificateKeyStoreUrl(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setClientInfoProvider(String str) {
        this.mc.setClientInfoProvider(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setClobCharacterEncoding(String str) {
        this.mc.setClobCharacterEncoding(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setClobberStreamingResults(boolean z) {
        this.mc.setClobberStreamingResults(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setConnectTimeout(int i) throws SQLException {
        this.mc.setConnectTimeout(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setConnectionCollation(String str) {
        this.mc.setConnectionCollation(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setConnectionLifecycleInterceptors(String str) {
        this.mc.setConnectionLifecycleInterceptors(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setContinueBatchOnError(boolean z) {
        this.mc.setContinueBatchOnError(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setCreateDatabaseIfNotExist(boolean z) {
        this.mc.setCreateDatabaseIfNotExist(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setDefaultFetchSize(int i) throws SQLException {
        this.mc.setDefaultFetchSize(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setDetectServerPreparedStmts(boolean z) {
        this.mc.setDetectServerPreparedStmts(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setDontTrackOpenResources(boolean z) {
        this.mc.setDontTrackOpenResources(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setDumpMetadataOnColumnNotFound(boolean z) {
        this.mc.setDumpMetadataOnColumnNotFound(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setDumpQueriesOnException(boolean z) {
        this.mc.setDumpQueriesOnException(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setDynamicCalendars(boolean z) {
        this.mc.setDynamicCalendars(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setElideSetAutoCommits(boolean z) {
        this.mc.setElideSetAutoCommits(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setEmptyStringsConvertToZero(boolean z) {
        this.mc.setEmptyStringsConvertToZero(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setEmulateLocators(boolean z) {
        this.mc.setEmulateLocators(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setEmulateUnsupportedPstmts(boolean z) {
        this.mc.setEmulateUnsupportedPstmts(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setEnablePacketDebug(boolean z) {
        this.mc.setEnablePacketDebug(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setEnableQueryTimeouts(boolean z) {
        this.mc.setEnableQueryTimeouts(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setEncoding(String str) {
        this.mc.setEncoding(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setExplainSlowQueries(boolean z) {
        this.mc.setExplainSlowQueries(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setFailOverReadOnly(boolean z) {
        this.mc.setFailOverReadOnly(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setFunctionsNeverReturnBlobs(boolean z) {
        this.mc.setFunctionsNeverReturnBlobs(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setGatherPerfMetrics(boolean z) {
        this.mc.setGatherPerfMetrics(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setGatherPerformanceMetrics(boolean z) {
        this.mc.setGatherPerformanceMetrics(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setGenerateSimpleParameterMetadata(boolean z) {
        this.mc.setGenerateSimpleParameterMetadata(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setHoldResultsOpenOverStatementClose(boolean z) {
        this.mc.setHoldResultsOpenOverStatementClose(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setIgnoreNonTxTables(boolean z) {
        this.mc.setIgnoreNonTxTables(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setIncludeInnodbStatusInDeadlockExceptions(boolean z) {
        this.mc.setIncludeInnodbStatusInDeadlockExceptions(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setInitialTimeout(int i) throws SQLException {
        this.mc.setInitialTimeout(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setInteractiveClient(boolean z) {
        this.mc.setInteractiveClient(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setIsInteractiveClient(boolean z) {
        this.mc.setIsInteractiveClient(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setJdbcCompliantTruncation(boolean z) {
        this.mc.setJdbcCompliantTruncation(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setJdbcCompliantTruncationForReads(boolean z) {
        this.mc.setJdbcCompliantTruncationForReads(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLargeRowSizeThreshold(String str) throws SQLException {
        this.mc.setLargeRowSizeThreshold(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceStrategy(String str) {
        this.mc.setLoadBalanceStrategy(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setServerAffinityOrder(String str) {
        this.mc.setServerAffinityOrder(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLocalSocketAddress(String str) {
        this.mc.setLocalSocketAddress(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLocatorFetchBufferSize(String str) throws SQLException {
        this.mc.setLocatorFetchBufferSize(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLogSlowQueries(boolean z) {
        this.mc.setLogSlowQueries(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLogXaCommands(boolean z) {
        this.mc.setLogXaCommands(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLogger(String str) {
        this.mc.setLogger(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLoggerClassName(String str) {
        this.mc.setLoggerClassName(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setMaintainTimeStats(boolean z) {
        this.mc.setMaintainTimeStats(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setMaxQuerySizeToLog(int i) throws SQLException {
        this.mc.setMaxQuerySizeToLog(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setMaxReconnects(int i) throws SQLException {
        this.mc.setMaxReconnects(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setMaxRows(int i) throws SQLException {
        this.mc.setMaxRows(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setMetadataCacheSize(int i) throws SQLException {
        this.mc.setMetadataCacheSize(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setNetTimeoutForStreamingResults(int i) throws SQLException {
        this.mc.setNetTimeoutForStreamingResults(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setNoAccessToProcedureBodies(boolean z) {
        this.mc.setNoAccessToProcedureBodies(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setNoDatetimeStringSync(boolean z) {
        this.mc.setNoDatetimeStringSync(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setNoTimezoneConversionForTimeType(boolean z) {
        this.mc.setNoTimezoneConversionForTimeType(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setNoTimezoneConversionForDateType(boolean z) {
        this.mc.setNoTimezoneConversionForDateType(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setCacheDefaultTimezone(boolean z) {
        this.mc.setCacheDefaultTimezone(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setNullCatalogMeansCurrent(boolean z) {
        this.mc.setNullCatalogMeansCurrent(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setNullNamePatternMatchesAll(boolean z) {
        this.mc.setNullNamePatternMatchesAll(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setOverrideSupportsIntegrityEnhancementFacility(boolean z) {
        this.mc.setOverrideSupportsIntegrityEnhancementFacility(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setPacketDebugBufferSize(int i) throws SQLException {
        this.mc.setPacketDebugBufferSize(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setPadCharsWithSpace(boolean z) {
        this.mc.setPadCharsWithSpace(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setParanoid(boolean z) {
        this.mc.setParanoid(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setPedantic(boolean z) {
        this.mc.setPedantic(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setPinGlobalTxToPhysicalConnection(boolean z) {
        this.mc.setPinGlobalTxToPhysicalConnection(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setPopulateInsertRowWithDefaultValues(boolean z) {
        this.mc.setPopulateInsertRowWithDefaultValues(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setPrepStmtCacheSize(int i) throws SQLException {
        this.mc.setPrepStmtCacheSize(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setPrepStmtCacheSqlLimit(int i) throws SQLException {
        this.mc.setPrepStmtCacheSqlLimit(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setPreparedStatementCacheSize(int i) throws SQLException {
        this.mc.setPreparedStatementCacheSize(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setPreparedStatementCacheSqlLimit(int i) throws SQLException {
        this.mc.setPreparedStatementCacheSqlLimit(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setProcessEscapeCodesForPrepStmts(boolean z) {
        this.mc.setProcessEscapeCodesForPrepStmts(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setProfileSQL(boolean z) {
        this.mc.setProfileSQL(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setProfileSql(boolean z) {
        this.mc.setProfileSql(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setPropertiesTransform(String str) {
        this.mc.setPropertiesTransform(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setQueriesBeforeRetryMaster(int i) throws SQLException {
        this.mc.setQueriesBeforeRetryMaster(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setReconnectAtTxEnd(boolean z) {
        this.mc.setReconnectAtTxEnd(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setRelaxAutoCommit(boolean z) {
        this.mc.setRelaxAutoCommit(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setReportMetricsIntervalMillis(int i) throws SQLException {
        this.mc.setReportMetricsIntervalMillis(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setRequireSSL(boolean z) {
        this.mc.setRequireSSL(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setResourceId(String str) {
        this.mc.setResourceId(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setResultSetSizeThreshold(int i) throws SQLException {
        this.mc.setResultSetSizeThreshold(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setRetainStatementAfterResultSetClose(boolean z) {
        this.mc.setRetainStatementAfterResultSetClose(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setRewriteBatchedStatements(boolean z) {
        this.mc.setRewriteBatchedStatements(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setRollbackOnPooledClose(boolean z) {
        this.mc.setRollbackOnPooledClose(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setRoundRobinLoadBalance(boolean z) {
        this.mc.setRoundRobinLoadBalance(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setRunningCTS13(boolean z) {
        this.mc.setRunningCTS13(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setSecondsBeforeRetryMaster(int i) throws SQLException {
        this.mc.setSecondsBeforeRetryMaster(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setServerTimezone(String str) {
        this.mc.setServerTimezone(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setSessionVariables(String str) {
        this.mc.setSessionVariables(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setSlowQueryThresholdMillis(int i) throws SQLException {
        this.mc.setSlowQueryThresholdMillis(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setSlowQueryThresholdNanos(long j) throws SQLException {
        this.mc.setSlowQueryThresholdNanos(j);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setSocketFactory(String str) {
        this.mc.setSocketFactory(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setSocketFactoryClassName(String str) {
        this.mc.setSocketFactoryClassName(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setSocketTimeout(int i) throws SQLException {
        this.mc.setSocketTimeout(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setStatementInterceptors(String str) {
        this.mc.setStatementInterceptors(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setStrictFloatingPoint(boolean z) {
        this.mc.setStrictFloatingPoint(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setStrictUpdates(boolean z) {
        this.mc.setStrictUpdates(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setTcpKeepAlive(boolean z) {
        this.mc.setTcpKeepAlive(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setTcpNoDelay(boolean z) {
        this.mc.setTcpNoDelay(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setTcpRcvBuf(int i) throws SQLException {
        this.mc.setTcpRcvBuf(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setTcpSndBuf(int i) throws SQLException {
        this.mc.setTcpSndBuf(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setTcpTrafficClass(int i) throws SQLException {
        this.mc.setTcpTrafficClass(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setTinyInt1isBit(boolean z) {
        this.mc.setTinyInt1isBit(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setTraceProtocol(boolean z) {
        this.mc.setTraceProtocol(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setTransformedBitIsBoolean(boolean z) {
        this.mc.setTransformedBitIsBoolean(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setTreatUtilDateAsTimestamp(boolean z) {
        this.mc.setTreatUtilDateAsTimestamp(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setTrustCertificateKeyStorePassword(String str) {
        this.mc.setTrustCertificateKeyStorePassword(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setTrustCertificateKeyStoreType(String str) {
        this.mc.setTrustCertificateKeyStoreType(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setTrustCertificateKeyStoreUrl(String str) {
        this.mc.setTrustCertificateKeyStoreUrl(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUltraDevHack(boolean z) {
        this.mc.setUltraDevHack(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseBlobToStoreUTF8OutsideBMP(boolean z) {
        this.mc.setUseBlobToStoreUTF8OutsideBMP(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseCompression(boolean z) {
        this.mc.setUseCompression(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseConfigs(String str) {
        this.mc.setUseConfigs(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseCursorFetch(boolean z) {
        this.mc.setUseCursorFetch(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseDirectRowUnpack(boolean z) {
        this.mc.setUseDirectRowUnpack(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseDynamicCharsetInfo(boolean z) {
        this.mc.setUseDynamicCharsetInfo(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseFastDateParsing(boolean z) {
        this.mc.setUseFastDateParsing(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseFastIntParsing(boolean z) {
        this.mc.setUseFastIntParsing(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseGmtMillisForDatetimes(boolean z) {
        this.mc.setUseGmtMillisForDatetimes(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseHostsInPrivileges(boolean z) {
        this.mc.setUseHostsInPrivileges(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseInformationSchema(boolean z) {
        this.mc.setUseInformationSchema(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseJDBCCompliantTimezoneShift(boolean z) {
        this.mc.setUseJDBCCompliantTimezoneShift(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseJvmCharsetConverters(boolean z) {
        this.mc.setUseJvmCharsetConverters(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseLocalSessionState(boolean z) {
        this.mc.setUseLocalSessionState(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseNanosForElapsedTime(boolean z) {
        this.mc.setUseNanosForElapsedTime(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseOldAliasMetadataBehavior(boolean z) {
        this.mc.setUseOldAliasMetadataBehavior(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseOldUTF8Behavior(boolean z) {
        this.mc.setUseOldUTF8Behavior(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseOnlyServerErrorMessages(boolean z) {
        this.mc.setUseOnlyServerErrorMessages(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseReadAheadInput(boolean z) {
        this.mc.setUseReadAheadInput(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseSSL(boolean z) {
        this.mc.setUseSSL(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseSSPSCompatibleTimezoneShift(boolean z) {
        this.mc.setUseSSPSCompatibleTimezoneShift(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseServerPrepStmts(boolean z) {
        this.mc.setUseServerPrepStmts(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseServerPreparedStmts(boolean z) {
        this.mc.setUseServerPreparedStmts(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseSqlStateCodes(boolean z) {
        this.mc.setUseSqlStateCodes(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseStreamLengthsInPrepStmts(boolean z) {
        this.mc.setUseStreamLengthsInPrepStmts(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseTimezone(boolean z) {
        this.mc.setUseTimezone(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseUltraDevWorkAround(boolean z) {
        this.mc.setUseUltraDevWorkAround(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseUnbufferedInput(boolean z) {
        this.mc.setUseUnbufferedInput(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseUnicode(boolean z) {
        this.mc.setUseUnicode(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseUsageAdvisor(boolean z) {
        this.mc.setUseUsageAdvisor(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUtf8OutsideBmpExcludedColumnNamePattern(String str) {
        this.mc.setUtf8OutsideBmpExcludedColumnNamePattern(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUtf8OutsideBmpIncludedColumnNamePattern(String str) {
        this.mc.setUtf8OutsideBmpIncludedColumnNamePattern(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setYearIsDateType(boolean z) {
        this.mc.setYearIsDateType(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setZeroDateTimeBehavior(String str) {
        this.mc.setZeroDateTimeBehavior(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean useUnbufferedInput() {
        return this.mc.useUnbufferedInput();
    }

    @Override // com.mysql.jdbc.Connection
    public void initializeExtension(Extension extension) throws SQLException {
        this.mc.initializeExtension(extension);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getProfilerEventHandler() {
        return this.mc.getProfilerEventHandler();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setProfilerEventHandler(String str) {
        this.mc.setProfilerEventHandler(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getVerifyServerCertificate() {
        return this.mc.getVerifyServerCertificate();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setVerifyServerCertificate(boolean z) {
        this.mc.setVerifyServerCertificate(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseLegacyDatetimeCode() {
        return this.mc.getUseLegacyDatetimeCode();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseLegacyDatetimeCode(boolean z) {
        this.mc.setUseLegacyDatetimeCode(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getSendFractionalSeconds() {
        return this.mc.getSendFractionalSeconds();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setSendFractionalSeconds(boolean z) {
        this.mc.setSendFractionalSeconds(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getSelfDestructOnPingMaxOperations() {
        return this.mc.getSelfDestructOnPingMaxOperations();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getSelfDestructOnPingSecondsLifetime() {
        return this.mc.getSelfDestructOnPingSecondsLifetime();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setSelfDestructOnPingMaxOperations(int i) throws SQLException {
        this.mc.setSelfDestructOnPingMaxOperations(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setSelfDestructOnPingSecondsLifetime(int i) throws SQLException {
        this.mc.setSelfDestructOnPingSecondsLifetime(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseColumnNamesInFindColumn() {
        return this.mc.getUseColumnNamesInFindColumn();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseColumnNamesInFindColumn(boolean z) {
        this.mc.setUseColumnNamesInFindColumn(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseLocalTransactionState() {
        return this.mc.getUseLocalTransactionState();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseLocalTransactionState(boolean z) {
        this.mc.setUseLocalTransactionState(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCompensateOnDuplicateKeyUpdateCounts() {
        return this.mc.getCompensateOnDuplicateKeyUpdateCounts();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setCompensateOnDuplicateKeyUpdateCounts(boolean z) {
        this.mc.setCompensateOnDuplicateKeyUpdateCounts(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseAffectedRows() {
        return this.mc.getUseAffectedRows();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setUseAffectedRows(boolean z) {
        this.mc.setUseAffectedRows(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getPasswordCharacterEncoding() {
        return this.mc.getPasswordCharacterEncoding();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setPasswordCharacterEncoding(String str) {
        this.mc.setPasswordCharacterEncoding(str);
    }

    @Override // com.mysql.jdbc.Connection
    public int getAutoIncrementIncrement() {
        return this.mc.getAutoIncrementIncrement();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getLoadBalanceBlacklistTimeout() {
        return this.mc.getLoadBalanceBlacklistTimeout();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceBlacklistTimeout(int i) throws SQLException {
        this.mc.setLoadBalanceBlacklistTimeout(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getLoadBalancePingTimeout() {
        return this.mc.getLoadBalancePingTimeout();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLoadBalancePingTimeout(int i) throws SQLException {
        this.mc.setLoadBalancePingTimeout(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getLoadBalanceValidateConnectionOnSwapServer() {
        return this.mc.getLoadBalanceValidateConnectionOnSwapServer();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceValidateConnectionOnSwapServer(boolean z) {
        this.mc.setLoadBalanceValidateConnectionOnSwapServer(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setRetriesAllDown(int i) throws SQLException {
        this.mc.setRetriesAllDown(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getRetriesAllDown() {
        return this.mc.getRetriesAllDown();
    }

    @Override // com.mysql.jdbc.ConnectionProperties, com.mysql.jdbc.MySQLConnection
    public ExceptionInterceptor getExceptionInterceptor() {
        return this.pooledConnection.getExceptionInterceptor();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getExceptionInterceptors() {
        return this.mc.getExceptionInterceptors();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setExceptionInterceptors(String str) {
        this.mc.setExceptionInterceptors(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getQueryTimeoutKillsConnection() {
        return this.mc.getQueryTimeoutKillsConnection();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setQueryTimeoutKillsConnection(boolean z) {
        this.mc.setQueryTimeoutKillsConnection(z);
    }

    @Override // com.mysql.jdbc.Connection
    public boolean hasSameProperties(Connection connection) {
        return this.mc.hasSameProperties(connection);
    }

    @Override // com.mysql.jdbc.Connection
    public Properties getProperties() {
        return this.mc.getProperties();
    }

    @Override // com.mysql.jdbc.Connection
    public String getHost() {
        return this.mc.getHost();
    }

    @Override // com.mysql.jdbc.Connection
    public void setProxy(MySQLConnection mySQLConnection) {
        this.mc.setProxy(mySQLConnection);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getRetainStatementAfterResultSetClose() {
        return this.mc.getRetainStatementAfterResultSetClose();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getMaxAllowedPacket() {
        return this.mc.getMaxAllowedPacket();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLoadBalanceConnectionGroup() {
        return this.mc.getLoadBalanceConnectionGroup();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getLoadBalanceEnableJMX() {
        return this.mc.getLoadBalanceEnableJMX();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLoadBalanceExceptionChecker() {
        return this.mc.getLoadBalanceExceptionChecker();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLoadBalanceSQLExceptionSubclassFailover() {
        return this.mc.getLoadBalanceSQLExceptionSubclassFailover();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLoadBalanceSQLStateFailover() {
        return this.mc.getLoadBalanceSQLStateFailover();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceConnectionGroup(String str) {
        this.mc.setLoadBalanceConnectionGroup(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceEnableJMX(boolean z) {
        this.mc.setLoadBalanceEnableJMX(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceExceptionChecker(String str) {
        this.mc.setLoadBalanceExceptionChecker(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceSQLExceptionSubclassFailover(String str) {
        this.mc.setLoadBalanceSQLExceptionSubclassFailover(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceSQLStateFailover(String str) {
        this.mc.setLoadBalanceSQLStateFailover(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLoadBalanceAutoCommitStatementRegex() {
        return this.mc.getLoadBalanceAutoCommitStatementRegex();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getLoadBalanceAutoCommitStatementThreshold() {
        return this.mc.getLoadBalanceAutoCommitStatementThreshold();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceAutoCommitStatementRegex(String str) {
        this.mc.setLoadBalanceAutoCommitStatementRegex(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceAutoCommitStatementThreshold(int i) throws SQLException {
        this.mc.setLoadBalanceAutoCommitStatementThreshold(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceHostRemovalGracePeriod(int i) throws SQLException {
        this.mc.setLoadBalanceHostRemovalGracePeriod(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getLoadBalanceHostRemovalGracePeriod() {
        return this.mc.getLoadBalanceHostRemovalGracePeriod();
    }

    @Override // java.sql.Connection
    public void setTypeMap(Map<String, Class<?>> map) throws SQLException {
        checkClosed();
        try {
            this.mc.setTypeMap(map);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getIncludeThreadDumpInDeadlockExceptions() {
        return this.mc.getIncludeThreadDumpInDeadlockExceptions();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setIncludeThreadDumpInDeadlockExceptions(boolean z) {
        this.mc.setIncludeThreadDumpInDeadlockExceptions(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getIncludeThreadNamesAsStatementComment() {
        return this.mc.getIncludeThreadNamesAsStatementComment();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setIncludeThreadNamesAsStatementComment(boolean z) {
        this.mc.setIncludeThreadNamesAsStatementComment(z);
    }

    @Override // com.mysql.jdbc.Connection
    public boolean isServerLocal() throws SQLException {
        return this.mc.isServerLocal();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAuthenticationPlugins(String str) {
        this.mc.setAuthenticationPlugins(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getAuthenticationPlugins() {
        return this.mc.getAuthenticationPlugins();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setDisabledAuthenticationPlugins(String str) {
        this.mc.setDisabledAuthenticationPlugins(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getDisabledAuthenticationPlugins() {
        return this.mc.getDisabledAuthenticationPlugins();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setDefaultAuthenticationPlugin(String str) {
        this.mc.setDefaultAuthenticationPlugin(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getDefaultAuthenticationPlugin() {
        return this.mc.getDefaultAuthenticationPlugin();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setParseInfoCacheFactory(String str) {
        this.mc.setParseInfoCacheFactory(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getParseInfoCacheFactory() {
        return this.mc.getParseInfoCacheFactory();
    }

    @Override // com.mysql.jdbc.Connection
    public void setSchema(String str) throws SQLException {
        this.mc.setSchema(str);
    }

    @Override // com.mysql.jdbc.Connection
    public String getSchema() throws SQLException {
        return this.mc.getSchema();
    }

    @Override // com.mysql.jdbc.Connection
    public void abort(Executor executor) throws SQLException {
        this.mc.abort(executor);
    }

    @Override // com.mysql.jdbc.Connection
    public void setNetworkTimeout(Executor executor, int i) throws SQLException {
        this.mc.setNetworkTimeout(executor, i);
    }

    @Override // com.mysql.jdbc.Connection
    public int getNetworkTimeout() throws SQLException {
        return this.mc.getNetworkTimeout();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setServerConfigCacheFactory(String str) {
        this.mc.setServerConfigCacheFactory(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getServerConfigCacheFactory() {
        return this.mc.getServerConfigCacheFactory();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setDisconnectOnExpiredPasswords(boolean z) {
        this.mc.setDisconnectOnExpiredPasswords(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getDisconnectOnExpiredPasswords() {
        return this.mc.getDisconnectOnExpiredPasswords();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setGetProceduresReturnsFunctions(boolean z) {
        this.mc.setGetProceduresReturnsFunctions(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getGetProceduresReturnsFunctions() {
        return this.mc.getGetProceduresReturnsFunctions();
    }

    @Override // com.mysql.jdbc.Connection
    public void abortInternal() throws SQLException {
        this.mc.abortInternal();
    }

    @Override // com.mysql.jdbc.Connection
    public Object getConnectionMutex() {
        return this.mc.getConnectionMutex();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAllowMasterDownConnections() {
        return this.mc.getAllowMasterDownConnections();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAllowMasterDownConnections(boolean z) {
        this.mc.setAllowMasterDownConnections(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAllowSlaveDownConnections() {
        return this.mc.getAllowSlaveDownConnections();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAllowSlaveDownConnections(boolean z) {
        this.mc.setAllowSlaveDownConnections(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getReadFromMasterWhenNoSlaves() {
        return this.mc.getReadFromMasterWhenNoSlaves();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setReadFromMasterWhenNoSlaves(boolean z) {
        this.mc.setReadFromMasterWhenNoSlaves(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getReplicationEnableJMX() {
        return this.mc.getReplicationEnableJMX();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setReplicationEnableJMX(boolean z) {
        this.mc.setReplicationEnableJMX(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getConnectionAttributes() throws SQLException {
        return this.mc.getConnectionAttributes();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setDetectCustomCollations(boolean z) {
        this.mc.setDetectCustomCollations(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getDetectCustomCollations() {
        return this.mc.getDetectCustomCollations();
    }

    @Override // com.mysql.jdbc.Connection
    public int getSessionMaxRows() {
        return this.mc.getSessionMaxRows();
    }

    @Override // com.mysql.jdbc.Connection
    public void setSessionMaxRows(int i) throws SQLException {
        this.mc.setSessionMaxRows(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getServerRSAPublicKeyFile() {
        return this.mc.getServerRSAPublicKeyFile();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setServerRSAPublicKeyFile(String str) throws SQLException {
        this.mc.setServerRSAPublicKeyFile(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAllowPublicKeyRetrieval() {
        return this.mc.getAllowPublicKeyRetrieval();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAllowPublicKeyRetrieval(boolean z) throws SQLException {
        this.mc.setAllowPublicKeyRetrieval(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setDontCheckOnDuplicateKeyUpdateInSQL(boolean z) {
        this.mc.setDontCheckOnDuplicateKeyUpdateInSQL(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getDontCheckOnDuplicateKeyUpdateInSQL() {
        return this.mc.getDontCheckOnDuplicateKeyUpdateInSQL();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setSocksProxyHost(String str) {
        this.mc.setSocksProxyHost(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getSocksProxyHost() {
        return this.mc.getSocksProxyHost();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setSocksProxyPort(int i) throws SQLException {
        this.mc.setSocksProxyPort(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getSocksProxyPort() {
        return this.mc.getSocksProxyPort();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getReadOnlyPropagatesToServer() {
        return this.mc.getReadOnlyPropagatesToServer();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setReadOnlyPropagatesToServer(boolean z) {
        this.mc.setReadOnlyPropagatesToServer(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getEnabledSSLCipherSuites() {
        return this.mc.getEnabledSSLCipherSuites();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setEnabledSSLCipherSuites(String str) {
        this.mc.setEnabledSSLCipherSuites(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getEnableEscapeProcessing() {
        return this.mc.getEnableEscapeProcessing();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setEnableEscapeProcessing(boolean z) {
        this.mc.setEnableEscapeProcessing(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean isUseSSLExplicit() {
        return this.mc.isUseSSLExplicit();
    }
}
