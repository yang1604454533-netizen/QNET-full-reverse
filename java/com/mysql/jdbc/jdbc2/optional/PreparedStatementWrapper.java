package com.mysql.jdbc.jdbc2.optional;

import com.mysql.jdbc.ResultSetInternalMethods;
import com.mysql.jdbc.SQLError;
import com.mysql.jdbc.Util;
import java.io.InputStream;
import java.io.Reader;
import java.lang.reflect.Constructor;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.Array;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.Date;
import java.sql.ParameterMetaData;
import java.sql.PreparedStatement;
import java.sql.Ref;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
public class PreparedStatementWrapper extends StatementWrapper implements PreparedStatement {
    private static final Constructor<?> JDBC_4_PREPARED_STATEMENT_WRAPPER_CTOR;

    static {
        if (Util.isJdbc4()) {
            try {
                JDBC_4_PREPARED_STATEMENT_WRAPPER_CTOR = Class.forName(Util.isJdbc42() ? "com.mysql.jdbc.jdbc2.optional.JDBC42PreparedStatementWrapper" : "com.mysql.jdbc.jdbc2.optional.JDBC4PreparedStatementWrapper").getConstructor(ConnectionWrapper.class, MysqlPooledConnection.class, PreparedStatement.class);
                return;
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            } catch (SecurityException e3) {
                throw new RuntimeException(e3);
            }
        }
        JDBC_4_PREPARED_STATEMENT_WRAPPER_CTOR = null;
    }

    protected static PreparedStatementWrapper getInstance(ConnectionWrapper connectionWrapper, MysqlPooledConnection mysqlPooledConnection, PreparedStatement preparedStatement) throws SQLException {
        return !Util.isJdbc4() ? new PreparedStatementWrapper(connectionWrapper, mysqlPooledConnection, preparedStatement) : (PreparedStatementWrapper) Util.handleNewInstance(JDBC_4_PREPARED_STATEMENT_WRAPPER_CTOR, new Object[]{connectionWrapper, mysqlPooledConnection, preparedStatement}, mysqlPooledConnection.getExceptionInterceptor());
    }

    PreparedStatementWrapper(ConnectionWrapper connectionWrapper, MysqlPooledConnection mysqlPooledConnection, PreparedStatement preparedStatement) {
        super(connectionWrapper, mysqlPooledConnection, preparedStatement);
    }

    @Override // java.sql.PreparedStatement
    public void setArray(int i, Array array) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setArray(i, array);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setAsciiStream(int i, InputStream inputStream, int i2) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setAsciiStream(i, inputStream, i2);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setBigDecimal(int i, BigDecimal bigDecimal) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setBigDecimal(i, bigDecimal);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setBinaryStream(int i, InputStream inputStream, int i2) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setBinaryStream(i, inputStream, i2);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setBlob(int i, Blob blob) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setBlob(i, blob);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setBoolean(int i, boolean z) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setBoolean(i, z);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setByte(int i, byte b) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setByte(i, b);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setBytes(int i, byte[] bArr) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setBytes(i, bArr);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setCharacterStream(int i, Reader reader, int i2) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setCharacterStream(i, reader, i2);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setClob(int i, Clob clob) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setClob(i, clob);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setDate(int i, Date date) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setDate(i, date);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setDate(int i, Date date, Calendar calendar) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setDate(i, date, calendar);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setDouble(int i, double d) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setDouble(i, d);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setFloat(int i, float f) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setFloat(i, f);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setInt(int i, int i2) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setInt(i, i2);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setLong(int i, long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setLong(i, j);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public ResultSetMetaData getMetaData() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((PreparedStatement) this.wrappedStmt).getMetaData();
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.PreparedStatement
    public void setNull(int i, int i2) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setNull(i, i2);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setNull(int i, int i2, String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setNull(i, i2, str);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setObject(int i, Object obj) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setObject(i, obj);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setObject(int i, Object obj, int i2) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setObject(i, obj, i2);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setObject(int i, Object obj, int i2, int i3) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setObject(i, obj, i2, i3);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public ParameterMetaData getParameterMetaData() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((PreparedStatement) this.wrappedStmt).getParameterMetaData();
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.PreparedStatement
    public void setRef(int i, Ref ref) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setRef(i, ref);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setShort(int i, short s) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setShort(i, s);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setString(int i, String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setString(i, str);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setTime(int i, Time time) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setTime(i, time);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setTime(int i, Time time, Calendar calendar) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setTime(i, time, calendar);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setTimestamp(int i, Timestamp timestamp) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setTimestamp(i, timestamp);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setTimestamp(int i, Timestamp timestamp, Calendar calendar) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setTimestamp(i, timestamp, calendar);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setURL(int i, URL url) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setURL(i, url);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    @Deprecated
    public void setUnicodeStream(int i, InputStream inputStream, int i2) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).setUnicodeStream(i, inputStream, i2);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void addBatch() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).addBatch();
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public void clearParameters() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((PreparedStatement) this.wrappedStmt).clearParameters();
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.PreparedStatement
    public boolean execute() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((PreparedStatement) this.wrappedStmt).execute();
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return false;
        }
    }

    @Override // java.sql.PreparedStatement
    public ResultSet executeQuery() throws SQLException {
        ResultSet resultSet = null;
        try {
            if (this.wrappedStmt == null) {
                throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
            }
            ResultSet resultSetExecuteQuery = ((PreparedStatement) this.wrappedStmt).executeQuery();
            try {
                ((ResultSetInternalMethods) resultSetExecuteQuery).setWrapperStatement(this);
                return resultSetExecuteQuery;
            } catch (SQLException e) {
                e = e;
                resultSet = resultSetExecuteQuery;
                checkAndFireConnectionError(e);
                return resultSet;
            }
        } catch (SQLException e2) {
            e = e2;
        }
    }

    @Override // java.sql.PreparedStatement
    public int executeUpdate() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((PreparedStatement) this.wrappedStmt).executeUpdate();
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return -1;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(super.toString());
        if (this.wrappedStmt != null) {
            sb.append(": ");
            try {
                sb.append(((com.mysql.jdbc.PreparedStatement) this.wrappedStmt).asSql());
            } catch (SQLException e) {
                sb.append("EXCEPTION: " + e.toString());
            }
        }
        return sb.toString();
    }

    public long executeLargeUpdate() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((com.mysql.jdbc.PreparedStatement) this.wrappedStmt).executeLargeUpdate();
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return -1L;
        }
    }
}
