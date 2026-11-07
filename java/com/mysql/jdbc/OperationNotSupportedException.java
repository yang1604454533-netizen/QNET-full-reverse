package com.mysql.jdbc;

import java.sql.SQLException;

/* JADX INFO: loaded from: classes.dex */
class OperationNotSupportedException extends SQLException {
    static final long serialVersionUID = 474918612056813430L;

    OperationNotSupportedException() {
        super(Messages.getString("RowDataDynamic.10"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT);
    }
}
