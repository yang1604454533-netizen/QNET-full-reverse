package com.mysql.jdbc.jdbc2.optional;

import com.mysql.jdbc.ResultSetInternalMethods;
import com.mysql.jdbc.SQLError;
import com.mysql.jdbc.StatementImpl;
import com.mysql.jdbc.Util;
import java.lang.reflect.Constructor;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.sql.Statement;

/* JADX INFO: loaded from: classes.dex */
public class StatementWrapper extends WrapperBase implements Statement {
    private static final Constructor<?> JDBC_4_STATEMENT_WRAPPER_CTOR;
    protected ConnectionWrapper wrappedConn;
    protected Statement wrappedStmt;

    static {
        if (Util.isJdbc4()) {
            try {
                JDBC_4_STATEMENT_WRAPPER_CTOR = Class.forName("com.mysql.jdbc.jdbc2.optional.JDBC4StatementWrapper").getConstructor(ConnectionWrapper.class, MysqlPooledConnection.class, Statement.class);
                return;
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            } catch (SecurityException e3) {
                throw new RuntimeException(e3);
            }
        }
        JDBC_4_STATEMENT_WRAPPER_CTOR = null;
    }

    protected static StatementWrapper getInstance(ConnectionWrapper connectionWrapper, MysqlPooledConnection mysqlPooledConnection, Statement statement) throws SQLException {
        return !Util.isJdbc4() ? new StatementWrapper(connectionWrapper, mysqlPooledConnection, statement) : (StatementWrapper) Util.handleNewInstance(JDBC_4_STATEMENT_WRAPPER_CTOR, new Object[]{connectionWrapper, mysqlPooledConnection, statement}, mysqlPooledConnection.getExceptionInterceptor());
    }

    public StatementWrapper(ConnectionWrapper connectionWrapper, MysqlPooledConnection mysqlPooledConnection, Statement statement) {
        super(mysqlPooledConnection);
        this.wrappedStmt = statement;
        this.wrappedConn = connectionWrapper;
    }

    @Override // java.sql.Statement
    public Connection getConnection() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedConn;
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Statement
    public void setCursorName(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                this.wrappedStmt.setCursorName(str);
                return;
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Statement
    public void setEscapeProcessing(boolean z) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                this.wrappedStmt.setEscapeProcessing(z);
                return;
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Statement
    public void setFetchDirection(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                this.wrappedStmt.setFetchDirection(i);
                return;
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Statement
    public int getFetchDirection() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.getFetchDirection();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 1000;
        }
    }

