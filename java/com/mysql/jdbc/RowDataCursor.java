package com.mysql.jdbc;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RowDataCursor implements RowData {
    private static final int BEFORE_START_OF_ROWS = -1;
    private static final int SERVER_STATUS_LAST_ROW_SENT = 128;
    private int currentPositionInEntireResult;
    private List<ResultSetRow> fetchedRows;
    private Field[] metadata;
    private MysqlIO mysql;
    private ResultSetImpl owner;
    private ServerPreparedStatement prepStmt;
    private long statementIdOnServer;
    private boolean useBufferRowExplicit;
    private int currentPositionInFetchedRows = -1;
    private boolean lastRowFetched = false;
    private boolean firstFetchCompleted = false;
    private boolean wasEmpty = false;

    @Override // com.mysql.jdbc.RowData
    public boolean isDynamic() {
        return true;
    }

    protected void nextRecord() throws SQLException {
    }

    @Override // com.mysql.jdbc.RowData
    public int size() {
        return -1;
    }

    public RowDataCursor(MysqlIO mysqlIO, ServerPreparedStatement serverPreparedStatement, Field[] fieldArr) {
        this.currentPositionInEntireResult = -1;
        this.useBufferRowExplicit = false;
        this.currentPositionInEntireResult = -1;
        this.metadata = fieldArr;
        this.mysql = mysqlIO;
        this.statementIdOnServer = serverPreparedStatement.getServerStatementId();
        this.prepStmt = serverPreparedStatement;
        this.useBufferRowExplicit = MysqlIO.useBufferRowExplicit(this.metadata);
    }

    @Override // com.mysql.jdbc.RowData
    public boolean isAfterLast() {
        return this.lastRowFetched && this.currentPositionInFetchedRows > this.fetchedRows.size();
    }

    @Override // com.mysql.jdbc.RowData
    public ResultSetRow getAt(int i) throws SQLException {
        notSupported();
        return null;
    }

    @Override // com.mysql.jdbc.RowData
    public boolean isBeforeFirst() throws SQLException {
        return this.currentPositionInEntireResult < 0;
    }

    @Override // com.mysql.jdbc.RowData
    public void setCurrentRow(int i) throws SQLException {
        notSupported();
    }

    @Override // com.mysql.jdbc.RowData
    public int getCurrentRowNumber() throws SQLException {
        return this.currentPositionInEntireResult + 1;
    }

    @Override // com.mysql.jdbc.RowData
    public boolean isEmpty() throws SQLException {
        return isBeforeFirst() && isAfterLast();
    }

    @Override // com.mysql.jdbc.RowData
    public boolean isFirst() throws SQLException {
        return this.currentPositionInEntireResult == 0;
    }

    @Override // com.mysql.jdbc.RowData
    public boolean isLast() throws SQLException {
        return this.lastRowFetched && this.currentPositionInFetchedRows == this.fetchedRows.size() - 1;
    }

    @Override // com.mysql.jdbc.RowData
    public void addRow(ResultSetRow resultSetRow) throws SQLException {
        notSupported();
    }

    @Override // com.mysql.jdbc.RowData
    public void afterLast() throws SQLException {
        notSupported();
    }

    @Override // com.mysql.jdbc.RowData
    public void beforeFirst() throws SQLException {
        notSupported();
    }

    @Override // com.mysql.jdbc.RowData
    public void beforeLast() throws SQLException {
        notSupported();
    }

    @Override // com.mysql.jdbc.RowData
    public void close() throws SQLException {
        this.metadata = null;
        this.owner = null;
    }

    @Override // com.mysql.jdbc.RowData
    public boolean hasNext() throws SQLException {
        int i;
        if (this.fetchedRows != null && this.fetchedRows.size() == 0) {
            return false;
        }
        if (this.owner != null && this.owner.owningStatement != null && (i = this.owner.owningStatement.maxRows) != -1 && this.currentPositionInEntireResult + 1 > i) {
            return false;
        }
        if (this.currentPositionInEntireResult != -1) {
            if (this.currentPositionInFetchedRows < this.fetchedRows.size() - 1) {
                return true;
            }
            if (this.currentPositionInFetchedRows == this.fetchedRows.size() && this.lastRowFetched) {
                return false;
            }
            fetchMoreRows();
            return this.fetchedRows.size() > 0;
        }
        fetchMoreRows();
        return this.fetchedRows.size() > 0;
    }

    @Override // com.mysql.jdbc.RowData
    public void moveRowRelative(int i) throws SQLException {
        notSupported();
    }

    @Override // com.mysql.jdbc.RowData
    public ResultSetRow next() throws SQLException {
        if (this.fetchedRows == null && this.currentPositionInEntireResult != -1) {
            throw SQLError.createSQLException(Messages.getString("ResultSet.Operation_not_allowed_after_ResultSet_closed_144"), SQLError.SQL_STATE_GENERAL_ERROR, this.mysql.getExceptionInterceptor());
        }
        if (!hasNext()) {
            return null;
        }
        this.currentPositionInEntireResult++;
        this.currentPositionInFetchedRows++;
        if (this.fetchedRows != null && this.fetchedRows.size() == 0) {
            return null;
        }
        if (this.fetchedRows == null || this.currentPositionInFetchedRows > this.fetchedRows.size() - 1) {
            fetchMoreRows();
            this.currentPositionInFetchedRows = 0;
        }
        ResultSetRow resultSetRow = this.fetchedRows.get(this.currentPositionInFetchedRows);
        resultSetRow.setMetadata(this.metadata);
        return resultSetRow;
    }

    private void fetchMoreRows() throws SQLException {
        if (this.lastRowFetched) {
            this.fetchedRows = new ArrayList(0);
            return;
        }
        synchronized (this.owner.connection.getConnectionMutex()) {
            boolean z = this.firstFetchCompleted;
            if (!this.firstFetchCompleted) {
                this.firstFetchCompleted = true;
            }
            int fetchSize = this.owner.getFetchSize();
            if (fetchSize == 0) {
                fetchSize = this.prepStmt.getFetchSize();
            }
            this.fetchedRows = this.mysql.fetchRowsViaCursor(this.fetchedRows, this.statementIdOnServer, this.metadata, fetchSize == Integer.MIN_VALUE ? 1 : fetchSize, this.useBufferRowExplicit);
            this.currentPositionInFetchedRows = -1;
            if ((this.mysql.getServerStatus() & 128) != 0) {
                this.lastRowFetched = true;
                if (!z && this.fetchedRows.size() == 0) {
                    this.wasEmpty = true;
                }
            }
        }
    }

    @Override // com.mysql.jdbc.RowData
    public void removeRow(int i) throws SQLException {
        notSupported();
    }

    private void notSupported() throws SQLException {
        throw new OperationNotSupportedException();
    }

    @Override // com.mysql.jdbc.RowData
    public void setOwner(ResultSetImpl resultSetImpl) {
        this.owner = resultSetImpl;
    }

    @Override // com.mysql.jdbc.RowData
    public ResultSetInternalMethods getOwner() {
        return this.owner;
    }

    @Override // com.mysql.jdbc.RowData
    public boolean wasEmpty() {
        return this.wasEmpty;
    }

    @Override // com.mysql.jdbc.RowData
    public void setMetadata(Field[] fieldArr) {
        this.metadata = fieldArr;
    }
}
