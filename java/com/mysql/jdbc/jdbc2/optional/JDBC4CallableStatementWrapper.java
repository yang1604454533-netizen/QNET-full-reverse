package com.mysql.jdbc.jdbc2.optional;

import com.mysql.jdbc.SQLError;
import java.io.InputStream;
import java.io.Reader;
import java.lang.reflect.Proxy;
import java.sql.Blob;
import java.sql.CallableStatement;
import java.sql.Clob;
import java.sql.NClob;
import java.sql.PreparedStatement;
import java.sql.RowId;
import java.sql.SQLException;
import java.sql.SQLXML;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class JDBC4CallableStatementWrapper extends CallableStatementWrapper {
    public JDBC4CallableStatementWrapper(ConnectionWrapper connectionWrapper, MysqlPooledConnection mysqlPooledConnection, CallableStatement callableStatement) {
        super(connectionWrapper, mysqlPooledConnection, callableStatement);
    }

    @Override // com.mysql.jdbc.jdbc2.optional.StatementWrapper, java.sql.Statement, java.lang.AutoCloseable
    public void close() throws SQLException {
        try {
            super.close();
        } finally {
            this.unwrappedInterfaces = null;
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

    @Override // java.sql.CallableStatement
    public void setRowId(String str, RowId rowId) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setRowId(str, rowId);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setSQLXML(String str, SQLXML sqlxml) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setSQLXML(str, sqlxml);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public SQLXML getSQLXML(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getSQLXML(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public SQLXML getSQLXML(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getSQLXML(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public RowId getRowId(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getRowId(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public void setNClob(String str, NClob nClob) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setNClob(str, nClob);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setNClob(String str, Reader reader) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setNClob(str, reader);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setNClob(String str, Reader reader, long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setNClob(str, reader, j);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setNString(String str, String str2) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setNString(str, str2);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public Reader getCharacterStream(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getCharacterStream(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Reader getCharacterStream(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getCharacterStream(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Reader getNCharacterStream(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getNCharacterStream(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Reader getNCharacterStream(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getNCharacterStream(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public NClob getNClob(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getNClob(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public String getNString(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getNString(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public void setAsciiStream(String str, InputStream inputStream) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setAsciiStream(str, inputStream);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setAsciiStream(String str, InputStream inputStream, long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setAsciiStream(str, inputStream, j);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setBinaryStream(String str, InputStream inputStream) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setBinaryStream(str, inputStream);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setBinaryStream(String str, InputStream inputStream, long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setBinaryStream(str, inputStream, j);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setBlob(String str, InputStream inputStream) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setBlob(str, inputStream);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setBlob(String str, InputStream inputStream, long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setBlob(str, inputStream, j);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setBlob(String str, Blob blob) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setBlob(str, blob);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setCharacterStream(String str, Reader reader) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setCharacterStream(str, reader);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setCharacterStream(String str, Reader reader, long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setCharacterStream(str, reader, j);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setClob(String str, Clob clob) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setClob(str, clob);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setClob(String str, Reader reader) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setClob(str, reader);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setClob(String str, Reader reader, long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setClob(str, reader, j);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setNCharacterStream(String str, Reader reader) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setNCharacterStream(str, reader);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setNCharacterStream(String str, Reader reader, long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setNCharacterStream(str, reader, j);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public NClob getNClob(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getNClob(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public String getNString(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getNString(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public RowId getRowId(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getRowId(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }
}