    @Override // java.sql.Statement
    public void setFetchSize(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                this.wrappedStmt.setFetchSize(i);
                return;
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Statement
    public int getFetchSize() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.getFetchSize();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 0;
        }
    }

    @Override // java.sql.Statement
    public ResultSet getGeneratedKeys() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.getGeneratedKeys();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Statement
    public void setMaxFieldSize(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                this.wrappedStmt.setMaxFieldSize(i);
                return;
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Statement
    public int getMaxFieldSize() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.getMaxFieldSize();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 0;
        }
    }

    @Override // java.sql.Statement
    public void setMaxRows(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                this.wrappedStmt.setMaxRows(i);
                return;
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Statement
    public int getMaxRows() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.getMaxRows();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 0;
        }
    }

    @Override // java.sql.Statement
    public boolean getMoreResults() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.getMoreResults();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return false;
        }
    }

    @Override // java.sql.Statement
    public boolean getMoreResults(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.getMoreResults(i);
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return false;
        }
    }

    @Override // java.sql.Statement
    public void setQueryTimeout(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                this.wrappedStmt.setQueryTimeout(i);
                return;
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Statement
    public int getQueryTimeout() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.getQueryTimeout();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 0;
        }
    }

    @Override // java.sql.Statement
    public ResultSet getResultSet() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ResultSet resultSet = this.wrappedStmt.getResultSet();
                if (resultSet != null) {
                    ((ResultSetInternalMethods) resultSet).setWrapperStatement(this);
                }
                return resultSet;
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Statement
    public int getResultSetConcurrency() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.getResultSetConcurrency();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 0;
        }
    }

    @Override // java.sql.Statement
    public int getResultSetHoldability() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.getResultSetHoldability();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 1;
        }
    }

    @Override // java.sql.Statement
    public int getResultSetType() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.getResultSetType();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 1003;
        }
    }

    @Override // java.sql.Statement
    public int getUpdateCount() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.getUpdateCount();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return -1;
        }
    }

    @Override // java.sql.Statement
    public SQLWarning getWarnings() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.getWarnings();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Statement
    public void addBatch(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                this.wrappedStmt.addBatch(str);
            }
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Statement
    public void cancel() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                this.wrappedStmt.cancel();
            }
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Statement
    public void clearBatch() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                this.wrappedStmt.clearBatch();
            }
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Statement
    public void clearWarnings() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                this.wrappedStmt.clearWarnings();
            }
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    public void close() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                this.wrappedStmt.close();
            }
            this.wrappedStmt = null;
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            this.wrappedStmt = null;
        } finally {
            this.wrappedStmt = null;
            this.pooledConnection = null;
        }
    }

    @Override // java.sql.Statement
    public boolean execute(String str, int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.execute(str, i);
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return false;
        }
    }

    @Override // java.sql.Statement
    public boolean execute(String str, int[] iArr) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.execute(str, iArr);
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return false;
        }
    }

    @Override // java.sql.Statement
    public boolean execute(String str, String[] strArr) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.execute(str, strArr);
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return false;
        }
    }

    @Override // java.sql.Statement
    public boolean execute(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.execute(str);
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return false;
        }
    }

    @Override // java.sql.Statement
    public int[] executeBatch() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.executeBatch();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.Statement
    public ResultSet executeQuery(String str) throws SQLException {
        ResultSet resultSet = null;
        try {
            if (this.wrappedStmt == null) {
                throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
            }
            ResultSet resultSetExecuteQuery = this.wrappedStmt.executeQuery(str);
            try {
                ((ResultSetInternalMethods) resultSetExecuteQuery).setWrapperStatement(this);
                return resultSetExecuteQuery;
            } catch (SQLException e) {
                resultSet = resultSetExecuteQuery;
                e = e;
                checkAndFireConnectionError(e);
                return resultSet;
            }
        } catch (SQLException e2) {
            e = e2;
        }
    }

    @Override // java.sql.Statement
    public int executeUpdate(String str, int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.executeUpdate(str, i);
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return -1;
        }
    }

    @Override // java.sql.Statement
    public int executeUpdate(String str, int[] iArr) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.executeUpdate(str, iArr);
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return -1;
        }
    }

    @Override // java.sql.Statement
    public int executeUpdate(String str, String[] strArr) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.executeUpdate(str, strArr);
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return -1;
        }
    }

    @Override // java.sql.Statement
    public int executeUpdate(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.executeUpdate(str);
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return -1;
        }
    }

    public void enableStreamingResults() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((com.mysql.jdbc.Statement) this.wrappedStmt).enableStreamingResults();
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    public long[] executeLargeBatch() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((StatementImpl) this.wrappedStmt).executeLargeBatch();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    public long executeLargeUpdate(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((StatementImpl) this.wrappedStmt).executeLargeUpdate(str);
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return -1L;
        }
    }

    public long executeLargeUpdate(String str, int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((StatementImpl) this.wrappedStmt).executeLargeUpdate(str, i);
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return -1L;
        }
    }

    public long executeLargeUpdate(String str, int[] iArr) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((StatementImpl) this.wrappedStmt).executeLargeUpdate(str, iArr);
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return -1L;
        }
    }

    public long executeLargeUpdate(String str, String[] strArr) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((StatementImpl) this.wrappedStmt).executeLargeUpdate(str, strArr);
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return -1L;
        }
    }

    public long getLargeMaxRows() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((StatementImpl) this.wrappedStmt).getLargeMaxRows();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 0L;
        }
    }

    public long getLargeUpdateCount() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((StatementImpl) this.wrappedStmt).getLargeUpdateCount();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return -1L;
        }
    }

    public void setLargeMaxRows(long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((StatementImpl) this.wrappedStmt).setLargeMaxRows(j);
                return;
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }
}
