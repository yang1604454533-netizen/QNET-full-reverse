.class public Lcom/mysql/jdbc/StatementImpl;
.super Ljava/lang/Object;
.source "StatementImpl.java"

# interfaces
.implements Lcom/mysql/jdbc/Statement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/StatementImpl$CancelTask;
    }
.end annotation


# static fields
.field protected static final ON_DUPLICATE_KEY_UPDATE_CLAUSE:[Ljava/lang/String;

.field protected static final PING_MARKER:Ljava/lang/String; = "/* ping */"

.field public static final USES_VARIABLES_FALSE:B = 0x0t

.field public static final USES_VARIABLES_TRUE:B = 0x1t

.field public static final USES_VARIABLES_UNKNOWN:B = -0x1t

.field static statementCounter:I


# instance fields
.field protected batchedArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected batchedGeneratedKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;"
        }
    .end annotation
.end field

.field protected cancelTimeoutMutex:Ljava/lang/Object;

.field protected charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

.field protected charEncoding:Ljava/lang/String;

.field protected clearWarningsCalled:Z

.field private closeOnCompletion:Z

.field protected volatile connection:Lcom/mysql/jdbc/MySQLConnection;

.field protected connectionId:J

.field protected continueBatchOnError:Z

.field protected currentCatalog:Ljava/lang/String;

.field protected doEscapeProcessing:Z

.field protected eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private fetchSize:I

.field protected generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

.field protected holdResultsOpenOverClose:Z

.field protected isClosed:Z

.field private isImplicitlyClosingResults:Z

.field private isPoolable:Z

.field protected lastInsertId:J

.field protected lastQueryIsOnDupKeyUpdate:Z

.field private localInfileInputStream:Ljava/io/InputStream;

.field protected maxFieldSize:I

.field protected maxRows:I

.field protected openResults:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/ResultSetInternalMethods;",
            ">;"
        }
    .end annotation
.end field

.field private originalFetchSize:I

.field private originalResultSetType:I

.field protected pedantic:Z

.field protected physicalConnection:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/mysql/jdbc/MySQLConnection;",
            ">;"
        }
    .end annotation
.end field

.field protected pingTarget:Lcom/mysql/jdbc/PingTarget;

.field protected pointOfOrigin:Ljava/lang/String;

.field protected profileSQL:Z

.field protected resultSetConcurrency:I

.field protected resultSetType:I

.field protected results:Lcom/mysql/jdbc/ResultSetInternalMethods;

.field protected retrieveGeneratedKeys:Z

.field protected sendFractionalSeconds:Z

.field protected final statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected statementId:I

.field protected timeoutInMillis:I

.field protected updateCount:J

.field protected useLegacyDatetimeCode:Z

.field protected useUsageAdvisor:Z

.field protected final version5013OrNewer:Z

.field protected warningChain:Ljava/sql/SQLWarning;

.field protected wasCancelled:Z

