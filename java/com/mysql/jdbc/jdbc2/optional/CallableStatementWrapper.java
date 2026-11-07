package com.mysql.jdbc.jdbc2.optional;

import com.mysql.jdbc.SQLError;
import com.mysql.jdbc.Util;
import java.io.InputStream;
import java.io.Reader;
import java.lang.reflect.Constructor;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.Array;
import java.sql.Blob;
import java.sql.CallableStatement;
import java.sql.Clob;
import java.sql.Date;
import java.sql.Ref;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CallableStatementWrapper extends PreparedStatementWrapper implements CallableStatement {
    private static final Constructor<?> JDBC_4_CALLABLE_STATEMENT_WRAPPER_CTOR;

    static {
        if (Util.isJdbc4()) {
            try {
                JDBC_4_CALLABLE_STATEMENT_WRAPPER_CTOR = Class.forName(Util.isJdbc42() ? "com.mysql.jdbc.jdbc2.optional.JDBC42CallableStatementWrapper" : "com.mysql.jdbc.jdbc2.optional.JDBC4CallableStatementWrapper").getConstructor(ConnectionWrapper.class, MysqlPooledConnection.class, CallableStatement.class);
                return;
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            } catch (SecurityException e3) {
                throw new RuntimeException(e3);
            }
        }
        JDBC_4_CALLABLE_STATEMENT_WRAPPER_CTOR = null;
    }

    protected static CallableStatementWrapper getInstance(ConnectionWrapper connectionWrapper, MysqlPooledConnection mysqlPooledConnection, CallableStatement callableStatement) throws SQLException {
        return !Util.isJdbc4() ? new CallableStatementWrapper(connectionWrapper, mysqlPooledConnection, callableStatement) : (CallableStatementWrapper) Util.handleNewInstance(JDBC_4_CALLABLE_STATEMENT_WRAPPER_CTOR, new Object[]{connectionWrapper, mysqlPooledConnection, callableStatement}, mysqlPooledConnection.getExceptionInterceptor());
    }

    public CallableStatementWrapper(ConnectionWrapper connectionWrapper, MysqlPooledConnection mysqlPooledConnection, CallableStatement callableStatement) {
        super(connectionWrapper, mysqlPooledConnection, callableStatement);
    }

    @Override // java.sql.CallableStatement
    public void registerOutParameter(int i, int i2) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).registerOutParameter(i, i2);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void registerOutParameter(int i, int i2, int i3) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).registerOutParameter(i, i2, i3);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public boolean wasNull() throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).wasNull();
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return false;
        }
    }

    @Override // java.sql.CallableStatement
    public String getString(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getString(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public boolean getBoolean(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getBoolean(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return false;
        }
    }

    @Override // java.sql.CallableStatement
    public byte getByte(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getByte(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return (byte) 0;
        }
    }

    @Override // java.sql.CallableStatement
    public short getShort(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getShort(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return (short) 0;
        }
    }

    @Override // java.sql.CallableStatement
    public int getInt(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getInt(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 0;
        }
    }

    @Override // java.sql.CallableStatement
    public long getLong(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getLong(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 0L;
        }
    }

    @Override // java.sql.CallableStatement
    public float getFloat(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getFloat(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 0.0f;
        }
    }

    @Override // java.sql.CallableStatement
    public double getDouble(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getDouble(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 0.0d;
        }
    }

    @Override // java.sql.CallableStatement
    @Deprecated
    public BigDecimal getBigDecimal(int i, int i2) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getBigDecimal(i, i2);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public byte[] getBytes(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getBytes(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Date getDate(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getDate(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Time getTime(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getTime(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Timestamp getTimestamp(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getTimestamp(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Object getObject(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getObject(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public BigDecimal getBigDecimal(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getBigDecimal(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Object getObject(int i, Map<String, Class<?>> map) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getObject(i, map);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Ref getRef(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getRef(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Blob getBlob(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getBlob(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Clob getClob(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getClob(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Array getArray(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getArray(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Date getDate(int i, Calendar calendar) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getDate(i, calendar);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Time getTime(int i, Calendar calendar) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getTime(i, calendar);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Timestamp getTimestamp(int i, Calendar calendar) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getTimestamp(i, calendar);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public void registerOutParameter(int i, int i2, String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).registerOutParameter(i, i2, str);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void registerOutParameter(String str, int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).registerOutParameter(str, i);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void registerOutParameter(String str, int i, int i2) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).registerOutParameter(str, i, i2);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void registerOutParameter(String str, int i, String str2) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).registerOutParameter(str, i, str2);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public URL getURL(int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getURL(i);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public void setURL(String str, URL url) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setURL(str, url);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setNull(String str, int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setNull(str, i);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setBoolean(String str, boolean z) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setBoolean(str, z);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setByte(String str, byte b) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setByte(str, b);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setShort(String str, short s) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setShort(str, s);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setInt(String str, int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setInt(str, i);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setLong(String str, long j) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setLong(str, j);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setFloat(String str, float f) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setFloat(str, f);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setDouble(String str, double d) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setDouble(str, d);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setBigDecimal(String str, BigDecimal bigDecimal) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setBigDecimal(str, bigDecimal);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setString(String str, String str2) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setString(str, str2);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setBytes(String str, byte[] bArr) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setBytes(str, bArr);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setDate(String str, Date date) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setDate(str, date);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setTime(String str, Time time) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setTime(str, time);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setTimestamp(String str, Timestamp timestamp) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setTimestamp(str, timestamp);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setAsciiStream(String str, InputStream inputStream, int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setAsciiStream(str, inputStream, i);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setBinaryStream(String str, InputStream inputStream, int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setBinaryStream(str, inputStream, i);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setObject(String str, Object obj, int i, int i2) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setObject(str, obj, i, i2);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setObject(String str, Object obj, int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setObject(str, obj, i);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setObject(String str, Object obj) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setObject(str, obj);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setCharacterStream(String str, Reader reader, int i) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setCharacterStream(str, reader, i);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setDate(String str, Date date, Calendar calendar) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setDate(str, date, calendar);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setTime(String str, Time time, Calendar calendar) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setTime(str, time, calendar);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setTimestamp(String str, Timestamp timestamp, Calendar calendar) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setTimestamp(str, timestamp, calendar);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public void setNull(String str, int i, String str2) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                ((CallableStatement) this.wrappedStmt).setNull(str, i, str2);
                return;
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
        }
    }

    @Override // java.sql.CallableStatement
    public String getString(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getString(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public boolean getBoolean(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getBoolean(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return false;
        }
    }

    @Override // java.sql.CallableStatement
    public byte getByte(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getByte(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return (byte) 0;
        }
    }

    @Override // java.sql.CallableStatement
    public short getShort(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getShort(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return (short) 0;
        }
    }

    @Override // java.sql.CallableStatement
    public int getInt(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getInt(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 0;
        }
    }

    @Override // java.sql.CallableStatement
    public long getLong(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getLong(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 0L;
        }
    }

    @Override // java.sql.CallableStatement
    public float getFloat(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getFloat(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 0.0f;
        }
    }

    @Override // java.sql.CallableStatement
    public double getDouble(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getDouble(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return 0.0d;
        }
    }

    @Override // java.sql.CallableStatement
    public byte[] getBytes(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getBytes(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Date getDate(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getDate(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Time getTime(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getTime(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Timestamp getTimestamp(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getTimestamp(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Object getObject(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getObject(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public BigDecimal getBigDecimal(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getBigDecimal(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Object getObject(String str, Map<String, Class<?>> map) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getObject(str, map);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Ref getRef(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getRef(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Blob getBlob(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getBlob(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Clob getClob(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getClob(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Array getArray(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getArray(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Date getDate(String str, Calendar calendar) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getDate(str, calendar);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Time getTime(String str, Calendar calendar) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getTime(str, calendar);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public Timestamp getTimestamp(String str, Calendar calendar) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getTimestamp(str, calendar);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }

    @Override // java.sql.CallableStatement
    public URL getURL(String str) throws SQLException {
        try {
            if (this.wrappedStmt != null) {
                return ((CallableStatement) this.wrappedStmt).getURL(str);
            }
            throw SQLError.createSQLException("No operations allowed after statement closed", SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
        } catch (SQLException e) {
            checkAndFireConnectionError(e);
            return null;
        }
    }
}
