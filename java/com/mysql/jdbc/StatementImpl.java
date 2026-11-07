package com.mysql.jdbc;

import com.mysql.jdbc.exceptions.MySQLStatementCancelledException;
import com.mysql.jdbc.exceptions.MySQLTimeoutException;
import com.mysql.jdbc.log.LogUtils;
import com.mysql.jdbc.profiler.ProfilerEvent;
import com.mysql.jdbc.profiler.ProfilerEventHandler;
import java.io.InputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.math.BigInteger;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class StatementImpl implements Statement {
    protected static final String PING_MARKER = "/* ping */";
    public static final byte USES_VARIABLES_FALSE = 0;
    public static final byte USES_VARIABLES_TRUE = 1;
    public static final byte USES_VARIABLES_UNKNOWN = -1;
    protected List<Object> batchedArgs;
    protected SingleByteCharsetConverter charConverter;
    protected String charEncoding;
    protected volatile MySQLConnection connection;
    protected long connectionId;
    protected boolean continueBatchOnError;
    protected String currentCatalog;
    protected boolean doEscapeProcessing;
    protected ProfilerEventHandler eventSink;
    private ExceptionInterceptor exceptionInterceptor;
    protected boolean holdResultsOpenOverClose;
    private InputStream localInfileInputStream;
    protected int maxFieldSize;
    protected boolean pedantic;
    protected String pointOfOrigin;
    protected boolean profileSQL;
    protected boolean sendFractionalSeconds;
    protected int statementId;
    protected boolean useLegacyDatetimeCode;
    protected boolean useUsageAdvisor;
    protected final boolean version5013OrNewer;
    protected static final String[] ON_DUPLICATE_KEY_UPDATE_CLAUSE = {"ON", "DUPLICATE", "KEY", "UPDATE"};
    static int statementCounter = 1;
    protected Object cancelTimeoutMutex = new Object();
    protected boolean wasCancelled = false;
    protected boolean wasCancelledByTimeout = false;
    protected Reference<MySQLConnection> physicalConnection = null;
    private int fetchSize = 0;
    protected boolean isClosed = false;
    protected long lastInsertId = -1;
    protected int maxRows = -1;
    protected Set<ResultSetInternalMethods> openResults = new HashSet();
    protected ResultSetInternalMethods results = null;
    protected ResultSetInternalMethods generatedKeysResults = null;
    protected int resultSetConcurrency = 0;
    protected int resultSetType = 0;
    protected int timeoutInMillis = 0;
    protected long updateCount = -1;
    protected SQLWarning warningChain = null;
    protected boolean clearWarningsCalled = false;
    protected ArrayList<ResultSetRow> batchedGeneratedKeys = null;
    protected boolean retrieveGeneratedKeys = false;
    protected PingTarget pingTarget = null;
    protected boolean lastQueryIsOnDupKeyUpdate = false;
    protected final AtomicBoolean statementExecuting = new AtomicBoolean(false);
    private boolean isImplicitlyClosingResults = false;
    private int originalResultSetType = 0;
    private int originalFetchSize = 0;
    private boolean isPoolable = true;
    private boolean closeOnCompletion = false;

    @Override // java.sql.Statement
    public int getFetchDirection() throws SQLException {
        return 1000;
    }

    @Override // java.sql.Statement
    public int getResultSetHoldability() throws SQLException {
        return 1;
    }

    boolean isCursorRequired() throws SQLException {
        return false;
    }

    @Override // java.sql.Statement
    public void setCursorName(String str) throws SQLException {
    }

    class CancelTask extends TimerTask {
        SQLException caughtWhileCancelling = null;
        long origConnId;
        Properties origConnProps;
        String origConnURL;
        StatementImpl toCancel;

        CancelTask(StatementImpl statementImpl) throws SQLException {
            this.origConnProps = null;
            this.origConnURL = "";
            this.origConnId = 0L;
            this.toCancel = statementImpl;
            this.origConnProps = new Properties();
            Properties properties = StatementImpl.this.connection.getProperties();
            Enumeration<?> enumerationPropertyNames = properties.propertyNames();
            while (enumerationPropertyNames.hasMoreElements()) {
                String string = enumerationPropertyNames.nextElement().toString();
                this.origConnProps.setProperty(string, properties.getProperty(string));
            }
            this.origConnURL = StatementImpl.this.connection.getURL();
            this.origConnId = StatementImpl.this.connection.getId();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            new Thread() { // from class: com.mysql.jdbc.StatementImpl.CancelTask.1
                /* JADX WARN: Multi-variable type inference failed */
                /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
                    jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:38:0x00bb
                    	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
                    	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
                    	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
                    	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
                    */
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    /*
                        Method dump skipped, instruction units count: 368
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mysql.jdbc.StatementImpl.CancelTask.AnonymousClass1.run():void");
                }
            }.start();
        }
    }

    public StatementImpl(MySQLConnection mySQLConnection, String str) throws SQLException {
        this.charConverter = null;
        this.charEncoding = null;
        this.connection = null;
        this.connectionId = 0L;
        this.currentCatalog = null;
        boolean z = true;
        this.doEscapeProcessing = true;
        this.eventSink = null;
        this.maxFieldSize = MysqlIO.getMaxBuf();
        this.pedantic = false;
        this.profileSQL = false;
        this.useUsageAdvisor = false;
        this.holdResultsOpenOverClose = false;
        this.continueBatchOnError = false;
        if (mySQLConnection == null || mySQLConnection.isClosed()) {
            throw SQLError.createSQLException(Messages.getString("Statement.0"), SQLError.SQL_STATE_CONNECTION_NOT_OPEN, (ExceptionInterceptor) null);
        }
        this.connection = mySQLConnection;
        this.connectionId = this.connection.getId();
        this.exceptionInterceptor = this.connection.getExceptionInterceptor();
        this.currentCatalog = str;
        this.pedantic = this.connection.getPedantic();
        this.continueBatchOnError = this.connection.getContinueBatchOnError();
        this.useLegacyDatetimeCode = this.connection.getUseLegacyDatetimeCode();
        this.sendFractionalSeconds = this.connection.getSendFractionalSeconds();
        this.doEscapeProcessing = this.connection.getEnableEscapeProcessing();
        if (!this.connection.getDontTrackOpenResources()) {
            this.connection.registerStatement(this);
        }
        this.maxFieldSize = this.connection.getMaxAllowedPacket();
        int defaultFetchSize = this.connection.getDefaultFetchSize();
        if (defaultFetchSize != 0) {
            setFetchSize(defaultFetchSize);
        }
        if (this.connection.getUseUnicode()) {
            this.charEncoding = this.connection.getEncoding();
            this.charConverter = this.connection.getCharsetConverter(this.charEncoding);
        }
        if (!this.connection.getProfileSql() && !this.connection.getUseUsageAdvisor() && !this.connection.getLogSlowQueries()) {
            z = false;
        }
        if (this.connection.getAutoGenerateTestcaseScript() || z) {
            int i = statementCounter;
            statementCounter = i + 1;
            this.statementId = i;
        }
        if (z) {
            this.pointOfOrigin = LogUtils.findCallingClassAndMethod(new Throwable());
            this.profileSQL = this.connection.getProfileSql();
            this.useUsageAdvisor = this.connection.getUseUsageAdvisor();
            this.eventSink = ProfilerEventHandlerFactory.getInstance(this.connection);
        }
        int maxRows = this.connection.getMaxRows();
        if (maxRows != -1) {
            setMaxRows(maxRows);
        }
        this.holdResultsOpenOverClose = this.connection.getHoldResultsOpenOverStatementClose();
        this.version5013OrNewer = this.connection.versionMeetsMinimum(5, 0, 13);
    }

    @Override // java.sql.Statement
    public void addBatch(String str) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.batchedArgs == null) {
                this.batchedArgs = new ArrayList();
            }
            if (str != null) {
                this.batchedArgs.add(str);
            }
        }
    }

    public List<Object> getBatchedArgs() {
        if (this.batchedArgs == null) {
            return null;
        }
        return Collections.unmodifiableList(this.batchedArgs);
    }

    @Override // java.sql.Statement
    public void cancel() throws Throwable {
        java.sql.Statement statementCreateStatement;
        Throwable th;
        Connection connectionDuplicate;
        if (!this.statementExecuting.get() || this.isClosed || this.connection == null || !this.connection.versionMeetsMinimum(5, 0, 0)) {
            return;
        }
        try {
            connectionDuplicate = this.connection.duplicate();
            try {
                statementCreateStatement = connectionDuplicate.createStatement();
                try {
                    statementCreateStatement.execute("KILL QUERY " + this.connection.getIO().getThreadId());
                    this.wasCancelled = true;
                    if (statementCreateStatement != null) {
                        statementCreateStatement.close();
                    }
                    if (connectionDuplicate != null) {
                        connectionDuplicate.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (statementCreateStatement != null) {
                        statementCreateStatement.close();
                    }
                    if (connectionDuplicate != null) {
                        connectionDuplicate.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                statementCreateStatement = null;
                th = th3;
            }
        } catch (Throwable th4) {
            statementCreateStatement = null;
            th = th4;
            connectionDuplicate = null;
        }
    }

    protected MySQLConnection checkClosed() throws SQLException {
        MySQLConnection mySQLConnection = this.connection;
        if (mySQLConnection != null) {
            return mySQLConnection;
        }
        throw SQLError.createSQLException(Messages.getString("Statement.49"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
    }

    protected void checkForDml(String str, char c) throws SQLException {
        if (c == 'I' || c == 'U' || c == 'D' || c == 'A' || c == 'C' || c == 'T' || c == 'R') {
            String strStripComments = StringUtils.stripComments(str, "'\"", "'\"", true, false, true, true);
            if (StringUtils.startsWithIgnoreCaseAndWs(strStripComments, "INSERT") || StringUtils.startsWithIgnoreCaseAndWs(strStripComments, "UPDATE") || StringUtils.startsWithIgnoreCaseAndWs(strStripComments, "DELETE") || StringUtils.startsWithIgnoreCaseAndWs(strStripComments, "DROP") || StringUtils.startsWithIgnoreCaseAndWs(strStripComments, "CREATE") || StringUtils.startsWithIgnoreCaseAndWs(strStripComments, "ALTER") || StringUtils.startsWithIgnoreCaseAndWs(strStripComments, "TRUNCATE") || StringUtils.startsWithIgnoreCaseAndWs(strStripComments, "RENAME")) {
                throw SQLError.createSQLException(Messages.getString("Statement.57"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
            }
        }
    }

    protected void checkNullOrEmptyQuery(String str) throws SQLException {
        if (str == null) {
            throw SQLError.createSQLException(Messages.getString("Statement.59"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
        }
        if (str.length() == 0) {
            throw SQLError.createSQLException(Messages.getString("Statement.61"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
        }
    }

    @Override // java.sql.Statement
    public void clearBatch() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.batchedArgs != null) {
                this.batchedArgs.clear();
            }
        }
    }

    @Override // java.sql.Statement
    public void clearWarnings() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            this.clearWarningsCalled = true;
            this.warningChain = null;
        }
    }

    @Override // java.sql.Statement, java.lang.AutoCloseable
    public void close() throws SQLException {
        realClose(true, true);
    }

    protected void closeAllOpenResults() throws SQLException {
        MySQLConnection mySQLConnection = this.connection;
        if (mySQLConnection == null) {
            return;
        }
        synchronized (mySQLConnection.getConnectionMutex()) {
            if (this.openResults != null) {
                Iterator<ResultSetInternalMethods> it = this.openResults.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().realClose(false);
                    } catch (SQLException e) {
                        AssertionFailedException.shouldNotHappen(e);
                    }
                }
                this.openResults.clear();
            }
        }
    }

    protected void implicitlyCloseAllOpenResults() throws SQLException {
        this.isImplicitlyClosingResults = true;
        try {
            if (!this.connection.getHoldResultsOpenOverStatementClose() && !this.connection.getDontTrackOpenResources() && !this.holdResultsOpenOverClose) {
                if (this.results != null) {
                    this.results.realClose(false);
                }
                if (this.generatedKeysResults != null) {
                    this.generatedKeysResults.realClose(false);
                }
                closeAllOpenResults();
            }
        } finally {
            this.isImplicitlyClosingResults = false;
        }
    }

    @Override // com.mysql.jdbc.Statement
    public void removeOpenResultSet(ResultSetInternalMethods resultSetInternalMethods) {
        try {
            synchronized (checkClosed().getConnectionMutex()) {
                try {
                    if (this.openResults != null) {
                        this.openResults.remove(resultSetInternalMethods);
                    }
                    boolean z = resultSetInternalMethods.getNextResultSet() != null;
                    if (this.results == resultSetInternalMethods && !z) {
                        this.results = null;
                    }
                    if (this.generatedKeysResults == resultSetInternalMethods) {
                        this.generatedKeysResults = null;
                    }
                    if (!this.isImplicitlyClosingResults && !z) {
                        checkAndPerformCloseOnCompletionAction();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (SQLException unused) {
        }
    }

    @Override // com.mysql.jdbc.Statement
    public int getOpenResultSetCount() {
        try {
            synchronized (checkClosed().getConnectionMutex()) {
                if (this.openResults == null) {
                    return 0;
                }
                return this.openResults.size();
            }
        } catch (SQLException unused) {
            return 0;
        }
    }

    private void checkAndPerformCloseOnCompletionAction() {
        try {
            synchronized (checkClosed().getConnectionMutex()) {
                if (isCloseOnCompletion() && !this.connection.getDontTrackOpenResources() && getOpenResultSetCount() == 0 && ((this.results == null || !this.results.reallyResult() || this.results.isClosed()) && (this.generatedKeysResults == null || !this.generatedKeysResults.reallyResult() || this.generatedKeysResults.isClosed()))) {
                    realClose(false, false);
                }
            }
        } catch (SQLException unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ResultSetInternalMethods createResultSetUsingServerFetch(String str) throws SQLException {
        ResultSetInternalMethods resultSetInternal;
        synchronized (checkClosed().getConnectionMutex()) {
            java.sql.PreparedStatement preparedStatementPrepareStatement = this.connection.prepareStatement(str, this.resultSetType, this.resultSetConcurrency);
            preparedStatementPrepareStatement.setFetchSize(this.fetchSize);
            if (this.maxRows > -1) {
                preparedStatementPrepareStatement.setMaxRows(this.maxRows);
            }
            statementBegins();
            preparedStatementPrepareStatement.execute();
            resultSetInternal = ((StatementImpl) preparedStatementPrepareStatement).getResultSetInternal();
            resultSetInternal.setStatementUsedForFetchingRows((PreparedStatement) preparedStatementPrepareStatement);
            this.results = resultSetInternal;
        }
        return resultSetInternal;
    }

    protected boolean createStreamingResultSet() {
        return this.resultSetType == 1003 && this.resultSetConcurrency == 1007 && this.fetchSize == Integer.MIN_VALUE;
    }

    @Override // com.mysql.jdbc.Statement
    public void enableStreamingResults() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            this.originalResultSetType = this.resultSetType;
            this.originalFetchSize = this.fetchSize;
            setFetchSize(Integer.MIN_VALUE);
            setResultSetType(1003);
        }
    }

    @Override // com.mysql.jdbc.Statement
    public void disableStreamingResults() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.fetchSize == Integer.MIN_VALUE && this.resultSetType == 1003) {
                setFetchSize(this.originalFetchSize);
                setResultSetType(this.originalResultSetType);
            }
        }
    }

    protected void setupStreamingTimeout(MySQLConnection mySQLConnection) throws SQLException {
        if (!createStreamingResultSet() || mySQLConnection.getNetTimeoutForStreamingResults() <= 0) {
            return;
        }
        executeSimpleNonQuery(mySQLConnection, "SET net_write_timeout=" + mySQLConnection.getNetTimeoutForStreamingResults());
    }

    @Override // java.sql.Statement
    public boolean execute(String str) throws SQLException {
        return executeInternal(str, false);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x01ef */
    /* JADX WARN: Code duplicated, block: B:101:0x0187 A[Catch: all -> 0x01e8, DONT_GENERATE, TRY_LEAVE, TryCatch #5 {all -> 0x01e8, blocks: (B:93:0x0170, B:95:0x0174, B:97:0x0178, B:99:0x0183, B:100:0x0186, B:98:0x017e, B:101:0x0187), top: B:170:0x0170 }] */
    /* JADX WARN: Code duplicated, block: B:105:0x0196 A[Catch: all -> 0x01c9, TryCatch #6 {all -> 0x01c9, blocks: (B:108:0x019d, B:111:0x01b0, B:112:0x01b8, B:114:0x01c2, B:118:0x01d0, B:103:0x018a, B:105:0x0196), top: B:171:0x018a }] */
    /* JADX WARN: Code duplicated, block: B:151:0x021b A[Catch: all -> 0x0217, TryCatch #12 {all -> 0x0217, blocks: (B:147:0x020c, B:151:0x021b, B:152:0x021e), top: B:181:0x020c }] */
    /* JADX WARN: Code duplicated, block: B:166:0x00f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:170:0x0170 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:171:0x018a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:0x020c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:70:0x0109  */
    /* JADX WARN: Code duplicated, block: B:73:0x0110 A[Catch: all -> 0x01fa, TryCatch #13 {all -> 0x01fa, blocks: (B:71:0x010a, B:73:0x0110, B:75:0x0116, B:79:0x0128, B:81:0x012c), top: B:183:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0116 A[Catch: all -> 0x01fa, TryCatch #13 {all -> 0x01fa, blocks: (B:71:0x010a, B:73:0x0110, B:75:0x0116, B:79:0x0128, B:81:0x012c), top: B:183:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:76:0x011d  */
    /* JADX WARN: Code duplicated, block: B:77:0x0122  */
    /* JADX WARN: Code duplicated, block: B:79:0x0128 A[Catch: all -> 0x01fa, TryCatch #13 {all -> 0x01fa, blocks: (B:71:0x010a, B:73:0x0110, B:75:0x0116, B:79:0x0128, B:81:0x012c), top: B:183:0x010a }] */
    /* JADX WARN: Code duplicated, block: B:80:0x012b  */
    /* JADX WARN: Code duplicated, block: B:85:0x0160 A[Catch: all -> 0x01f6, TryCatch #11 {all -> 0x01f6, blocks: (B:83:0x015a, B:85:0x0160, B:87:0x0164, B:88:0x0169, B:89:0x016b), top: B:180:0x015a }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0164 A[Catch: all -> 0x01f6, TryCatch #11 {all -> 0x01f6, blocks: (B:83:0x015a, B:85:0x0160, B:87:0x0164, B:88:0x0169, B:89:0x016b), top: B:180:0x015a }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0169 A[Catch: all -> 0x01f6, TryCatch #11 {all -> 0x01f6, blocks: (B:83:0x015a, B:85:0x0160, B:87:0x0164, B:88:0x0169, B:89:0x016b), top: B:180:0x015a }] */
    /* JADX WARN: Code duplicated, block: B:90:0x016c  */
    /* JADX WARN: Code duplicated, block: B:95:0x0174 A[Catch: all -> 0x01e8, TryCatch #5 {all -> 0x01e8, blocks: (B:93:0x0170, B:95:0x0174, B:97:0x0178, B:99:0x0183, B:100:0x0186, B:98:0x017e, B:101:0x0187), top: B:170:0x0170 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x0178 A[Catch: all -> 0x01e8, TryCatch #5 {all -> 0x01e8, blocks: (B:93:0x0170, B:95:0x0174, B:97:0x0178, B:99:0x0183, B:100:0x0186, B:98:0x017e, B:101:0x0187), top: B:170:0x0170 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x017e A[Catch: all -> 0x01e8, TryCatch #5 {all -> 0x01e8, blocks: (B:93:0x0170, B:95:0x0174, B:97:0x0178, B:99:0x0183, B:100:0x0186, B:98:0x017e, B:101:0x0187), top: B:170:0x0170 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean executeInternal(java.lang.String r26, boolean r27) throws java.sql.SQLException {
        /*
            Method dump skipped, instruction units count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mysql.jdbc.StatementImpl.executeInternal(java.lang.String, boolean):boolean");
    }

    protected void statementBegins() {
        this.clearWarningsCalled = false;
        this.statementExecuting.set(true);
        MySQLConnection activeMySQLConnection = this.connection.getMultiHostSafeProxy().getActiveMySQLConnection();
        while (!(activeMySQLConnection instanceof ConnectionImpl)) {
            activeMySQLConnection = activeMySQLConnection.getMultiHostSafeProxy().getActiveMySQLConnection();
        }
        this.physicalConnection = new WeakReference(activeMySQLConnection);
    }

    protected void resetCancelledState() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.cancelTimeoutMutex == null) {
                return;
            }
            synchronized (this.cancelTimeoutMutex) {
                this.wasCancelled = false;
                this.wasCancelledByTimeout = false;
            }
        }
    }

    @Override // java.sql.Statement
    public boolean execute(String str, int i) throws SQLException {
        return executeInternal(str, i == 1);
    }

    @Override // java.sql.Statement
    public boolean execute(String str, int[] iArr) throws SQLException {
        return executeInternal(str, iArr != null && iArr.length > 0);
    }

    @Override // java.sql.Statement
    public boolean execute(String str, String[] strArr) throws SQLException {
        return executeInternal(str, strArr != null && strArr.length > 0);
    }

    @Override // java.sql.Statement
    public int[] executeBatch() throws SQLException {
        return Util.truncateAndConvertToInt(executeBatchInternal());
    }

    protected long[] executeBatchInternal() throws SQLException {
        CancelTask cancelTask;
        CancelTask cancelTask2;
        long[] jArr;
        CancelTask cancelTask3;
        MySQLConnection mySQLConnectionCheckClosed = checkClosed();
        synchronized (mySQLConnectionCheckClosed.getConnectionMutex()) {
            if (mySQLConnectionCheckClosed.isReadOnly()) {
                throw SQLError.createSQLException(Messages.getString("Statement.34") + Messages.getString("Statement.35"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
            }
            implicitlyCloseAllOpenResults();
            if (this.batchedArgs != null && this.batchedArgs.size() != 0) {
                int i = this.timeoutInMillis;
                this.timeoutInMillis = 0;
                try {
                    resetCancelledState();
                    statementBegins();
                    try {
                        try {
                            this.retrieveGeneratedKeys = true;
                            if (this.batchedArgs != null) {
                                int size = this.batchedArgs.size();
                                this.batchedGeneratedKeys = new ArrayList<>(this.batchedArgs.size());
                                boolean allowMultiQueries = mySQLConnectionCheckClosed.getAllowMultiQueries();
                                if (mySQLConnectionCheckClosed.versionMeetsMinimum(4, 1, 1) && (allowMultiQueries || (mySQLConnectionCheckClosed.getRewriteBatchedStatements() && size > 4))) {
                                    long[] jArrExecuteBatchUsingMultiQueries = executeBatchUsingMultiQueries(allowMultiQueries, size, i);
                                    this.statementExecuting.set(false);
                                    resetCancelledState();
                                    this.timeoutInMillis = i;
                                    clearBatch();
                                    return jArrExecuteBatchUsingMultiQueries;
                                }
                                if (mySQLConnectionCheckClosed.getEnableQueryTimeouts() && i != 0 && mySQLConnectionCheckClosed.versionMeetsMinimum(5, 0, 0)) {
                                    cancelTask2 = new CancelTask(this);
                                    try {
                                        mySQLConnectionCheckClosed.getCancelTimer().schedule(cancelTask2, i);
                                    } catch (Throwable th) {
                                        th = th;
                                        this.statementExecuting.set(false);
                                        throw th;
                                    }
                                } else {
                                    cancelTask2 = null;
                                }
                                jArr = new long[size];
                                for (int i2 = 0; i2 < size; i2++) {
                                    jArr[i2] = -3;
                                }
                                SQLException e = null;
                                for (int i3 = 0; i3 < size; i3++) {
                                    try {
                                        String str = (String) this.batchedArgs.get(i3);
                                        jArr[i3] = executeUpdateInternal(str, true, true);
                                        getBatchedGeneratedKeys((this.results.getFirstCharOfQuery() == 'I' && containsOnDuplicateKeyInString(str)) ? 1 : 0);
                                    } catch (SQLException e2) {
                                        e = e2;
                                        jArr[i3] = -3;
                                        if (!this.continueBatchOnError || (e instanceof MySQLTimeoutException) || (e instanceof MySQLStatementCancelledException) || hasDeadlockOrTimeoutRolledBackTx(e)) {
                                            long[] jArr2 = new long[i3];
                                            if (hasDeadlockOrTimeoutRolledBackTx(e)) {
                                                for (int i4 = 0; i4 < jArr2.length; i4++) {
                                                    jArr2[i4] = -3;
                                                }
                                            } else {
                                                System.arraycopy(jArr, 0, jArr2, 0, i3);
                                            }
                                            throw SQLError.createBatchUpdateException(e, jArr2, getExceptionInterceptor());
                                        }
                                    }
                                }
                                if (e != null) {
                                    throw SQLError.createBatchUpdateException(e, jArr, getExceptionInterceptor());
                                }
                                if (0 != 0) {
                                    cancelTask.cancel();
                                    mySQLConnectionCheckClosed.getCancelTimer().purge();
                                }
                                resetCancelledState();
                                this.timeoutInMillis = i;
                                clearBatch();
                                throw th;
                            }
                            cancelTask2 = null;
                            jArr = null;
                            if (cancelTask2 == null) {
                                cancelTask3 = cancelTask2;
                            } else {
                                if (cancelTask2.caughtWhileCancelling != null) {
                                    throw cancelTask2.caughtWhileCancelling;
                                }
                                cancelTask2.cancel();
                                mySQLConnectionCheckClosed.getCancelTimer().purge();
                                cancelTask3 = null;
                            }
                            if (jArr == null) {
                                try {
                                    jArr = new long[0];
                                } catch (Throwable th2) {
                                    th = th2;
                                    this.statementExecuting.set(false);
                                    throw th;
                                }
                            }
                            this.statementExecuting.set(false);
                            if (cancelTask3 != null) {
                                cancelTask3.cancel();
                                mySQLConnectionCheckClosed.getCancelTimer().purge();
                            }
                            resetCancelledState();
                            this.timeoutInMillis = i;
                            clearBatch();
                            return jArr;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    cancelTask = null;
                }
            }
            return new long[0];
        }
    }

    protected final boolean hasDeadlockOrTimeoutRolledBackTx(SQLException sQLException) {
        int errorCode = sQLException.getErrorCode();
        if (errorCode != 1213) {
            switch (errorCode) {
                case MysqlErrorNumbers.ER_LOCK_WAIT_TIMEOUT /* 1205 */:
                    return !this.version5013OrNewer;
                case MysqlErrorNumbers.ER_LOCK_TABLE_FULL /* 1206 */:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x016e A[Catch: all -> 0x0019, DONT_GENERATE, TryCatch #9 {, blocks: (B:5:0x0011, B:65:0x010e, B:66:0x0118, B:76:0x012f, B:77:0x0136, B:73:0x0125, B:74:0x012c, B:91:0x014d, B:92:0x0157, B:102:0x016e, B:103:0x0175, B:99:0x0164, B:100:0x016b, B:94:0x015c, B:68:0x011d), top: B:123:0x0011, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x015c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:108:0x0138 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:110:0x011d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:11:0x0022 A[Catch: all -> 0x0148, LOOP:0: B:10:0x0020->B:11:0x0022, LOOP_END, TryCatch #7 {all -> 0x0148, blocks: (B:9:0x001c, B:11:0x0022, B:12:0x0029), top: B:119:0x001c }] */
    /* JADX WARN: Code duplicated, block: B:121:0x00d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:127:0x00c1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:20:0x0052  */
    /* JADX WARN: Code duplicated, block: B:23:0x0061  */
    /* JADX WARN: Code duplicated, block: B:24:0x0064 A[Catch: all -> 0x0144, TryCatch #4 {all -> 0x0144, blocks: (B:19:0x0049, B:21:0x0053, B:28:0x006d, B:34:0x0080, B:36:0x00a4, B:40:0x00b2, B:41:0x00c1, B:39:0x00ae, B:42:0x00d2, B:44:0x00d8, B:46:0x00dd, B:54:0x00ec, B:53:0x00e6, B:57:0x00f6, B:59:0x00fa, B:60:0x0106, B:61:0x0108, B:24:0x0064), top: B:114:0x0049, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x006a  */
    /* JADX WARN: Code duplicated, block: B:27:0x006c  */
    /* JADX WARN: Code duplicated, block: B:30:0x0076  */
    /* JADX WARN: Code duplicated, block: B:31:0x0077  */
    /* JADX WARN: Code duplicated, block: B:34:0x0080 A[Catch: all -> 0x0144, TRY_LEAVE, TryCatch #4 {all -> 0x0144, blocks: (B:19:0x0049, B:21:0x0053, B:28:0x006d, B:34:0x0080, B:36:0x00a4, B:40:0x00b2, B:41:0x00c1, B:39:0x00ae, B:42:0x00d2, B:44:0x00d8, B:46:0x00dd, B:54:0x00ec, B:53:0x00e6, B:57:0x00f6, B:59:0x00fa, B:60:0x0106, B:61:0x0108, B:24:0x0064), top: B:114:0x0049, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00f6 A[Catch: all -> 0x0144, TryCatch #4 {all -> 0x0144, blocks: (B:19:0x0049, B:21:0x0053, B:28:0x006d, B:34:0x0080, B:36:0x00a4, B:40:0x00b2, B:41:0x00c1, B:39:0x00ae, B:42:0x00d2, B:44:0x00d8, B:46:0x00dd, B:54:0x00ec, B:53:0x00e6, B:57:0x00f6, B:59:0x00fa, B:60:0x0106, B:61:0x0108, B:24:0x0064), top: B:114:0x0049, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00fa A[Catch: all -> 0x0144, TryCatch #4 {all -> 0x0144, blocks: (B:19:0x0049, B:21:0x0053, B:28:0x006d, B:34:0x0080, B:36:0x00a4, B:40:0x00b2, B:41:0x00c1, B:39:0x00ae, B:42:0x00d2, B:44:0x00d8, B:46:0x00dd, B:54:0x00ec, B:53:0x00e6, B:57:0x00f6, B:59:0x00fa, B:60:0x0106, B:61:0x0108, B:24:0x0064), top: B:114:0x0049, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0106 A[Catch: all -> 0x0144, TryCatch #4 {all -> 0x0144, blocks: (B:19:0x0049, B:21:0x0053, B:28:0x006d, B:34:0x0080, B:36:0x00a4, B:40:0x00b2, B:41:0x00c1, B:39:0x00ae, B:42:0x00d2, B:44:0x00d8, B:46:0x00dd, B:54:0x00ec, B:53:0x00e6, B:57:0x00f6, B:59:0x00fa, B:60:0x0106, B:61:0x0108, B:24:0x0064), top: B:114:0x0049, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0109  */
    /* JADX WARN: Code duplicated, block: B:64:0x010c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x010e A[Catch: all -> 0x0019, TRY_ENTER, TryCatch #9 {, blocks: (B:5:0x0011, B:65:0x010e, B:66:0x0118, B:76:0x012f, B:77:0x0136, B:73:0x0125, B:74:0x012c, B:91:0x014d, B:92:0x0157, B:102:0x016e, B:103:0x0175, B:99:0x0164, B:100:0x016b, B:94:0x015c, B:68:0x011d), top: B:123:0x0011, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x012f A[Catch: all -> 0x0019, TryCatch #9 {, blocks: (B:5:0x0011, B:65:0x010e, B:66:0x0118, B:76:0x012f, B:77:0x0136, B:73:0x0125, B:74:0x012c, B:91:0x014d, B:92:0x0157, B:102:0x016e, B:103:0x0175, B:99:0x0164, B:100:0x016b, B:94:0x015c, B:68:0x011d), top: B:123:0x0011, inners: #0, #2 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x014d A[Catch: all -> 0x0019, TRY_ENTER, TryCatch #9 {, blocks: (B:5:0x0011, B:65:0x010e, B:66:0x0118, B:76:0x012f, B:77:0x0136, B:73:0x0125, B:74:0x012c, B:91:0x014d, B:92:0x0157, B:102:0x016e, B:103:0x0175, B:99:0x0164, B:100:0x016b, B:94:0x015c, B:68:0x011d), top: B:123:0x0011, inners: #0, #2 }] */
    private long[] executeBatchUsingMultiQueries(boolean z, int i, int i2) throws SQLException {
        java.sql.Statement statementCreateStatement;
        CancelTask cancelTask;
        long[] jArr;
        int i3;
        StringBuilder sb;
        String encoding;
        int i4;
        int i5;
        StringBuilder sb2;
        int iProcessMultiCountsAndKeys;
        int i6;
        int i7;
        int i8;
        SQLException sQLException;
        CancelTask cancelTask2;
        String str;
        int i9 = i;
        MySQLConnection mySQLConnectionCheckClosed = checkClosed();
        synchronized (mySQLConnectionCheckClosed.getConnectionMutex()) {
            if (z) {
                jArr = new long[i9];
                for (i3 = 0; i3 < i9; i3++) {
                    jArr[i3] = -3;
                }
                sb = new StringBuilder();
                statementCreateStatement = mySQLConnectionCheckClosed.createStatement();
                if (mySQLConnectionCheckClosed.getEnableQueryTimeouts()) {
                    cancelTask = null;
                    encoding = mySQLConnectionCheckClosed.getEncoding();
                    i4 = 2;
                    if (StringUtils.startsWithIgnoreCase(encoding, "utf")) {
                        i5 = 3;
                    } else if (CharsetMapping.isMultibyteCharset(encoding)) {
                        i5 = 2;
                    } else {
                        i5 = 1;
                    }
                    statementCreateStatement.setEscapeProcessing(this.doEscapeProcessing);
                    if (!this.doEscapeProcessing) {
                        i4 = 1;
                    }
                    sb2 = sb;
                    iProcessMultiCountsAndKeys = 0;
                    i6 = 0;
                    i7 = 0;
                    SQLException sQLExceptionHandleExceptionForBatch = null;
                    while (i6 < i9) {
                        str = (String) this.batchedArgs.get(i6);
                        if (((((sb2.length() + str.length()) * i5) + 1 + 4) * i4) + 32 > this.connection.getMaxAllowedPacket()) {
                            statementCreateStatement.execute(sb2.toString(), 1);
                            iProcessMultiCountsAndKeys = processMultiCountsAndKeys((StatementImpl) statementCreateStatement, iProcessMultiCountsAndKeys, jArr);
                            sb2 = new StringBuilder();
                            i7 = 0;
                        }
                        sb2.append(str);
                        sb2.append(";");
                        i7++;
                        i6++;
                        i9 = i;
                    }
                    if (sb2.length() > 0) {
                        i8 = 1;
                        statementCreateStatement.execute(sb2.toString(), 1);
                        processMultiCountsAndKeys((StatementImpl) statementCreateStatement, iProcessMultiCountsAndKeys, jArr);
                    }
                    sQLException = sQLExceptionHandleExceptionForBatch;
                    if (cancelTask == null) {
                        cancelTask2 = cancelTask;
                    } else {
                        if (cancelTask.caughtWhileCancelling != null) {
                            throw cancelTask.caughtWhileCancelling;
                        }
                        cancelTask.cancel();
                        mySQLConnectionCheckClosed.getCancelTimer().purge();
                        cancelTask2 = null;
                    }
                    if (sQLException != null) {
                        throw SQLError.createBatchUpdateException(sQLException, jArr, getExceptionInterceptor());
                    }
                    if (cancelTask2 != null) {
                        cancelTask2.cancel();
                        mySQLConnectionCheckClosed.getCancelTimer().purge();
                    }
                    resetCancelledState();
                    if (statementCreateStatement != null) {
                        statementCreateStatement.close();
                    }
                    if (!z) {
                        mySQLConnectionCheckClosed.getIO().disableMultiQueries();
                    }
                } else {
                    cancelTask = null;
                    encoding = mySQLConnectionCheckClosed.getEncoding();
                    i4 = 2;
                    if (StringUtils.startsWithIgnoreCase(encoding, "utf")) {
                        i5 = 3;
                    } else if (CharsetMapping.isMultibyteCharset(encoding)) {
                        i5 = 2;
                    } else {
                        i5 = 1;
                    }
                    statementCreateStatement.setEscapeProcessing(this.doEscapeProcessing);
                    if (!this.doEscapeProcessing) {
                        i4 = 1;
                    }
                    sb2 = sb;
                    iProcessMultiCountsAndKeys = 0;
                    i6 = 0;
                    i7 = 0;
                    SQLException sQLExceptionHandleExceptionForBatch2 = null;
                    while (i6 < i9) {
                        str = (String) this.batchedArgs.get(i6);
                        if (((((sb2.length() + str.length()) * i5) + 1 + 4) * i4) + 32 > this.connection.getMaxAllowedPacket()) {
                            statementCreateStatement.execute(sb2.toString(), 1);
                            iProcessMultiCountsAndKeys = processMultiCountsAndKeys((StatementImpl) statementCreateStatement, iProcessMultiCountsAndKeys, jArr);
                            sb2 = new StringBuilder();
                            i7 = 0;
                        }
                        sb2.append(str);
                        sb2.append(";");
                        i7++;
                        i6++;
                        i9 = i;
                    }
                    if (sb2.length() > 0) {
                        i8 = 1;
                        statementCreateStatement.execute(sb2.toString(), 1);
                        processMultiCountsAndKeys((StatementImpl) statementCreateStatement, iProcessMultiCountsAndKeys, jArr);
                    }
                    sQLException = sQLExceptionHandleExceptionForBatch2;
                    if (cancelTask == null) {
                        cancelTask2 = cancelTask;
                    } else {
                        if (cancelTask.caughtWhileCancelling != null) {
                            throw cancelTask.caughtWhileCancelling;
                        }
                        cancelTask.cancel();
                        mySQLConnectionCheckClosed.getCancelTimer().purge();
                        cancelTask2 = null;
                    }
                    if (sQLException != null) {
                        throw SQLError.createBatchUpdateException(sQLException, jArr, getExceptionInterceptor());
                    }
                    if (cancelTask2 != null) {
                        cancelTask2.cancel();
                        mySQLConnectionCheckClosed.getCancelTimer().purge();
                    }
                    resetCancelledState();
                    if (statementCreateStatement != null) {
                        statementCreateStatement.close();
                    }
                    if (!z) {
                        mySQLConnectionCheckClosed.getIO().disableMultiQueries();
                    }
                }
            } else {
                mySQLConnectionCheckClosed.getIO().enableMultiQueries();
                try {
                    jArr = new long[i9];
                    while (i3 < i9) {
                        jArr[i3] = -3;
                    }
                    sb = new StringBuilder();
                    statementCreateStatement = mySQLConnectionCheckClosed.createStatement();
                    try {
                        if (mySQLConnectionCheckClosed.getEnableQueryTimeouts() || i2 == 0 || !mySQLConnectionCheckClosed.versionMeetsMinimum(5, 0, 0)) {
                            cancelTask = null;
                        } else {
                            cancelTask = new CancelTask((StatementImpl) statementCreateStatement);
                            try {
                                mySQLConnectionCheckClosed.getCancelTimer().schedule(cancelTask, i2);
                            } catch (Throwable th) {
                                th = th;
                                if (cancelTask != null) {
                                    cancelTask.cancel();
                                    mySQLConnectionCheckClosed.getCancelTimer().purge();
                                }
                                resetCancelledState();
                                if (statementCreateStatement != null) {
                                    try {
                                        statementCreateStatement.close();
                                    } finally {
                                        if (!z) {
                                            mySQLConnectionCheckClosed.getIO().disableMultiQueries();
                                        }
                                    }
                                }
                                throw th;
                            }
                        }
                        encoding = mySQLConnectionCheckClosed.getEncoding();
                        i4 = 2;
                        if (StringUtils.startsWithIgnoreCase(encoding, "utf")) {
                            i5 = 3;
                        } else if (CharsetMapping.isMultibyteCharset(encoding)) {
                            i5 = 2;
                        } else {
                            i5 = 1;
                        }
                        statementCreateStatement.setEscapeProcessing(this.doEscapeProcessing);
                        if (!this.doEscapeProcessing) {
                            i4 = 1;
                        }
                        sb2 = sb;
                        iProcessMultiCountsAndKeys = 0;
                        i6 = 0;
                        i7 = 0;
                        SQLException sQLExceptionHandleExceptionForBatch3 = null;
                        while (i6 < i9) {
                            str = (String) this.batchedArgs.get(i6);
                            if (((((sb2.length() + str.length()) * i5) + 1 + 4) * i4) + 32 > this.connection.getMaxAllowedPacket()) {
                                try {
                                    statementCreateStatement.execute(sb2.toString(), 1);
                                } catch (SQLException e) {
                                    sQLExceptionHandleExceptionForBatch3 = handleExceptionForBatch(i6, i7, jArr, e);
                                }
                                iProcessMultiCountsAndKeys = processMultiCountsAndKeys((StatementImpl) statementCreateStatement, iProcessMultiCountsAndKeys, jArr);
                                sb2 = new StringBuilder();
                                i7 = 0;
                            }
                            sb2.append(str);
                            sb2.append(";");
                            i7++;
                            i6++;
                            i9 = i;
                        }
                        if (sb2.length() > 0) {
                            try {
                                i8 = 1;
                                try {
                                    statementCreateStatement.execute(sb2.toString(), 1);
                                } catch (SQLException e2) {
                                    e = e2;
                                    sQLExceptionHandleExceptionForBatch3 = handleExceptionForBatch(i6 - i8, i7, jArr, e);
                                }
                            } catch (SQLException e3) {
                                e = e3;
                                i8 = 1;
                            }
                            processMultiCountsAndKeys((StatementImpl) statementCreateStatement, iProcessMultiCountsAndKeys, jArr);
                        }
                        sQLException = sQLExceptionHandleExceptionForBatch3;
                        if (cancelTask == null) {
                            cancelTask2 = cancelTask;
                        } else {
                            if (cancelTask.caughtWhileCancelling != null) {
                                throw cancelTask.caughtWhileCancelling;
                            }
                            cancelTask.cancel();
                            mySQLConnectionCheckClosed.getCancelTimer().purge();
                            cancelTask2 = null;
                        }
                        if (sQLException != null) {
                            try {
                                throw SQLError.createBatchUpdateException(sQLException, jArr, getExceptionInterceptor());
                            } catch (Throwable th2) {
                                th = th2;
                                cancelTask = cancelTask2;
                                if (cancelTask != null) {
                                    cancelTask.cancel();
                                    mySQLConnectionCheckClosed.getCancelTimer().purge();
                                }
                                resetCancelledState();
                                if (statementCreateStatement != null) {
                                    statementCreateStatement.close();
                                }
                                throw th;
                            }
                        }
                        if (cancelTask2 != null) {
                            cancelTask2.cancel();
                            mySQLConnectionCheckClosed.getCancelTimer().purge();
                        }
                        resetCancelledState();
                        if (statementCreateStatement != null) {
                            try {
                                statementCreateStatement.close();
                            } catch (Throwable th3) {
                                if (z) {
                                    throw th3;
                                }
                                mySQLConnectionCheckClosed.getIO().disableMultiQueries();
                                throw th3;
                            }
                        }
                        if (!z) {
                            mySQLConnectionCheckClosed.getIO().disableMultiQueries();
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        cancelTask = null;
                        if (cancelTask != null) {
                            cancelTask.cancel();
                            mySQLConnectionCheckClosed.getCancelTimer().purge();
                        }
                        resetCancelledState();
                        if (statementCreateStatement != null) {
                            statementCreateStatement.close();
                        }
                        throw th;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    statementCreateStatement = null;
                }
            }
            throw th;
        }
        return jArr;
    }

    protected int processMultiCountsAndKeys(StatementImpl statementImpl, int i, long[] jArr) throws SQLException {
        int i2;
        synchronized (checkClosed().getConnectionMutex()) {
            i2 = i + 1;
            jArr[i] = statementImpl.getLargeUpdateCount();
            boolean z = this.batchedGeneratedKeys != null;
            if (z) {
                this.batchedGeneratedKeys.add(new ByteArrayRow(new byte[][]{StringUtils.getBytes(Long.toString(statementImpl.getLastInsertID()))}, getExceptionInterceptor()));
            }
            while (true) {
                if (!statementImpl.getMoreResults() && statementImpl.getLargeUpdateCount() == -1) {
                }
                int i3 = i2 + 1;
                jArr[i2] = statementImpl.getLargeUpdateCount();
                if (z) {
                    this.batchedGeneratedKeys.add(new ByteArrayRow(new byte[][]{StringUtils.getBytes(Long.toString(statementImpl.getLastInsertID()))}, getExceptionInterceptor()));
                }
                i2 = i3;
            }
        }
        return i2;
    }

    protected SQLException handleExceptionForBatch(int i, int i2, long[] jArr, SQLException sQLException) throws SQLException {
        for (int i3 = i; i3 > i - i2; i3--) {
            jArr[i3] = -3;
        }
        if (this.continueBatchOnError && !(sQLException instanceof MySQLTimeoutException) && !(sQLException instanceof MySQLStatementCancelledException) && !hasDeadlockOrTimeoutRolledBackTx(sQLException)) {
            return sQLException;
        }
        long[] jArr2 = new long[i];
        System.arraycopy(jArr, 0, jArr2, 0, i);
        throw SQLError.createBatchUpdateException(sQLException, jArr2, getExceptionInterceptor());
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0165 */
    /* JADX WARN: Code duplicated, block: B:107:0x017e A[Catch: all -> 0x018e, TryCatch #8 {, blocks: (B:4:0x000d, B:6:0x0023, B:8:0x002b, B:9:0x0030, B:11:0x0032, B:13:0x0039, B:15:0x0047, B:16:0x004a, B:17:0x004e, B:19:0x005f, B:20:0x0067, B:72:0x0123, B:74:0x012b, B:77:0x0139, B:78:0x013c, B:80:0x0146, B:84:0x015a, B:85:0x015c, B:81:0x014c, B:83:0x0154, B:105:0x0176, B:107:0x017e, B:109:0x018a, B:110:0x018d), top: B:128:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:109:0x018a A[Catch: all -> 0x018e, TryCatch #8 {, blocks: (B:4:0x000d, B:6:0x0023, B:8:0x002b, B:9:0x0030, B:11:0x0032, B:13:0x0039, B:15:0x0047, B:16:0x004a, B:17:0x004e, B:19:0x005f, B:20:0x0067, B:72:0x0123, B:74:0x012b, B:77:0x0139, B:78:0x013c, B:80:0x0146, B:84:0x015a, B:85:0x015c, B:81:0x014c, B:83:0x0154, B:105:0x0176, B:107:0x017e, B:109:0x018a, B:110:0x018d), top: B:128:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:127:0x010b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:0x0094  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a1 A[Catch: all -> 0x016f, TRY_LEAVE, TryCatch #9 {all -> 0x016f, blocks: (B:36:0x0095, B:38:0x00a1), top: B:129:0x0095 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b7 A[Catch: all -> 0x016b, TryCatch #4 {all -> 0x016b, blocks: (B:44:0x00b1, B:46:0x00b7, B:48:0x00bd, B:52:0x00c8), top: B:121:0x00b1 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00bd A[Catch: all -> 0x016b, TryCatch #4 {all -> 0x016b, blocks: (B:44:0x00b1, B:46:0x00b7, B:48:0x00bd, B:52:0x00c8), top: B:121:0x00b1 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:56:0x00f5 A[Catch: all -> 0x0167, TryCatch #3 {all -> 0x0167, blocks: (B:54:0x00ed, B:56:0x00f5, B:58:0x00f9, B:59:0x0105, B:60:0x0107, B:61:0x0108, B:62:0x010a), top: B:120:0x00ed }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00f9 A[Catch: all -> 0x0167, TryCatch #3 {all -> 0x0167, blocks: (B:54:0x00ed, B:56:0x00f5, B:58:0x00f9, B:59:0x0105, B:60:0x0107, B:61:0x0108, B:62:0x010a), top: B:120:0x00ed }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0105 A[Catch: all -> 0x0167, TryCatch #3 {all -> 0x0167, blocks: (B:54:0x00ed, B:56:0x00f5, B:58:0x00f9, B:59:0x0105, B:60:0x0107, B:61:0x0108, B:62:0x010a), top: B:120:0x00ed }] */
    /* JADX WARN: Code duplicated, block: B:65:0x010f A[Catch: all -> 0x015e, TryCatch #7 {all -> 0x015e, blocks: (B:63:0x010b, B:65:0x010f, B:67:0x0113, B:69:0x011e, B:70:0x0121, B:68:0x0119, B:71:0x0122), top: B:127:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0113 A[Catch: all -> 0x015e, TryCatch #7 {all -> 0x015e, blocks: (B:63:0x010b, B:65:0x010f, B:67:0x0113, B:69:0x011e, B:70:0x0121, B:68:0x0119, B:71:0x0122), top: B:127:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0119 A[Catch: all -> 0x015e, TryCatch #7 {all -> 0x015e, blocks: (B:63:0x010b, B:65:0x010f, B:67:0x0113, B:69:0x011e, B:70:0x0121, B:68:0x0119, B:71:0x0122), top: B:127:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0122 A[Catch: all -> 0x015e, DONT_GENERATE, TRY_LEAVE, TryCatch #7 {all -> 0x015e, blocks: (B:63:0x010b, B:65:0x010f, B:67:0x0113, B:69:0x011e, B:70:0x0121, B:68:0x0119, B:71:0x0122), top: B:127:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:74:0x012b A[Catch: all -> 0x018e, TryCatch #8 {, blocks: (B:4:0x000d, B:6:0x0023, B:8:0x002b, B:9:0x0030, B:11:0x0032, B:13:0x0039, B:15:0x0047, B:16:0x004a, B:17:0x004e, B:19:0x005f, B:20:0x0067, B:72:0x0123, B:74:0x012b, B:77:0x0139, B:78:0x013c, B:80:0x0146, B:84:0x015a, B:85:0x015c, B:81:0x014c, B:83:0x0154, B:105:0x0176, B:107:0x017e, B:109:0x018a, B:110:0x018d), top: B:128:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0139 A[Catch: all -> 0x018e, TryCatch #8 {, blocks: (B:4:0x000d, B:6:0x0023, B:8:0x002b, B:9:0x0030, B:11:0x0032, B:13:0x0039, B:15:0x0047, B:16:0x004a, B:17:0x004e, B:19:0x005f, B:20:0x0067, B:72:0x0123, B:74:0x012b, B:77:0x0139, B:78:0x013c, B:80:0x0146, B:84:0x015a, B:85:0x015c, B:81:0x014c, B:83:0x0154, B:105:0x0176, B:107:0x017e, B:109:0x018a, B:110:0x018d), top: B:128:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0146 A[Catch: all -> 0x018e, TryCatch #8 {, blocks: (B:4:0x000d, B:6:0x0023, B:8:0x002b, B:9:0x0030, B:11:0x0032, B:13:0x0039, B:15:0x0047, B:16:0x004a, B:17:0x004e, B:19:0x005f, B:20:0x0067, B:72:0x0123, B:74:0x012b, B:77:0x0139, B:78:0x013c, B:80:0x0146, B:84:0x015a, B:85:0x015c, B:81:0x014c, B:83:0x0154, B:105:0x0176, B:107:0x017e, B:109:0x018a, B:110:0x018d), top: B:128:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:81:0x014c A[Catch: all -> 0x018e, TryCatch #8 {, blocks: (B:4:0x000d, B:6:0x0023, B:8:0x002b, B:9:0x0030, B:11:0x0032, B:13:0x0039, B:15:0x0047, B:16:0x004a, B:17:0x004e, B:19:0x005f, B:20:0x0067, B:72:0x0123, B:74:0x012b, B:77:0x0139, B:78:0x013c, B:80:0x0146, B:84:0x015a, B:85:0x015c, B:81:0x014c, B:83:0x0154, B:105:0x0176, B:107:0x017e, B:109:0x018a, B:110:0x018d), top: B:128:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0154 A[Catch: all -> 0x018e, TryCatch #8 {, blocks: (B:4:0x000d, B:6:0x0023, B:8:0x002b, B:9:0x0030, B:11:0x0032, B:13:0x0039, B:15:0x0047, B:16:0x004a, B:17:0x004e, B:19:0x005f, B:20:0x0067, B:72:0x0123, B:74:0x012b, B:77:0x0139, B:78:0x013c, B:80:0x0146, B:84:0x015a, B:85:0x015c, B:81:0x014c, B:83:0x0154, B:105:0x0176, B:107:0x017e, B:109:0x018a, B:110:0x018d), top: B:128:0x000d }] */
    @Override // java.sql.Statement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.sql.ResultSet executeQuery(java.lang.String r21) throws java.sql.SQLException {
        /*
            Method dump skipped, instruction units count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mysql.jdbc.StatementImpl.executeQuery(java.lang.String):java.sql.ResultSet");
    }

    protected void doPingInstead() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.pingTarget != null) {
                this.pingTarget.doPing();
            } else {
                this.connection.ping();
            }
            this.results = generatePingResultSet();
        }
    }

    protected ResultSetInternalMethods generatePingResultSet() throws SQLException {
        ResultSetInternalMethods resultSetInternalMethods;
        synchronized (checkClosed().getConnectionMutex()) {
            Field[] fieldArr = {new Field(null, "1", -5, 1)};
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ByteArrayRow(new byte[][]{new byte[]{49}}, getExceptionInterceptor()));
            resultSetInternalMethods = (ResultSetInternalMethods) DatabaseMetaData.buildResultSet(fieldArr, arrayList, this.connection);
        }
        return resultSetInternalMethods;
    }

    protected void executeSimpleNonQuery(MySQLConnection mySQLConnection, String str) throws SQLException {
        mySQLConnection.execSQL(this, str, -1, null, 1003, 1007, false, this.currentCatalog, null, false).close();
    }

    @Override // java.sql.Statement
    public int executeUpdate(String str) throws SQLException {
        return Util.truncateAndConvertToInt(executeLargeUpdate(str));
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x015f */
    /* JADX WARN: Code duplicated, block: B:114:0x0188 A[Catch: all -> 0x01d6, TryCatch #7 {, blocks: (B:4:0x000f, B:8:0x0029, B:12:0x0032, B:14:0x0038, B:16:0x0048, B:17:0x004b, B:18:0x004f, B:20:0x0056, B:22:0x005e, B:26:0x006b, B:80:0x0122, B:82:0x0127, B:85:0x0135, B:87:0x013a, B:88:0x0140, B:89:0x0153, B:112:0x0183, B:114:0x0188, B:116:0x0194, B:118:0x0199, B:119:0x019e, B:120:0x019f, B:121:0x01af, B:122:0x01b0, B:123:0x01d5), top: B:140:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:116:0x0194 A[Catch: all -> 0x01d6, TryCatch #7 {, blocks: (B:4:0x000f, B:8:0x0029, B:12:0x0032, B:14:0x0038, B:16:0x0048, B:17:0x004b, B:18:0x004f, B:20:0x0056, B:22:0x005e, B:26:0x006b, B:80:0x0122, B:82:0x0127, B:85:0x0135, B:87:0x013a, B:88:0x0140, B:89:0x0153, B:112:0x0183, B:114:0x0188, B:116:0x0194, B:118:0x0199, B:119:0x019e, B:120:0x019f, B:121:0x01af, B:122:0x01b0, B:123:0x01d5), top: B:140:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:118:0x0199 A[Catch: all -> 0x01d6, TryCatch #7 {, blocks: (B:4:0x000f, B:8:0x0029, B:12:0x0032, B:14:0x0038, B:16:0x0048, B:17:0x004b, B:18:0x004f, B:20:0x0056, B:22:0x005e, B:26:0x006b, B:80:0x0122, B:82:0x0127, B:85:0x0135, B:87:0x013a, B:88:0x0140, B:89:0x0153, B:112:0x0183, B:114:0x0188, B:116:0x0194, B:118:0x0199, B:119:0x019e, B:120:0x019f, B:121:0x01af, B:122:0x01b0, B:123:0x01d5), top: B:140:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:139:0x0108 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:141:0x00a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:151:0x00ed A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x009b  */
    /* JADX WARN: Code duplicated, block: B:53:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:62:0x00f1 A[Catch: all -> 0x00ff, TryCatch #13 {all -> 0x00ff, blocks: (B:60:0x00ed, B:62:0x00f1, B:63:0x00fc, B:64:0x00fe), top: B:151:0x00ed }] */
    /* JADX WARN: Code duplicated, block: B:63:0x00fc A[Catch: all -> 0x00ff, TryCatch #13 {all -> 0x00ff, blocks: (B:60:0x00ed, B:62:0x00f1, B:63:0x00fc, B:64:0x00fe), top: B:151:0x00ed }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0104  */
    /* JADX WARN: Code duplicated, block: B:72:0x010c A[Catch: all -> 0x0155, TryCatch #6 {all -> 0x0155, blocks: (B:70:0x0108, B:72:0x010c, B:74:0x0110, B:76:0x011b, B:77:0x011e, B:75:0x0116, B:78:0x011f), top: B:139:0x0108 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0110 A[Catch: all -> 0x0155, TryCatch #6 {all -> 0x0155, blocks: (B:70:0x0108, B:72:0x010c, B:74:0x0110, B:76:0x011b, B:77:0x011e, B:75:0x0116, B:78:0x011f), top: B:139:0x0108 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0116 A[Catch: all -> 0x0155, TryCatch #6 {all -> 0x0155, blocks: (B:70:0x0108, B:72:0x010c, B:74:0x0110, B:76:0x011b, B:77:0x011e, B:75:0x0116, B:78:0x011f), top: B:139:0x0108 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x011f A[Catch: all -> 0x0155, DONT_GENERATE, TRY_LEAVE, TryCatch #6 {all -> 0x0155, blocks: (B:70:0x0108, B:72:0x010c, B:74:0x0110, B:76:0x011b, B:77:0x011e, B:75:0x0116, B:78:0x011f), top: B:139:0x0108 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0127 A[Catch: all -> 0x01d6, TryCatch #7 {, blocks: (B:4:0x000f, B:8:0x0029, B:12:0x0032, B:14:0x0038, B:16:0x0048, B:17:0x004b, B:18:0x004f, B:20:0x0056, B:22:0x005e, B:26:0x006b, B:80:0x0122, B:82:0x0127, B:85:0x0135, B:87:0x013a, B:88:0x0140, B:89:0x0153, B:112:0x0183, B:114:0x0188, B:116:0x0194, B:118:0x0199, B:119:0x019e, B:120:0x019f, B:121:0x01af, B:122:0x01b0, B:123:0x01d5), top: B:140:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0135 A[Catch: all -> 0x01d6, TryCatch #7 {, blocks: (B:4:0x000f, B:8:0x0029, B:12:0x0032, B:14:0x0038, B:16:0x0048, B:17:0x004b, B:18:0x004f, B:20:0x0056, B:22:0x005e, B:26:0x006b, B:80:0x0122, B:82:0x0127, B:85:0x0135, B:87:0x013a, B:88:0x0140, B:89:0x0153, B:112:0x0183, B:114:0x0188, B:116:0x0194, B:118:0x0199, B:119:0x019e, B:120:0x019f, B:121:0x01af, B:122:0x01b0, B:123:0x01d5), top: B:140:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:87:0x013a A[Catch: all -> 0x01d6, TryCatch #7 {, blocks: (B:4:0x000f, B:8:0x0029, B:12:0x0032, B:14:0x0038, B:16:0x0048, B:17:0x004b, B:18:0x004f, B:20:0x0056, B:22:0x005e, B:26:0x006b, B:80:0x0122, B:82:0x0127, B:85:0x0135, B:87:0x013a, B:88:0x0140, B:89:0x0153, B:112:0x0183, B:114:0x0188, B:116:0x0194, B:118:0x0199, B:119:0x019e, B:120:0x019f, B:121:0x01af, B:122:0x01b0, B:123:0x01d5), top: B:140:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected long executeUpdateInternal(java.lang.String r23, boolean r24, boolean r25) throws java.sql.SQLException {
        /*
            Method dump skipped, instruction units count: 473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mysql.jdbc.StatementImpl.executeUpdateInternal(java.lang.String, boolean, boolean):long");
    }

    @Override // java.sql.Statement
    public int executeUpdate(String str, int i) throws SQLException {
        return Util.truncateAndConvertToInt(executeLargeUpdate(str, i));
    }

    @Override // java.sql.Statement
    public int executeUpdate(String str, int[] iArr) throws SQLException {
        return Util.truncateAndConvertToInt(executeLargeUpdate(str, iArr));
    }

    @Override // java.sql.Statement
    public int executeUpdate(String str, String[] strArr) throws SQLException {
        return Util.truncateAndConvertToInt(executeLargeUpdate(str, strArr));
    }

    protected Calendar getCalendarInstanceForSessionOrNew() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.connection != null) {
                return this.connection.getCalendarInstanceForSessionOrNew();
            }
            return new GregorianCalendar();
        }
    }

    @Override // java.sql.Statement
    public java.sql.Connection getConnection() throws SQLException {
        MySQLConnection mySQLConnection;
        synchronized (checkClosed().getConnectionMutex()) {
            mySQLConnection = this.connection;
        }
        return mySQLConnection;
    }

    @Override // java.sql.Statement
    public int getFetchSize() throws SQLException {
        int i;
        synchronized (checkClosed().getConnectionMutex()) {
            i = this.fetchSize;
        }
        return i;
    }

    @Override // java.sql.Statement
    public ResultSet getGeneratedKeys() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.retrieveGeneratedKeys) {
                throw SQLError.createSQLException(Messages.getString("Statement.GeneratedKeysNotRequested"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
            }
            if (this.batchedGeneratedKeys == null) {
                if (this.lastQueryIsOnDupKeyUpdate) {
                    ResultSetInternalMethods generatedKeysInternal = getGeneratedKeysInternal(1L);
                    this.generatedKeysResults = generatedKeysInternal;
                    return generatedKeysInternal;
                }
                ResultSetInternalMethods generatedKeysInternal2 = getGeneratedKeysInternal();
                this.generatedKeysResults = generatedKeysInternal2;
                return generatedKeysInternal2;
            }
            Field[] fieldArr = {new Field("", "GENERATED_KEY", -5, 20)};
            fieldArr[0].setConnection(this.connection);
            this.generatedKeysResults = ResultSetImpl.getInstance(this.currentCatalog, fieldArr, new RowDataStatic(this.batchedGeneratedKeys), this.connection, this, false);
            return this.generatedKeysResults;
        }
    }

    protected ResultSetInternalMethods getGeneratedKeysInternal() throws SQLException {
        return getGeneratedKeysInternal(getLargeUpdateCount());
    }

    protected ResultSetInternalMethods getGeneratedKeysInternal(long j) throws SQLException {
        ResultSetImpl resultSetImpl;
        synchronized (checkClosed().getConnectionMutex()) {
            char c = 0;
            Field[] fieldArr = {new Field("", "GENERATED_KEY", -5, 20)};
            fieldArr[0].setConnection(this.connection);
            fieldArr[0].setUseOldNameMetadata(true);
            ArrayList arrayList = new ArrayList();
            long lastInsertID = getLastInsertID();
            long j2 = 0;
            if (lastInsertID < 0) {
                fieldArr[0].setUnsigned();
            }
            if (this.results != null) {
                String serverInfo = this.results.getServerInfo();
                long recordCountFromInfo = (j <= 0 || this.results.getFirstCharOfQuery() != 'R' || serverInfo == null || serverInfo.length() <= 0) ? j : getRecordCountFromInfo(serverInfo);
                if (lastInsertID != 0 && recordCountFromInfo > 0) {
                    long autoIncrementIncrement = lastInsertID;
                    int i = 0;
                    while (i < recordCountFromInfo) {
                        byte[][] bArr = new byte[1][];
                        if (autoIncrementIncrement > j2) {
                            bArr[c] = StringUtils.getBytes(Long.toString(autoIncrementIncrement));
                        } else {
                            bArr[0] = new BigInteger(1, new byte[]{(byte) (autoIncrementIncrement >>> 56), (byte) (autoIncrementIncrement >>> 48), (byte) (autoIncrementIncrement >>> 40), (byte) (autoIncrementIncrement >>> 32), (byte) (autoIncrementIncrement >>> 24), (byte) (autoIncrementIncrement >>> 16), (byte) (autoIncrementIncrement >>> 8), (byte) (autoIncrementIncrement & 255)}).toString().getBytes();
                        }
                        arrayList.add(new ByteArrayRow(bArr, getExceptionInterceptor()));
                        autoIncrementIncrement += (long) this.connection.getAutoIncrementIncrement();
                        i++;
                        c = 0;
                        j2 = 0;
                    }
                }
            }
            resultSetImpl = ResultSetImpl.getInstance(this.currentCatalog, fieldArr, new RowDataStatic(arrayList), this.connection, this, false);
        }
        return resultSetImpl;
    }

    protected int getId() {
        return this.statementId;
    }

    public long getLastInsertID() {
        long j;
        try {
            synchronized (checkClosed().getConnectionMutex()) {
                j = this.lastInsertId;
            }
            return j;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public long getLongUpdateCount() {
        try {
            synchronized (checkClosed().getConnectionMutex()) {
                if (this.results == null) {
                    return -1L;
                }
                if (this.results.reallyResult()) {
                    return -1L;
                }
                return this.updateCount;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // java.sql.Statement
    public int getMaxFieldSize() throws SQLException {
        int i;
        synchronized (checkClosed().getConnectionMutex()) {
            i = this.maxFieldSize;
        }
        return i;
    }

    @Override // java.sql.Statement
    public int getMaxRows() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.maxRows <= 0) {
                return 0;
            }
            return this.maxRows;
        }
    }

    @Override // java.sql.Statement
    public boolean getMoreResults() throws SQLException {
        return getMoreResults(1);
    }

    @Override // java.sql.Statement
    public boolean getMoreResults(int i) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            boolean z = false;
            if (this.results == null) {
                return false;
            }
            boolean zCreateStreamingResultSet = createStreamingResultSet();
            if (zCreateStreamingResultSet && this.results.reallyResult()) {
                while (this.results.next()) {
                }
            }
            ResultSetInternalMethods nextResultSet = this.results.getNextResultSet();
            switch (i) {
                case 1:
                    if (this.results != null) {
                        if (!zCreateStreamingResultSet && !this.connection.getDontTrackOpenResources()) {
                            this.results.realClose(false);
                        }
                        this.results.clearNextResult();
                    }
                    break;
                case 2:
                    if (!this.connection.getDontTrackOpenResources()) {
                        this.openResults.add(this.results);
                    }
                    this.results.clearNextResult();
                    break;
                case 3:
                    if (this.results != null) {
                        if (!zCreateStreamingResultSet && !this.connection.getDontTrackOpenResources()) {
                            this.results.realClose(false);
                        }
                        this.results.clearNextResult();
                    }
                    closeAllOpenResults();
                    break;
                default:
                    throw SQLError.createSQLException(Messages.getString("Statement.19"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
            }
            this.results = nextResultSet;
            if (this.results == null || this.results.reallyResult()) {
                this.updateCount = -1L;
                this.lastInsertId = -1L;
            } else {
                this.updateCount = this.results.getUpdateCount();
                this.lastInsertId = this.results.getUpdateID();
            }
            if (this.results != null && this.results.reallyResult()) {
                z = true;
            }
            if (!z) {
                checkAndPerformCloseOnCompletionAction();
            }
            return z;
        }
    }

    @Override // java.sql.Statement
    public int getQueryTimeout() throws SQLException {
        int i;
        synchronized (checkClosed().getConnectionMutex()) {
            i = this.timeoutInMillis / 1000;
        }
        return i;
    }

    private long getRecordCountFromInfo(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i = 0;
        char cCharAt = 0;
        while (i < length) {
            cCharAt = str.charAt(i);
            if (Character.isDigit(cCharAt)) {
                break;
            }
            i++;
        }
        sb.append(cCharAt);
        int i2 = i + 1;
        while (i2 < length) {
            cCharAt = str.charAt(i2);
            if (!Character.isDigit(cCharAt)) {
                break;
            }
            sb.append(cCharAt);
            i2++;
        }
        long j = Long.parseLong(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        while (i2 < length) {
            cCharAt = str.charAt(i2);
            if (Character.isDigit(cCharAt)) {
                break;
            }
            i2++;
        }
        sb2.append(cCharAt);
        for (int i3 = i2 + 1; i3 < length; i3++) {
            char cCharAt2 = str.charAt(i3);
            if (!Character.isDigit(cCharAt2)) {
                break;
            }
            sb2.append(cCharAt2);
        }
        return j - Long.parseLong(sb2.toString());
    }

    @Override // java.sql.Statement
    public ResultSet getResultSet() throws SQLException {
        ResultSetInternalMethods resultSetInternalMethods;
        synchronized (checkClosed().getConnectionMutex()) {
            resultSetInternalMethods = (this.results == null || !this.results.reallyResult()) ? null : this.results;
        }
        return resultSetInternalMethods;
    }

    @Override // java.sql.Statement
    public int getResultSetConcurrency() throws SQLException {
        int i;
        synchronized (checkClosed().getConnectionMutex()) {
            i = this.resultSetConcurrency;
        }
        return i;
    }

    protected ResultSetInternalMethods getResultSetInternal() {
        ResultSetInternalMethods resultSetInternalMethods;
        try {
            synchronized (checkClosed().getConnectionMutex()) {
                resultSetInternalMethods = this.results;
            }
            return resultSetInternalMethods;
        } catch (SQLException unused) {
            return this.results;
        }
    }

    @Override // java.sql.Statement
    public int getResultSetType() throws SQLException {
        int i;
        synchronized (checkClosed().getConnectionMutex()) {
            i = this.resultSetType;
        }
        return i;
    }

    @Override // java.sql.Statement
    public int getUpdateCount() throws SQLException {
        return Util.truncateAndConvertToInt(getLargeUpdateCount());
    }

    @Override // java.sql.Statement
    public SQLWarning getWarnings() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.clearWarningsCalled) {
                return null;
            }
            if (this.connection.versionMeetsMinimum(4, 1, 0)) {
                SQLWarning sQLWarningConvertShowWarningsToSQLWarnings = SQLError.convertShowWarningsToSQLWarnings(this.connection);
                if (this.warningChain != null) {
                    this.warningChain.setNextWarning(sQLWarningConvertShowWarningsToSQLWarnings);
                } else {
                    this.warningChain = sQLWarningConvertShowWarningsToSQLWarnings;
                }
                return this.warningChain;
            }
            return this.warningChain;
        }
    }

    protected void realClose(boolean z, boolean z2) throws SQLException {
        boolean z3;
        MySQLConnection mySQLConnection = this.connection;
        if (mySQLConnection == null || this.isClosed) {
            return;
        }
        if (!mySQLConnection.getDontTrackOpenResources()) {
            mySQLConnection.unregisterStatement(this);
        }
        if (this.useUsageAdvisor && !z) {
            this.eventSink.consumeEvent(new ProfilerEvent((byte) 0, "", this.currentCatalog, this.connectionId, getId(), -1, System.currentTimeMillis(), 0L, Constants.MILLIS_I18N, null, this.pointOfOrigin, Messages.getString("Statement.63") + Messages.getString("Statement.64")));
        }
        if (z2) {
            z3 = (this.holdResultsOpenOverClose || this.connection.getDontTrackOpenResources()) ? false : true;
        } else {
            z3 = z2;
        }
        if (z3) {
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
            closeAllOpenResults();
        }
        this.isClosed = true;
        this.results = null;
        this.generatedKeysResults = null;
        this.connection = null;
        this.warningChain = null;
        this.openResults = null;
        this.batchedGeneratedKeys = null;
        this.localInfileInputStream = null;
        this.pingTarget = null;
    }

    @Override // java.sql.Statement
    public void setEscapeProcessing(boolean z) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            this.doEscapeProcessing = z;
        }
    }

    @Override // java.sql.Statement
    public void setFetchDirection(int i) throws SQLException {
        switch (i) {
            case 1000:
            case 1001:
            case 1002:
                return;
            default:
                throw SQLError.createSQLException(Messages.getString("Statement.5"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
        }
    }

    @Override // java.sql.Statement
    public void setFetchSize(int i) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (i >= 0 || i == Integer.MIN_VALUE) {
                if (this.maxRows > 0) {
                    if (i <= getMaxRows()) {
                    }
                }
                this.fetchSize = i;
            }
            throw SQLError.createSQLException(Messages.getString("Statement.7"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
        }
    }

    @Override // com.mysql.jdbc.Statement
    public void setHoldResultsOpenOverClose(boolean z) {
        try {
            synchronized (checkClosed().getConnectionMutex()) {
                this.holdResultsOpenOverClose = z;
            }
        } catch (SQLException unused) {
        }
    }

    @Override // java.sql.Statement
    public void setMaxFieldSize(int i) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (i < 0) {
                    throw SQLError.createSQLException(Messages.getString("Statement.11"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
                }
                int maxAllowedPacket = this.connection != null ? this.connection.getMaxAllowedPacket() : MysqlIO.getMaxBuf();
                if (i > maxAllowedPacket) {
                    throw SQLError.createSQLException(Messages.getString("Statement.13", new Object[]{Long.valueOf(maxAllowedPacket)}), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
                }
                this.maxFieldSize = i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.sql.Statement
    public void setMaxRows(int i) throws SQLException {
        setLargeMaxRows(i);
    }

    @Override // java.sql.Statement
    public void setQueryTimeout(int i) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (i < 0) {
                    throw SQLError.createSQLException(Messages.getString("Statement.21"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
                }
                this.timeoutInMillis = i * 1000;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    void setResultSetConcurrency(int i) {
        try {
            synchronized (checkClosed().getConnectionMutex()) {
                this.resultSetConcurrency = i;
            }
        } catch (SQLException unused) {
        }
    }

    void setResultSetType(int i) {
        try {
            synchronized (checkClosed().getConnectionMutex()) {
                this.resultSetType = i;
            }
        } catch (SQLException unused) {
        }
    }

    protected void getBatchedGeneratedKeys(java.sql.Statement statement) throws SQLException {
        Throwable th;
        ResultSet generatedKeys;
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.retrieveGeneratedKeys) {
                try {
                    generatedKeys = statement.getGeneratedKeys();
                    while (generatedKeys.next()) {
                        try {
                            this.batchedGeneratedKeys.add(new ByteArrayRow(new byte[][]{generatedKeys.getBytes(1)}, getExceptionInterceptor()));
                        } catch (Throwable th2) {
                            th = th2;
                            if (generatedKeys != null) {
                                generatedKeys.close();
                                throw th;
                            }
                            throw th;
                        }
                    }
                    if (generatedKeys != null) {
                        generatedKeys.close();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    generatedKeys = null;
                }
            }
        }
    }

    protected void getBatchedGeneratedKeys(int i) throws SQLException {
        ResultSetInternalMethods generatedKeysInternal;
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.retrieveGeneratedKeys) {
                ResultSetInternalMethods resultSetInternalMethods = null;
                try {
                    if (i == 0) {
                        generatedKeysInternal = getGeneratedKeysInternal();
                    } else {
                        generatedKeysInternal = getGeneratedKeysInternal(i);
                    }
                    resultSetInternalMethods = generatedKeysInternal;
                    while (resultSetInternalMethods.next()) {
                        this.batchedGeneratedKeys.add(new ByteArrayRow(new byte[][]{resultSetInternalMethods.getBytes(1)}, getExceptionInterceptor()));
                    }
                    this.isImplicitlyClosingResults = true;
                    if (resultSetInternalMethods != null) {
                        try {
                            resultSetInternalMethods.close();
                        } catch (Throwable th) {
                            this.isImplicitlyClosingResults = false;
                            throw th;
                        }
                    }
                    this.isImplicitlyClosingResults = false;
                } catch (Throwable th2) {
                    this.isImplicitlyClosingResults = true;
                    if (resultSetInternalMethods != null) {
                        try {
                            resultSetInternalMethods.close();
                        } finally {
                            this.isImplicitlyClosingResults = false;
                        }
                    }
                    throw th2;
                }
            }
        }
    }

    private boolean useServerFetch() throws SQLException {
        boolean z;
        synchronized (checkClosed().getConnectionMutex()) {
            z = this.connection.isCursorFetchEnabled() && this.fetchSize > 0 && this.resultSetConcurrency == 1007 && this.resultSetType == 1003;
        }
        return z;
    }

    @Override // java.sql.Statement
    public boolean isClosed() throws SQLException {
        boolean z;
        MySQLConnection mySQLConnection = this.connection;
        if (mySQLConnection == null) {
            return true;
        }
        synchronized (mySQLConnection.getConnectionMutex()) {
            z = this.isClosed;
        }
        return z;
    }

    @Override // java.sql.Statement
    public boolean isPoolable() throws SQLException {
        return this.isPoolable;
    }

    @Override // java.sql.Statement
    public void setPoolable(boolean z) throws SQLException {
        this.isPoolable = z;
    }

    @Override // java.sql.Wrapper, com.mysql.jdbc.Wrapper
    public boolean isWrapperFor(Class<?> cls) throws SQLException {
        checkClosed();
        return cls.isInstance(this);
    }

    @Override // java.sql.Wrapper, com.mysql.jdbc.Wrapper
    public <T> T unwrap(Class<T> cls) throws SQLException {
        try {
            return cls.cast(this);
        } catch (ClassCastException unused) {
            throw SQLError.createSQLException("Unable to unwrap to " + cls.toString(), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
        }
    }

    protected static int findStartOfStatement(String str) {
        if (StringUtils.startsWithIgnoreCaseAndWs(str, "/*")) {
            int iIndexOf = str.indexOf("*/");
            if (iIndexOf == -1) {
                return 0;
            }
            return iIndexOf + 2;
        }
        if (!StringUtils.startsWithIgnoreCaseAndWs(str, "--") && !StringUtils.startsWithIgnoreCaseAndWs(str, "#")) {
            return 0;
        }
        int iIndexOf2 = str.indexOf(10);
        if (iIndexOf2 != -1) {
            return iIndexOf2;
        }
        int iIndexOf3 = str.indexOf(13);
        if (iIndexOf3 == -1) {
            return 0;
        }
        return iIndexOf3;
    }

    @Override // com.mysql.jdbc.Statement
    public InputStream getLocalInfileInputStream() {
        return this.localInfileInputStream;
    }

    @Override // com.mysql.jdbc.Statement
    public void setLocalInfileInputStream(InputStream inputStream) {
        this.localInfileInputStream = inputStream;
    }

    @Override // com.mysql.jdbc.Statement
    public void setPingTarget(PingTarget pingTarget) {
        this.pingTarget = pingTarget;
    }

    @Override // com.mysql.jdbc.Statement
    public ExceptionInterceptor getExceptionInterceptor() {
        return this.exceptionInterceptor;
    }

    protected boolean containsOnDuplicateKeyInString(String str) {
        return getOnDuplicateKeyLocation(str, this.connection.getDontCheckOnDuplicateKeyUpdateInSQL(), this.connection.getRewriteBatchedStatements(), this.connection.isNoBackslashEscapesSet()) != -1;
    }

    protected static int getOnDuplicateKeyLocation(String str, boolean z, boolean z2, boolean z3) {
        if (!z || z2) {
            return StringUtils.indexOfIgnoreCase(0, str, ON_DUPLICATE_KEY_UPDATE_CLAUSE, "\"'`", "\"'`", z3 ? StringUtils.SEARCH_MODE__MRK_COM_WS : StringUtils.SEARCH_MODE__ALL);
        }
        return -1;
    }

    public void closeOnCompletion() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            this.closeOnCompletion = true;
        }
    }

    public boolean isCloseOnCompletion() throws SQLException {
        boolean z;
        synchronized (checkClosed().getConnectionMutex()) {
            z = this.closeOnCompletion;
        }
        return z;
    }

    public long[] executeLargeBatch() throws SQLException {
        return executeBatchInternal();
    }

    public long executeLargeUpdate(String str) throws SQLException {
        return executeUpdateInternal(str, false, false);
    }

    public long executeLargeUpdate(String str, int i) throws SQLException {
        return executeUpdateInternal(str, false, i == 1);
    }

    public long executeLargeUpdate(String str, int[] iArr) throws SQLException {
        return executeUpdateInternal(str, false, iArr != null && iArr.length > 0);
    }

    public long executeLargeUpdate(String str, String[] strArr) throws SQLException {
        return executeUpdateInternal(str, false, strArr != null && strArr.length > 0);
    }

    public long getLargeMaxRows() throws SQLException {
        return getMaxRows();
    }

    public long getLargeUpdateCount() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.results == null) {
                return -1L;
            }
            if (this.results.reallyResult()) {
                return -1L;
            }
            return this.results.getUpdateCount();
        }
    }

    public void setLargeMaxRows(long j) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (j > 50000000 || j < 0) {
                    throw SQLError.createSQLException(Messages.getString("Statement.15") + j + " > 50000000.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
                }
                if (j == 0) {
                    j = -1;
                }
                this.maxRows = (int) j;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