.field protected wasCancelledByTimeout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ON"

    const-string v1, "DUPLICATE"

    const-string v2, "KEY"

    const-string v3, "UPDATE"

    .line 64
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StatementImpl;->ON_DUPLICATE_KEY_UPDATE_CLAUSE:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 177
    sput v0, Lcom/mysql/jdbc/StatementImpl;->statementCounter:I

    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    .line 186
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    const/4 v1, 0x0

    .line 192
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    .line 195
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->charEncoding:Ljava/lang/String;

    .line 198
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 201
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->physicalConnection:Ljava/lang/ref/Reference;

    const-wide/16 v2, 0x0

    .line 203
    iput-wide v2, p0, Lcom/mysql/jdbc/StatementImpl;->connectionId:J

    .line 206
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    const/4 v2, 0x1

    .line 209
    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    .line 212
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 215
    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    .line 218
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isClosed:Z

    const-wide/16 v3, -0x1

    .line 221
    iput-wide v3, p0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    .line 224
    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v5

    iput v5, p0, Lcom/mysql/jdbc/StatementImpl;->maxFieldSize:I

    const/4 v5, -0x1

    .line 230
    iput v5, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    .line 233
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    .line 236
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->pedantic:Z

    .line 245
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->profileSQL:Z

    .line 248
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 250
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 253
    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    .line 256
    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    .line 262
    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 265
    iput-wide v3, p0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    .line 268
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->useUsageAdvisor:Z

    .line 271
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 274
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->clearWarningsCalled:Z

    .line 280
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->holdResultsOpenOverClose:Z

    .line 282
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 284
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    .line 286
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->continueBatchOnError:Z

    .line 288
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->pingTarget:Lcom/mysql/jdbc/PingTarget;

    .line 297
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->lastQueryIsOnDupKeyUpdate:Z

    .line 300
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 303
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    .line 690
    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->originalResultSetType:I

    .line 691
    iput v0, p0, Lcom/mysql/jdbc/StatementImpl;->originalFetchSize:I

    .line 2491
    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->isPoolable:Z

    .line 2580
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->closeOnCompletion:Z

    if-eqz p1, :cond_9

    .line 317
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v3

    if-nez v3, :cond_9

    .line 321
    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 322
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mysql/jdbc/StatementImpl;->connectionId:J

    .line 323
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 325
    iput-object p2, p0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    .line 326
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->pedantic:Z

    .line 327
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getContinueBatchOnError()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->continueBatchOnError:Z

    .line 328
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getUseLegacyDatetimeCode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->useLegacyDatetimeCode:Z

    .line 329
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getSendFractionalSeconds()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->sendFractionalSeconds:Z

    .line 330
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getEnableEscapeProcessing()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    .line 332
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result p1

    if-nez p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1, p0}, Lcom/mysql/jdbc/MySQLConnection;->registerStatement(Lcom/mysql/jdbc/Statement;)V

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result p1

    iput p1, p0, Lcom/mysql/jdbc/StatementImpl;->maxFieldSize:I

    .line 338
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultFetchSize()I

    move-result p1

    if-eqz p1, :cond_1

    .line 340
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/StatementImpl;->setFetchSize(I)V

    .line 343
    :cond_1
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 344
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->charEncoding:Ljava/lang/String;

    .line 345
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object p2, p0, Lcom/mysql/jdbc/StatementImpl;->charEncoding:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    .line 348
    :cond_2
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getProfileSql()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getUseUsageAdvisor()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getLogSlowQueries()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 349
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoGenerateTestcaseScript()Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v2, :cond_6

    .line 350
    :cond_5
    sget p1, Lcom/mysql/jdbc/StatementImpl;->statementCounter:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lcom/mysql/jdbc/StatementImpl;->statementCounter:I

    iput p1, p0, Lcom/mysql/jdbc/StatementImpl;->statementId:I

    :cond_6
    if-eqz v2, :cond_7

    .line 353
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->pointOfOrigin:Ljava/lang/String;

    .line 354
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getProfileSql()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->profileSQL:Z

    .line 355
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getUseUsageAdvisor()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->useUsageAdvisor:Z

    .line 356
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {p1}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 359
    :cond_7
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getMaxRows()I

    move-result p1

    if-eq p1, v5, :cond_8

    .line 361
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/StatementImpl;->setMaxRows(I)V

    .line 364
    :cond_8
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getHoldResultsOpenOverStatementClose()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->holdResultsOpenOverClose:Z

    .line 366
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 p2, 0x5

    const/16 v1, 0xd

    invoke-interface {p1, p2, v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->version5013OrNewer:Z

    return-void

    :cond_9
    const-string p1, "Statement.0"

    .line 318
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "08003"

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private checkAndPerformCloseOnCompletionAction()V
    .locals 2

    .line 637
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->isCloseOnCompletion()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getOpenResultSetCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    .line 641
    invoke-virtual {p0, v1, v1}, Lcom/mysql/jdbc/StatementImpl;->realClose(ZZ)V

    .line 643
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private createResultSetUsingServerFetch(Ljava/lang/String;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 652
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 653
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget v2, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    iget v3, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    invoke-interface {v1, p1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 655
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    invoke-interface {p1, v1}, Ljava/sql/PreparedStatement;->setFetchSize(I)V

    .line 657
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 658
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    invoke-interface {p1, v1}, Ljava/sql/PreparedStatement;->setMaxRows(I)V

    .line 661
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->statementBegins()V

    .line 663
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->execute()Z

    .line 668
    move-object v1, p1

    check-cast v1, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v1}, Lcom/mysql/jdbc/StatementImpl;->getResultSetInternal()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 670
    check-cast p1, Lcom/mysql/jdbc/PreparedStatement;

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setStatementUsedForFetchingRows(Lcom/mysql/jdbc/PreparedStatement;)V

    .line 672
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 674
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 675
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private executeBatchUsingMultiQueries(ZII)[J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v0, p3

    .line 1120
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v4

    .line 1122
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    if-nez p1, :cond_0

    .line 1124
    :try_start_0
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mysql/jdbc/MysqlIO;->enableMultiQueries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    .line 1132
    :cond_0
    :goto_0
    :try_start_1
    new-array v7, v3, [J

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v3, :cond_1

    const-wide/16 v10, -0x3

    .line 1135
    aput-wide v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1140
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1142
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 1144
    :try_start_2
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v11

    if-eqz v11, :cond_2

    if-eqz v0, :cond_2

    const/4 v11, 0x5

    invoke-interface {v4, v11, v8, v8}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1145
    new-instance v11, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    move-object v12, v10

    check-cast v12, Lcom/mysql/jdbc/StatementImpl;

    invoke-direct {v11, v1, v12}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1146
    :try_start_3
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v12

    int-to-long v13, v0

    invoke-virtual {v12, v11, v13, v14}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 1153
    :goto_2
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v12, "utf"

    .line 1155
    invoke-static {v0, v12}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v12, :cond_3

    const/4 v0, 0x3

    const/4 v12, 0x3

    goto :goto_3

    .line 1157
    :cond_3
    invoke-static {v0}, Lcom/mysql/jdbc/CharsetMapping;->isMultibyteCharset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v12, 0x2

    goto :goto_3

    :cond_4
    const/4 v12, 0x1

    .line 1163
    :goto_3
    iget-boolean v0, v1, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    invoke-interface {v10, v0}, Ljava/sql/Statement;->setEscapeProcessing(Z)V

    .line 1165
    iget-boolean v0, v1, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v13, 0x1

    :goto_4
    move-object v0, v9

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_5
    if-ge v9, v3, :cond_7

    .line 1174
    iget-object v8, v1, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    add-int v17, v17, v18

    mul-int v17, v17, v12

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v17, v17, 0x4

    mul-int v17, v17, v13

    add-int/lit8 v14, v17, 0x20

    iget-object v3, v1, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-le v14, v3, :cond_6

    .line 1179
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v10, v0, v3}, Ljava/sql/Statement;->execute(Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1181
    :try_start_5
    invoke-virtual {v1, v9, v15, v7, v0}, Lcom/mysql/jdbc/StatementImpl;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v16

    .line 1184
    :goto_6
    move-object v0, v10

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v1, v0, v6, v7}, Lcom/mysql/jdbc/StatementImpl;->processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I

    move-result v0

    .line 1186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v0

    move-object v0, v3

    const/4 v15, 0x0

    .line 1190
    :cond_6
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    .line 1191
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    add-int/2addr v15, v3

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, p2

    const/4 v8, 0x0

    const/4 v14, 0x1

    goto :goto_5

    .line 1195
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-lez v3, :cond_8

    .line 1197
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v3, 0x1

    :try_start_7
    invoke-interface {v10, v0, v3}, Ljava/sql/Statement;->execute(Ljava/lang/String;I)Z
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    const/4 v3, 0x1

    :goto_7
    sub-int/2addr v9, v3

    .line 1199
    :try_start_8
    invoke-virtual {v1, v9, v15, v7, v0}, Lcom/mysql/jdbc/StatementImpl;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1202
    :goto_8
    move-object v0, v10

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v1, v0, v6, v7}, Lcom/mysql/jdbc/StatementImpl;->processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I

    :cond_8
    move-object/from16 v0, v16

    if-eqz v11, :cond_a

    .line 1206
    iget-object v3, v11, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-nez v3, :cond_9

    .line 1210
    invoke-virtual {v11}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1212
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    const/4 v6, 0x0

    goto :goto_9

    .line 1207
    :cond_9
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_a
    move-object v6, v11

    :goto_9
    if-nez v0, :cond_f

    if-eqz v6, :cond_b

    .line 1224
    :try_start_9
    invoke-virtual {v6}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1226
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1229
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v10, :cond_d

    .line 1233
    :try_start_a
    invoke-interface {v10}, Ljava/sql/Statement;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v3, v0

    if-nez p1, :cond_c

    .line 1237
    :try_start_b
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1236
    :cond_c
    throw v3

    :cond_d
    :goto_a
    if-nez p1, :cond_e

    .line 1237
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1221
    :cond_e
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    return-object v7

    .line 1218
    :cond_f
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v7, v3}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    move-object v11, v6

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_c

    :catchall_4
    move-exception v0

    goto :goto_b

    :catchall_5
    move-exception v0

    const/4 v10, 0x0

    :goto_b
    const/4 v11, 0x0

    :goto_c
    if-eqz v11, :cond_10

    .line 1224
    :try_start_d
    invoke-virtual {v11}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1226
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 1229
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v10, :cond_12

    .line 1233
    :try_start_e
    invoke-interface {v10}, Ljava/sql/Statement;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object v3, v0

    if-nez p1, :cond_11

    .line 1237
    :try_start_f
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1236
    :cond_11
    throw v3

    :cond_12
    :goto_d
    if-nez p1, :cond_13

    .line 1237
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1223
    :cond_13
    throw v0

    .line 1241
    :goto_e
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw v0
.end method

.method private executeInternal(Ljava/lang/String;Z)Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v12

    .line 751
    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 752
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 754
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/StatementImpl;->checkNullOrEmptyQuery(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->implicitlyCloseAllOpenResults()V

    const/4 v14, 0x0

    .line 760
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    const/4 v15, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "/* ping */"

    .line 761
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->doPingInstead()V

    .line 764
    monitor-exit v13

    return v15

    .line 768
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->findStartOfStatement(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/StringUtils;->firstAlphaCharUc(Ljava/lang/String;I)C

    move-result v10

    const/16 v2, 0x53

    if-ne v10, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 771
    :goto_0
    iput-boolean v1, v11, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    if-eqz v1, :cond_2

    const/16 v3, 0x49

    if-ne v10, v3, :cond_2

    .line 773
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/StatementImpl;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v11, Lcom/mysql/jdbc/StatementImpl;->lastQueryIsOnDupKeyUpdate:Z

    if-nez v2, :cond_4

    .line 775
    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 776
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Statement.27"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Statement.28"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 780
    :cond_4
    :goto_2
    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v9

    if-eqz v1, :cond_5

    const/16 v1, 0x52

    if-ne v10, v1, :cond_5

    .line 784
    invoke-interface {v12, v15}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 788
    :cond_5
    :try_start_1
    invoke-virtual {v11, v12}, Lcom/mysql/jdbc/StatementImpl;->setupStreamingTimeout(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 790
    iget-boolean v1, v11, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    if-eqz v1, :cond_7

    .line 791
    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->serverSupportsConvertFn()Z

    move-result v1

    invoke-static {v0, v1, v12}, Lcom/mysql/jdbc/EscapeProcessor;->escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 793
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 794
    check-cast v0, Ljava/lang/String;

    goto :goto_3

    .line 796
    :cond_6
    check-cast v0, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-object v0, v0, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;

    :cond_7
    :goto_3
    const/4 v8, 0x0

    .line 804
    iput-object v8, v11, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 806
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->useServerFetch()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 807
    invoke-direct {v11, v0}, Lcom/mysql/jdbc/StatementImpl;->createResultSetUsingServerFetch(Ljava/lang/String;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    move-object/from16 v24, v0

    move/from16 v23, v9

    move v0, v10

    goto/16 :goto_c

    .line 814
    :cond_8
    :try_start_2
    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    if-eqz v1, :cond_9

    :try_start_3
    iget v1, v11, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    if-eqz v1, :cond_9

    const/4 v1, 0x5

    invoke-interface {v12, v1, v14, v14}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 815
    new-instance v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v1, v11, v11}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 816
    :try_start_4
    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    iget v4, v11, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    int-to-long v4, v4

    invoke-virtual {v3, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v7, v1

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v14, v1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v14, v8

    move-object v15, v14

    :goto_4
    move v1, v9

    goto/16 :goto_12

    :cond_9
    move-object v7, v8

    .line 819
    :goto_5
    :try_start_5
    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v11, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    if-nez v1, :cond_a

    .line 820
    :try_start_6
    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 821
    :try_start_7
    iget-object v3, v11, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-interface {v12, v3}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v6, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v15, v1

    goto/16 :goto_11

    :catchall_3
    move-exception v0

    move-object v14, v7

    :goto_6
    move-object v15, v8

    goto :goto_4

    :cond_a
    move-object v6, v8

    .line 830
    :goto_7
    :try_start_8
    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 831
    invoke-interface {v12, v0}, Lcom/mysql/jdbc/MySQLConnection;->getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 834
    iget-object v3, v1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    move-object/from16 v17, v1

    move-object/from16 v16, v3

    goto :goto_8

    :cond_b
    move-object/from16 v17, v1

    move-object/from16 v16, v8

    goto :goto_8

    :cond_c
    move-object/from16 v16, v8

    move-object/from16 v17, v16

    :goto_8
    if-eqz v2, :cond_d

    .line 841
    iget v1, v11, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    goto :goto_9

    :cond_d
    const/4 v1, -0x1

    :goto_9
    invoke-interface {v12, v1}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->statementBegins()V

    .line 845
    iget v4, v11, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    const/4 v5, 0x0

    iget v3, v11, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    iget v2, v11, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->createStreamingResultSet()Z

    move-result v18

    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    move-object/from16 v19, v1

    move-object v1, v12

    move/from16 v20, v2

    move-object/from16 v2, p0

    move/from16 v21, v3

    move-object v3, v0

    move-object v15, v6

    move/from16 v6, v21

    move-object v14, v7

    move/from16 v7, v20

    move/from16 v8, v18

    move/from16 v23, v9

    move-object/from16 v9, v19

    move-object/from16 v24, v0

    move v0, v10

    move-object/from16 v10, v16

    :try_start_9
    invoke-interface/range {v1 .. v10}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    if-eqz v14, :cond_f

    .line 849
    iget-object v2, v14, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-nez v2, :cond_e

    .line 853
    invoke-virtual {v14}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    const/4 v8, 0x0

    goto :goto_a

    .line 850
    :cond_e
    iget-object v0, v14, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :cond_f
    move-object v8, v14

    .line 857
    :goto_a
    :try_start_a
    iget-object v2, v11, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 858
    :try_start_b
    iget-boolean v3, v11, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    if-eqz v3, :cond_11

    .line 861
    iget-boolean v0, v11, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    if-eqz v0, :cond_10

    .line 862
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v0}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    goto :goto_b

    .line 864
    :cond_10
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v0}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    .line 867
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 869
    throw v0

    .line 871
    :cond_11
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v8, :cond_12

    .line 874
    :try_start_c
    invoke-virtual {v8}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 875
    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    :cond_12
    if-eqz v15, :cond_13

    .line 879
    invoke-interface {v12, v15}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    :cond_13
    move-object/from16 v8, v17

    :goto_c
    if-eqz v1, :cond_15

    .line 885
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    .line 887
    iput-object v1, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 889
    invoke-interface {v1, v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setFirstCharOfQuery(C)V

    .line 891
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz v8, :cond_14

    .line 893
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-object/from16 v2, v24

    invoke-interface {v12, v2, v8, v0}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    goto :goto_d

    :cond_14
    move-object/from16 v2, v24

    .line 895
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 896
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v3, 0x0

    invoke-interface {v12, v2, v3, v0}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    goto :goto_d

    :catchall_4
    move-exception v0

    move/from16 v1, v23

    goto/16 :goto_14

    :cond_15
    :goto_d
    if-eqz v1, :cond_16

    .line 902
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v0, :cond_16

    const/16 v22, 0x1

    goto :goto_e

    :cond_16
    const/16 v22, 0x0

    :goto_e
    move/from16 v1, v23

    .line 879
    :try_start_d
    invoke-interface {v12, v1}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    .line 906
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 902
    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_f

    return v22

    :catchall_5
    move-exception v0

    move/from16 v1, v23

    .line 871
    :goto_f
    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_10

    :catchall_7
    move-exception v0

    goto :goto_f

    :catchall_8
    move-exception v0

    move/from16 v1, v23

    :goto_10
    move-object v14, v8

    goto :goto_12

    :catchall_9
    move-exception v0

    move/from16 v1, v23

    goto :goto_12

    :catchall_a
    move-exception v0

    move-object v15, v6

    :goto_11
    move-object v14, v7

    goto/16 :goto_4

    :catchall_b
    move-exception v0

    move-object v14, v7

    move-object v3, v8

    move v1, v9

    move-object v15, v3

    goto :goto_12

    :catchall_c
    move-exception v0

    move-object v3, v8

    move v1, v9

    move-object v14, v3

    move-object v15, v14

    :goto_12
    if-eqz v14, :cond_17

    .line 874
    :try_start_10
    invoke-virtual {v14}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 875
    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    goto :goto_13

    :catchall_d
    move-exception v0

    goto :goto_14

    :cond_17
    :goto_13
    if-eqz v15, :cond_18

    .line 879
    invoke-interface {v12, v15}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 873
    :cond_18
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    :catchall_e
    move-exception v0

    move v1, v9

    .line 906
    :goto_14
    :try_start_11
    invoke-interface {v12, v1}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 904
    throw v0

    :catchall_f
    move-exception v0

    .line 908
    monitor-exit v13
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected static findStartOfStatement(Ljava/lang/String;)I
    .locals 3

    const-string v0, "/*"

    .line 2526
    invoke-static {p0, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "*/"

    .line 2527
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "--"

    .line 2534
    invoke-static {p0, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "#"

    invoke-static {p0, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    const/16 v0, 0xa

    .line 2535
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    const/16 v0, 0xd

    .line 2538
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v2, p0

    goto :goto_0

    :cond_4
    move v2, v0

    :cond_5
    :goto_0
    return v2
.end method

.method protected static getOnDuplicateKeyLocation(Ljava/lang/String;ZZZ)I
    .locals 6

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, -0x1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2576
    sget-object v2, Lcom/mysql/jdbc/StatementImpl;->ON_DUPLICATE_KEY_UPDATE_CLAUSE:[Ljava/lang/String;

    const-string v3, "\"\'`"

    const-string v4, "\"\'`"

    if-eqz p3, :cond_1

    sget-object p1, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto :goto_0

    :goto_1
    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result p0

    :goto_2
    return p0
.end method

.method private getRecordCountFromInfo(Ljava/lang/String;)J
    .locals 7

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2002
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2006
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2008
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2013
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :goto_2
    if-ge v2, v1, :cond_3

    .line 2017
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2019
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 2023
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2026
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 2028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    if-ge v2, v1, :cond_5

    .line 2031
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2033
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2038
    :cond_5
    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :goto_6
    if-ge v2, v1, :cond_7

    .line 2042
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2044
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_7

    .line 2048
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2051
    :cond_7
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v4, v0

    return-wide v4
.end method

.method private useServerFetch()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2475
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2476
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isCursorFetchEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    const/16 v2, 0x3ef

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2478
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addBatch(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    if-nez v1, :cond_0

    .line 377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancel()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isClosed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->duplicate()Lcom/mysql/jdbc/Connection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 414
    :try_start_1
    invoke-interface {v1}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 415
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KILL QUERY "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mysql/jdbc/MysqlIO;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const/4 v0, 0x1

    .line 416
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 419
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    :cond_1
    if-eqz v1, :cond_4

    .line 423
    invoke-interface {v1}, Lcom/mysql/jdbc/Connection;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_0
    if-eqz v2, :cond_2

    .line 419
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    :cond_2
    if-eqz v1, :cond_3

    .line 423
    invoke-interface {v1}, Lcom/mysql/jdbc/Connection;->close()V

    .line 418
    :cond_3
    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method protected checkClosed()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Statement.49"

    .line 442
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected checkForDml(Ljava/lang/String;C)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x49

    if-eq p2, v0, :cond_0

    const/16 v0, 0x55

    if-eq p2, v0, :cond_0

    const/16 v0, 0x44

    if-eq p2, v0, :cond_0

    const/16 v0, 0x41

    if-eq p2, v0, :cond_0

    const/16 v0, 0x43

    if-eq p2, v0, :cond_0

    const/16 v0, 0x54

    if-eq p2, v0, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_1

    :cond_0
    const-string v2, "\'\""

    const-string v3, "\'\""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p1

    .line 463
    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/StringUtils;->stripComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    const-string p2, "INSERT"

    .line 465
    invoke-static {p1, p2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "UPDATE"

    invoke-static {p1, p2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "DELETE"

    invoke-static {p1, p2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "DROP"

    invoke-static {p1, p2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "CREATE"

    invoke-static {p1, p2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "ALTER"

    invoke-static {p1, p2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "TRUNCATE"

    invoke-static {p1, p2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "RENAME"

    invoke-static {p1, p2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string p1, "Statement.57"

    .line 469
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected checkNullOrEmptyQuery(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 488
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Statement.61"

    .line 489
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "Statement.59"

    .line 485
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public clearBatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 506
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearWarnings()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 517
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 518
    :try_start_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->clearWarningsCalled:Z

    const/4 v1, 0x0

    .line 519
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 520
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 538
    invoke-virtual {p0, v0, v0}, Lcom/mysql/jdbc/StatementImpl;->realClose(ZZ)V

    return-void
.end method

.method protected closeAllOpenResults()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v0, :cond_0

    return-void

    .line 551
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    if-eqz v1, :cond_2

    .line 553
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 555
    :try_start_1
    invoke-interface {v2, v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 557
    :try_start_2
    invoke-static {v2}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto :goto_0

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 563
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public closeOnCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2583
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2584
    :try_start_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->closeOnCompletion:Z

    .line 2585
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected containsOnDuplicateKeyInString(Ljava/lang/String;)Z
    .locals 3

    .line 2570
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDontCheckOnDuplicateKeyUpdateInSQL()Z

    move-result v0

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v1

    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/mysql/jdbc/StatementImpl;->getOnDuplicateKeyLocation(Ljava/lang/String;ZZZ)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected createStreamingResultSet()Z
    .locals 2

    .line 686
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public disableStreamingResults()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 709
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 710
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_0

    .line 711
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->originalFetchSize:I

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/StatementImpl;->setFetchSize(I)V

    .line 712
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->originalResultSetType:I

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/StatementImpl;->setResultSetType(I)V

    .line 714
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected doPingInstead()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1440
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1441
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->pingTarget:Lcom/mysql/jdbc/PingTarget;

    if-eqz v1, :cond_0

    .line 1442
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->pingTarget:Lcom/mysql/jdbc/PingTarget;

    invoke-interface {v1}, Lcom/mysql/jdbc/PingTarget;->doPing()V

    goto :goto_0

    .line 1444
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->ping()V

    .line 1447
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->generatePingResultSet()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1448
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1449
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableStreamingResults()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 699
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 700
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    iput v1, p0, Lcom/mysql/jdbc/StatementImpl;->originalResultSetType:I

    .line 701
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    iput v1, p0, Lcom/mysql/jdbc/StatementImpl;->originalFetchSize:I

    const/high16 v1, -0x80000000

    .line 703
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/StatementImpl;->setFetchSize(I)V

    const/16 v1, 0x3eb

    .line 704
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/StatementImpl;->setResultSetType(I)V

    .line 705
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 745
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeInternal(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 939
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeInternal(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/String;[I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 946
    array-length p2, p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeInternal(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 953
    array-length p2, p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeInternal(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public executeBatch()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 970
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->executeBatchInternal()[J

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt([J)[I

    move-result-object v0

    return-object v0
.end method

.method protected executeBatchInternal()[J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    .line 976
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 977
    :try_start_0
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_12

    .line 982
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->implicitlyCloseAllOpenResults()V

    .line 984
    iget-object v0, v1, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 989
    :cond_0
    iget v5, v1, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 990
    iput v4, v1, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 995
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 997
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->statementBegins()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v7, 0x1

    .line 1000
    :try_start_2
    iput-boolean v7, v1, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    .line 1004
    iget-object v0, v1, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 1005
    iget-object v0, v1, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 1007
    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 1009
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getAllowMultiQueries()Z

    move-result v0

    const/4 v9, 0x4

    .line 1011
    invoke-interface {v2, v9, v7, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez v0, :cond_1

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v10

    if-eqz v10, :cond_2

    if-le v8, v9, :cond_2

    .line 1013
    :cond_1
    invoke-direct {v1, v0, v8, v5}, Lcom/mysql/jdbc/StatementImpl;->executeBatchUsingMultiQueries(ZII)[J

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1093
    :try_start_3
    iget-object v7, v1, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1087
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1089
    iput v5, v1, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->clearBatch()V

    .line 1013
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    return-object v0

    .line 1016
    :cond_2
    :try_start_5
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    const/4 v0, 0x5

    invoke-interface {v2, v0, v4, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1017
    new-instance v9, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v9, v1, v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1018
    :try_start_6
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    int-to-long v10, v5

    invoke-virtual {v0, v9, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    .line 1021
    :goto_0
    new-array v10, v8, [J

    const/4 v0, 0x0

    :goto_1
    const-wide/16 v11, -0x3

    if-ge v0, v8, :cond_4

    .line 1024
    aput-wide v11, v10, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v8, :cond_9

    .line 1033
    :try_start_7
    iget-object v14, v1, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1034
    invoke-virtual {v1, v14, v7, v7}, Lcom/mysql/jdbc/StatementImpl;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v15

    aput-wide v15, v10, v13

    .line 1036
    iget-object v15, v1, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v15}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getFirstCharOfQuery()C

    move-result v15

    const/16 v6, 0x49

    if-ne v15, v6, :cond_5

    invoke-virtual {v1, v14}, Lcom/mysql/jdbc/StatementImpl;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v1, v6}, Lcom/mysql/jdbc/StatementImpl;->getBatchedGeneratedKeys(I)V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1038
    :try_start_8
    aput-wide v11, v10, v13

    .line 1040
    iget-boolean v6, v1, Lcom/mysql/jdbc/StatementImpl;->continueBatchOnError:Z

    if-eqz v6, :cond_6

    instance-of v6, v0, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    if-nez v6, :cond_6

    instance-of v6, v0, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    if-nez v6, :cond_6

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/StatementImpl;->hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z

    move-result v6

    if-nez v6, :cond_6

    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1044
    :cond_6
    new-array v6, v13, [J

    .line 1046
    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/StatementImpl;->hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    .line 1047
    :goto_5
    array-length v8, v6

    if-ge v7, v8, :cond_8

    .line 1048
    aput-wide v11, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1051
    :cond_7
    invoke-static {v10, v4, v6, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1054
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_9
    if-nez v0, :cond_a

    goto :goto_6

    .line 1060
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v0, v10, v6}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_b
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_6
    if-eqz v9, :cond_d

    .line 1065
    iget-object v0, v9, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-nez v0, :cond_c

    .line 1069
    invoke-virtual {v9}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1071
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v6, 0x0

    goto :goto_7

    .line 1066
    :cond_c
    iget-object v0, v9, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v0

    move-object v6, v9

    goto :goto_9

    :cond_d
    move-object v6, v9

    :goto_7
    if-eqz v10, :cond_e

    goto :goto_8

    .line 1075
    :cond_e
    :try_start_9
    new-array v10, v4, [J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1091
    :goto_8
    :try_start_a
    iget-object v0, v1, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v6, :cond_f

    .line 1082
    :try_start_b
    invoke-virtual {v6}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1084
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1087
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1089
    iput v5, v1, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->clearBatch()V

    .line 1075
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    return-object v10

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    const/4 v6, 0x0

    .line 1091
    :goto_9
    :try_start_c
    iget-object v7, v1, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1077
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_a

    :catchall_4
    move-exception v0

    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_10

    .line 1082
    :try_start_d
    invoke-virtual {v6}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1084
    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 1087
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1089
    iput v5, v1, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->clearBatch()V

    .line 1081
    throw v0

    .line 985
    :cond_11
    :goto_b
    new-array v0, v4, [J

    monitor-exit v3

    return-object v0

    .line 978
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement.34"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Statement.35"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :catchall_5
    move-exception v0

    .line 1093
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0
.end method

.method public executeLargeBatch()[J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2599
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->executeBatchInternal()[J

    move-result-object v0

    return-object v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2607
    invoke-virtual {p0, p1, v0, v0}, Lcom/mysql/jdbc/StatementImpl;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2615
    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public executeLargeUpdate(Ljava/lang/String;[I)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2623
    array-length p2, p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/mysql/jdbc/StatementImpl;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public executeLargeUpdate(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2631
    array-length p2, p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/mysql/jdbc/StatementImpl;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 1305
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1306
    :try_start_0
    iget-object v13, v11, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v14, 0x0

    .line 1308
    iput-boolean v14, v11, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    .line 1310
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/StatementImpl;->checkNullOrEmptyQuery(Ljava/lang/String;)V

    .line 1312
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1314
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->implicitlyCloseAllOpenResults()V

    .line 1316
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    const-string v1, "/* ping */"

    .line 1317
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1318
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->doPingInstead()V

    .line 1320
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v12

    return-object v0

    .line 1324
    :cond_0
    invoke-virtual {v11, v13}, Lcom/mysql/jdbc/StatementImpl;->setupStreamingTimeout(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1326
    iget-boolean v1, v11, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    if-eqz v1, :cond_2

    .line 1327
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->serverSupportsConvertFn()Z

    move-result v1

    iget-object v2, v11, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/EscapeProcessor;->escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 1329
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1330
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1332
    :cond_1
    check-cast v0, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-object v0, v0, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;

    .line 1336
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/mysql/jdbc/StatementImpl;->findStartOfStatement(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->firstAlphaCharUc(Ljava/lang/String;I)C

    move-result v1

    .line 1338
    invoke-virtual {v11, v0, v1}, Lcom/mysql/jdbc/StatementImpl;->checkForDml(Ljava/lang/String;C)V

    .line 1342
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->useServerFetch()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1343
    invoke-direct {v11, v0}, Lcom/mysql/jdbc/StatementImpl;->createResultSetUsingServerFetch(Ljava/lang/String;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    iput-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1345
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    return-object v0

    .line 1353
    :cond_3
    :try_start_1
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    if-eqz v1, :cond_4

    :try_start_2
    iget v1, v11, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    invoke-interface {v13, v1, v14, v14}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1354
    new-instance v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v1, v11, v11}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1355
    :try_start_3
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    iget v3, v11, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v10, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v14, v1

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    const/4 v14, 0x0

    goto/16 :goto_b

    :cond_4
    const/4 v10, 0x0

    .line 1358
    :goto_1
    :try_start_4
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v11, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1359
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 1360
    :try_start_5
    iget-object v2, v11, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-interface {v13, v2}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v9, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_9

    :cond_5
    const/4 v9, 0x0

    .line 1369
    :goto_2
    :try_start_6
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1370
    invoke-interface {v13, v0}, Lcom/mysql/jdbc/MySQLConnection;->getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1373
    iget-object v2, v1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    move-object v8, v1

    move-object/from16 v16, v2

    goto :goto_4

    :cond_6
    move-object v8, v1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    const/16 v16, 0x0

    .line 1377
    :goto_4
    iget v1, v11, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    invoke-interface {v13, v1}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 1379
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->statementBegins()V

    .line 1381
    iget v4, v11, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    const/4 v5, 0x0

    iget v6, v11, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    iget v7, v11, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->createStreamingResultSet()Z

    move-result v17

    iget-object v3, v11, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v18, v3

    move-object v3, v0

    move-object v15, v8

    move/from16 v8, v17

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    move-object v14, v10

    move-object/from16 v10, v16

    :try_start_7
    invoke-interface/range {v1 .. v10}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    iput-object v1, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v14, :cond_9

    .line 1385
    iget-object v1, v14, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-nez v1, :cond_8

    .line 1389
    invoke-virtual {v14}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1391
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    const/4 v14, 0x0

    goto :goto_5

    .line 1386
    :cond_8
    iget-object v0, v14, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    throw v0

    .line 1396
    :cond_9
    :goto_5
    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 1397
    :try_start_8
    iget-boolean v2, v11, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    if-eqz v2, :cond_b

    .line 1400
    iget-boolean v0, v11, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    if-eqz v0, :cond_a

    .line 1401
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v0}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    goto :goto_6

    .line 1403
    :cond_a
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v0}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    .line 1406
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1408
    throw v0

    .line 1410
    :cond_b
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1436
    :try_start_9
    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v14, :cond_c

    .line 1415
    invoke-virtual {v14}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1417
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    :cond_c
    move-object/from16 v2, v19

    if-eqz v2, :cond_d

    .line 1421
    invoke-interface {v13, v2}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1425
    :cond_d
    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v1

    iput-wide v1, v11, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    if-eqz v15, :cond_e

    .line 1428
    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v13, v0, v15, v1}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    goto :goto_7

    .line 1430
    :cond_e
    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1431
    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v2, 0x0

    invoke-interface {v13, v0, v2, v1}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 1435
    :cond_f
    :goto_7
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    return-object v0

    :catchall_3
    move-exception v0

    move-object/from16 v2, v19

    .line 1410
    :goto_8
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_b

    :catchall_5
    move-exception v0

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object/from16 v2, v19

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object v2, v9

    :goto_9
    move-object v14, v10

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object v14, v10

    :goto_a
    const/4 v2, 0x0

    goto :goto_b

    :catchall_9
    move-exception v0

    const/4 v2, 0x0

    move-object v14, v2

    .line 1421
    :goto_b
    :try_start_c
    iget-object v1, v11, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v14, :cond_10

    .line 1415
    invoke-virtual {v14}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1417
    invoke-interface {v13}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    :cond_10
    if-eqz v2, :cond_11

    .line 1421
    invoke-interface {v13, v2}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 1412
    :cond_11
    throw v0

    :catchall_a
    move-exception v0

    .line 1436
    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected executeSimpleNonQuery(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1465
    iget-object v8, p0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x3eb

    const/16 v6, 0x3ef

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-interface/range {v0 .. v10}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object p1

    invoke-interface {p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V

    return-void
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1480
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result p1

    return p1
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1616
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;I)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result p1

    return p1
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1623
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;[I)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result p1

    return p1
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1630
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result p1

    return p1
.end method

.method protected executeUpdateInternal(Ljava/lang/String;ZZ)J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 1484
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 1485
    :try_start_0
    iget-object v14, v12, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 1487
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/StatementImpl;->checkNullOrEmptyQuery(Ljava/lang/String;)V

    .line 1489
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1491
    invoke-static/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->findStartOfStatement(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/StringUtils;->firstAlphaCharUc(Ljava/lang/String;I)C

    move-result v11

    .line 1493
    iput-boolean v1, v12, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    const/4 v2, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    const/16 v3, 0x49

    if-ne v11, v3, :cond_0

    .line 1495
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/StatementImpl;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v12, Lcom/mysql/jdbc/StatementImpl;->lastQueryIsOnDupKeyUpdate:Z

    .line 1499
    iget-boolean v3, v12, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    if-eqz v3, :cond_2

    .line 1500
    iget-object v3, v12, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->serverSupportsConvertFn()Z

    move-result v3

    iget-object v4, v12, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v0, v3, v4}, Lcom/mysql/jdbc/EscapeProcessor;->escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 1502
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1503
    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 1505
    :cond_1
    check-cast v0, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-object v0, v0, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;

    :cond_2
    :goto_1
    move-object v3, v0

    .line 1509
    invoke-interface {v14, v10}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly(Z)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "select"

    .line 1514
    invoke-static {v3, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1518
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->implicitlyCloseAllOpenResults()V

    .line 1526
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v9

    if-eqz v1, :cond_3

    const/16 v0, 0x52

    if-ne v11, v0, :cond_3

    .line 1530
    invoke-interface {v14, v2}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    :cond_3
    const/4 v15, 0x0

    .line 1534
    :try_start_1
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    if-eqz v0, :cond_4

    :try_start_2
    iget v0, v12, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-interface {v14, v0, v10, v10}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1535
    new-instance v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v1, v12, v12}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1536
    :try_start_3
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    iget v2, v12, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    int-to-long v4, v2

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catchall_1
    move-exception v0

    move v3, v9

    move-object v2, v15

    move-object v4, v2

    :goto_2
    const/4 v5, 0x0

    goto/16 :goto_c

    :cond_4
    move-object v8, v15

    .line 1539
    :goto_3
    :try_start_4
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    if-nez v0, :cond_5

    .line 1540
    :try_start_5
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1541
    :try_start_6
    iget-object v0, v12, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    invoke-interface {v14, v0}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v7, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto/16 :goto_b

    :catchall_3
    move-exception v0

    move-object v2, v8

    :goto_4
    move v3, v9

    move-object v4, v15

    goto :goto_2

    :cond_5
    move-object v7, v15

    :goto_5
    const/4 v0, -0x1

    .line 1547
    :try_start_7
    invoke-interface {v14, v0}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 1549
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->statementBegins()V

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v0, 0x3ef

    const/16 v16, 0x0

    .line 1552
    iget-object v2, v12, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    const/16 v17, 0x0

    move-object v1, v14

    move-object/from16 v18, v2

    move-object/from16 v2, p0

    move-object/from16 v19, v7

    move v7, v0

    move-object/from16 v20, v8

    move/from16 v8, v16

    move/from16 v21, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v17

    move v0, v11

    move/from16 v11, p2

    :try_start_8
    invoke-interface/range {v1 .. v11}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    move-object/from16 v2, v20

    if-eqz v2, :cond_7

    .line 1556
    :try_start_9
    iget-object v3, v2, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-nez v3, :cond_6

    .line 1560
    invoke-virtual {v2}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1562
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    goto :goto_6

    .line 1557
    :cond_6
    iget-object v0, v2, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    move-object/from16 v4, v19

    goto/16 :goto_a

    :cond_7
    move-object v15, v2

    .line 1567
    :goto_6
    :try_start_a
    iget-object v2, v12, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 1568
    :try_start_b
    iget-boolean v3, v12, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    if-eqz v3, :cond_9

    .line 1571
    iget-boolean v0, v12, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    if-eqz v0, :cond_8

    .line 1572
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v0}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    goto :goto_7

    .line 1574
    :cond_8
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v0}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    .line 1577
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 1579
    throw v0

    .line 1581
    :cond_9
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move/from16 v3, v21

    .line 1609
    :try_start_c
    invoke-interface {v14, v3}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    if-eqz v15, :cond_a

    .line 1586
    invoke-virtual {v15}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1588
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    :cond_a
    move-object/from16 v4, v19

    if-eqz v4, :cond_b

    .line 1592
    invoke-interface {v14, v4}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    :cond_b
    if-nez p2, :cond_c

    .line 1596
    iget-object v2, v12, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1600
    :cond_c
    iput-object v1, v12, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1602
    invoke-interface {v1, v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setFirstCharOfQuery(C)V

    .line 1604
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateCount()J

    move-result-wide v2

    iput-wide v2, v12, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    .line 1606
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v0

    iput-wide v0, v12, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    .line 1608
    iget-wide v0, v12, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    return-wide v0

    :catchall_5
    move-exception v0

    move-object/from16 v4, v19

    move/from16 v3, v21

    const/4 v5, 0x0

    .line 1581
    :goto_8
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_9

    :catchall_7
    move-exception v0

    goto :goto_8

    :catchall_8
    move-exception v0

    move-object/from16 v4, v19

    move/from16 v3, v21

    const/4 v5, 0x0

    :goto_9
    move-object v2, v15

    goto :goto_c

    :catchall_9
    move-exception v0

    move-object/from16 v4, v19

    move-object/from16 v2, v20

    :goto_a
    move/from16 v3, v21

    goto/16 :goto_2

    :catchall_a
    move-exception v0

    move-object v4, v7

    :goto_b
    move-object v2, v8

    move v3, v9

    goto/16 :goto_2

    :catchall_b
    move-exception v0

    move-object v2, v8

    move v3, v9

    const/4 v5, 0x0

    move-object v4, v15

    goto :goto_c

    :catchall_c
    move-exception v0

    move v3, v9

    const/4 v5, 0x0

    move-object v2, v15

    move-object v4, v2

    .line 1596
    :goto_c
    :try_start_f
    invoke-interface {v14, v3}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    if-eqz v2, :cond_d

    .line 1586
    invoke-virtual {v2}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1588
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    :cond_d
    if-eqz v4, :cond_e

    .line 1592
    invoke-interface {v14, v4}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    :cond_e
    if-nez p2, :cond_f

    .line 1596
    iget-object v1, v12, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1583
    :cond_f
    throw v0

    :cond_10
    const-string v0, "Statement.46"

    .line 1515
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "01S03"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1510
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Statement.42"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Statement.43"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :catchall_d
    move-exception v0

    .line 1609
    monitor-exit v13
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected generatePingResultSet()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1453
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1454
    :try_start_0
    new-array v2, v1, [Lcom/mysql/jdbc/Field;

    new-instance v3, Lcom/mysql/jdbc/Field;

    const/4 v4, 0x0

    const-string v5, "1"

    const/4 v6, -0x5

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1455
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1456
    new-array v5, v1, [B

    const/16 v6, 0x31

    aput-byte v6, v5, v4

    .line 1458
    new-instance v6, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v1, v1, [[B

    aput-object v5, v1, v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v6, v1, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;Lcom/mysql/jdbc/MySQLConnection;)Ljava/sql/ResultSet;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1461
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBatchedArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->batchedArgs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getBatchedGeneratedKeys(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2446
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2447
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 2452
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getGeneratedKeysInternal()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object p1

    :goto_0
    move-object v1, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    int-to-long v4, p1

    .line 2454
    invoke-virtual {p0, v4, v5}, Lcom/mysql/jdbc/StatementImpl;->getGeneratedKeysInternal(J)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object p1

    goto :goto_0

    .line 2457
    :goto_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2458
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    new-instance v4, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v5, v2, [[B

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2472
    :cond_1
    :try_start_2
    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_2

    .line 2464
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 2467
    :try_start_4
    iput-boolean v3, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    throw p1

    :cond_2
    :goto_2
    iput-boolean v3, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    goto :goto_5

    :goto_3
    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_3

    .line 2464
    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 2467
    :try_start_6
    iput-boolean v3, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    throw p1

    :cond_3
    :goto_4
    iput-boolean v3, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    .line 2461
    throw p1

    .line 2471
    :cond_4
    :goto_5
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1
.end method

.method protected getBatchedGeneratedKeys(Ljava/sql/Statement;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2426
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2427
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 2431
    :try_start_1
    invoke-interface {p1}, Ljava/sql/Statement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2433
    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2434
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    const/4 v3, 0x1

    new-array v4, v3, [[B

    const/4 v5, 0x0

    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v3

    aput-object v3, v4, v5

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 2438
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    :goto_1
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    .line 2437
    :cond_1
    throw v1

    .line 2442
    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method protected getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1638
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1639
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_0

    .line 1640
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1643
    :cond_0
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1644
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1656
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1657
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1658
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .line 2566
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method public getFetchDirection()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3e8

    return v0
.end method

.method public getFetchSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1682
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1683
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1684
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1691
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1692
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->retrieveGeneratedKeys:Z

    if-eqz v1, :cond_2

    .line 1697
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1698
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->lastQueryIsOnDupKeyUpdate:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    .line 1699
    invoke-virtual {p0, v1, v2}, Lcom/mysql/jdbc/StatementImpl;->getGeneratedKeysInternal(J)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v0

    return-object v1

    .line 1701
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getGeneratedKeysInternal()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v0

    return-object v1

    :cond_1
    const/4 v1, 0x1

    .line 1704
    new-array v3, v1, [Lcom/mysql/jdbc/Field;

    .line 1705
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v4, "GENERATED_KEY"

    const/4 v5, -0x5

    const/16 v6, 0x14

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v1, v3, v2

    .line 1706
    aget-object v1, v3, v2

    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Field;->setConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1708
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    new-instance v4, Lcom/mysql/jdbc/RowDataStatic;

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Lcom/mysql/jdbc/RowDataStatic;-><init>(Ljava/util/List;)V

    iget-object v5, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v7, 0x0

    move-object v6, p0

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1711
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v0

    return-object v1

    :cond_2
    const-string v1, "Statement.GeneratedKeysNotRequested"

    .line 1693
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    :catchall_0
    move-exception v1

    .line 1712
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getGeneratedKeysInternal()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1721
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v0

    .line 1722
    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/StatementImpl;->getGeneratedKeysInternal(J)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    return-object v0
.end method

.method protected getGeneratedKeysInternal(J)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1726
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    const/4 v0, 0x1

    .line 1727
    :try_start_0
    new-array v2, v0, [Lcom/mysql/jdbc/Field;

    .line 1728
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "GENERATED_KEY"

    const/4 v5, -0x5

    const/16 v6, 0x14

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 1729
    aget-object v1, v2, v3

    iget-object v4, v7, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v4}, Lcom/mysql/jdbc/Field;->setConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1730
    aget-object v1, v2, v3

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/Field;->setUseOldNameMetadata(Z)V

    .line 1732
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1734
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getLastInsertID()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-gez v6, :cond_0

    .line 1737
    aget-object v11, v2, v3

    invoke-virtual {v11}, Lcom/mysql/jdbc/Field;->setUnsigned()V

    .line 1740
    :cond_0
    iget-object v11, v7, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v11, :cond_3

    .line 1741
    iget-object v11, v7, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v11}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getServerInfo()Ljava/lang/String;

    move-result-object v11

    cmp-long v14, p1, v9

    if-lez v14, :cond_1

    .line 1746
    iget-object v14, v7, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v14}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getFirstCharOfQuery()C

    move-result v14

    const/16 v15, 0x52

    if-ne v14, v15, :cond_1

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 1747
    invoke-direct {v7, v11}, Lcom/mysql/jdbc/StatementImpl;->getRecordCountFromInfo(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_0

    :cond_1
    move-wide/from16 v11, p1

    :goto_0
    if-eqz v6, :cond_3

    cmp-long v6, v11, v9

    if-lez v6, :cond_3

    move-wide v5, v4

    const/4 v4, 0x0

    :goto_1
    int-to-long v13, v4

    cmp-long v13, v13, v11

    if-gez v13, :cond_3

    .line 1752
    new-array v13, v0, [[B

    cmp-long v14, v5, v9

    if-lez v14, :cond_2

    .line 1754
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v3

    move/from16 v19, v4

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/16 v14, 0x8

    .line 1756
    new-array v15, v14, [B

    const/16 v16, 0x7

    const-wide/16 v17, 0xff

    and-long v9, v5, v17

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v15, v16

    const/4 v9, 0x6

    move/from16 v19, v4

    ushr-long v3, v5, v14

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v15, v9

    const/4 v3, 0x5

    const/16 v4, 0x10

    ushr-long v9, v5, v4

    long-to-int v4, v9

    int-to-byte v4, v4

    aput-byte v4, v15, v3

    const/4 v3, 0x4

    const/16 v4, 0x18

    ushr-long v9, v5, v4

    long-to-int v4, v9

    int-to-byte v4, v4

    aput-byte v4, v15, v3

    const/4 v3, 0x3

    const/16 v4, 0x20

    ushr-long v9, v5, v4

    long-to-int v4, v9

    int-to-byte v4, v4

    aput-byte v4, v15, v3

    const/4 v3, 0x2

    const/16 v4, 0x28

    ushr-long v9, v5, v4

    long-to-int v4, v9

    int-to-byte v4, v4

    aput-byte v4, v15, v3

    const/16 v3, 0x30

    ushr-long v3, v5, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v15, v0

    const/16 v3, 0x38

    ushr-long v3, v5, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v15, v4

    .line 1766
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v0, v15}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1768
    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v13, v4

    .line 1770
    :goto_2
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-direct {v3, v13, v9}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1771
    iget-object v3, v7, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getAutoIncrementIncrement()I

    move-result v3

    int-to-long v9, v3

    add-long/2addr v5, v9

    add-int/lit8 v3, v19, 0x1

    move v4, v3

    const/4 v3, 0x0

    const-wide/16 v9, 0x0

    goto/16 :goto_1

    .line 1776
    :cond_3
    iget-object v0, v7, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    new-instance v3, Lcom/mysql/jdbc/RowDataStatic;

    invoke-direct {v3, v1}, Lcom/mysql/jdbc/RowDataStatic;-><init>(Ljava/util/List;)V

    iget-object v4, v7, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v6, 0x0

    move-object v1, v0

    move-object/from16 v5, p0

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    .line 1779
    monitor-exit v8

    return-object v0

    :catchall_0
    move-exception v0

    .line 1780
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getId()I
    .locals 1

    .line 1789
    iget v0, p0, Lcom/mysql/jdbc/StatementImpl;->statementId:I

    return v0
.end method

.method public getLargeMaxRows()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2640
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getMaxRows()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLargeUpdateCount()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2648
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2649
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    .line 2650
    monitor-exit v0

    return-wide v2

    .line 2653
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2654
    monitor-exit v0

    return-wide v2

    .line 2657
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateCount()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 2658
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastInsertID()J
    .locals 3

    .line 1805
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1806
    :try_start_1
    iget-wide v1, p0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 1807
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 1809
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLocalInfileInputStream()Ljava/io/InputStream;
    .locals 1

    .line 2554
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->localInfileInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLongUpdateCount()J
    .locals 4

    .line 1826
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1827
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    const-wide/16 v2, -0x1

    if-nez v1, :cond_0

    .line 1828
    monitor-exit v0

    return-wide v2

    .line 1831
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1832
    monitor-exit v0

    return-wide v2

    .line 1835
    :cond_1
    iget-wide v1, p0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 1836
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 1838
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMaxFieldSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1854
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1855
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->maxFieldSize:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1856
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxRows()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1870
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1871
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    .line 1872
    monitor-exit v0

    return v1

    .line 1875
    :cond_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1876
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMoreResults()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1889
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/StatementImpl;->getMoreResults(I)Z

    move-result v0

    return v0
.end method

.method public getMoreResults(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1896
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1897
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1898
    monitor-exit v0

    return v2

    .line 1901
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->createStreamingResultSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1904
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1905
    :goto_0
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1911
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getNextResultSet()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v3

    packed-switch p1, :pswitch_data_0

    const-string p1, "Statement.19"

    goto/16 :goto_3

    .line 1928
    :pswitch_0
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz p1, :cond_3

    if-nez v1, :cond_2

    .line 1929
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1930
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {p1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V

    .line 1933
    :cond_2
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->clearNextResult()V

    .line 1936
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->closeAllOpenResults()V

    goto :goto_1

    .line 1941
    :pswitch_1
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1942
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1945
    :cond_4
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->clearNextResult()V

    goto :goto_1

    .line 1916
    :pswitch_2
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz p1, :cond_6

    if-nez v1, :cond_5

    .line 1917
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1918
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {p1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V

    .line 1921
    :cond_5
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->clearNextResult()V

    .line 1953
    :cond_6
    :goto_1
    iput-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1955
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    const-wide/16 v3, -0x1

    if-nez p1, :cond_7

    .line 1956
    iput-wide v3, p0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    .line 1957
    iput-wide v3, p0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    goto :goto_2

    .line 1958
    :cond_7
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1959
    iput-wide v3, p0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    .line 1960
    iput-wide v3, p0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    goto :goto_2

    .line 1962
    :cond_8
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateCount()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mysql/jdbc/StatementImpl;->updateCount:J

    .line 1963
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mysql/jdbc/StatementImpl;->lastInsertId:J

    .line 1966
    :goto_2
    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    :cond_9
    if-nez v2, :cond_a

    .line 1968
    invoke-direct {p0}, Lcom/mysql/jdbc/StatementImpl;->checkAndPerformCloseOnCompletionAction()V

    .line 1970
    :cond_a
    monitor-exit v0

    return v2

    .line 1950
    :goto_3
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 1971
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOpenResultSetCount()I
    .locals 3

    const/4 v0, 0x0

    .line 617
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 619
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    monitor-exit v1

    return v2

    .line 622
    :cond_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    .line 623
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0
.end method

.method public getQueryTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1985
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1986
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    div-int/lit16 v1, v1, 0x3e8

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1987
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2066
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2067
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2068
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getResultSetConcurrency()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2080
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2081
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2082
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getResultSetHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method protected getResultSetInternal()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 2

    .line 2094
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2095
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2096
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2098
    :catch_0
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    return-object v0
.end method

.method public getResultSetType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2111
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2112
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUpdateCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2127
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result v0

    return v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2150
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2152
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->clearWarningsCalled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2153
    monitor-exit v0

    return-object v1

    .line 2156
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2157
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v1}, Lcom/mysql/jdbc/SQLError;->convertShowWarningsToSQLWarnings(Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLWarning;

    move-result-object v1

    .line 2159
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    if-eqz v2, :cond_1

    .line 2160
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    invoke-virtual {v2, v1}, Ljava/sql/SQLWarning;->setNextWarning(Ljava/sql/SQLWarning;)V

    goto :goto_0

    .line 2162
    :cond_1
    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 2165
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    monitor-exit v0

    return-object v1

    .line 2168
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2169
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/BatchUpdateException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    move v0, p1

    :goto_0
    sub-int v1, p1, p2

    if-le v0, v1, :cond_0

    const-wide/16 v1, -0x3

    .line 1279
    aput-wide v1, p3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1282
    :cond_0
    iget-boolean p2, p0, Lcom/mysql/jdbc/StatementImpl;->continueBatchOnError:Z

    if-eqz p2, :cond_1

    instance-of p2, p4, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    if-nez p2, :cond_1

    instance-of p2, p4, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    if-nez p2, :cond_1

    invoke-virtual {p0, p4}, Lcom/mysql/jdbc/StatementImpl;->hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object p4

    .line 1287
    :cond_1
    new-array p2, p1, [J

    const/4 v0, 0x0

    .line 1288
    invoke-static {p3, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1290
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    invoke-static {p4, p2, p1}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected final hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z
    .locals 2

    .line 1097
    invoke-virtual {p1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result p1

    const/16 v0, 0x4bd

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1104
    :pswitch_0
    iget-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->version5013OrNewer:Z

    xor-int/2addr p1, v1

    return p1

    :cond_0
    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4b5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected implicitlyCloseAllOpenResults()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 570
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    const/4 v0, 0x0

    .line 572
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getHoldResultsOpenOverStatementClose()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->holdResultsOpenOverClose:Z

    if-nez v1, :cond_2

    .line 573
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1, v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v1, :cond_1

    .line 577
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1, v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->closeAllOpenResults()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    :cond_2
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    .line 582
    throw v1
.end method

.method public isCloseOnCompletion()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2589
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2590
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->closeOnCompletion:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2591
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isClosed()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2482
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2486
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2487
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/StatementImpl;->isClosed:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2488
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isCursorRequired()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isPoolable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2494
    iget-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->isPoolable:Z

    return v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2505
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 2508
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1245
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    add-int/lit8 v1, p2, 0x1

    .line 1246
    :try_start_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v2

    aput-wide v2, p3, p2

    .line 1248
    iget-object p2, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 1250
    check-cast v4, [[B

    if-eqz p2, :cond_1

    .line 1253
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLastInsertID()J

    move-result-wide v4

    .line 1255
    new-array v6, v3, [[B

    .line 1256
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v6, v2

    .line 1257
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getMoreResults()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    goto :goto_2

    .line 1272
    :cond_2
    monitor-exit v0

    return v1

    :cond_3
    :goto_2
    add-int/lit8 v4, v1, 0x1

    .line 1261
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v5

    aput-wide v5, p3, v1

    if-eqz p2, :cond_4

    .line 1264
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLastInsertID()J

    move-result-wide v5

    .line 1266
    new-array v1, v3, [[B

    .line 1267
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v1, v2

    .line 1268
    iget-object v5, p0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    new-instance v6, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move v1, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1273
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected realClose(ZZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2182
    iget-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_8

    .line 2184
    iget-boolean v2, v0, Lcom/mysql/jdbc/StatementImpl;->isClosed:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 2189
    :cond_0
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2190
    invoke-interface {v1, v0}, Lcom/mysql/jdbc/MySQLConnection;->unregisterStatement(Lcom/mysql/jdbc/Statement;)V

    .line 2193
    :cond_1
    iget-boolean v1, v0, Lcom/mysql/jdbc/StatementImpl;->useUsageAdvisor:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 2195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement.63"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Statement.64"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2197
    iget-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    new-instance v2, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v4, 0x0

    const-string v5, ""

    iget-object v6, v0, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    iget-wide v7, v0, Lcom/mysql/jdbc/StatementImpl;->connectionId:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v9

    const/4 v10, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    sget-object v15, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v3, v0, Lcom/mysql/jdbc/StatementImpl;->pointOfOrigin:Ljava/lang/String;

    move-object/from16 v17, v3

    move-object v3, v2

    invoke-direct/range {v3 .. v18}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    :cond_2
    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 2203
    iget-boolean v2, v0, Lcom/mysql/jdbc/StatementImpl;->holdResultsOpenOverClose:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    move/from16 v2, p2

    :goto_0
    if-eqz v2, :cond_7

    .line 2207
    iget-object v2, v0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v2, :cond_5

    .line 2210
    :try_start_0
    iget-object v2, v0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 2215
    :cond_5
    :goto_1
    iget-object v2, v0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v2, :cond_6

    .line 2218
    :try_start_1
    iget-object v2, v0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2223
    :catch_1
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/StatementImpl;->closeAllOpenResults()V

    .line 2226
    :cond_7
    iput-boolean v1, v0, Lcom/mysql/jdbc/StatementImpl;->isClosed:Z

    const/4 v1, 0x0

    .line 2228
    iput-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 2229
    iput-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 2230
    iput-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 2231
    iput-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 2232
    iput-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    .line 2233
    iput-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 2234
    iput-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->localInfileInputStream:Ljava/io/InputStream;

    .line 2235
    iput-object v1, v0, Lcom/mysql/jdbc/StatementImpl;->pingTarget:Lcom/mysql/jdbc/PingTarget;

    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method public removeOpenResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V
    .locals 4

    .line 588
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->openResults:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 593
    :cond_0
    invoke-interface {p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getNextResultSet()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 596
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v3, 0x0

    if-ne v2, p1, :cond_2

    if-nez v1, :cond_2

    .line 597
    iput-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 599
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-ne v2, p1, :cond_3

    .line 600
    iput-object v3, p0, Lcom/mysql/jdbc/StatementImpl;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 606
    :cond_3
    iget-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->isImplicitlyClosingResults:Z

    if-nez p1, :cond_4

    if-nez v1, :cond_4

    .line 607
    invoke-direct {p0}, Lcom/mysql/jdbc/StatementImpl;->checkAndPerformCloseOnCompletionAction()V

    .line 609
    :cond_4
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method protected resetCancelledState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 923
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 924
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 925
    monitor-exit v0

    return-void

    .line 928
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 929
    :try_start_1
    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    .line 930
    iput-boolean v2, p0, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    .line 931
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 932
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    .line 931
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    .line 932
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public setCursorName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public setEscapeProcessing(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2270
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2271
    :try_start_0
    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->doEscapeProcessing:Z

    .line 2272
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFetchDirection(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const-string p1, "Statement.5"

    .line 2296
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setFetchSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2315
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-gez p1, :cond_0

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_1

    .line 2316
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getMaxRows()I

    move-result v1

    if-gt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Statement.7"

    .line 2317
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 2320
    :cond_2
    :goto_0
    iput p1, p0, Lcom/mysql/jdbc/StatementImpl;->fetchSize:I

    .line 2321
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setHoldResultsOpenOverClose(Z)V
    .locals 1

    .line 2326
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2327
    :try_start_1
    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->holdResultsOpenOverClose:Z

    .line 2328
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public setLargeMaxRows(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2666
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const-wide/32 v1, 0x2faf080

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    if-nez v1, :cond_0

    const-wide/16 p1, -0x1

    :cond_0
    long-to-int p1, p1

    .line 2676
    :try_start_0
    iput p1, p0, Lcom/mysql/jdbc/StatementImpl;->maxRows:I

    .line 2677
    monitor-exit v0

    return-void

    .line 2668
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement.15"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x2faf080

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 2677
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLocalInfileInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 2558
    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->localInfileInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setMaxFieldSize(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2344
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-ltz p1, :cond_2

    .line 2349
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v1

    :goto_0
    if-gt p1, v1, :cond_1

    .line 2356
    iput p1, p0, Lcom/mysql/jdbc/StatementImpl;->maxFieldSize:I

    .line 2357
    monitor-exit v0

    return-void

    :cond_1
    const-string p1, "Statement.13"

    const/4 v2, 0x1

    .line 2352
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_2
    const-string p1, "Statement.11"

    .line 2346
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 2357
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMaxRows(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    int-to-long v0, p1

    .line 2372
    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/StatementImpl;->setLargeMaxRows(J)V

    return-void
.end method

.method public setPingTarget(Lcom/mysql/jdbc/PingTarget;)V
    .locals 0

    .line 2562
    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl;->pingTarget:Lcom/mysql/jdbc/PingTarget;

    return-void
.end method

.method public setPoolable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2498
    iput-boolean p1, p0, Lcom/mysql/jdbc/StatementImpl;->isPoolable:Z

    return-void
.end method

.method public setQueryTimeout(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2386
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-ltz p1, :cond_0

    mul-int/lit16 p1, p1, 0x3e8

    .line 2391
    :try_start_0
    iput p1, p0, Lcom/mysql/jdbc/StatementImpl;->timeoutInMillis:I

    .line 2392
    monitor-exit v0

    return-void

    :cond_0
    const-string p1, "Statement.21"

    .line 2388
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 2392
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setResultSetConcurrency(I)V
    .locals 1

    .line 2402
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2403
    :try_start_1
    iput p1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetConcurrency:I

    .line 2404
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method setResultSetType(I)V
    .locals 1

    .line 2417
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2418
    :try_start_1
    iput p1, p0, Lcom/mysql/jdbc/StatementImpl;->resultSetType:I

    .line 2419
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method protected setupStreamingTimeout(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 725
    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->createStreamingResultSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getNetTimeoutForStreamingResults()I

    move-result v0

    if-lez v0, :cond_0

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET net_write_timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getNetTimeoutForStreamingResults()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/StatementImpl;->executeSimpleNonQuery(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected statementBegins()V
    .locals 2

    const/4 v0, 0x0

    .line 912
    iput-boolean v0, p0, Lcom/mysql/jdbc/StatementImpl;->clearWarningsCalled:Z

    .line 913
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 915
    iget-object v0, p0, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    .line 916
    :goto_0
    instance-of v1, v0, Lcom/mysql/jdbc/ConnectionImpl;

    if-nez v1, :cond_0

    .line 917
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    goto :goto_0

    .line 919
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/mysql/jdbc/StatementImpl;->physicalConnection:Ljava/lang/ref/Reference;

    return-void
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2517
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2519
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unwrap to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/StatementImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
