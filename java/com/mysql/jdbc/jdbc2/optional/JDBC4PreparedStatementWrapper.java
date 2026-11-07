package com.mysql.jdbc.jdbc2.optional;

import com.mysql.jdbc.SQLError;
import java.io.InputStream;
import java.io.Reader;
import java.lang.reflect.Proxy;
import java.sql.NClob;
import java.sql.PreparedStatement;
import java.sql.RowId;
import java.sql.SQLException;
import java.sql.SQLXML;
import java.util.HashMap;
import javax.sql.StatementEvent;

/* JADX INFO: loaded from: classes.dex */
public class JDBC4PreparedStatementWrapper extends PreparedStatementWrapper {
    public JDBC4PreparedStatementWrapper(ConnectionWrapper connectionWrapper, MysqlPooledConnection mysqlPooledConnection, PreparedStatement preparedStatement) {
        super(connectionWrapper, mysqlPooledConnection, preparedStatement);
    }

    @Override // com.mysql.jdbc.jdbc2.optional.StatementWrapper, java.sql.Statement, java.lang.AutoCloseable
    public synchronized void close() throws SQLException {
        if (this.pooledConnection == null) {
            return;
        }
        MysqlPooledConnection mysqlPooledConnection = this.pooledConnection;
        try {
            super.close();
            try {
                StatementEvent statementEvent = new StatementEvent(mysqlPooledConnection, this);
                if (mysqlPooledConnection instanceof JDBC4MysqlPooledConnection) {
                    ((JDBC4MysqlPooledConnection) mysqlPooledConnection).fireStatementEvent(statementEvent);
                } else if (mysqlPooledConnection instanceof JDBC4MysqlXAConnection) {
                    ((JDBC4MysqlXAConnection) mysqlPooledConnection).fireStatementEvent(statementEvent);
                } else if (mysqlPooledConnection instanceof JDBC4SuspendableXAConnection) {
                    ((JDBC4SuspendableXAConnection) mysqlPooledConnection).fireStatementEvent(statementEvent);
                }
                this.unwrappedInterfaces = null;
            } catch (Throwable th) {
                this.unwrappedInterfaces = null;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                StatementEvent statementEvent2 = new StatementEvent(mysqlPooledConnection, this);
                if (mysqlPooledConnection instanceof JDBC4MysqlPooledConnection) {
                    ((JDBC4MysqlPooledConnection) mysqlPooledConnection).fireStatementEvent(statementEvent2);
                } else if (mysqlPooledConnection instanceof JDBC4MysqlXAConnection) {
                    ((JDBC4MysqlXAConnection) mysqlPooledConnection).fireStatementEvent(statementEvent2);
                } else if (mysqlPooledConnection instanceof JDBC4SuspendableXAConnection) {
                    ((JDBC4SuspendableXAConnection) mysqlPooledConnection).fireStatementEvent(statementEvent2);
                }
                throw th2;
            } finally {
                this.unwrappedInterfaces = null;
            }
        }
    }

    @Override // java.sql.Statement
    public boolean isClosed() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.isClosed();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return false;
        }
    }

    @Override // java.sql.Statement
    public void setPoolable(boolean z) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                this.wrappedStmt.setPoolable(z);
                return;
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Statement
    public boolean isPoolable() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return this.wrappedStmt.isPoolable();
            }
            throw SQLError.createSQLException("Statement already closed", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return false;
        }
    }

    @Override // java.sql.PreparedStatement
    public void setRowId(int i, RowId rowId) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setRowId(i, rowId);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setNClob(int i, NClob nClob) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setNClob(i, nClob);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setSQLXML(int i, SQLXML sqlxml) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setSQLXML(i, sqlxml);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setNString(int i, String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setNString(i, str);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setNCharacterStream(int i, Reader reader, long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setNCharacterStream(i, reader, j);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setClob(int i, Reader reader, long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setClob(i, reader, j);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setBlob(int i, InputStream inputStream, long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setBlob(i, inputStream, j);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setNClob(int i, Reader reader, long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setNClob(i, reader, j);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setAsciiStream(int i, InputStream inputStream, long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setAsciiStream(i, inputStream, j);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setBinaryStream(int i, InputStream inputStream, long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setBinaryStream(i, inputStream, j);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setCharacterStream(int i, Reader reader, long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setCharacterStream(i, reader, j);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setAsciiStream(int i, InputStream inputStream) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setAsciiStream(i, inputStream);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setBinaryStream(int i, InputStream inputStream) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setBinaryStream(i, inputStream);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setCharacterStream(int i, Reader reader) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setCharacterStream(i, reader);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setNCharacterStream(int i, Reader reader) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setNCharacterStream(i, reader);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setClob(int i, Reader reader) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setClob(i, reader);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setBlob(int i, InputStream inputStream) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setBlob(i, inputStream);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setNClob(int i, Reader reader) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setNClob(i, reader);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.Wrapper
    public boolean isWrapperFor(Class<?> cls) throws SQLException {
        if (cls.isInstance(this)) {
            return true;
        }
        String name = cls.getName();
        return name.equals("com.mysql.jdbc.Statement") || name.equals("java.sql.Statement") || name.equals("java.sql.PreparedStatement") || name.equals("java.sql.Wrapper");
    }

    @Override // java.sql.Wrapper
    public synchronized <T> T unwrap(Class<T> cls) throws SQLException {
        try {
            if (!"java.sql.Statement".equals(cls.getName()) && !"java.sql.PreparedStatement".equals(cls.getName()) && !"java.sql.Wrapper.class".equals(cls.getName())) {
                if (this.unwrappedInterfaces == null) {
                    this.unwrappedInterfaces = new HashMap();
                }
                Object objNewProxyInstance = this.unwrappedInterfaces.get(cls);
                if (objNewProxyInstance == null) {
                    if (objNewProxyInstance == null) {
                        objNewProxyInstance = Proxy.newProxyInstance(this.wrappedStmt.getClass().getClassLoader(), new Class[]{cls}, new WrapperBase.ConnectionErrorFiringInvocationHandler(this.wrappedStmt));
                        this.unwrappedInterfaces.put(cls, objNewProxyInstance);
                    }
                    this.unwrappedInterfaces.put(cls, objNewProxyInstance);
                }
                return cls.cast(objNewProxyInstance);
            }
            return cls.cast(this);
        } catch (ClassCastException unused) {
            throw SQLError.createSQLException("Unable to unwrap to " + cls.toString(), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        }
    }
}
