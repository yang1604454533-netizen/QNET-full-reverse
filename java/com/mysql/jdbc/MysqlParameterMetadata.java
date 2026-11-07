package com.mysql.jdbc;

import java.sql.ParameterMetaData;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes.dex */
public class MysqlParameterMetadata implements ParameterMetaData {
    private ExceptionInterceptor exceptionInterceptor;
    ResultSetMetaData metadata;
    int parameterCount;
    boolean returnSimpleMetadata;

    @Override // java.sql.ParameterMetaData
    public int getParameterMode(int i) throws SQLException {
        return 1;
    }

    MysqlParameterMetadata(Field[] fieldArr, int i, ExceptionInterceptor exceptionInterceptor) {
        this.returnSimpleMetadata = false;
        this.metadata = null;
        this.parameterCount = 0;
        this.metadata = new ResultSetMetaData(fieldArr, false, true, exceptionInterceptor);
        this.parameterCount = i;
        this.exceptionInterceptor = exceptionInterceptor;
    }

    MysqlParameterMetadata(int i) {
        this.returnSimpleMetadata = false;
        this.metadata = null;
        this.parameterCount = 0;
        this.parameterCount = i;
        this.returnSimpleMetadata = true;
    }

    @Override // java.sql.ParameterMetaData
    public int getParameterCount() throws SQLException {
        return this.parameterCount;
    }

    @Override // java.sql.ParameterMetaData
    public int isNullable(int i) throws SQLException {
        checkAvailable();
        return this.metadata.isNullable(i);
    }

    private void checkAvailable() throws SQLException {
        if (this.metadata == null || this.metadata.fields == null) {
            throw SQLError.createSQLException("Parameter metadata not available for the given statement", SQLError.SQL_STATE_DRIVER_NOT_CAPABLE, this.exceptionInterceptor);
        }
    }

    @Override // java.sql.ParameterMetaData
    public boolean isSigned(int i) throws SQLException {
        if (this.returnSimpleMetadata) {
            checkBounds(i);
            return false;
        }
        checkAvailable();
        return this.metadata.isSigned(i);
    }

    @Override // java.sql.ParameterMetaData
    public int getPrecision(int i) throws SQLException {
        if (this.returnSimpleMetadata) {
            checkBounds(i);
            return 0;
        }
        checkAvailable();
        return this.metadata.getPrecision(i);
    }

    @Override // java.sql.ParameterMetaData
    public int getScale(int i) throws SQLException {
        if (this.returnSimpleMetadata) {
            checkBounds(i);
            return 0;
        }
        checkAvailable();
        return this.metadata.getScale(i);
    }

    @Override // java.sql.ParameterMetaData
    public int getParameterType(int i) throws SQLException {
        if (this.returnSimpleMetadata) {
            checkBounds(i);
            return 12;
        }
        checkAvailable();
        return this.metadata.getColumnType(i);
    }

    @Override // java.sql.ParameterMetaData
    public String getParameterTypeName(int i) throws SQLException {
        if (this.returnSimpleMetadata) {
            checkBounds(i);
            return "VARCHAR";
        }
        checkAvailable();
        return this.metadata.getColumnTypeName(i);
    }

    @Override // java.sql.ParameterMetaData
    public String getParameterClassName(int i) throws SQLException {
        if (this.returnSimpleMetadata) {
            checkBounds(i);
            return "java.lang.String";
        }
        checkAvailable();
        return this.metadata.getColumnClassName(i);
    }

    private void checkBounds(int i) throws SQLException {
        if (i < 1) {
            throw SQLError.createSQLException("Parameter index of '" + i + "' is invalid.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        }
        if (i <= this.parameterCount) {
            return;
        }
        throw SQLError.createSQLException("Parameter index of '" + i + "' is greater than number of parameters, which is '" + this.parameterCount + "'.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
    }

    @Override // java.sql.Wrapper
    public boolean isWrapperFor(Class<?> cls) throws SQLException {
        return cls.isInstance(this);
    }

    @Override // java.sql.Wrapper
    public <T> T unwrap(Class<T> cls) throws SQLException {
        try {
            return cls.cast(this);
        } catch (ClassCastException unused) {
            throw SQLError.createSQLException("Unable to unwrap to " + cls.toString(), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        }
    }
}
