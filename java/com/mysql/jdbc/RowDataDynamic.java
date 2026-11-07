package com.mysql.jdbc;

import com.mysql.jdbc.profiler.ProfilerEvent;
import com.mysql.jdbc.profiler.ProfilerEventHandler;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes.dex */
public class RowDataDynamic implements RowData {
    private int columnCount;
    private ExceptionInterceptor exceptionInterceptor;

    /* JADX INFO: renamed from: io, reason: collision with root package name */
    private MysqlIO f29io;
    private boolean isBinaryEncoded;
    private Field[] metadata;
    private boolean moreResultsExisted;
    private ResultSetRow nextRow;
    private ResultSetImpl owner;
    private boolean useBufferRowExplicit;
    private int index = -1;
    private boolean isAfterEnd = false;
    private boolean noMoreRows = false;
    private boolean streamerClosed = false;
    private boolean wasEmpty = false;

    @Override // com.mysql.jdbc.RowData
    public boolean isDynamic() {
        return true;
    }

    @Override // com.mysql.jdbc.RowData
    public int size() {
        return -1;
    }

    public RowDataDynamic(MysqlIO mysqlIO, int i, Field[] fieldArr, boolean z) throws SQLException {
        this.isBinaryEncoded = false;
        this.f29io = mysqlIO;
        this.columnCount = i;
        this.isBinaryEncoded = z;
        this.metadata = fieldArr;
        this.exceptionInterceptor = this.f29io.getExceptionInterceptor();
        this.useBufferRowExplicit = MysqlIO.useBufferRowExplicit(this.metadata);
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
        Object connectionMutex;
        MySQLConnection mySQLConnection;
        java.sql.Statement statementCreateStatement;
        if (this.owner != null) {
            mySQLConnection = this.owner.connection;
            connectionMutex = mySQLConnection != null ? mySQLConnection.getConnectionMutex() : this;
        } else {
            connectionMutex = this;
            mySQLConnection = null;
        }
        synchronized (connectionMutex) {
            int i = 0;
            boolean z = false;
            while (next() != null) {
                i++;
                if (i % 100 == 0) {
                    Thread.yield();
                }
                z = true;
            }
            if (mySQLConnection != null) {
                if (!mySQLConnection.getClobberStreamingResults() && mySQLConnection.getNetTimeoutForStreamingResults() > 0) {
                    String serverVariable = mySQLConnection.getServerVariable("net_write_timeout");
                    if (serverVariable == null || serverVariable.length() == 0) {
                        serverVariable = "60";
                    }
                    this.f29io.clearInputStream();
                    try {
                        statementCreateStatement = mySQLConnection.createStatement();
                        try {
                            ((StatementImpl) statementCreateStatement).executeSimpleNonQuery(mySQLConnection, "SET net_write_timeout=" + serverVariable);
                            if (statementCreateStatement != null) {
                                statementCreateStatement.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            if (statementCreateStatement != null) {
                                statementCreateStatement.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        statementCreateStatement = null;
                    }
                }
                if (mySQLConnection.getUseUsageAdvisor() && z) {
                    ProfilerEventHandler profilerEventHandlerFactory = ProfilerEventHandlerFactory.getInstance(mySQLConnection);
                    String str = this.owner.owningStatement == null ? "N/A" : this.owner.owningStatement.currentCatalog;
                    long j = this.owner.connectionId;
                    int id = this.owner.owningStatement == null ? -1 : this.owner.owningStatement.getId();
                    profilerEventHandlerFactory.consumeEvent(new ProfilerEvent((byte) 0, "", str, j, id, -1, System.currentTimeMillis(), 0L, Constants.MILLIS_I18N, null, null, Messages.getString("RowDataDynamic.2") + i + Messages.getString("RowDataDynamic.3") + Messages.getString("RowDataDynamic.4") + Messages.getString("RowDataDynamic.5") + Messages.getString("RowDataDynamic.6") + this.owner.pointOfOrigin));
                }
            }
        }
        this.metadata = null;
        this.owner = null;
    }

    @Override // com.mysql.jdbc.RowData
    public ResultSetRow getAt(int i) throws SQLException {
        notSupported();
        return null;
    }

    @Override // com.mysql.jdbc.RowData
    public int getCurrentRowNumber() throws SQLException {
        notSupported();
        return -1;
    }

    @Override // com.mysql.jdbc.RowData
    public ResultSetInternalMethods getOwner() {
        return this.owner;
    }

    @Override // com.mysql.jdbc.RowData
    public boolean hasNext() throws SQLException {
        boolean z = this.nextRow != null;
        if (!z && !this.streamerClosed) {
            this.f29io.closeStreamer(this);
            this.streamerClosed = true;
        }
        return z;
    }

    @Override // com.mysql.jdbc.RowData
    public boolean isAfterLast() throws SQLException {
        return this.isAfterEnd;
    }

    @Override // com.mysql.jdbc.RowData
    public boolean isBeforeFirst() throws SQLException {
        return this.index < 0;
    }

    @Override // com.mysql.jdbc.RowData
    public boolean isEmpty() throws SQLException {
        notSupported();
        return false;
    }

    @Override // com.mysql.jdbc.RowData
    public boolean isFirst() throws SQLException {
        notSupported();
        return false;
    }

    @Override // com.mysql.jdbc.RowData
    public boolean isLast() throws SQLException {
        notSupported();
        return false;
    }

    @Override // com.mysql.jdbc.RowData
    public void moveRowRelative(int i) throws SQLException {
        notSupported();
    }

    @Override // com.mysql.jdbc.RowData
    public ResultSetRow next() throws SQLException {
        nextRecord();
        if (this.nextRow == null && !this.streamerClosed && !this.moreResultsExisted) {
            this.f29io.closeStreamer(this);
            this.streamerClosed = true;
        }
        if (this.nextRow != null && this.index != Integer.MAX_VALUE) {
            this.index++;
        }
        return this.nextRow;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void nextRecord() throws SQLException {
        try {
            if (!this.noMoreRows) {
                this.nextRow = this.f29io.nextRow(this.metadata, this.columnCount, this.isBinaryEncoded, 1007, true, this.useBufferRowExplicit, true, null);
                if (this.nextRow == null) {
                    this.noMoreRows = true;
                    this.isAfterEnd = true;
                    this.moreResultsExisted = this.f29io.tackOnMoreStreamingResults(this.owner);
                    if (this.index == -1) {
                        this.wasEmpty = true;
                        return;
                    }
                    return;
                }
                return;
            }
            this.nextRow = null;
            this.isAfterEnd = true;
        } catch (SQLException e) {
            if (e instanceof StreamingNotifiable) {
                ((StreamingNotifiable) e).setWasStreamingResults();
            }
            this.noMoreRows = true;
            throw e;
        } catch (Exception e2) {
            SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(Messages.getString("RowDataDynamic.8") + e2.getClass().getName() + Messages.getString("RowDataDynamic.9") + ((e2.getMessage() + Messages.getString("RowDataDynamic.7")) + Util.stackTraceToString(e2)), SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
            sQLExceptionCreateSQLException.initCause(e2);
            throw sQLExceptionCreateSQLException;
        }
    }

    private void notSupported() throws SQLException {
        throw new OperationNotSupportedException();
    }

    @Override // com.mysql.jdbc.RowData
    public void removeRow(int i) throws SQLException {
        notSupported();
    }

    @Override // com.mysql.jdbc.RowData
    public void setCurrentRow(int i) throws SQLException {
        notSupported();
    }

    @Override // com.mysql.jdbc.RowData
    public void setOwner(ResultSetImpl resultSetImpl) {
        this.owner = resultSetImpl;
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
