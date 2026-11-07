package com.mysql.jdbc;

import java.sql.ResultSet;
import java.sql.RowIdLifetime;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes.dex */
public class JDBC4DatabaseMetaDataUsingInfoSchema extends DatabaseMetaDataUsingInfoSchema {
    @Override // com.mysql.jdbc.DatabaseMetaDataUsingInfoSchema, com.mysql.jdbc.DatabaseMetaData
    protected int getJDBC4FunctionNoTableConstant() {
        return 1;
    }

    public JDBC4DatabaseMetaDataUsingInfoSchema(MySQLConnection mySQLConnection, String str) throws SQLException {
        super(mySQLConnection, str);
    }

    @Override // java.sql.DatabaseMetaData
    public RowIdLifetime getRowIdLifetime() throws SQLException {
        return RowIdLifetime.ROWID_UNSUPPORTED;
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
            throw SQLError.createSQLException("Unable to unwrap to " + cls.toString(), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.conn.getExceptionInterceptor());
        }
    }

    @Override // com.mysql.jdbc.DatabaseMetaDataUsingInfoSchema
    protected ResultSet getProcedureColumnsNoISParametersView(String str, String str2, String str3, String str4) throws SQLException {
        return getProcedureOrFunctionColumns(createProcedureColumnsFields(), str, str2, str3, str4, true, this.conn.getGetProceduresReturnsFunctions());
    }

    @Override // com.mysql.jdbc.DatabaseMetaDataUsingInfoSchema
    protected String getRoutineTypeConditionForGetProcedures() {
        return this.conn.getGetProceduresReturnsFunctions() ? "" : "ROUTINE_TYPE = 'PROCEDURE' AND ";
    }

    @Override // com.mysql.jdbc.DatabaseMetaDataUsingInfoSchema
    protected String getRoutineTypeConditionForGetProcedureColumns() {
        return this.conn.getGetProceduresReturnsFunctions() ? "" : "ROUTINE_TYPE = 'PROCEDURE' AND ";
    }

    @Override // com.mysql.jdbc.DatabaseMetaDataUsingInfoSchema
    protected int getJDBC4FunctionConstant(DatabaseMetaDataUsingInfoSchema.JDBC4FunctionConstant jDBC4FunctionConstant) {
        switch (jDBC4FunctionConstant) {
            case FUNCTION_COLUMN_IN:
                return 1;
            case FUNCTION_COLUMN_INOUT:
                return 2;
            case FUNCTION_COLUMN_OUT:
                return 3;
            case FUNCTION_COLUMN_RETURN:
                return 4;
            case FUNCTION_COLUMN_RESULT:
                return 5;
            case FUNCTION_COLUMN_UNKNOWN:
                return 0;
            case FUNCTION_NO_NULLS:
                return 0;
            case FUNCTION_NULLABLE:
                return 1;
            case FUNCTION_NULLABLE_UNKNOWN:
                return 2;
            default:
                return -1;
        }
    }

    @Override // com.mysql.jdbc.DatabaseMetaData
    protected int getColumnType(boolean z, boolean z2, boolean z3, boolean z4) {
        return JDBC4DatabaseMetaData.getProcedureOrFunctionColumnType(z, z2, z3, z4);
    }
}
