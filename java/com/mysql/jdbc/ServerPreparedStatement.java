package com.mysql.jdbc;

import com.mysql.jdbc.exceptions.MySQLStatementCancelledException;
import com.mysql.jdbc.exceptions.MySQLTimeoutException;
import com.mysql.jdbc.log.LogUtils;
import com.mysql.jdbc.profiler.ProfilerEvent;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.Array;
import java.sql.ParameterMetaData;
import java.sql.Ref;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class ServerPreparedStatement extends PreparedStatement {
    protected static final int BLOB_STREAM_READ_BUF_SIZE = 8192;
    private static final Constructor<?> JDBC_4_SPS_CTOR;
    private boolean canRewrite;
    private Calendar defaultTzCalendar;
    private boolean detectedLongParameterSwitch;
    private int fieldCount;
    private boolean hasCheckedRewrite;
    private boolean hasOnDuplicateKeyUpdate;
    private boolean invalid;
    private SQLException invalidationException;
    protected boolean isCached;
    private int locationOfOnDuplicateKeyUpdate;
    private Buffer outByteBuffer;
    private BindValue[] parameterBindings;
    private Field[] parameterFields;
    private Field[] resultFields;
    private boolean sendTypesToServer;
    private boolean serverNeedsResetBeforeEachExecution;
    private long serverStatementId;
    private Calendar serverTzCalendar;
    private int stringTypeCode;
    private boolean useAutoSlowLog;

    @Override // com.mysql.jdbc.PreparedStatement
    protected Buffer fillSendPacket() throws SQLException {
        return null;
    }

    @Override // com.mysql.jdbc.PreparedStatement
    protected Buffer fillSendPacket(byte[][] bArr, InputStream[] inputStreamArr, boolean[] zArr, int[] iArr) throws SQLException {
        return null;
    }

    static {
        if (Util.isJdbc4()) {
            try {
                JDBC_4_SPS_CTOR = Class.forName(Util.isJdbc42() ? "com.mysql.jdbc.JDBC42ServerPreparedStatement" : "com.mysql.jdbc.JDBC4ServerPreparedStatement").getConstructor(MySQLConnection.class, String.class, String.class, Integer.TYPE, Integer.TYPE);
                return;
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            } catch (SecurityException e3) {
                throw new RuntimeException(e3);
            }
        }
        JDBC_4_SPS_CTOR = null;
    }

    public static class BatchedBindValues {
        public BindValue[] batchedParameterValues;

        BatchedBindValues(BindValue[] bindValueArr) {
            int length = bindValueArr.length;
            this.batchedParameterValues = new BindValue[length];
            for (int i = 0; i < length; i++) {
                this.batchedParameterValues[i] = new BindValue(bindValueArr[i]);
            }
        }
    }

    public static class BindValue {
        public long bindLength;
        public long boundBeforeExecutionNum;
        public int bufferType;
        public double doubleBinding;
        public float floatBinding;
        public boolean isLongData;
        public boolean isNull;
        public boolean isSet;
        public long longBinding;
        public Object value;

        BindValue() {
            this.boundBeforeExecutionNum = 0L;
            this.isSet = false;
        }

        BindValue(BindValue bindValue) {
            this.boundBeforeExecutionNum = 0L;
            this.isSet = false;
            this.value = bindValue.value;
            this.isSet = bindValue.isSet;
            this.isLongData = bindValue.isLongData;
            this.isNull = bindValue.isNull;
            this.bufferType = bindValue.bufferType;
            this.bindLength = bindValue.bindLength;
            this.longBinding = bindValue.longBinding;
            this.floatBinding = bindValue.floatBinding;
            this.doubleBinding = bindValue.doubleBinding;
        }

        void reset() {
            this.isNull = false;
            this.isSet = false;
            this.value = null;
            this.isLongData = false;
            this.longBinding = 0L;
            this.floatBinding = 0.0f;
            this.doubleBinding = 0.0d;
        }

        public String toString() {
            return toString(false);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:29:0x005d  */
        public String toString(boolean z) {
            if (this.isLongData) {
                return "' STREAM DATA '";
            }
            if (this.isNull) {
                return "NULL";
            }
            int i = this.bufferType;
            if (i != 15) {
                switch (i) {
                    case 1:
                    case 2:
                    case 3:
                        return String.valueOf(this.longBinding);
                    case 4:
                        return String.valueOf(this.floatBinding);
                    case 5:
                        return String.valueOf(this.doubleBinding);
                    default:
                        switch (i) {
                            case 7:
                                break;
                            case 8:
                                return String.valueOf(this.longBinding);
                            default:
                                switch (i) {
                                    case 10:
                                    case 11:
                                    case 12:
                                        break;
                                    default:
                                        switch (i) {
                                            case 253:
                                            case 254:
                                                break;
                                            default:
                                                if (this.value instanceof byte[]) {
                                                    return "byte data";
                                                }
                                                if (z) {
                                                    return "'" + String.valueOf(this.value) + "'";
                                                }
                                                return String.valueOf(this.value);
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            if (z) {
                return "'" + String.valueOf(this.value) + "'";
            }
            return String.valueOf(this.value);
        }

        long getBoundLength() {
            if (this.isNull) {
                return 0L;
            }
            if (this.isLongData) {
                return this.bindLength;
            }
            int i = this.bufferType;
            if (i != 15 && i != 246) {
                switch (i) {
                    case 0:
                        break;
                    case 1:
                        return 1L;
                    case 2:
                        return 2L;
                    case 3:
                        return 4L;
                    case 4:
                        return 4L;
                    case 5:
                        return 8L;
                    default:
                        switch (i) {
                            case 7:
                                return 11L;
                            case 8:
                                return 8L;
                            default:
                                switch (i) {
                                    case 10:
                                        return 7L;
                                    case 11:
                                        return 9L;
                                    case 12:
                                        return 11L;
                                    default:
                                        switch (i) {
                                            case 253:
                                            case 254:
                                                break;
                                            default:
                                                return 0L;
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            if (this.value instanceof byte[]) {
                return ((byte[]) this.value).length;
            }
            return ((String) this.value).length();
        }
    }

    private void storeTime(Buffer buffer, Time time) throws SQLException {
        buffer.ensureCapacity(9);
        buffer.writeByte((byte) 8);
        buffer.writeByte((byte) 0);
        buffer.writeLong(0L);
        Calendar calendarInstanceForSessionOrNew = getCalendarInstanceForSessionOrNew();
        synchronized (calendarInstanceForSessionOrNew) {
            Date time2 = calendarInstanceForSessionOrNew.getTime();
            try {
                calendarInstanceForSessionOrNew.setTime(time);
                buffer.writeByte((byte) calendarInstanceForSessionOrNew.get(11));
                buffer.writeByte((byte) calendarInstanceForSessionOrNew.get(12));
                buffer.writeByte((byte) calendarInstanceForSessionOrNew.get(13));
                calendarInstanceForSessionOrNew.setTime(time2);
            } catch (Throwable th) {
                calendarInstanceForSessionOrNew.setTime(time2);
                throw th;
            }
        }
    }

    protected static ServerPreparedStatement getInstance(MySQLConnection mySQLConnection, String str, String str2, int i, int i2) throws SQLException {
        if (!Util.isJdbc4()) {
            return new ServerPreparedStatement(mySQLConnection, str, str2, i, i2);
        }
        try {
            return (ServerPreparedStatement) JDBC_4_SPS_CTOR.newInstance(mySQLConnection, str, str2, Integer.valueOf(i), Integer.valueOf(i2));
        } catch (IllegalAccessException e) {
            throw new SQLException(e.toString(), SQLError.SQL_STATE_GENERAL_ERROR);
        } catch (IllegalArgumentException e2) {
            throw new SQLException(e2.toString(), SQLError.SQL_STATE_GENERAL_ERROR);
        } catch (InstantiationException e3) {
            throw new SQLException(e3.toString(), SQLError.SQL_STATE_GENERAL_ERROR);
        } catch (InvocationTargetException e4) {
            Throwable targetException = e4.getTargetException();
            if (targetException instanceof SQLException) {
                throw ((SQLException) targetException);
            }
            throw new SQLException(targetException.toString(), SQLError.SQL_STATE_GENERAL_ERROR);
        }
    }

    protected ServerPreparedStatement(MySQLConnection mySQLConnection, String str, String str2, int i, int i2) throws SQLException {
        String str3;
        super(mySQLConnection, str2);
        this.hasOnDuplicateKeyUpdate = false;
        this.detectedLongParameterSwitch = false;
        this.invalid = false;
        this.sendTypesToServer = false;
        this.stringTypeCode = 254;
        this.isCached = false;
        this.hasCheckedRewrite = false;
        this.canRewrite = false;
        this.locationOfOnDuplicateKeyUpdate = -2;
        checkNullOrEmptyQuery(str);
        this.firstCharOfStmt = StringUtils.firstAlphaCharUc(str, findStartOfStatement(str));
        this.hasOnDuplicateKeyUpdate = this.firstCharOfStmt == 'I' && containsOnDuplicateKeyInString(str);
        if (this.connection.versionMeetsMinimum(5, 0, 0)) {
            this.serverNeedsResetBeforeEachExecution = !this.connection.versionMeetsMinimum(5, 0, 3);
        } else {
            this.serverNeedsResetBeforeEachExecution = !this.connection.versionMeetsMinimum(4, 1, 10);
        }
        this.useAutoSlowLog = this.connection.getAutoSlowLog();
        this.useTrueBoolean = this.connection.versionMeetsMinimum(3, 21, 23);
        String statementComment = this.connection.getStatementComment();
        if (statementComment == null) {
            str3 = str;
        } else {
            str3 = "/* " + statementComment + " */ " + str;
        }
        this.originalSql = str3;
        if (this.connection.versionMeetsMinimum(4, 1, 2)) {
            this.stringTypeCode = 253;
        } else {
            this.stringTypeCode = 254;
        }
        try {
            serverPrepare(str);
            setResultSetType(i);
            setResultSetConcurrency(i2);
            this.parameterTypes = new int[this.parameterCount];
        } catch (SQLException e) {
            realClose(false, true);
            throw e;
        } catch (Exception e2) {
            realClose(false, true);
            SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(e2.toString(), SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
            sQLExceptionCreateSQLException.initCause(e2);
            throw sQLExceptionCreateSQLException;
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void addBatch() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.batchedArgs == null) {
                this.batchedArgs = new ArrayList();
            }
            this.batchedArgs.add(new BatchedBindValues(this.parameterBindings));
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement
    public String asSql(boolean z) throws SQLException {
        PreparedStatement preparedStatement;
        String strAsSql;
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                try {
                    preparedStatement = PreparedStatement.getInstance(this.connection, this.originalSql, this.currentCatalog);
                    try {
                        int i = preparedStatement.parameterCount;
                        int i2 = this.parameterCount;
                        for (int i3 = 0; i3 < i && i3 < i2; i3++) {
                            if (this.parameterBindings[i3] != null) {
                                if (this.parameterBindings[i3].isNull) {
                                    preparedStatement.setNull(i3 + 1, 0);
                                } else {
                                    BindValue bindValue = this.parameterBindings[i3];
                                    int i4 = bindValue.bufferType;
                                    if (i4 != 8) {
                                        switch (i4) {
                                            case 1:
                                                preparedStatement.setByte(i3 + 1, (byte) bindValue.longBinding);
                                                break;
                                            case 2:
                                                preparedStatement.setShort(i3 + 1, (short) bindValue.longBinding);
                                                break;
                                            case 3:
                                                preparedStatement.setInt(i3 + 1, (int) bindValue.longBinding);
                                                break;
                                            case 4:
                                                preparedStatement.setFloat(i3 + 1, bindValue.floatBinding);
                                                break;
                                            case 5:
                                                preparedStatement.setDouble(i3 + 1, bindValue.doubleBinding);
                                                break;
                                            default:
                                                preparedStatement.setObject(i3 + 1, this.parameterBindings[i3].value);
                                                break;
                                        }
                                    } else {
                                        preparedStatement.setLong(i3 + 1, bindValue.longBinding);
                                    }
                                }
                            }
                        }
                        strAsSql = preparedStatement.asSql(z);
                        if (preparedStatement != null) {
                            try {
                                preparedStatement.close();
                            } catch (SQLException unused) {
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (preparedStatement != null) {
                            try {
                                preparedStatement.close();
                            } catch (SQLException unused2) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
                preparedStatement = null;
            }
        }
        return strAsSql;
    }

    @Override // com.mysql.jdbc.StatementImpl
    protected MySQLConnection checkClosed() throws SQLException {
        if (this.invalid) {
            throw this.invalidationException;
        }
        return super.checkClosed();
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void clearParameters() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            clearParametersInternal(true);
        }
    }

    private void clearParametersInternal(boolean z) throws SQLException {
        boolean z2;
        if (this.parameterBindings != null) {
            z2 = false;
            for (int i = 0; i < this.parameterCount; i++) {
                if (this.parameterBindings[i] != null && this.parameterBindings[i].isLongData) {
                    z2 = true;
                }
                this.parameterBindings[i].reset();
            }
        } else {
            z2 = false;
        }
        if (z && z2) {
            serverResetStatement();
            this.detectedLongParameterSwitch = false;
        }
    }

    protected void setClosed(boolean z) {
        this.isClosed = z;
    }

    @Override // com.mysql.jdbc.StatementImpl, java.sql.Statement, java.lang.AutoCloseable
    public void close() throws SQLException {
        MySQLConnection mySQLConnection = this.connection;
        if (mySQLConnection == null) {
            return;
        }
        synchronized (mySQLConnection.getConnectionMutex()) {
            if (this.isCached && isPoolable() && !this.isClosed) {
                clearParameters();
                this.isClosed = true;
                this.connection.recachePreparedStatement(this);
                return;
            }
            realClose(true, true);
        }
    }

    private void dumpCloseForTestcase() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            StringBuilder sb = new StringBuilder();
            this.connection.generateConnectionCommentBlock(sb);
            sb.append("DEALLOCATE PREPARE debug_stmt_");
            sb.append(this.statementId);
            sb.append(";\n");
            this.connection.dumpTestcaseQuery(sb.toString());
        }
    }

    private void dumpExecuteForTestcase() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < this.parameterCount; i++) {
                this.connection.generateConnectionCommentBlock(sb);
                sb.append("SET @debug_stmt_param");
                sb.append(this.statementId);
                sb.append("_");
                sb.append(i);
                sb.append("=");
                if (this.parameterBindings[i].isNull) {
                    sb.append("NULL");
                } else {
                    sb.append(this.parameterBindings[i].toString(true));
                }
                sb.append(";\n");
            }
            this.connection.generateConnectionCommentBlock(sb);
            sb.append("EXECUTE debug_stmt_");
            sb.append(this.statementId);
            if (this.parameterCount > 0) {
                sb.append(" USING ");
                for (int i2 = 0; i2 < this.parameterCount; i2++) {
                    if (i2 > 0) {
                        sb.append(", ");
                    }
                    sb.append("@debug_stmt_param");
                    sb.append(this.statementId);
                    sb.append("_");
                    sb.append(i2);
                }
            }
            sb.append(";\n");
            this.connection.dumpTestcaseQuery(sb.toString());
        }
    }

    private void dumpPrepareForTestcase() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            StringBuilder sb = new StringBuilder(this.originalSql.length() + 64);
            this.connection.generateConnectionCommentBlock(sb);
            sb.append("PREPARE debug_stmt_");
            sb.append(this.statementId);
            sb.append(" FROM \"");
            sb.append(this.originalSql);
            sb.append("\";\n");
            this.connection.dumpTestcaseQuery(sb.toString());
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement
    protected long[] executeBatchSerially(int i) throws SQLException {
        long[] jArr;
        long j;
        StatementImpl.CancelTask cancelTask;
        BindValue[] bindValueArr;
        synchronized (checkClosed().getConnectionMutex()) {
            MySQLConnection mySQLConnection = this.connection;
            if (mySQLConnection.isReadOnly()) {
                throw SQLError.createSQLException(Messages.getString("ServerPreparedStatement.2") + Messages.getString("ServerPreparedStatement.3"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
            }
            clearWarnings();
            BindValue[] bindValueArr2 = this.parameterBindings;
            try {
                jArr = null;
                if (this.batchedArgs != null) {
                    int size = this.batchedArgs.size();
                    long[] jArr2 = new long[size];
                    if (this.retrieveGeneratedKeys) {
                        this.batchedGeneratedKeys = new ArrayList<>(size);
                    }
                    int i2 = 0;
                    while (true) {
                        j = -3;
                        if (i2 < size) {
                            jArr2[i2] = -3;
                            i2++;
                        } else {
                            try {
                                break;
                            } catch (Throwable th) {
                                th = th;
                                cancelTask = null;
                            }
                        }
                    }
                    if (mySQLConnection.getEnableQueryTimeouts() && i != 0 && mySQLConnection.versionMeetsMinimum(5, 0, 0)) {
                        cancelTask = new StatementImpl.CancelTask(this);
                        try {
                            mySQLConnection.getCancelTimer().schedule(cancelTask, i);
                        } catch (Throwable th2) {
                            th = th2;
                            if (cancelTask != null) {
                                cancelTask.cancel();
                                mySQLConnection.getCancelTimer().purge();
                            }
                            resetCancelledState();
                            throw th;
                        }
                    } else {
                        cancelTask = null;
                    }
                    SQLException e = null;
                    BindValue[] bindValueArr3 = null;
                    for (int i3 = 0; i3 < size; i3++) {
                        Object obj = this.batchedArgs.get(i3);
                        try {
                            if (obj instanceof String) {
                                try {
                                    jArr2[i3] = executeUpdateInternal((String) obj, true, this.retrieveGeneratedKeys);
                                    getBatchedGeneratedKeys((this.results.getFirstCharOfQuery() == 'I' && containsOnDuplicateKeyInString((String) obj)) ? 1 : 0);
                                    bindValueArr = bindValueArr3;
                                    bindValueArr3 = bindValueArr;
                                    j = -3;
                                } catch (SQLException e2) {
                                    e = e2;
                                    j = -3;
                                    jArr2[i3] = j;
                                    if (this.continueBatchOnError) {
                                    }
                                    long[] jArr3 = new long[i3];
                                    System.arraycopy(jArr2, 0, jArr3, 0, i3);
                                    throw SQLError.createBatchUpdateException(e, jArr3, getExceptionInterceptor());
                                }
                            } else {
                                this.parameterBindings = ((BatchedBindValues) obj).batchedParameterValues;
                                if (bindValueArr3 != null) {
                                    for (int i4 = 0; i4 < this.parameterBindings.length; i4++) {
                                        if (this.parameterBindings[i4].bufferType != bindValueArr3[i4].bufferType) {
                                            this.sendTypesToServer = true;
                                            break;
                                        }
                                    }
                                }
                                try {
                                    jArr2[i3] = executeUpdateInternal(false, true);
                                    bindValueArr = this.parameterBindings;
                                    try {
                                        getBatchedGeneratedKeys(containsOnDuplicateKeyUpdateInSQL() ? 1 : 0);
                                        bindValueArr3 = bindValueArr;
                                        j = -3;
                                    } catch (SQLException e3) {
                                        e = e3;
                                        bindValueArr3 = bindValueArr;
                                        j = -3;
                                        jArr2[i3] = j;
                                        if (this.continueBatchOnError || (e instanceof MySQLTimeoutException) || (e instanceof MySQLStatementCancelledException) || hasDeadlockOrTimeoutRolledBackTx(e)) {
                                            long[] jArr4 = new long[i3];
                                            System.arraycopy(jArr2, 0, jArr4, 0, i3);
                                            throw SQLError.createBatchUpdateException(e, jArr4, getExceptionInterceptor());
                                        }
                                    }
                                } catch (Throwable th3) {
                                    bindValueArr = this.parameterBindings;
                                    throw th3;
                                }
                            }
                        } catch (SQLException e4) {
                            e = e4;
                        }
                    }
                    if (cancelTask != null) {
                        cancelTask.cancel();
                        mySQLConnection.getCancelTimer().purge();
                    }
                    resetCancelledState();
                    if (e != null) {
                        throw SQLError.createBatchUpdateException(e, jArr2, getExceptionInterceptor());
                    }
                    jArr = jArr2;
                }
                if (jArr == null) {
                    jArr = new long[0];
                }
                this.parameterBindings = bindValueArr2;
                this.sendTypesToServer = true;
                clearBatch();
            } catch (Throwable th4) {
                this.parameterBindings = bindValueArr2;
                this.sendTypesToServer = true;
                clearBatch();
                throw th4;
            }
        }
        return jArr;
    }

    @Override // com.mysql.jdbc.PreparedStatement
    protected ResultSetInternalMethods executeInternal(int i, Buffer buffer, boolean z, boolean z2, Field[] fieldArr, boolean z3) throws SQLException {
        ResultSetInternalMethods resultSetInternalMethodsServerExecute;
        synchronized (checkClosed().getConnectionMutex()) {
            this.numberOfExecutions++;
            try {
                resultSetInternalMethodsServerExecute = serverExecute(i, z, fieldArr);
            } catch (SQLException e) {
                if (this.connection.getEnablePacketDebug()) {
                    this.connection.getIO().dumpPacketRingBuffer();
                }
                if (this.connection.getDumpQueriesOnException()) {
                    String string = toString();
                    StringBuilder sb = new StringBuilder(string.length() + 32);
                    sb.append("\n\nQuery being executed when exception was thrown:\n");
                    sb.append(string);
                    sb.append("\n\n");
                    throw ConnectionImpl.appendMessageToException(e, sb.toString(), getExceptionInterceptor());
                }
                throw e;
            } catch (Exception e2) {
                if (this.connection.getEnablePacketDebug()) {
                    this.connection.getIO().dumpPacketRingBuffer();
                }
                SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(e2.toString(), SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
                if (this.connection.getDumpQueriesOnException()) {
                    String string2 = toString();
                    StringBuilder sb2 = new StringBuilder(string2.length() + 32);
                    sb2.append("\n\nQuery being executed when exception was thrown:\n");
                    sb2.append(string2);
                    sb2.append("\n\n");
                    sQLExceptionCreateSQLException = ConnectionImpl.appendMessageToException(sQLExceptionCreateSQLException, sb2.toString(), getExceptionInterceptor());
                }
                sQLExceptionCreateSQLException.initCause(e2);
                throw sQLExceptionCreateSQLException;
            }
        }
        return resultSetInternalMethodsServerExecute;
    }

    protected BindValue getBinding(int i, boolean z) throws SQLException {
        BindValue bindValue;
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.parameterBindings.length == 0) {
                throw SQLError.createSQLException(Messages.getString("ServerPreparedStatement.8"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
            }
            int i2 = i - 1;
            if (i2 < 0 || i2 >= this.parameterBindings.length) {
                throw SQLError.createSQLException(Messages.getString("ServerPreparedStatement.9") + (i2 + 1) + Messages.getString("ServerPreparedStatement.10") + this.parameterBindings.length, SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
            }
            if (this.parameterBindings[i2] == null) {
                this.parameterBindings[i2] = new BindValue();
            } else if (this.parameterBindings[i2].isLongData && !z) {
                this.detectedLongParameterSwitch = true;
            }
            bindValue = this.parameterBindings[i2];
        }
        return bindValue;
    }

    public BindValue[] getParameterBindValues() {
        return this.parameterBindings;
    }

    byte[] getBytes(int i) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            BindValue binding = getBinding(i, false);
            if (binding.isNull) {
                return null;
            }
            if (binding.isLongData) {
                throw SQLError.createSQLFeatureNotSupportedException();
            }
            if (this.outByteBuffer == null) {
                this.outByteBuffer = new Buffer(this.connection.getNetBufferLength());
            }
            this.outByteBuffer.clear();
            int position = this.outByteBuffer.getPosition();
            storeBinding(this.outByteBuffer, binding, this.connection.getIO());
            int position2 = this.outByteBuffer.getPosition() - position;
            byte[] bArr = new byte[position2];
            System.arraycopy(this.outByteBuffer.getByteBuffer(), position, bArr, 0, position2);
            return bArr;
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public java.sql.ResultSetMetaData getMetaData() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.resultFields == null) {
                return null;
            }
            return new ResultSetMetaData(this.resultFields, this.connection.getUseOldAliasMetadataBehavior(), this.connection.getYearIsDateType(), getExceptionInterceptor());
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public ParameterMetaData getParameterMetaData() throws SQLException {
        MysqlParameterMetadata mysqlParameterMetadata;
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.parameterMetaData == null) {
                this.parameterMetaData = new MysqlParameterMetadata(this.parameterFields, this.parameterCount, getExceptionInterceptor());
            }
            mysqlParameterMetadata = this.parameterMetaData;
        }
        return mysqlParameterMetadata;
    }

    @Override // com.mysql.jdbc.PreparedStatement
    boolean isNull(int i) {
        throw new IllegalArgumentException(Messages.getString("ServerPreparedStatement.7"));
    }

    @Override // com.mysql.jdbc.PreparedStatement, com.mysql.jdbc.StatementImpl
    protected void realClose(boolean z, boolean z2) throws SQLException {
        SQLException e;
        MySQLConnection mySQLConnection = this.connection;
        if (mySQLConnection == null) {
            return;
        }
        synchronized (mySQLConnection.getConnectionMutex()) {
            if (this.connection != null) {
                if (this.connection.getAutoGenerateTestcaseScript()) {
                    dumpCloseForTestcase();
                }
                if (!z || this.connection.isClosed()) {
                    e = null;
                } else {
                    synchronized (this.connection.getConnectionMutex()) {
                        try {
                            MysqlIO io2 = this.connection.getIO();
                            Buffer sharedSendPacket = io2.getSharedSendPacket();
                            sharedSendPacket.writeByte((byte) 25);
                            sharedSendPacket.writeLong(this.serverStatementId);
                            io2.sendCommand(25, null, sharedSendPacket, true, null, 0);
                            e = null;
                        } catch (SQLException e2) {
                            e = e2;
                        }
                    }
                }
                if (this.isCached) {
                    this.connection.decachePreparedStatement(this);
                }
                super.realClose(z, z2);
                clearParametersInternal(false);
                this.parameterBindings = null;
                this.parameterFields = null;
                this.resultFields = null;
                if (e != null) {
                    throw e;
                }
            }
        }
    }

    protected void rePrepare() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            this.invalidationException = null;
            try {
                try {
                    serverPrepare(this.originalSql);
                } catch (Exception e) {
                    this.invalidationException = SQLError.createSQLException(e.toString(), SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
                    this.invalidationException.initCause(e);
                }
            } catch (SQLException e2) {
                this.invalidationException = e2;
            }
            if (this.invalidationException != null) {
                this.invalid = true;
                this.parameterBindings = null;
                this.parameterFields = null;
                this.resultFields = null;
                if (this.results != null) {
                    try {
                        this.results.close();
                    } catch (Exception unused) {
                    }
                }
                if (this.generatedKeysResults != null) {
                    try {
                        this.generatedKeysResults.close();
                    } catch (Exception unused2) {
                    }
                }
                try {
                    closeAllOpenResults();
                } catch (Exception unused3) {
                }
                if (this.connection != null && !this.connection.getDontTrackOpenResources()) {
                    this.connection.unregisterStatement(this);
                }
            }
        }
    }

    @Override // com.mysql.jdbc.StatementImpl
    boolean isCursorRequired() throws SQLException {
        return this.resultFields != null && this.connection.isCursorFetchEnabled() && getResultSetType() == 1003 && getResultSetConcurrency() == 1007 && getFetchSize() > 0;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x03f7 */
    /* JADX WARN: Code duplicated, block: B:113:0x01ff A[Catch: all -> 0x03f9, SQLException -> 0x03fb, TRY_ENTER, TRY_LEAVE, TryCatch #12 {SQLException -> 0x03fb, all -> 0x03f9, blocks: (B:102:0x01e5, B:113:0x01ff), top: B:226:0x01e5 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x0207 A[Catch: all -> 0x01f5, SQLException -> 0x01fa, TRY_ENTER, TryCatch #13 {SQLException -> 0x01fa, all -> 0x01f5, blocks: (B:105:0x01ed, B:116:0x0207, B:119:0x0218, B:120:0x021a), top: B:224:0x01ed }] */
    /* JADX WARN: Code duplicated, block: B:118:0x0217  */
    /* JADX WARN: Code duplicated, block: B:119:0x0218 A[Catch: all -> 0x01f5, SQLException -> 0x01fa, TryCatch #13 {SQLException -> 0x01fa, all -> 0x01f5, blocks: (B:105:0x01ed, B:116:0x0207, B:119:0x0218, B:120:0x021a), top: B:224:0x01ed }] */
    /* JADX WARN: Code duplicated, block: B:121:0x021b  */
    /* JADX WARN: Code duplicated, block: B:126:0x0224 A[Catch: all -> 0x03f1, TryCatch #7 {all -> 0x03f1, blocks: (B:124:0x0220, B:126:0x0224, B:128:0x0228, B:130:0x0233, B:131:0x0236, B:129:0x022e, B:132:0x0237), top: B:217:0x0220 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x0228 A[Catch: all -> 0x03f1, TryCatch #7 {all -> 0x03f1, blocks: (B:124:0x0220, B:126:0x0224, B:128:0x0228, B:130:0x0233, B:131:0x0236, B:129:0x022e, B:132:0x0237), top: B:217:0x0220 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x022e A[Catch: all -> 0x03f1, TryCatch #7 {all -> 0x03f1, blocks: (B:124:0x0220, B:126:0x0224, B:128:0x0228, B:130:0x0233, B:131:0x0236, B:129:0x022e, B:132:0x0237), top: B:217:0x0220 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x0237 A[Catch: all -> 0x03f1, DONT_GENERATE, TRY_LEAVE, TryCatch #7 {all -> 0x03f1, blocks: (B:124:0x0220, B:126:0x0224, B:128:0x0228, B:130:0x0233, B:131:0x0236, B:129:0x022e, B:132:0x0237), top: B:217:0x0220 }] */
    /* JADX WARN: Code duplicated, block: B:137:0x0240  */
    /* JADX WARN: Code duplicated, block: B:139:0x0245 A[Catch: all -> 0x0409, SQLException -> 0x040c, TRY_ENTER, TryCatch #14 {SQLException -> 0x040c, all -> 0x0409, blocks: (B:79:0x018d, B:86:0x019f, B:88:0x01a7, B:90:0x01ab, B:92:0x01b4, B:122:0x021d, B:123:0x021f, B:152:0x02ef, B:154:0x02f8, B:155:0x033c, B:157:0x0362, B:161:0x0372, B:163:0x0376, B:165:0x03b4, B:167:0x03bc, B:169:0x03c7, B:171:0x03cb, B:139:0x0245, B:141:0x0249, B:149:0x026b, B:151:0x02ea, B:146:0x025c, B:85:0x019a), top: B:215:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:141:0x0249 A[Catch: all -> 0x0409, SQLException -> 0x040c, TryCatch #14 {SQLException -> 0x040c, all -> 0x0409, blocks: (B:79:0x018d, B:86:0x019f, B:88:0x01a7, B:90:0x01ab, B:92:0x01b4, B:122:0x021d, B:123:0x021f, B:152:0x02ef, B:154:0x02f8, B:155:0x033c, B:157:0x0362, B:161:0x0372, B:163:0x0376, B:165:0x03b4, B:167:0x03bc, B:169:0x03c7, B:171:0x03cb, B:139:0x0245, B:141:0x0249, B:149:0x026b, B:151:0x02ea, B:146:0x025c, B:85:0x019a), top: B:215:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:143:0x0254  */
    /* JADX WARN: Code duplicated, block: B:144:0x0257  */
    /* JADX WARN: Code duplicated, block: B:146:0x025c A[Catch: all -> 0x0409, SQLException -> 0x040c, TryCatch #14 {SQLException -> 0x040c, all -> 0x0409, blocks: (B:79:0x018d, B:86:0x019f, B:88:0x01a7, B:90:0x01ab, B:92:0x01b4, B:122:0x021d, B:123:0x021f, B:152:0x02ef, B:154:0x02f8, B:155:0x033c, B:157:0x0362, B:161:0x0372, B:163:0x0376, B:165:0x03b4, B:167:0x03bc, B:169:0x03c7, B:171:0x03cb, B:139:0x0245, B:141:0x0249, B:149:0x026b, B:151:0x02ea, B:146:0x025c, B:85:0x019a), top: B:215:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:147:0x0268  */
    /* JADX WARN: Code duplicated, block: B:149:0x026b A[Catch: all -> 0x0409, SQLException -> 0x040c, TryCatch #14 {SQLException -> 0x040c, all -> 0x0409, blocks: (B:79:0x018d, B:86:0x019f, B:88:0x01a7, B:90:0x01ab, B:92:0x01b4, B:122:0x021d, B:123:0x021f, B:152:0x02ef, B:154:0x02f8, B:155:0x033c, B:157:0x0362, B:161:0x0372, B:163:0x0376, B:165:0x03b4, B:167:0x03bc, B:169:0x03c7, B:171:0x03cb, B:139:0x0245, B:141:0x0249, B:149:0x026b, B:151:0x02ea, B:146:0x025c, B:85:0x019a), top: B:215:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:151:0x02ea A[Catch: all -> 0x0409, SQLException -> 0x040c, TryCatch #14 {SQLException -> 0x040c, all -> 0x0409, blocks: (B:79:0x018d, B:86:0x019f, B:88:0x01a7, B:90:0x01ab, B:92:0x01b4, B:122:0x021d, B:123:0x021f, B:152:0x02ef, B:154:0x02f8, B:155:0x033c, B:157:0x0362, B:161:0x0372, B:163:0x0376, B:165:0x03b4, B:167:0x03bc, B:169:0x03c7, B:171:0x03cb, B:139:0x0245, B:141:0x0249, B:149:0x026b, B:151:0x02ea, B:146:0x025c, B:85:0x019a), top: B:215:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:154:0x02f8 A[Catch: all -> 0x0409, SQLException -> 0x040c, TryCatch #14 {SQLException -> 0x040c, all -> 0x0409, blocks: (B:79:0x018d, B:86:0x019f, B:88:0x01a7, B:90:0x01ab, B:92:0x01b4, B:122:0x021d, B:123:0x021f, B:152:0x02ef, B:154:0x02f8, B:155:0x033c, B:157:0x0362, B:161:0x0372, B:163:0x0376, B:165:0x03b4, B:167:0x03bc, B:169:0x03c7, B:171:0x03cb, B:139:0x0245, B:141:0x0249, B:149:0x026b, B:151:0x02ea, B:146:0x025c, B:85:0x019a), top: B:215:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:160:0x0371  */
    /* JADX WARN: Code duplicated, block: B:163:0x0376 A[Catch: all -> 0x0409, SQLException -> 0x040c, TryCatch #14 {SQLException -> 0x040c, all -> 0x0409, blocks: (B:79:0x018d, B:86:0x019f, B:88:0x01a7, B:90:0x01ab, B:92:0x01b4, B:122:0x021d, B:123:0x021f, B:152:0x02ef, B:154:0x02f8, B:155:0x033c, B:157:0x0362, B:161:0x0372, B:163:0x0376, B:165:0x03b4, B:167:0x03bc, B:169:0x03c7, B:171:0x03cb, B:139:0x0245, B:141:0x0249, B:149:0x026b, B:151:0x02ea, B:146:0x025c, B:85:0x019a), top: B:215:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:175:0x03d9 A[Catch: SQLException -> 0x03f5, all -> 0x0420, TRY_LEAVE, TryCatch #0 {all -> 0x0420, blocks: (B:173:0x03cf, B:175:0x03d9, B:203:0x040e, B:205:0x0414, B:206:0x041f, B:184:0x03f4), top: B:215:0x018d }] */
    /* JADX WARN: Code duplicated, block: B:178:0x03e3 A[Catch: all -> 0x0435, TryCatch #10 {, blocks: (B:4:0x000b, B:6:0x0018, B:8:0x0020, B:10:0x0022, B:13:0x002b, B:15:0x0030, B:18:0x003a, B:21:0x0045, B:22:0x006a, B:23:0x006b, B:24:0x0073, B:25:0x0076, B:27:0x007a, B:29:0x007e, B:31:0x0086, B:32:0x0089, B:33:0x00b2, B:35:0x00b4, B:37:0x00b8, B:39:0x00c0, B:40:0x00c7, B:41:0x00ca, B:43:0x00d2, B:44:0x00d5, B:46:0x00f0, B:48:0x00f6, B:50:0x00fd, B:49:0x00fa, B:51:0x0102, B:53:0x010f, B:54:0x0115, B:57:0x0121, B:59:0x0125, B:61:0x0132, B:63:0x0136, B:65:0x013e, B:67:0x0146, B:68:0x014e, B:69:0x015a, B:70:0x015d, B:77:0x0188, B:176:0x03dc, B:178:0x03e3, B:179:0x03ef, B:208:0x0421, B:210:0x0428, B:211:0x0434, B:76:0x0182), top: B:218:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:210:0x0428 A[Catch: all -> 0x0435, TryCatch #10 {, blocks: (B:4:0x000b, B:6:0x0018, B:8:0x0020, B:10:0x0022, B:13:0x002b, B:15:0x0030, B:18:0x003a, B:21:0x0045, B:22:0x006a, B:23:0x006b, B:24:0x0073, B:25:0x0076, B:27:0x007a, B:29:0x007e, B:31:0x0086, B:32:0x0089, B:33:0x00b2, B:35:0x00b4, B:37:0x00b8, B:39:0x00c0, B:40:0x00c7, B:41:0x00ca, B:43:0x00d2, B:44:0x00d5, B:46:0x00f0, B:48:0x00f6, B:50:0x00fd, B:49:0x00fa, B:51:0x0102, B:53:0x010f, B:54:0x0115, B:57:0x0121, B:59:0x0125, B:61:0x0132, B:63:0x0136, B:65:0x013e, B:67:0x0146, B:68:0x014e, B:69:0x015a, B:70:0x015d, B:77:0x0188, B:176:0x03dc, B:178:0x03e3, B:179:0x03ef, B:208:0x0421, B:210:0x0428, B:211:0x0434, B:76:0x0182), top: B:218:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:217:0x0220 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.mysql.jdbc.ResultSetInternalMethods serverExecute(int r42, boolean r43, com.mysql.jdbc.Field[] r44) throws java.sql.SQLException {
        /*
            Method dump skipped, instruction units count: 1080
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mysql.jdbc.ServerPreparedStatement.serverExecute(int, boolean, com.mysql.jdbc.Field[]):com.mysql.jdbc.ResultSetInternalMethods");
    }

    private void serverLongData(int i, BindValue bindValue) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            MysqlIO io2 = this.connection.getIO();
            Buffer sharedSendPacket = io2.getSharedSendPacket();
            Object obj = bindValue.value;
            if (obj instanceof byte[]) {
                sharedSendPacket.clear();
                sharedSendPacket.writeByte((byte) 24);
                sharedSendPacket.writeLong(this.serverStatementId);
                sharedSendPacket.writeInt(i);
                sharedSendPacket.writeBytesNoNull((byte[]) bindValue.value);
                io2.sendCommand(24, null, sharedSendPacket, true, null, 0);
            } else if (obj instanceof InputStream) {
                storeStream(io2, i, sharedSendPacket, (InputStream) obj);
            } else if (obj instanceof java.sql.Blob) {
                storeStream(io2, i, sharedSendPacket, ((java.sql.Blob) obj).getBinaryStream());
            } else if (obj instanceof Reader) {
                storeReader(io2, i, sharedSendPacket, (Reader) obj);
            } else {
                throw SQLError.createSQLException(Messages.getString("ServerPreparedStatement.18") + obj.getClass().getName() + "'", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
            }
        }
    }

    private void serverPrepare(String str) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            MysqlIO io2 = this.connection.getIO();
            if (this.connection.getAutoGenerateTestcaseScript()) {
                dumpPrepareForTestcase();
            }
            try {
                try {
                    if (StringUtils.startsWithIgnoreCaseAndWs(str, "LOAD DATA")) {
                        this.isLoadDataQuery = true;
                    } else {
                        this.isLoadDataQuery = false;
                    }
                    long jCurrentTimeMillis = this.connection.getProfileSql() ? System.currentTimeMillis() : 0L;
                    String encoding = this.connection.getEncoding();
                    Buffer bufferSendCommand = io2.sendCommand(22, str, null, false, (this.isLoadDataQuery || !this.connection.getUseUnicode() || encoding == null) ? null : encoding, 0);
                    if (this.connection.versionMeetsMinimum(4, 1, 1)) {
                        bufferSendCommand.setPosition(1);
                    } else {
                        bufferSendCommand.setPosition(0);
                    }
                    this.serverStatementId = bufferSendCommand.readLong();
                    this.fieldCount = bufferSendCommand.readInt();
                    this.parameterCount = bufferSendCommand.readInt();
                    this.parameterBindings = new BindValue[this.parameterCount];
                    for (int i = 0; i < this.parameterCount; i++) {
                        this.parameterBindings[i] = new BindValue();
                    }
                    this.connection.incrementNumberOfPrepares();
                    if (this.profileSQL) {
                        this.eventSink.consumeEvent(new ProfilerEvent((byte) 2, "", this.currentCatalog, this.connectionId, this.statementId, -1, System.currentTimeMillis(), io2.getCurrentTimeNanosOrMillis() - jCurrentTimeMillis, io2.getQueryTimingUnits(), null, LogUtils.findCallingClassAndMethod(new Throwable()), truncateQueryToLog(str)));
                    }
                    boolean z = !io2.isEOFDeprecated();
                    if (this.parameterCount > 0 && this.connection.versionMeetsMinimum(4, 1, 2) && !io2.isVersion(5, 0, 0)) {
                        this.parameterFields = new Field[this.parameterCount];
                        for (int i2 = 0; i2 < this.parameterCount; i2++) {
                            this.parameterFields[i2] = io2.unpackField(io2.readPacket(), false);
                        }
                        if (z) {
                            io2.readPacket();
                        }
                    }
                    if (this.fieldCount > 0) {
                        this.resultFields = new Field[this.fieldCount];
                        for (int i3 = 0; i3 < this.fieldCount; i3++) {
                            this.resultFields[i3] = io2.unpackField(io2.readPacket(), false);
                        }
                        if (z) {
                            io2.readPacket();
                        }
                    }
                    this.connection.getIO().clearInputStream();
                } catch (SQLException e) {
                    if (this.connection.getDumpQueriesOnException()) {
                        StringBuilder sb = new StringBuilder(this.originalSql.length() + 32);
                        sb.append("\n\nQuery being prepared when exception was thrown:\n\n");
                        sb.append(this.originalSql);
                        throw ConnectionImpl.appendMessageToException(e, sb.toString(), getExceptionInterceptor());
                    }
                }
            } catch (Throwable th) {
                this.connection.getIO().clearInputStream();
                throw th;
            }
        }
    }

    private String truncateQueryToLog(String str) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (str.length() > this.connection.getMaxQuerySizeToLog()) {
                StringBuilder sb = new StringBuilder(this.connection.getMaxQuerySizeToLog() + 12);
                sb.append(str.substring(0, this.connection.getMaxQuerySizeToLog()));
                sb.append(Messages.getString("MysqlIO.25"));
                str = sb.toString();
            }
        }
        return str;
    }

    private void serverResetStatement() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            MysqlIO io2 = this.connection.getIO();
            Buffer sharedSendPacket = io2.getSharedSendPacket();
            sharedSendPacket.clear();
            sharedSendPacket.writeByte((byte) 26);
            sharedSendPacket.writeLong(this.serverStatementId);
            try {
                try {
                    io2.sendCommand(26, null, sharedSendPacket, !this.connection.versionMeetsMinimum(4, 1, 2), null, 0);
                    io2.clearInputStream();
                } catch (SQLException e) {
                    throw e;
                } catch (Exception e2) {
                    SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(e2.toString(), SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
                    sQLExceptionCreateSQLException.initCause(e2);
                    throw sQLExceptionCreateSQLException;
                }
            } catch (Throwable th) {
                io2.clearInputStream();
                throw th;
            }
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setArray(int i, Array array) throws SQLException {
        throw SQLError.createSQLFeatureNotSupportedException();
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setAsciiStream(int i, InputStream inputStream, int i2) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (inputStream == null) {
                    setNull(i, -2);
                } else {
                    BindValue binding = getBinding(i, true);
                    resetToType(binding, MysqlDefs.FIELD_TYPE_BLOB);
                    binding.value = inputStream;
                    binding.isLongData = true;
                    if (this.connection.getUseStreamLengthsInPrepStmts()) {
                        binding.bindLength = i2;
                    } else {
                        binding.bindLength = -1L;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setBigDecimal(int i, BigDecimal bigDecimal) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (bigDecimal == null) {
                    setNull(i, 3);
                } else {
                    BindValue binding = getBinding(i, false);
                    if (this.connection.versionMeetsMinimum(5, 0, 3)) {
                        resetToType(binding, 246);
                    } else {
                        resetToType(binding, this.stringTypeCode);
                    }
                    binding.value = StringUtils.fixDecimalExponent(StringUtils.consistentToString(bigDecimal));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setBinaryStream(int i, InputStream inputStream, int i2) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (inputStream == null) {
                    setNull(i, -2);
                } else {
                    BindValue binding = getBinding(i, true);
                    resetToType(binding, MysqlDefs.FIELD_TYPE_BLOB);
                    binding.value = inputStream;
                    binding.isLongData = true;
                    if (this.connection.getUseStreamLengthsInPrepStmts()) {
                        binding.bindLength = i2;
                    } else {
                        binding.bindLength = -1L;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setBlob(int i, java.sql.Blob blob) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (blob == null) {
                    setNull(i, -2);
                } else {
                    BindValue binding = getBinding(i, true);
                    resetToType(binding, MysqlDefs.FIELD_TYPE_BLOB);
                    binding.value = blob;
                    binding.isLongData = true;
                    if (this.connection.getUseStreamLengthsInPrepStmts()) {
                        binding.bindLength = blob.length();
                    } else {
                        binding.bindLength = -1L;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setBoolean(int i, boolean z) throws SQLException {
        setByte(i, z ? (byte) 1 : (byte) 0);
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setByte(int i, byte b) throws SQLException {
        checkClosed();
        BindValue binding = getBinding(i, false);
        resetToType(binding, 1);
        binding.longBinding = b;
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setBytes(int i, byte[] bArr) throws SQLException {
        checkClosed();
        if (bArr == null) {
            setNull(i, -2);
            return;
        }
        BindValue binding = getBinding(i, false);
        resetToType(binding, 253);
        binding.value = bArr;
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setCharacterStream(int i, Reader reader, int i2) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (reader == null) {
                    setNull(i, -2);
                } else {
                    BindValue binding = getBinding(i, true);
                    resetToType(binding, MysqlDefs.FIELD_TYPE_BLOB);
                    binding.value = reader;
                    binding.isLongData = true;
                    if (this.connection.getUseStreamLengthsInPrepStmts()) {
                        binding.bindLength = i2;
                    } else {
                        binding.bindLength = -1L;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setClob(int i, java.sql.Clob clob) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (clob == null) {
                    setNull(i, -2);
                } else {
                    BindValue binding = getBinding(i, true);
                    resetToType(binding, MysqlDefs.FIELD_TYPE_BLOB);
                    binding.value = clob.getCharacterStream();
                    binding.isLongData = true;
                    if (this.connection.getUseStreamLengthsInPrepStmts()) {
                        binding.bindLength = clob.length();
                    } else {
                        binding.bindLength = -1L;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setDate(int i, java.sql.Date date) throws SQLException {
        setDate(i, date, null);
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setDate(int i, java.sql.Date date, Calendar calendar) throws SQLException {
        if (date == null) {
            setNull(i, 91);
            return;
        }
        BindValue binding = getBinding(i, false);
        resetToType(binding, 10);
        binding.value = date;
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setDouble(int i, double d) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.connection.getAllowNanAndInf() && (d == Double.POSITIVE_INFINITY || d == Double.NEGATIVE_INFINITY || Double.isNaN(d))) {
                throw SQLError.createSQLException("'" + d + "' is not a valid numeric or approximate numeric value", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
            }
            BindValue binding = getBinding(i, false);
            resetToType(binding, 5);
            binding.doubleBinding = d;
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setFloat(int i, float f) throws SQLException {
        checkClosed();
        BindValue binding = getBinding(i, false);
        resetToType(binding, 4);
        binding.floatBinding = f;
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setInt(int i, int i2) throws SQLException {
        checkClosed();
        BindValue binding = getBinding(i, false);
        resetToType(binding, 3);
        binding.longBinding = i2;
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setLong(int i, long j) throws SQLException {
        checkClosed();
        BindValue binding = getBinding(i, false);
        resetToType(binding, 8);
        binding.longBinding = j;
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setNull(int i, int i2) throws SQLException {
        checkClosed();
        BindValue binding = getBinding(i, false);
        resetToType(binding, 6);
        binding.isNull = true;
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setNull(int i, int i2, String str) throws SQLException {
        checkClosed();
        BindValue binding = getBinding(i, false);
        resetToType(binding, 6);
        binding.isNull = true;
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setRef(int i, Ref ref) throws SQLException {
        throw SQLError.createSQLFeatureNotSupportedException();
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setShort(int i, short s) throws SQLException {
        checkClosed();
        BindValue binding = getBinding(i, false);
        resetToType(binding, 2);
        binding.longBinding = s;
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setString(int i, String str) throws SQLException {
        checkClosed();
        if (str == null) {
            setNull(i, 1);
            return;
        }
        BindValue binding = getBinding(i, false);
        resetToType(binding, this.stringTypeCode);
        binding.value = str;
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setTime(int i, Time time) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            setTimeInternal(i, time, null, this.connection.getDefaultTimeZone(), false);
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setTime(int i, Time time, Calendar calendar) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            setTimeInternal(i, time, calendar, calendar.getTimeZone(), true);
        }
    }

    private void setTimeInternal(int i, Time time, Calendar calendar, TimeZone timeZone, boolean z) throws SQLException {
        if (time == null) {
            setNull(i, 92);
            return;
        }
        BindValue binding = getBinding(i, false);
        resetToType(binding, 11);
        if (!this.useLegacyDatetimeCode) {
            binding.value = time;
        } else {
            binding.value = TimeUtil.changeTimezone(this.connection, getCalendarInstanceForSessionOrNew(), calendar, time, timeZone, this.connection.getServerTimezoneTZ(), z);
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setTimestamp(int i, Timestamp timestamp) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            setTimestampInternal(i, timestamp, null, this.connection.getDefaultTimeZone(), false);
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setTimestamp(int i, Timestamp timestamp, Calendar calendar) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            setTimestampInternal(i, timestamp, calendar, calendar.getTimeZone(), true);
        }
    }

    private void setTimestampInternal(int i, Timestamp timestamp, Calendar calendar, TimeZone timeZone, boolean z) throws SQLException {
        if (timestamp == null) {
            setNull(i, 93);
            return;
        }
        BindValue binding = getBinding(i, false);
        resetToType(binding, 12);
        if (!this.sendFractionalSeconds) {
            timestamp = TimeUtil.truncateFractionalSeconds(timestamp);
        }
        Timestamp timestamp2 = timestamp;
        if (!this.useLegacyDatetimeCode) {
            binding.value = timestamp2;
        } else {
            binding.value = TimeUtil.changeTimezone(this.connection, this.connection.getUseJDBCCompliantTimezoneShift() ? this.connection.getUtcCalendar() : getCalendarInstanceForSessionOrNew(), calendar, timestamp2, timeZone, this.connection.getServerTimezoneTZ(), z);
        }
    }

    protected void resetToType(BindValue bindValue, int i) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            bindValue.reset();
            if ((i != 6 || bindValue.bufferType == 0) && bindValue.bufferType != i) {
                this.sendTypesToServer = true;
                bindValue.bufferType = i;
            }
            bindValue.isSet = true;
            bindValue.boundBeforeExecutionNum = this.numberOfExecutions;
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    @Deprecated
    public void setUnicodeStream(int i, InputStream inputStream, int i2) throws SQLException {
        checkClosed();
        throw SQLError.createSQLFeatureNotSupportedException();
    }

    @Override // com.mysql.jdbc.PreparedStatement, java.sql.PreparedStatement
    public void setURL(int i, URL url) throws SQLException {
        checkClosed();
        setString(i, url.toString());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:22:0x0037 A[Catch: all -> 0x00aa, UnsupportedEncodingException -> 0x00ac, TRY_ENTER, TRY_LEAVE, TryCatch #0 {UnsupportedEncodingException -> 0x00ac, blocks: (B:4:0x0009, B:16:0x0026, B:19:0x002d, B:22:0x0037, B:25:0x0040, B:28:0x004a, B:31:0x0054, B:35:0x0061, B:38:0x006c, B:41:0x0075, B:43:0x0079, B:44:0x0081, B:46:0x0085, B:47:0x009f), top: B:56:0x0009, outer: #1 }] */
    private void storeBinding(Buffer buffer, BindValue bindValue, MysqlIO mysqlIO) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                try {
                    Object obj = bindValue.value;
                    int i = bindValue.bufferType;
                    if (i != 15 && i != 246) {
                        switch (i) {
                            case 0:
                                break;
                            case 1:
                                buffer.writeByte((byte) bindValue.longBinding);
                                return;
                            case 2:
                                buffer.ensureCapacity(2);
                                buffer.writeInt((int) bindValue.longBinding);
                                return;
                            case 3:
                                buffer.ensureCapacity(4);
                                buffer.writeLong((int) bindValue.longBinding);
                                return;
                            case 4:
                                buffer.ensureCapacity(4);
                                buffer.writeFloat(bindValue.floatBinding);
                                return;
                            case 5:
                                buffer.ensureCapacity(8);
                                buffer.writeDouble(bindValue.doubleBinding);
                                return;
                            default:
                                switch (i) {
                                    case 7:
                                        storeDateTime(buffer, (Date) obj, mysqlIO, bindValue.bufferType);
                                        return;
                                    case 8:
                                        buffer.ensureCapacity(8);
                                        buffer.writeLongLong(bindValue.longBinding);
                                        return;
                                    default:
                                        switch (i) {
                                            case 10:
                                            case 12:
                                                storeDateTime(buffer, (Date) obj, mysqlIO, bindValue.bufferType);
                                                return;
                                            case 11:
                                                storeTime(buffer, (Time) obj);
                                                return;
                                            default:
                                                switch (i) {
                                                    case 253:
                                                    case 254:
                                                        break;
                                                    default:
                                                        return;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                    }
                    if (obj instanceof byte[]) {
                        buffer.writeLenBytes((byte[]) obj);
                    } else if (!this.isLoadDataQuery) {
                        buffer.writeLenString((String) obj, this.charEncoding, this.connection.getServerCharset(), this.charConverter, this.connection.parserKnowsUnicode(), this.connection);
                    } else {
                        buffer.writeLenBytes(StringUtils.getBytes((String) obj));
                    }
                } catch (UnsupportedEncodingException unused) {
                    throw SQLError.createSQLException(Messages.getString("ServerPreparedStatement.22") + this.connection.getEncoding() + "'", SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void storeDateTime412AndOlder(Buffer buffer, Date date, int i) throws SQLException {
        Calendar utcCalendar;
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.useLegacyDatetimeCode) {
                utcCalendar = ((date instanceof Timestamp) && this.connection.getUseJDBCCompliantTimezoneShift()) ? this.connection.getUtcCalendar() : getCalendarInstanceForSessionOrNew();
            } else if (i == 10) {
                utcCalendar = getDefaultTzCalendar();
            } else {
                utcCalendar = getServerTzCalendar();
            }
            Date time = utcCalendar.getTime();
            try {
                buffer.ensureCapacity(8);
                buffer.writeByte((byte) 7);
                utcCalendar.setTime(date);
                int i2 = utcCalendar.get(1);
                int i3 = utcCalendar.get(2) + 1;
                int i4 = utcCalendar.get(5);
                buffer.writeInt(i2);
                buffer.writeByte((byte) i3);
                buffer.writeByte((byte) i4);
                if (date instanceof java.sql.Date) {
                    buffer.writeByte((byte) 0);
                    buffer.writeByte((byte) 0);
                    buffer.writeByte((byte) 0);
                } else {
                    buffer.writeByte((byte) utcCalendar.get(11));
                    buffer.writeByte((byte) utcCalendar.get(12));
                    buffer.writeByte((byte) utcCalendar.get(13));
                }
                utcCalendar.setTime(time);
            } catch (Throwable th) {
                utcCalendar.setTime(time);
                throw th;
            }
        }
    }

    private void storeDateTime(Buffer buffer, Date date, MysqlIO mysqlIO, int i) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.connection.versionMeetsMinimum(4, 1, 3)) {
                storeDateTime413AndNewer(buffer, date, i);
            } else {
                storeDateTime412AndOlder(buffer, date, i);
            }
        }
    }

    private void storeDateTime413AndNewer(Buffer buffer, Date date, int i) throws SQLException {
        Calendar utcCalendar;
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.useLegacyDatetimeCode) {
                utcCalendar = ((date instanceof Timestamp) && this.connection.getUseJDBCCompliantTimezoneShift()) ? this.connection.getUtcCalendar() : getCalendarInstanceForSessionOrNew();
            } else if (i == 10) {
                utcCalendar = getDefaultTzCalendar();
            } else {
                utcCalendar = getServerTzCalendar();
            }
            Date time = utcCalendar.getTime();
            try {
                utcCalendar.setTime(date);
                if (date instanceof java.sql.Date) {
                    utcCalendar.set(11, 0);
                    utcCalendar.set(12, 0);
                    utcCalendar.set(13, 0);
                }
                byte b = date instanceof Timestamp ? (byte) 11 : (byte) 7;
                buffer.ensureCapacity(b);
                buffer.writeByte(b);
                int i2 = utcCalendar.get(1);
                int i3 = utcCalendar.get(2) + 1;
                int i4 = utcCalendar.get(5);
                buffer.writeInt(i2);
                buffer.writeByte((byte) i3);
                buffer.writeByte((byte) i4);
                if (date instanceof java.sql.Date) {
                    buffer.writeByte((byte) 0);
                    buffer.writeByte((byte) 0);
                    buffer.writeByte((byte) 0);
                } else {
                    buffer.writeByte((byte) utcCalendar.get(11));
                    buffer.writeByte((byte) utcCalendar.get(12));
                    buffer.writeByte((byte) utcCalendar.get(13));
                }
                if (b == 11) {
                    buffer.writeLong(((Timestamp) date).getNanos() / 1000);
                }
                utcCalendar.setTime(time);
            } catch (Throwable th) {
                utcCalendar.setTime(time);
                throw th;
            }
        }
    }

    private Calendar getServerTzCalendar() throws SQLException {
        Calendar calendar;
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.serverTzCalendar == null) {
                this.serverTzCalendar = new GregorianCalendar(this.connection.getServerTimezoneTZ());
            }
            calendar = this.serverTzCalendar;
        }
        return calendar;
    }

    private Calendar getDefaultTzCalendar() throws SQLException {
        Calendar calendar;
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.defaultTzCalendar == null) {
                this.defaultTzCalendar = new GregorianCalendar(TimeZone.getDefault());
            }
            calendar = this.defaultTzCalendar;
        }
        return calendar;
    }

    private void storeReader(MysqlIO mysqlIO, int i, Buffer buffer, Reader reader) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            String clobCharacterEncoding = this.connection.getClobCharacterEncoding();
            if (clobCharacterEncoding == null) {
                clobCharacterEncoding = this.connection.getEncoding();
            }
            String str = clobCharacterEncoding;
            int i2 = 2;
            if (str != null) {
                if (str.equals("UTF-16")) {
                    i2 = 4;
                } else {
                    int maxBytesPerChar = this.connection.getMaxBytesPerChar(str);
                    if (maxBytesPerChar != 1) {
                        i2 = maxBytesPerChar;
                    }
                }
            }
            char[] cArr = new char[8192 / i2];
            int blobSendChunkSize = this.connection.getBlobSendChunkSize();
            try {
                try {
                    buffer.clear();
                    buffer.writeByte((byte) 24);
                    buffer.writeLong(this.serverStatementId);
                    buffer.writeInt(i);
                    int i3 = 0;
                    int i4 = 0;
                    boolean z = false;
                    int i5 = 0;
                    int i6 = 0;
                    while (true) {
                        int i7 = reader.read(cArr);
                        if (i7 == -1) {
                            break;
                        }
                        int i8 = i5;
                        byte[] bytes = StringUtils.getBytes(cArr, (SingleByteCharsetConverter) null, str, this.connection.getServerCharset(), 0, i7, this.connection.parserKnowsUnicode(), getExceptionInterceptor());
                        buffer.writeBytesNoNull(bytes, i3, bytes.length);
                        int length = i6 + bytes.length;
                        int length2 = bytes.length + i4;
                        if (length >= blobSendChunkSize) {
                            mysqlIO.sendCommand(24, null, buffer, true, null, 0);
                            buffer.clear();
                            buffer.writeByte((byte) 24);
                            buffer.writeLong(this.serverStatementId);
                            buffer.writeInt(i);
                            i8 = length2;
                            i6 = 0;
                        } else {
                            i6 = length;
                        }
                        i4 = length2;
                        str = str;
                        blobSendChunkSize = blobSendChunkSize;
                        cArr = cArr;
                        i3 = 0;
                        z = true;
                        i5 = i8;
                    }
                    if (i4 != i5) {
                        mysqlIO.sendCommand(24, null, buffer, true, null, 0);
                    }
                    if (!z) {
                        mysqlIO.sendCommand(24, null, buffer, true, null, 0);
                    }
                    if (this.connection.getAutoClosePStmtStreams() && reader != null) {
                        try {
                            reader.close();
                        } catch (IOException unused) {
                        }
                    }
                } catch (IOException e) {
                    SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(Messages.getString("ServerPreparedStatement.24") + e.toString(), SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
                    sQLExceptionCreateSQLException.initCause(e);
                    throw sQLExceptionCreateSQLException;
                }
            } catch (Throwable th) {
                if (this.connection.getAutoClosePStmtStreams() && reader != null) {
                    try {
                        reader.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        }
    }

    private void storeStream(MysqlIO mysqlIO, int i, Buffer buffer, InputStream inputStream) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            byte[] bArr = new byte[8192];
            try {
                try {
                    int blobSendChunkSize = this.connection.getBlobSendChunkSize();
                    buffer.clear();
                    buffer.writeByte((byte) 24);
                    buffer.writeLong(this.serverStatementId);
                    buffer.writeInt(i);
                    int i2 = 0;
                    int i3 = 0;
                    int i4 = 0;
                    boolean z = false;
                    while (true) {
                        int i5 = inputStream.read(bArr);
                        if (i5 == -1) {
                            break;
                        }
                        z = true;
                        buffer.writeBytesNoNull(bArr, 0, i5);
                        i4 += i5;
                        int i6 = i2 + i5;
                        if (i4 >= blobSendChunkSize) {
                            mysqlIO.sendCommand(24, null, buffer, true, null, 0);
                            buffer.clear();
                            buffer.writeByte((byte) 24);
                            buffer.writeLong(this.serverStatementId);
                            buffer.writeInt(i);
                            i2 = i6;
                            i3 = i2;
                            i4 = 0;
                        } else {
                            i2 = i6;
                        }
                    }
                    if (i2 != i3) {
                        mysqlIO.sendCommand(24, null, buffer, true, null, 0);
                    }
                    if (!z) {
                        mysqlIO.sendCommand(24, null, buffer, true, null, 0);
                    }
                    if (this.connection.getAutoClosePStmtStreams() && inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                } catch (IOException e) {
                    SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(Messages.getString("ServerPreparedStatement.25") + e.toString(), SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
                    sQLExceptionCreateSQLException.initCause(e);
                    throw sQLExceptionCreateSQLException;
                }
            } catch (Throwable th) {
                if (this.connection.getAutoClosePStmtStreams() && inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("com.mysql.jdbc.ServerPreparedStatement[");
        sb.append(this.serverStatementId);
        sb.append("] - ");
        try {
            sb.append(asSql());
        } catch (SQLException e) {
            sb.append(Messages.getString("ServerPreparedStatement.6"));
            sb.append(e);
        }
        return sb.toString();
    }

    protected long getServerStatementId() {
        return this.serverStatementId;
    }

    @Override // com.mysql.jdbc.PreparedStatement
    public boolean canRewriteAsMultiValueInsertAtSqlLevel() throws SQLException {
        boolean z;
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.hasCheckedRewrite) {
                this.hasCheckedRewrite = true;
                this.canRewrite = canRewrite(this.originalSql, isOnDuplicateKeyUpdate(), getLocationOfOnDuplicateKeyUpdate(), 0);
                this.parseInfo = new PreparedStatement.ParseInfo(this.originalSql, this.connection, this.connection.getMetaData(), this.charEncoding, this.charConverter);
            }
            z = this.canRewrite;
        }
        return z;
    }

    public boolean canRewriteAsMultivalueInsertStatement() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!canRewriteAsMultiValueInsertAtSqlLevel()) {
                return false;
            }
            int size = this.batchedArgs.size();
            for (int i = 0; i < size; i++) {
                Object obj = this.batchedArgs.get(i);
                if (!(obj instanceof String)) {
                    BindValue[] bindValueArr = ((BatchedBindValues) obj).batchedParameterValues;
                }
            }
            return true;
        }
    }

    @Override // com.mysql.jdbc.PreparedStatement
    protected int getLocationOfOnDuplicateKeyUpdate() throws SQLException {
        int i;
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.locationOfOnDuplicateKeyUpdate == -2) {
                this.locationOfOnDuplicateKeyUpdate = getOnDuplicateKeyLocation(this.originalSql, this.connection.getDontCheckOnDuplicateKeyUpdateInSQL(), this.connection.getRewriteBatchedStatements(), this.connection.isNoBackslashEscapesSet());
            }
            i = this.locationOfOnDuplicateKeyUpdate;
        }
        return i;
    }

    protected boolean isOnDuplicateKeyUpdate() throws SQLException {
        boolean z;
        synchronized (checkClosed().getConnectionMutex()) {
            z = getLocationOfOnDuplicateKeyUpdate() != -1;
        }
        return z;
    }

    @Override // com.mysql.jdbc.PreparedStatement
    protected long[] computeMaxParameterSetSizeAndBatchSize(int i) throws SQLException {
        long[] jArr;
        synchronized (checkClosed().getConnectionMutex()) {
            long j = 0;
            long j2 = 10;
            long j3 = 0;
            int i2 = 0;
            while (i2 < i) {
                try {
                    BindValue[] bindValueArr = ((BatchedBindValues) this.batchedArgs.get(i2)).batchedParameterValues;
                    long j4 = ((long) ((this.parameterCount + 7) / 8)) + j + ((long) (this.parameterCount * 2));
                    for (int i3 = 0; i3 < this.parameterBindings.length; i3++) {
                        if (!bindValueArr[i3].isNull) {
                            long boundLength = bindValueArr[i3].getBoundLength();
                            if (!bindValueArr[i3].isLongData) {
                                j4 += boundLength;
                            } else if (boundLength != -1) {
                                j4 += boundLength;
                            }
                        }
                    }
                    j2 += j4;
                    if (j4 > j3) {
                        j3 = j4;
                    }
                    i2++;
                    j = 0;
                } catch (Throwable th) {
                    throw th;
                }
            }
            jArr = new long[]{j3, j2};
        }
        return jArr;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x0093  */
    @Override // com.mysql.jdbc.PreparedStatement
    protected int setOneBatchedParameterSet(java.sql.PreparedStatement preparedStatement, int i, Object obj) throws SQLException {
        int i2;
        int i3;
        BindValue[] bindValueArr = ((BatchedBindValues) obj).batchedParameterValues;
        int i4 = i;
        for (int i5 = 0; i5 < bindValueArr.length; i5++) {
            if (bindValueArr[i5].isNull) {
                i2 = i4 + 1;
                preparedStatement.setNull(i4, 0);
            } else {
                if (bindValueArr[i5].isLongData) {
                    Object obj2 = bindValueArr[i5].value;
                    if (obj2 instanceof InputStream) {
                        i3 = i4 + 1;
                        preparedStatement.setBinaryStream(i4, (InputStream) obj2, (int) bindValueArr[i5].bindLength);
                    } else {
                        i3 = i4 + 1;
                        preparedStatement.setCharacterStream(i4, (Reader) obj2, (int) bindValueArr[i5].bindLength);
                    }
                    i4 = i3;
                } else {
                    int i6 = bindValueArr[i5].bufferType;
                    if (i6 != 15 && i6 != 246) {
                        switch (i6) {
                            case 0:
                                break;
                            case 1:
                                i2 = i4 + 1;
                                preparedStatement.setByte(i4, (byte) bindValueArr[i5].longBinding);
                                break;
                            case 2:
                                i2 = i4 + 1;
                                preparedStatement.setShort(i4, (short) bindValueArr[i5].longBinding);
                                break;
                            case 3:
                                i2 = i4 + 1;
                                preparedStatement.setInt(i4, (int) bindValueArr[i5].longBinding);
                                break;
                            case 4:
                                i2 = i4 + 1;
                                preparedStatement.setFloat(i4, bindValueArr[i5].floatBinding);
                                break;
                            case 5:
                                i2 = i4 + 1;
                                preparedStatement.setDouble(i4, bindValueArr[i5].doubleBinding);
                                break;
                            default:
                                switch (i6) {
                                    case 7:
                                        i2 = i4 + 1;
                                        preparedStatement.setTimestamp(i4, (Timestamp) bindValueArr[i5].value);
                                        break;
                                    case 8:
                                        i2 = i4 + 1;
                                        preparedStatement.setLong(i4, bindValueArr[i5].longBinding);
                                        break;
                                    default:
                                        switch (i6) {
                                            case 10:
                                                i2 = i4 + 1;
                                                preparedStatement.setDate(i4, (java.sql.Date) bindValueArr[i5].value);
                                                break;
                                            case 11:
                                                i2 = i4 + 1;
                                                preparedStatement.setTime(i4, (Time) bindValueArr[i5].value);
                                                break;
                                            case 12:
                                                i2 = i4 + 1;
                                                preparedStatement.setTimestamp(i4, (Timestamp) bindValueArr[i5].value);
                                                break;
                                            default:
                                                switch (i6) {
                                                    case 253:
                                                    case 254:
                                                        break;
                                                    default:
                                                        throw new IllegalArgumentException("Unknown type when re-binding parameter into batched statement for parameter index " + i4);
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                    }
                    Object obj3 = bindValueArr[i5].value;
                    if (obj3 instanceof byte[]) {
                        preparedStatement.setBytes(i4, (byte[]) obj3);
                    } else {
                        preparedStatement.setString(i4, (String) obj3);
                    }
                    if (preparedStatement instanceof ServerPreparedStatement) {
                        ((ServerPreparedStatement) preparedStatement).getBinding(i4, false).bufferType = bindValueArr[i5].bufferType;
                    }
                    i4++;
                }
            }
            i4 = i2;
        }
        return i4;
    }

    @Override // com.mysql.jdbc.PreparedStatement
    protected boolean containsOnDuplicateKeyUpdateInSQL() {
        return this.hasOnDuplicateKeyUpdate;
    }

    @Override // com.mysql.jdbc.PreparedStatement
    protected PreparedStatement prepareBatchedInsertSQL(MySQLConnection mySQLConnection, int i) throws SQLException {
        PreparedStatement preparedStatement;
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                try {
                    preparedStatement = (PreparedStatement) ((Wrapper) mySQLConnection.prepareStatement(this.parseInfo.getSqlForBatch(i), this.resultSetType, this.resultSetConcurrency)).unwrap(PreparedStatement.class);
                    preparedStatement.setRetrieveGeneratedKeys(this.retrieveGeneratedKeys);
                } catch (UnsupportedEncodingException e) {
                    SQLException sQLExceptionCreateSQLException = SQLError.createSQLException("Unable to prepare batch statement", SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
                    sQLExceptionCreateSQLException.initCause(e);
                    throw sQLExceptionCreateSQLException;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return preparedStatement;
    }

    @Override // com.mysql.jdbc.StatementImpl, java.sql.Statement
    public void setPoolable(boolean z) throws SQLException {
        if (!z) {
            this.connection.decachePreparedStatement(this);
        }
        super.setPoolable(z);
    }
}
