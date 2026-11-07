.class public Lcom/mysql/jdbc/ConnectionImpl;
.super Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.source "ConnectionImpl.java"

# interfaces
.implements Lcom/mysql/jdbc/MySQLConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;,
        Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;,
        Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;
    }
.end annotation


# static fields
.field private static final ABORT_PERM:Ljava/sql/SQLPermission;

.field private static final CHARSET_CONVERTER_NOT_AVAILABLE_MARKER:Ljava/lang/Object;

.field protected static final DEFAULT_LOGGER_CLASS:Ljava/lang/String; = "com.mysql.jdbc.log.StandardLogger"

.field private static final DEFAULT_RESULT_SET_CONCURRENCY:I = 0x3ef

.field private static final DEFAULT_RESULT_SET_TYPE:I = 0x3eb

.field private static final HISTOGRAM_BUCKETS:I = 0x14

.field private static final JDBC_4_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public static final JDBC_LOCAL_CHARACTER_SET_RESULTS:Ljava/lang/String; = "jdbc.local.character_set_results"

.field private static final LOGGER_INSTANCE_NAME:Ljava/lang/String; = "MySQL"

.field private static final NULL_LOGGER:Lcom/mysql/jdbc/log/Log;

.field private static final SERVER_VERSION_STRING_VAR_NAME:Ljava/lang/String; = "server_version_string"

.field private static final SET_NETWORK_TIMEOUT_PERM:Ljava/sql/SQLPermission;

.field public static charsetMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end field

.field private static final customCharsetToMblenMapByUrl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final customIndexToCharsetMapByUrl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mapTransIsolationNameToValue:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final random:Ljava/util/Random;

.field protected static roundRobinStatsMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x27eed4e755fd1762L


# instance fields
.field private autoCommit:Z

.field private autoIncrementIncrement:I

.field private cachedPreparedStatementParams:Lcom/mysql/jdbc/CacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/CacheAdapter<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/PreparedStatement$ParseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient cancelTimer:Ljava/util/Timer;

.field private characterSetMetadata:Ljava/lang/String;

.field private characterSetResultsOnServer:Ljava/lang/String;

.field private charsetConverterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private connectionCreationTimeMillis:J

.field private connectionId:J

.field private connectionLifecycleInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private database:Ljava/lang/String;

.field private dbmd:Ljava/sql/DatabaseMetaData;

.field private defaultTimeZone:Ljava/util/TimeZone;

.field private errorMessageEncoding:Ljava/lang/String;

.field private eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private forceClosedReason:Ljava/lang/Throwable;

.field private hasIsolationLevels:Z

.field private hasQuotedIdentifiers:Z

.field private hasTriedMasterFlag:Z

.field private host:Ljava/lang/String;

.field private hostPortPair:Ljava/lang/String;

.field public indexToCustomMysqlCharset:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient io:Lcom/mysql/jdbc/MysqlIO;

.field private isClientTzUTC:Z

.field private isClosed:Z

.field private isInGlobalTx:Z

.field private isRunningOnJDK13:Z

.field private isServerTzUTC:Z

.field private isolationLevel:I

.field private lastQueryFinishedTime:J

.field private transient log:Lcom/mysql/jdbc/log/Log;

.field private longestQueryTimeMs:J

.field private lowerCaseTableNames:Z

.field private maximumNumberTablesAccessed:J

.field private metricsLastReportedMs:J

.field private minimumNumberTablesAccessed:J

.field private myURL:Ljava/lang/String;

.field private mysqlCharsetToCustomMblen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private needsPing:Z

.field private netBufferLength:I

.field private noBackslashEscapes:Z

.field private numTablesMetricsHistBreakpoints:[J

.field private numTablesMetricsHistCounts:[I

.field private numberOfPreparedExecutes:J

.field private numberOfPrepares:J

.field private numberOfQueriesIssued:J

.field private numberOfResultSetsCreated:J

.field private oldHistBreakpoints:[J

.field private oldHistCounts:[I

.field private final openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mysql/jdbc/Statement;",
            ">;"
        }
    .end annotation
.end field

.field private origDatabaseToConnectTo:Ljava/lang/String;

.field private origHostToConnectTo:Ljava/lang/String;

.field private origPortToConnectTo:I

.field private parsedCallableStatementCache:Lcom/mysql/jdbc/util/LRUCache;

.field private parserKnowsUnicode:Z

.field private password:Ljava/lang/String;

.field private perfMetricsHistBreakpoints:[J

.field private perfMetricsHistCounts:[I

.field private pointOfOrigin:Ljava/lang/String;

.field private port:I

.field protected props:Ljava/util/Properties;

.field private proxy:Lcom/mysql/jdbc/MySQLConnection;

.field private queryTimeCount:J

.field private queryTimeMean:D

.field private queryTimeSum:D

.field private queryTimeSumSquares:D

.field private readInfoMsg:Z

.field private readOnly:Z

.field private realProxy:Ljava/lang/reflect/InvocationHandler;

.field private requiresEscapingEncoder:Z

.field protected resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;

.field private serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mysql/jdbc/CacheAdapter<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

.field private serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;

.field private serverTimezoneTZ:Ljava/util/TimeZone;

.field private serverVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionCalendar:Ljava/util/Calendar;

.field private sessionMaxRows:I

.field private shortestQueryTimeMs:J

.field private statementComment:Ljava/lang/String;

.field private statementInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/StatementInterceptorV2;",
            ">;"
        }
    .end annotation
.end field

.field private storesLowerCaseTableName:Z

.field private totalQueryTimeMs:D

.field private transactionsSupported:Z

.field private typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private useAnsiQuotes:Z

.field private usePlatformCharsetConverters:Z

.field private useServerPreparedStmts:Z

.field private user:Ljava/lang/String;

.field private utcCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 84
    new-instance v0, Ljava/sql/SQLPermission;

    const-string v1, "setNetworkTimeout"

    invoke-direct {v0, v1}, Ljava/sql/SQLPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->SET_NETWORK_TIMEOUT_PERM:Ljava/sql/SQLPermission;

    .line 86
    new-instance v0, Ljava/sql/SQLPermission;

    const-string v1, "abort"

    invoke-direct {v0, v1}, Ljava/sql/SQLPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->ABORT_PERM:Ljava/sql/SQLPermission;

    .line 246
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->CHARSET_CONVERTER_NOT_AVAILABLE_MARKER:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 266
    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    .line 269
    new-instance v1, Lcom/mysql/jdbc/log/NullLogger;

    const-string v2, "MySQL"

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/log/NullLogger;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/mysql/jdbc/ConnectionImpl;->NULL_LOGGER:Lcom/mysql/jdbc/log/Log;

    .line 276
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mysql/jdbc/ConnectionImpl;->customIndexToCharsetMapByUrl:Ljava/util/Map;

    .line 281
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mysql/jdbc/ConnectionImpl;->customCharsetToMblenMapByUrl:Ljava/util/Map;

    .line 301
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    .line 302
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    const-string v3, "READ-UNCOMMITED"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    const-string v3, "READ-UNCOMMITTED"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    const-string v3, "READ-COMMITTED"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    const-string v3, "REPEATABLE-READ"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    const-string v3, "SERIALIZABLE"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v0, "com.mysql.jdbc.JDBC4Connection"

    .line 310
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    const-class v2, Ljava/util/Properties;

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->JDBC_4_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 317
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 315
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 313
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 320
    :cond_0
    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->JDBC_4_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    .line 393
    :goto_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ConnectionImpl;->random:Ljava/util/Random;

    return-void
.end method

.method protected constructor <init>()V
    .locals 7

    .line 662
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    .line 99
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->realProxy:Ljava/lang/reflect/InvocationHandler;

    const/4 v1, 0x1

    .line 422
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    .line 430
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    .line 436
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetResultsOnServer:Ljava/lang/String;

    .line 443
    new-instance v2, Ljava/util/HashMap;

    invoke-static {}, Lcom/mysql/jdbc/CharsetMapping;->getNumberOfCharsetsConfigured()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 446
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionCreationTimeMillis:J

    .line 452
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    .line 455
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->dbmd:Ljava/sql/DatabaseMetaData;

    const/4 v4, 0x0

    .line 466
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    .line 469
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasQuotedIdentifiers:Z

    .line 472
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    .line 474
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    .line 476
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->mysqlCharsetToCustomMblen:Ljava/util/Map;

    .line 479
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 481
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClientTzUTC:Z

    .line 484
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 487
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isInGlobalTx:Z

    .line 490
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isRunningOnJDK13:Z

    const/4 v1, 0x2

    .line 493
    iput v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 495
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isServerTzUTC:Z

    .line 498
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 501
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->NULL_LOGGER:Lcom/mysql/jdbc/log/Log;

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    .line 507
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    .line 510
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->lowerCaseTableNames:Z

    .line 515
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    const/4 v1, -0x1

    .line 518
    iput v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    const-wide v5, 0x7fffffffffffffffL

    .line 523
    iput-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    .line 526
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    .line 529
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    const/16 v1, 0x4000

    .line 531
    iput v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->netBufferLength:I

    .line 533
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->noBackslashEscapes:Z

    .line 535
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPreparedExecutes:J

    .line 537
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPrepares:J

    .line 539
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    .line 541
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfResultSetsCreated:J

    .line 547
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistBreakpoints:[J

    .line 549
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    .line 555
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 559
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->parserKnowsUnicode:Z

    .line 562
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    const/16 v1, 0xcea

    .line 572
    iput v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    .line 575
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    .line 578
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->readInfoMsg:Z

    .line 581
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->readOnly:Z

    .line 587
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    .line 590
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    .line 592
    iput-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    const-wide/16 v1, 0x0

    .line 594
    iput-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->totalQueryTimeMs:D

    .line 597
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    .line 606
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    .line 609
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    .line 615
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    const-string v1, "Cp1252"

    .line 631
    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;

    .line 638
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasTriedMasterFlag:Z

    .line 644
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementComment:Ljava/lang/String;

    .line 3846
    iput v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoIncrementIncrement:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 683
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    .line 99
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->realProxy:Ljava/lang/reflect/InvocationHandler;

    const/4 v1, 0x1

    .line 422
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    .line 430
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    .line 436
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetResultsOnServer:Ljava/lang/String;

    .line 443
    new-instance v2, Ljava/util/HashMap;

    invoke-static {}, Lcom/mysql/jdbc/CharsetMapping;->getNumberOfCharsetsConfigured()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 446
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionCreationTimeMillis:J

    .line 452
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    .line 455
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->dbmd:Ljava/sql/DatabaseMetaData;

    const/4 v4, 0x0

    .line 466
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    .line 469
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasQuotedIdentifiers:Z

    .line 472
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    .line 474
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    .line 476
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->mysqlCharsetToCustomMblen:Ljava/util/Map;

    .line 479
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 481
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClientTzUTC:Z

    .line 484
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 487
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isInGlobalTx:Z

    .line 490
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isRunningOnJDK13:Z

    const/4 v5, 0x2

    .line 493
    iput v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 495
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isServerTzUTC:Z

    .line 498
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 501
    sget-object v5, Lcom/mysql/jdbc/ConnectionImpl;->NULL_LOGGER:Lcom/mysql/jdbc/log/Log;

    iput-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    .line 507
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    .line 510
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->lowerCaseTableNames:Z

    .line 515
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    const/4 v5, -0x1

    .line 518
    iput v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    const-wide v6, 0x7fffffffffffffffL

    .line 523
    iput-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    .line 526
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    .line 529
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    const/16 v8, 0x4000

    .line 531
    iput v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->netBufferLength:I

    .line 533
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->noBackslashEscapes:Z

    .line 535
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPreparedExecutes:J

    .line 537
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPrepares:J

    .line 539
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    .line 541
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfResultSetsCreated:J

    .line 547
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistBreakpoints:[J

    .line 549
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    .line 555
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 559
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->parserKnowsUnicode:Z

    .line 562
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    const/16 v2, 0xcea

    .line 572
    iput v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    .line 575
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    .line 578
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->readInfoMsg:Z

    .line 581
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->readOnly:Z

    .line 587
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    .line 590
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    .line 592
    iput-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    const-wide/16 v2, 0x0

    .line 594
    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->totalQueryTimeMs:D

    .line 597
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    .line 606
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    .line 609
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    .line 615
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    const-string v2, "Cp1252"

    .line 631
    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;

    .line 638
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasTriedMasterFlag:Z

    .line 644
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementComment:Ljava/lang/String;

    .line 3846
    iput v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoIncrementIncrement:I

    .line 685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionCreationTimeMillis:J

    if-nez p4, :cond_0

    const-string p4, ""

    .line 694
    :cond_0
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->origHostToConnectTo:Ljava/lang/String;

    .line 695
    iput p2, p0, Lcom/mysql/jdbc/ConnectionImpl;->origPortToConnectTo:I

    .line 696
    iput-object p4, p0, Lcom/mysql/jdbc/ConnectionImpl;->origDatabaseToConnectTo:Ljava/lang/String;

    .line 699
    :try_start_0
    const-class v0, Ljava/sql/Blob;

    const-string v2, "truncate"

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 701
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->isRunningOnJDK13:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 703
    :catch_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isRunningOnJDK13:Z

    .line 706
    :goto_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionCalendar:Ljava/util/Calendar;

    .line 707
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->utcCalendar:Ljava/util/Calendar;

    .line 708
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->utcCalendar:Ljava/util/Calendar;

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 717
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLogger()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MySQL"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/log/LogFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    .line 719
    invoke-static {p1}, Lcom/mysql/jdbc/NonRegisteringDriver;->isHostPropertiesList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    invoke-static {p1}, Lcom/mysql/jdbc/NonRegisteringDriver;->expandHostKeyValues(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object p1

    .line 722
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 724
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 725
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 726
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 728
    invoke-virtual {p3, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "localhost"

    .line 733
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    .line 734
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    goto :goto_2

    .line 736
    :cond_2
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    const-string v0, ":"

    .line 738
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v5, :cond_3

    .line 739
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    goto :goto_2

    .line 741
    :cond_3
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    .line 746
    :cond_4
    :goto_2
    iput p2, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    .line 748
    iput-object p4, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    .line 749
    iput-object p5, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    const-string p1, "user"

    .line 750
    invoke-virtual {p3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    const-string p1, "password"

    .line 751
    invoke-virtual {p3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    .line 753
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const-string p1, ""

    .line 754
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    .line 757
    :cond_6
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    if-nez p1, :cond_7

    const-string p1, ""

    .line 758
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    .line 761
    :cond_7
    iput-object p3, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    .line 763
    invoke-direct {p0, p3}, Lcom/mysql/jdbc/ConnectionImpl;->initializeDriverProperties(Ljava/util/Properties;)V

    .line 766
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheDefaultTimezone()Z

    move-result p1

    invoke-static {p1}, Lcom/mysql/jdbc/TimeUtil;->getDefaultTimeZone(Z)Ljava/util/TimeZone;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->defaultTimeZone:Ljava/util/TimeZone;

    .line 768
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p1}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClientTzUTC:Z

    .line 770
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUsageAdvisor()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 771
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->pointOfOrigin:Ljava/lang/String;

    goto :goto_4

    :cond_9
    const-string p1, ""

    .line 773
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->pointOfOrigin:Ljava/lang/String;

    .line 777
    :goto_4
    :try_start_1
    invoke-direct {p0, v4, v4}, Lcom/mysql/jdbc/ConnectionImpl;->getMetaData(ZZ)Ljava/sql/DatabaseMetaData;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 778
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->initializeSafeStatementInterceptors()V

    .line 779
    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->createNewIO(Z)V

    .line 780
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->unSafeStatementInterceptors()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 814
    invoke-static {p0}, Lcom/mysql/jdbc/NonRegisteringDriver;->trackConnection(Lcom/mysql/jdbc/Connection;)V

    return-void

    :catch_1
    move-exception p1

    .line 787
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->cleanup(Ljava/lang/Throwable;)V

    .line 789
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p3, 0x80

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 791
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParanoid()Z

    move-result p3

    if-nez p3, :cond_a

    const-string p3, "Cannot connect to MySQL server on "

    .line 792
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    iget-object p3, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    .line 794
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    iget p3, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ".\n\n"

    .line 796
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Make sure that there is a MySQL server "

    .line 797
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "running on the machine/port you are trying "

    .line 798
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "to connect to and that the machine this software is running on "

    .line 799
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "is able to connect to this host/port (i.e. not firewalled). "

    .line 800
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Also make sure that the server has not been started with the --skip-networking "

    .line 801
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "flag.\n\n"

    .line 802
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    const-string p3, "Unable to connect to database."

    .line 804
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    :goto_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p3

    const-string p4, "08S01"

    invoke-static {p2, p4, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p2

    .line 809
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 811
    throw p2

    :catch_2
    move-exception p1

    .line 782
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->cleanup(Ljava/lang/Throwable;)V

    .line 785
    throw p1
.end method

.method static synthetic access$000(Lcom/mysql/jdbc/ConnectionImpl;)Lcom/mysql/jdbc/CacheAdapter;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    return-object p0
.end method

.method private addToHistogram([I[JJIJJ)V
    .locals 6

    if-nez p1, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p6

    move-wide v4, p8

    .line 866
    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ConnectionImpl;->createInitialHistogram([JJJ)V

    goto :goto_1

    :cond_0
    const/4 p6, 0x0

    :goto_0
    const/16 p7, 0x14

    if-ge p6, p7, :cond_2

    .line 869
    aget-wide p7, p2, p6

    cmp-long p7, p7, p3

    if-ltz p7, :cond_1

    .line 870
    aget p2, p1, p6

    add-int/2addr p2, p5

    aput p2, p1, p6

    goto :goto_1

    :cond_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private addToPerformanceHistogram(JI)V
    .locals 10

    .line 879
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkAndCreatePerformanceHistogram()V

    .line 881
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    :goto_0
    move-wide v6, v3

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    goto :goto_0

    :goto_1
    iget-wide v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v9}, Lcom/mysql/jdbc/ConnectionImpl;->addToHistogram([I[JJIJJ)V

    return-void
.end method

.method private addToTablesAccessedHistogram(JI)V
    .locals 10

    .line 886
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkAndCreateTablesAccessedHistogram()V

    .line 888
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    :goto_0
    move-wide v6, v3

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    goto :goto_0

    :goto_1
    iget-wide v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v9}, Lcom/mysql/jdbc/ConnectionImpl;->addToHistogram([I[JJIJJ)V

    return-void
.end method

.method protected static appendMessageToException(Ljava/sql/SQLException;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 6

    .line 325
    invoke-virtual {p0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {p0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {p0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 330
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v2, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    :try_start_0
    const-string p2, "java.lang.StackTraceElement"

    .line 345
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x1

    .line 346
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 348
    const-class v1, Ljava/lang/Throwable;

    const-string v3, "getStackTrace"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 350
    const-class v3, Ljava/lang/Throwable;

    const-string v4, "setStackTrace"

    new-array v5, v0, [Ljava/lang/Class;

    aput-object p2, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 353
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 354
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p1
.end method

.method private buildCollationMapping()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 903
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheServerConfiguration()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 904
    sget-object v0, Lcom/mysql/jdbc/ConnectionImpl;->customIndexToCharsetMapByUrl:Ljava/util/Map;

    monitor-enter v0

    .line 905
    :try_start_0
    sget-object v2, Lcom/mysql/jdbc/ConnectionImpl;->customIndexToCharsetMapByUrl:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 906
    sget-object v3, Lcom/mysql/jdbc/ConnectionImpl;->customCharsetToMblenMapByUrl:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 907
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    move-object v2, v1

    move-object v3, v2

    :goto_0
    if-nez v2, :cond_e

    .line 910
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDetectCustomCollations()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 916
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 917
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 919
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v4, 0x71c

    :try_start_2
    const-string v5, "SHOW COLLATION"

    .line 922
    invoke-interface {v0, v5}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v5
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 923
    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    .line 924
    invoke-interface {v5, v6}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/4 v7, 0x2

    .line 925
    invoke-interface {v5, v7}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x800

    if-ge v6, v8, :cond_2

    .line 928
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetNameForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 930
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    :cond_3
    sget-object v6, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_CHARSET:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 935
    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    goto/16 :goto_a

    :catch_1
    move-exception v2

    move-object v5, v1

    goto/16 :goto_8

    :catch_2
    move-exception v6

    move-object v5, v1

    .line 939
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v7

    if-ne v7, v4, :cond_b

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v7

    if-nez v7, :cond_b

    .line 945
    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-lez v6, :cond_7

    :try_start_5
    const-string v6, "SHOW CHARACTER SET"

    .line 947
    invoke-interface {v0, v6}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v6
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 948
    :cond_5
    :goto_3
    :try_start_6
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "Charset"

    .line 949
    invoke-interface {v6, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 950
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "Maxlen"

    .line 951
    invoke-interface {v6, v7}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_3

    :catch_3
    move-exception v5

    goto :goto_4

    :catch_4
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    .line 955
    :goto_4
    :try_start_7
    invoke-virtual {v5}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v7

    if-ne v7, v4, :cond_6

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_5

    .line 956
    :cond_6
    throw v5

    :cond_7
    move-object v6, v5

    .line 961
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheServerConfiguration()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 962
    sget-object v4, Lcom/mysql/jdbc/ConnectionImpl;->customIndexToCharsetMapByUrl:Ljava/util/Map;

    monitor-enter v4
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 963
    :try_start_8
    sget-object v5, Lcom/mysql/jdbc/ConnectionImpl;->customIndexToCharsetMapByUrl:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v5, Lcom/mysql/jdbc/ConnectionImpl;->customCharsetToMblenMapByUrl:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    monitor-exit v4

    goto :goto_6

    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :cond_9
    :goto_6
    if-eqz v6, :cond_a

    .line 977
    :try_start_a
    invoke-interface {v6}, Ljava/sql/ResultSet;->close()V
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_7

    :catch_5
    nop

    :cond_a
    :goto_7
    if-eqz v0, :cond_e

    .line 985
    :try_start_b
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_e

    goto :goto_c

    :catch_6
    move-exception v2

    move-object v5, v6

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_9

    .line 940
    :cond_b
    :try_start_c
    throw v6
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catch_8
    move-exception v2

    goto :goto_8

    :catch_9
    move-exception v1

    move-object v6, v5

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_a

    :catch_a
    move-exception v2

    move-object v0, v1

    move-object v5, v0

    .line 971
    :goto_8
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S1009"

    invoke-static {v3, v4, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 972
    invoke-virtual {v1, v2}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 973
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v1

    goto :goto_a

    :catch_b
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 969
    :goto_9
    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v1

    move-object v5, v6

    :goto_a
    if-eqz v5, :cond_c

    .line 977
    :try_start_f
    invoke-interface {v5}, Ljava/sql/ResultSet;->close()V
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_b

    :catch_c
    nop

    :cond_c
    :goto_b
    if-eqz v0, :cond_d

    .line 985
    :try_start_10
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_10
    .catch Ljava/sql/SQLException; {:try_start_10 .. :try_end_10} :catch_d

    .line 975
    :catch_d
    :cond_d
    throw v1

    :catch_e
    :cond_e
    :goto_c
    if-eqz v2, :cond_f

    .line 994
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    :cond_f
    if-eqz v3, :cond_10

    .line 997
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->mysqlCharsetToCustomMblen:Ljava/util/Map;

    :cond_10
    return-void
.end method

.method private canHandleAsServerPreparedStatement(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 1002
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1006
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1010
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1011
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v0

    .line 1012
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 1015
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1018
    :cond_2
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->canHandleAsServerPreparedStatementNoCache(Ljava/lang/String;)Z

    move-result v1

    .line 1020
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSqlLimit()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1021
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;

    if-eqz v1, :cond_3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v2, p1, v3}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    :cond_4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 1025
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1028
    :cond_5
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->canHandleAsServerPreparedStatementNoCache(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method private canHandleAsServerPreparedStatementNoCache(Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "CALL"

    .line 1034
    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x5

    const/4 v2, 0x7

    .line 1040
    invoke-virtual {p0, v0, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_9

    const-string v3, "SELECT"

    invoke-static {p1, v3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "DELETE"

    invoke-static {p1, v3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "INSERT"

    invoke-static {p1, v3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "UPDATE"

    invoke-static {p1, v3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "REPLACE"

    invoke-static {p1, v3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1051
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x7

    .line 1053
    iget-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->noBackslashEscapes:Z

    xor-int/2addr v3, v4

    .line 1054
    iget-boolean v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    if-eqz v5, :cond_2

    const-string v5, "\""

    goto :goto_0

    :cond_2
    const-string v5, "\'"

    :goto_0
    const/4 v6, 0x0

    :cond_3
    :goto_1
    if-ge v6, v2, :cond_8

    const-string v8, "LIMIT "

    if-eqz v3, :cond_4

    .line 1058
    sget-object v7, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    :goto_2
    move-object v11, v7

    goto :goto_3

    :cond_4
    sget-object v7, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    goto :goto_2

    :goto_3
    move-object v7, p1

    move-object v9, v5

    move-object v10, v5

    invoke-static/range {v6 .. v11}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v6, v6, 0x7

    :goto_4
    if-ge v6, v0, :cond_3

    .line 1068
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1074
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    const/16 v9, 0x3f

    if-nez v8, :cond_6

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_6

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_6

    if-eq v7, v9, :cond_6

    goto :goto_1

    :cond_6
    if-ne v7, v9, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    xor-int/2addr v1, v4

    goto :goto_6

    :cond_9
    const-string v3, "XA "

    .line 1088
    invoke-static {p1, v3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    const-string v3, "CREATE TABLE"

    .line 1090
    invoke-static {p1, v3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    const-string v3, "DO"

    .line 1092
    invoke-static {p1, v3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_6

    :cond_c
    const-string v3, "SET"

    .line 1094
    invoke-static {p1, v3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_6

    :cond_d
    const-string v3, "SHOW WARNINGS"

    .line 1096
    invoke-static {p1, v3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_6

    :cond_e
    const-string v0, "/* ping */"

    .line 1098
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_6

    :cond_f
    const/4 v1, 0x1

    :goto_6
    return v1
.end method

.method private characterSetNamesMatches(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_client"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_connection"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private checkAndCreatePerformanceHistogram()V
    .locals 2

    .line 1161
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    const/16 v1, 0x14

    if-nez v0, :cond_0

    .line 1162
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    if-nez v0, :cond_1

    .line 1166
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    :cond_1
    return-void
.end method

.method private checkAndCreateTablesAccessedHistogram()V
    .locals 2

    .line 1171
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    const/16 v1, 0x14

    if-nez v0, :cond_0

    .line 1172
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    if-nez v0, :cond_1

    .line 1176
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    :cond_1
    return-void
.end method

.method private checkServerEncoding()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1204
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_server"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1220
    :try_start_0
    invoke-static {v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1222
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 1223
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1224
    throw v1

    .line 1231
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUnicode()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 1232
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1235
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setUseUnicode(Z)V

    .line 1236
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    return-void

    :cond_3
    if-eqz v0, :cond_6

    if-nez v1, :cond_4

    const/4 v2, 0x0

    .line 1248
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1249
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 1250
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aput-char v5, v4, v2

    .line 1251
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    :cond_4
    if-eqz v1, :cond_5

    :try_start_1
    const-string v0, "abc"

    .line 1265
    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 1266
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setUseUnicode(Z)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1269
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The driver can not map the character encoding \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' that your server is using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "to a character encoding your JVM understands. You can specify this mapping manually by adding \"useUnicode=true\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "as well as \"characterEncoding=[an_encoding_your_jvm_understands]\" to your JDBC URL."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "0S100"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1256
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown character encoding on server \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', use \'characterEncoding=\' property "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to provide correct mapping"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "01S00"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_6
    :goto_1
    return-void
.end method

.method private checkTransactionIsolationLevel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 1285
    invoke-virtual {p0, v0, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tx_isolation"

    goto :goto_0

    :cond_0
    const-string v0, "transaction_isolation"

    .line 1291
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1294
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1297
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    :cond_1
    return-void
.end method

.method private cleanup(Ljava/lang/Throwable;)V
    .locals 1

    .line 1334
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_1

    .line 1335
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1336
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {p1}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1338
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->realClose(ZZZLjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1345
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    return-void
.end method

.method private closeAllOpenStatements()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1484
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/Statement;

    .line 1486
    :try_start_0
    check-cast v2, Lcom/mysql/jdbc/StatementImpl;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/mysql/jdbc/StatementImpl;->realClose(ZZ)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 1493
    :cond_1
    throw v1
.end method

.method private closeStatement(Ljava/sql/Statement;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1500
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private configureCharsetProperties()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1578
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "abc"

    .line 1582
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1585
    :catch_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 1588
    :try_start_1
    invoke-static {v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1595
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_2
    const-string v0, "abc"

    .line 1602
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1604
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported character encoding \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "01S00"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1596
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java does not support the MySQL character encoding \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "01S00"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    .line 1590
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 1591
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1592
    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private configureClientCharacterSet(Z)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v12, p0

    .line 1625
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 1629
    :try_start_0
    invoke-virtual {v12, v2, v14, v13}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1632
    invoke-virtual {v12, v14}, Lcom/mysql/jdbc/ConnectionImpl;->setUseUnicode(Z)V

    .line 1634
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->configureCharsetProperties()V

    .line 1635
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v11, 0x0

    .line 1641
    :try_start_1
    iget-object v1, v12, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    if-eqz v1, :cond_0

    iget-object v1, v12, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    const-string v3, "com.mysql.jdbc.faultInjection.serverCharsetIndex"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1642
    iget-object v1, v12, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v3, v12, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    const-string v4, "com.mysql.jdbc.faultInjection.serverCharsetIndex"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    .line 1645
    :cond_0
    iget-object v1, v12, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v1, v1, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1647
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-eqz v15, :cond_6

    .line 1650
    invoke-virtual {v12, v15}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1660
    :cond_2
    invoke-virtual {v12, v2, v14, v13}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ISO8859_1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "Cp1252"

    :cond_3
    const-string v2, "UnicodeBig"

    .line 1663
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "UTF-16"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "UTF-16LE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "UTF-32"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string v1, "UTF-8"

    .line 1668
    :cond_5
    invoke-virtual {v12, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 1652
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown initial character set index \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v2, v2, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' received from server. Initial client character set can be forced via the \'characterEncoding\' property."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1a

    :catch_0
    move-exception v0

    .line 1683
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v1, v2, v11}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 1684
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1685
    throw v1

    :catch_1
    move-exception v0

    .line 1681
    throw v0

    :catch_2
    nop

    if-eqz v15, :cond_2e

    .line 1673
    invoke-virtual {v12, v15}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1688
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, "ISO8859_1"

    .line 1690
    invoke-virtual {v12, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1696
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUnicode()Z

    move-result v1

    const/4 v10, 0x5

    const/16 v9, 0x71c

    if-eqz v1, :cond_1b

    if-eqz v15, :cond_13

    const-string v1, "UTF-8"

    .line 1702
    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "UTF8"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 1724
    :cond_8
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v15, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetForJavaEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    if-nez p1, :cond_9

    .line 1737
    invoke-direct {v12, v8}, Lcom/mysql/jdbc/ConnectionImpl;->characterSetNamesMatches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    const/4 v2, 0x0

    .line 1738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET NAMES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v0, 0x0

    iget-object v1, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object v14, v8

    move v8, v0

    const/16 v13, 0x71c

    move-object/from16 v9, v18

    const/4 v13, 0x5

    move-object/from16 v10, v16

    move/from16 v11, v17

    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1740
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_client"

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_connection"

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    const/4 v13, 0x5

    .line 1747
    :goto_1
    invoke-virtual {v12, v15}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_b
    :goto_2
    const/4 v13, 0x5

    const/4 v1, 0x2

    .line 1705
    invoke-virtual {v12, v13, v13, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1706
    sget-object v2, Lcom/mysql/jdbc/CharsetMapping;->UTF8MB4_INDEXES:Ljava/util/Set;

    iget-object v3, v12, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v3, v3, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v14, 0x1

    goto :goto_3

    :cond_c
    const/4 v14, 0x0

    .line 1708
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseOldUTF8Behavior()Z

    move-result v2

    if-nez v2, :cond_11

    if-nez p1, :cond_d

    const-string v0, "utf8"

    .line 1709
    invoke-direct {v12, v0}, Lcom/mysql/jdbc/ConnectionImpl;->characterSetNamesMatches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v1, :cond_12

    const-string v0, "utf8mb4"

    invoke-direct {v12, v0}, Lcom/mysql/jdbc/ConnectionImpl;->characterSetNamesMatches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_d
    const/4 v2, 0x0

    .line 1710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET NAMES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_e

    const-string v1, "utf8mb4"

    goto :goto_4

    :cond_e
    const-string v1, "utf8"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    iget-object v9, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1712
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_client"

    if-eqz v14, :cond_f

    const-string v2, "utf8mb4"

    goto :goto_5

    :cond_f
    const-string v2, "utf8"

    :goto_5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_connection"

    if-eqz v14, :cond_10

    const-string v2, "utf8mb4"

    goto :goto_6

    :cond_10
    const-string v2, "utf8"

    :goto_6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_11
    const/4 v2, 0x0

    const-string v3, "SET NAMES latin1"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    .line 1716
    iget-object v9, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1718
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_client"

    const-string v2, "latin1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_connection"

    const-string v2, "latin1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    :cond_12
    :goto_7
    invoke-virtual {v12, v15}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_13
    const/4 v13, 0x5

    .line 1749
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 1751
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerCharset()Ljava/lang/String;

    move-result-object v1

    .line 1753
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseOldUTF8Behavior()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v1, "latin1"

    :cond_14
    const-string v2, "ucs2"

    .line 1758
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "utf16"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "utf16le"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "utf32"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_8

    :cond_15
    move-object v14, v1

    const/4 v1, 0x0

    goto :goto_9

    :cond_16
    :goto_8
    const-string v1, "utf8"

    .line 1762
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCharacterSetResults()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const-string v2, "UTF-8"

    .line 1763
    invoke-virtual {v12, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setCharacterSetResults(Ljava/lang/String;)V

    :cond_17
    move-object v14, v1

    const/4 v1, 0x1

    :goto_9
    if-nez p1, :cond_18

    .line 1767
    invoke-direct {v12, v14}, Lcom/mysql/jdbc/ConnectionImpl;->characterSetNamesMatches(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_18

    if-eqz v1, :cond_19

    :cond_18
    const/4 v2, 0x0

    .line 1769
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET NAMES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    iget-object v9, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1771
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_client"

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_connection"

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    :catch_3
    move-exception v0

    .line 1774
    :try_start_4
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x71c

    if-ne v1, v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1780
    :cond_19
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    goto :goto_b

    .line 1775
    :cond_1a
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1b
    const/4 v13, 0x5

    .line 1793
    :cond_1c
    :goto_b
    :try_start_5
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_1f

    .line 1794
    :try_start_6
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_results"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_1e

    const-string v0, "NULL"

    .line 1796
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_1d

    goto :goto_c

    :cond_1d
    const/4 v0, 0x0

    goto :goto_d

    :cond_1e
    :goto_c
    const/4 v0, 0x1

    :goto_d
    move-object v14, v11

    goto :goto_e

    :cond_1f
    const/4 v0, 0x0

    const/4 v14, 0x0

    .line 1799
    :goto_e
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCharacterSetResults()Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v1, :cond_22

    if-nez v0, :cond_21

    const/4 v2, 0x0

    :try_start_8
    const-string v3, "SET character_set_results = NULL"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    .line 1806
    iget-object v9, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_f

    :catch_4
    move-exception v0

    .line 1809
    :try_start_9
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x71c

    if-ne v1, v2, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1813
    :goto_f
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "jdbc.local.character_set_results"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 1810
    :cond_20
    throw v0

    .line 1815
    :cond_21
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "jdbc.local.character_set_results"

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_10
    move-object/from16 v19, v15

    goto/16 :goto_16

    .line 1819
    :cond_22
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseOldUTF8Behavior()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v0, :cond_24

    const/4 v2, 0x0

    :try_start_b
    const-string v3, "SET NAMES latin1"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    .line 1821
    iget-object v9, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1823
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_client"

    const-string v2, "latin1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_connection"

    const-string v2, "latin1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_11

    :catch_5
    move-exception v0

    .line 1826
    :try_start_c
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x71c

    if-ne v1, v2, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_11

    .line 1827
    :cond_23
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1831
    :cond_24
    :goto_11
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCharacterSetResults()Ljava/lang/String;

    move-result-object v11

    const-string v0, "UTF-8"

    .line 1834
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-nez v0, :cond_27

    :try_start_e
    const-string v0, "UTF8"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_12

    :cond_25
    const-string v0, "null"

    .line 1836
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "NULL"

    goto :goto_13

    .line 1839
    :cond_26
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetForJavaEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_13

    :cond_27
    :goto_12
    :try_start_f
    const-string v0, "utf8"

    :goto_13
    move-object v10, v0

    if-eqz v10, :cond_2d

    .line 1851
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_results"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1852
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SET character_set_results = "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "SET character_set_results = "

    .line 1853
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    const/4 v2, 0x0

    .line 1856
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    iget-object v9, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;
    :try_end_10
    .catch Ljava/sql/SQLException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const/4 v0, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object v13, v10

    move-object v10, v0

    move-object/from16 v19, v15

    move-object v15, v11

    move v11, v14

    :try_start_11
    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_15

    :catch_6
    move-exception v0

    goto :goto_14

    :catch_7
    move-exception v0

    move-object v13, v10

    move-object/from16 v19, v15

    move-object v15, v11

    .line 1859
    :goto_14
    :try_start_12
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x71c

    if-ne v1, v2, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v1

    if-nez v1, :cond_28

    .line 1864
    :goto_15
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "jdbc.local.character_set_results"

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 1867
    invoke-virtual {v12, v2, v2, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1868
    iput-object v15, v12, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;

    goto :goto_16

    .line 1860
    :cond_28
    throw v0

    :cond_29
    move-object/from16 v19, v15

    .line 1872
    iget-object v0, v12, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "jdbc.local.character_set_results"

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    :cond_2a
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionCollation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SET collation_connection = "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionCollation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "SET collation_connection = "

    .line 1878
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionCollation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    const/4 v2, 0x0

    .line 1881
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    iget-object v9, v12, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_13
    .catch Ljava/sql/SQLException; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_17

    :catch_8
    move-exception v0

    .line 1883
    :try_start_14
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x71c

    if-ne v1, v2, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_17

    .line 1884
    :cond_2b
    throw v0

    :cond_2c
    :goto_17
    move-object/from16 v15, v19

    const/4 v0, 0x1

    goto :goto_18

    :catchall_1
    move-exception v0

    move-object/from16 v15, v19

    goto/16 :goto_1a

    :cond_2d
    move-object/from16 v19, v15

    move-object v15, v11

    .line 1847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t map "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " given for characterSetResults to a supported MySQL encoding."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :catchall_2
    move-exception v0

    move-object/from16 v19, v15

    goto/16 :goto_1a

    .line 1675
    :cond_2e
    :try_start_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown initial character set index \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v1, v1, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' received from server. Initial client character set can be forced via the \'characterEncoding\' property."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 1890
    :cond_2f
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v15
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    const/4 v0, 0x0

    .line 1942
    :goto_18
    invoke-virtual {v12, v15}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    const/16 v1, 0x5c

    .line 1904
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    const/4 v3, 0x1

    .line 1905
    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 1906
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const-string v6, "\u00a5"

    .line 1908
    invoke-virtual {v4, v6}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    const/4 v6, 0x0

    .line 1909
    invoke-virtual {v4, v6}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 1910
    invoke-virtual {v2, v4, v5, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 1911
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    if-ne v7, v1, :cond_30

    .line 1912
    iput-boolean v3, v12, Lcom/mysql/jdbc/ConnectionImpl;->requiresEscapingEncoder:Z

    goto :goto_19

    .line 1914
    :cond_30
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1915
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const-string v3, "\u20a9"

    .line 1917
    invoke-virtual {v4, v3}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    const/4 v3, 0x0

    .line 1918
    invoke-virtual {v4, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v6, 0x1

    .line 1919
    invoke-virtual {v2, v4, v5, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 1920
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-ne v2, v1, :cond_32

    .line 1921
    iput-boolean v6, v12, Lcom/mysql/jdbc/ConnectionImpl;->requiresEscapingEncoder:Z
    :try_end_17
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_17 .. :try_end_17} :catch_9

    goto :goto_19

    :catch_9
    :try_start_18
    const-string v2, "\u00a5"

    .line 1927
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    .line 1928
    aget-byte v2, v2, v3

    if-ne v2, v1, :cond_31

    const/4 v2, 0x1

    .line 1929
    iput-boolean v2, v12, Lcom/mysql/jdbc/ConnectionImpl;->requiresEscapingEncoder:Z

    goto :goto_19

    :cond_31
    const-string v2, "\u20a9"

    .line 1931
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    .line 1932
    aget-byte v2, v2, v3

    if-ne v2, v1, :cond_32

    const/4 v1, 0x1

    .line 1933
    iput-boolean v1, v12, Lcom/mysql/jdbc/ConnectionImpl;->requiresEscapingEncoder:Z
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_18} :catch_a

    :cond_32
    :goto_19
    return v0

    :catch_a
    move-exception v0

    .line 1937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to use encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1000"

    invoke-static {v1, v3, v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :catchall_3
    move-exception v0

    move-object v15, v1

    .line 1942
    :goto_1a
    invoke-virtual {v12, v15}, Lcom/mysql/jdbc/ConnectionImpl;->setEncoding(Ljava/lang/String;)V

    .line 1896
    throw v0
.end method

.method private configureTimezone()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1953
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "timezone"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "time_zone"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "SYSTEM"

    .line 1958
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1959
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "system_time_zone"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1963
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerTimezone()Ljava/lang/String;

    move-result-object v1

    .line 1965
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseTimezone()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLegacyDatetimeCode()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 1967
    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->isEmptyOrWhitespaceOnly(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1969
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/TimeUtil;->getCanonicalTimezone(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1971
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1000"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_0
    if-eqz v1, :cond_7

    .line 1976
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 1977
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    const-string v0, "GMT"

    .line 1982
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GMT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 1983
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No timezone mapping entry for \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1987
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isServerTzUTC:Z

    :cond_7
    return-void
.end method

.method private connectOneTryOnly(ZLjava/util/Properties;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2229
    :try_start_0
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ConnectionImpl;->coreConnect(Ljava/util/Properties;)V

    .line 2230
    iget-object p2, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {p2}, Lcom/mysql/jdbc/MysqlIO;->getThreadId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionId:J

    const/4 p2, 0x0

    .line 2231
    iput-boolean p2, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 2234
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoCommit()Z

    move-result v0

    .line 2235
    iget v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 2236
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/ConnectionImpl;->isReadOnly(Z)Z

    move-result p2

    .line 2237
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v2

    .line 2239
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/mysql/jdbc/MysqlIO;->setStatementInterceptors(Ljava/util/List;)V

    .line 2242
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->initializePropsFromServer()V

    if-eqz p1, :cond_1

    .line 2246
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setAutoCommit(Z)V

    .line 2248
    iget-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    if-eqz p1, :cond_0

    .line 2249
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setTransactionIsolation(I)V

    .line 2252
    :cond_0
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setCatalog(Ljava/lang/String;)V

    .line 2254
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/ConnectionImpl;->setReadOnly(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 2260
    instance-of p2, p1, Ljava/sql/SQLException;

    if-eqz p2, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x71c

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 2265
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_3

    .line 2266
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    :cond_3
    if-eqz p2, :cond_4

    .line 2272
    check-cast p1, Ljava/sql/SQLException;

    throw p1

    :cond_4
    const-string p2, "Connection.UnableToConnect"

    .line 2275
    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "08001"

    invoke-static {p2, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p2

    .line 2277
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2279
    throw p2
.end method

.method private connectWithRetries(ZLjava/util/Properties;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2034
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getInitialTimeout()I

    move-result v0

    int-to-double v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v5

    const/4 v7, 0x0

    .line 2039
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxReconnects()I

    move-result v8

    const/4 v9, 0x1

    if-ge v7, v8, :cond_4

    .line 2041
    :try_start_0
    iget-object v8, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v8, :cond_0

    .line 2042
    iget-object v8, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v8}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    move-object/from16 v8, p2

    .line 2045
    :try_start_1
    invoke-direct {v1, v8}, Lcom/mysql/jdbc/ConnectionImpl;->coreConnect(Ljava/util/Properties;)V

    .line 2046
    invoke-virtual {v1, v6, v6}, Lcom/mysql/jdbc/ConnectionImpl;->pingInternal(ZI)V

    .line 2053
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2054
    :try_start_2
    iget-object v11, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v11}, Lcom/mysql/jdbc/MysqlIO;->getThreadId()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/mysql/jdbc/ConnectionImpl;->connectionId:J

    .line 2055
    iput-boolean v6, v1, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 2058
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoCommit()Z

    move-result v11

    .line 2059
    iget v12, v1, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 2060
    invoke-virtual {v1, v6}, Lcom/mysql/jdbc/ConnectionImpl;->isReadOnly(Z)Z

    move-result v13

    .line 2061
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v14

    .line 2063
    iget-object v15, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v6, v1, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-virtual {v15, v6}, Lcom/mysql/jdbc/MysqlIO;->setStatementInterceptors(Ljava/util/List;)V

    .line 2064
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2067
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->initializePropsFromServer()V

    if-eqz p1, :cond_2

    .line 2071
    invoke-virtual {v1, v11}, Lcom/mysql/jdbc/ConnectionImpl;->setAutoCommit(Z)V

    .line 2073
    iget-boolean v6, v1, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    if-eqz v6, :cond_1

    .line 2074
    invoke-virtual {v1, v12}, Lcom/mysql/jdbc/ConnectionImpl;->setTransactionIsolation(I)V

    .line 2077
    :cond_1
    invoke-virtual {v1, v14}, Lcom/mysql/jdbc/ConnectionImpl;->setCatalog(Ljava/lang/String;)V

    .line 2078
    invoke-virtual {v1, v13}, Lcom/mysql/jdbc/ConnectionImpl;->setReadOnly(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 2064
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v8, p2

    :goto_1
    if-lez v7, :cond_3

    double-to-long v9, v3

    const-wide/16 v11, 0x3e8

    mul-long v9, v9, v11

    .line 2095
    :try_start_6
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :cond_3
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_a

    .line 2112
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParanoid()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2113
    iput-object v5, v1, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    .line 2114
    iput-object v5, v1, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    :cond_5
    if-eqz p1, :cond_9

    .line 2121
    iget-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2129
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/Statement;

    .line 2132
    instance-of v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement;

    if-eqz v3, :cond_6

    if-nez v5, :cond_7

    .line 2134
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 2137
    :cond_7
    invoke-virtual {v5, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    if-eqz v5, :cond_9

    .line 2142
    :goto_4
    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2143
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ServerPreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->rePrepare()V

    goto :goto_4

    :cond_9
    return-void

    .line 2104
    :cond_a
    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxReconnects()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Connection.UnableToConnectWithRetries"

    invoke-static {v3, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v4, "08001"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2107
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2109
    throw v2
.end method

.method private coreConnect(Ljava/util/Properties;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "localhost"

    const-string v1, "PROTOCOL"

    .line 2153
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xcea

    if-eqz v1, :cond_3

    const-string v4, "tcp"

    .line 2158
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "HOST"

    .line 2159
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->normalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PORT"

    const-string v3, "3306"

    .line 2160
    invoke-virtual {p1, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->parsePortNumber(Ljava/lang/String;)I

    move-result v3

    :goto_0
    move-object v5, v0

    :goto_1
    move v6, v3

    goto :goto_3

    :cond_0
    const-string v4, "pipe"

    .line 2161
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2162
    const-class v1, Lcom/mysql/jdbc/NamedPipeSocketFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setSocketFactoryClassName(Ljava/lang/String;)V

    const-string v1, "PATH"

    .line 2164
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v4, "namedPipePath"

    .line 2167
    invoke-virtual {p1, v4, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    move-object v5, v0

    goto :goto_2

    :cond_2
    const-string v0, "HOST"

    .line 2171
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->normalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PORT"

    const-string v3, "3306"

    .line 2172
    invoke-virtual {p1, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->parsePortNumber(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 2176
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    invoke-static {v0}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseHostPortPair(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2177
    aget-object v1, v0, v2

    .line 2179
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->normalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    .line 2181
    aget-object v5, v0, v4

    if-eqz v5, :cond_4

    .line 2182
    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->parsePortNumber(Ljava/lang/String;)I

    move-result v3

    move-object v5, v1

    goto :goto_1

    :cond_4
    move-object v5, v1

    :goto_2
    const/16 v6, 0xcea

    .line 2186
    :goto_3
    iput v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    .line 2187
    iput-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    const/4 v0, -0x1

    .line 2190
    iput v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    .line 2193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    .line 2194
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_server"

    const-string v3, "utf8"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2196
    new-instance v0, Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSocketFactoryClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSocketTimeout()I

    move-result v10

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->largeRowSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->getValueAsInt()I

    move-result v11

    move-object v4, v0

    move-object v7, p1

    invoke-direct/range {v4 .. v11}, Lcom/mysql/jdbc/MysqlIO;-><init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;II)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 2198
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v3}, Lcom/mysql/jdbc/MysqlIO;->doHandshake(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 2199
    invoke-virtual {p0, p1, p1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2201
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {p1}, Lcom/mysql/jdbc/MysqlIO;->getEncodingForHandshake()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method private createConfigCacheIfNeeded()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3642
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3643
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    if-eqz v1, :cond_0

    .line 3644
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 3650
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerConfigCacheFactory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3653
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/mysql/jdbc/CacheAdapterFactory;

    .line 3655
    iget-object v7, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    const v8, 0x7fffffff

    const v9, 0x7fffffff

    iget-object v10, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    move-object v6, p0

    invoke-interface/range {v5 .. v10}, Lcom/mysql/jdbc/CacheAdapterFactory;->getInstance(Lcom/mysql/jdbc/Connection;Ljava/lang/String;IILjava/util/Properties;)Lcom/mysql/jdbc/CacheAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    .line 3657
    new-instance v4, Lcom/mysql/jdbc/ConnectionImpl$4;

    invoke-direct {v4, p0}, Lcom/mysql/jdbc/ConnectionImpl$4;-><init>(Lcom/mysql/jdbc/ConnectionImpl;)V

    .line 3674
    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    if-nez v5, :cond_1

    .line 3675
    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    goto :goto_0

    .line 3677
    :cond_1
    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    check-cast v5, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;

    invoke-virtual {v5, v4}, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;->addRingZero(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3701
    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v4

    const-string v5, "Connection.CantLoadCacheFactory"

    .line 3694
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    const-string v2, "parseInfoCacheFactory"

    aput-object v2, v3, v1

    invoke-static {v5, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3697
    invoke-virtual {v1, v4}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3699
    throw v1

    :catch_1
    move-exception v4

    const-string v5, "Connection.CantLoadCacheFactory"

    .line 3687
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    const-string v2, "parseInfoCacheFactory"

    aput-object v2, v3, v1

    invoke-static {v5, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3690
    invoke-virtual {v1, v4}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3692
    throw v1

    :catch_2
    move-exception v4

    const-string v5, "Connection.CantFindCacheFactory"

    .line 3680
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    const-string v2, "parseInfoCacheFactory"

    aput-object v2, v3, v1

    invoke-static {v5, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3683
    invoke-virtual {v1, v4}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3685
    throw v1

    :catchall_0
    move-exception v1

    .line 3701
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private createInitialHistogram([JJJ)V
    .locals 3

    long-to-double p4, p4

    long-to-double v0, p2

    sub-double/2addr p4, v0

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    div-double/2addr p4, v0

    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    mul-double p4, p4, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p4, v0

    if-gez v2, :cond_0

    move-wide p4, v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 2000
    aput-wide p2, p1, v0

    long-to-double p2, p2

    add-double/2addr p2, p4

    double-to-long p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createPreparedStatementCaches()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2284
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2285
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSize()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 2290
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 2293
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/mysql/jdbc/CacheAdapterFactory;

    .line 2295
    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSize()I

    move-result v9

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSqlLimit()I

    move-result v10

    iget-object v11, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    move-object v7, p0

    invoke-interface/range {v6 .. v11}, Lcom/mysql/jdbc/CacheAdapterFactory;->getInstance(Lcom/mysql/jdbc/Connection;Ljava/lang/String;IILjava/util/Properties;)Lcom/mysql/jdbc/CacheAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->cachedPreparedStatementParams:Lcom/mysql/jdbc/CacheAdapter;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2321
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseServerPreparedStmts()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2322
    new-instance v2, Lcom/mysql/jdbc/util/LRUCache;

    invoke-direct {v2, v1}, Lcom/mysql/jdbc/util/LRUCache;-><init>(I)V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;

    .line 2324
    new-instance v2, Lcom/mysql/jdbc/ConnectionImpl$3;

    invoke-direct {v2, p0, v1}, Lcom/mysql/jdbc/ConnectionImpl$3;-><init>(Lcom/mysql/jdbc/ConnectionImpl;I)V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    .line 2352
    :cond_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    const-string v5, "Connection.CantLoadCacheFactory"

    .line 2313
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v3, "parseInfoCacheFactory"

    aput-object v3, v4, v2

    invoke-static {v5, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2316
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2318
    throw v2

    :catch_1
    move-exception v1

    const-string v5, "Connection.CantLoadCacheFactory"

    .line 2306
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v3, "parseInfoCacheFactory"

    aput-object v3, v4, v2

    invoke-static {v5, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2309
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2311
    throw v2

    :catch_2
    move-exception v1

    const-string v5, "Connection.CantFindCacheFactory"

    .line 2299
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParseInfoCacheFactory()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v3, "parseInfoCacheFactory"

    aput-object v3, v4, v2

    invoke-static {v5, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2302
    invoke-virtual {v2, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2304
    throw v2

    :catchall_0
    move-exception v1

    .line 2352
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected static getInstance(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/Connection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 385
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Lcom/mysql/jdbc/ConnectionImpl;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/ConnectionImpl;-><init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 389
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ConnectionImpl;->JDBC_4_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/Connection;

    return-object p0
.end method

.method private getMetaData(ZZ)Ljava/sql/DatabaseMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2896
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 2899
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object p1

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Z)Lcom/mysql/jdbc/DatabaseMetaData;

    move-result-object p1

    return-object p1
.end method

.method protected static declared-synchronized getNextRoundRobinHostIndex(Ljava/lang/String;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    const-class p0, Lcom/mysql/jdbc/ConnectionImpl;

    monitor-enter p0

    .line 402
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 404
    sget-object v0, Lcom/mysql/jdbc/ConnectionImpl;->random:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 401
    monitor-exit p0

    throw p1
.end method

.method private getProxy()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private getServerVariableAsInt(Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3408
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3410
    :catch_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    const-string v1, "Connection.BadValueInServerVariables"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    return p2
.end method

.method private handleAutoCommitDefaults()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3424
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getElideSetAutoCommits()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 3425
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "init_connect"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x4

    const/4 v4, 0x2

    .line 3426
    invoke-virtual {p0, v3, v2, v4}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    .line 3432
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v4, "SELECT @@session.autocommit"

    .line 3433
    invoke-interface {v3, v4}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3434
    :try_start_2
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3435
    invoke-interface {v4, v2}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    .line 3436
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    xor-int/lit8 v1, v0, 0x1

    :cond_0
    if-eqz v4, :cond_1

    .line 3441
    :try_start_3
    invoke-interface {v4}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v3, :cond_6

    .line 3448
    :try_start_4
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    nop

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v4, v0

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    :goto_1
    move-object v0, v1

    :goto_2
    if-eqz v4, :cond_2

    .line 3441
    :try_start_5
    invoke-interface {v4}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    nop

    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 3448
    :try_start_6
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_3

    .line 3439
    :catch_3
    :cond_3
    throw v0

    .line 3458
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/MysqlIO;->isSetNeededForAutoCommitMode(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3460
    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    :cond_5
    const/4 v1, 0x1

    :cond_6
    :goto_4
    if-eqz v1, :cond_8

    .line 3466
    :try_start_7
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setAutoCommit(Z)V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 3468
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x71c

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_5

    .line 3469
    :cond_7
    throw v0

    :cond_8
    :goto_5
    return-void
.end method

.method private initializeDriverProperties(Ljava/util/Properties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3146
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->initializeProperties(Ljava/util/Properties;)V

    .line 3148
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptors()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 3150
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3151
    new-instance v0, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/ConnectionImpl$ExceptionInterceptorChain;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 3154
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseJvmCharsetConverters()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->usePlatformCharsetConverters:Z

    .line 3156
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLogger()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MySQL"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/log/LogFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Lcom/mysql/jdbc/log/Log;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    .line 3158
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProfileSql()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUsageAdvisor()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3159
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 3162
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3163
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->createPreparedStatementCaches()V

    .line 3166
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getNoDatetimeStringSync()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseTimezone()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 3167
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string v0, "Can\'t enable noDatetimeStringSync and useTimezone configuration properties at the same time"

    const-string v1, "01S00"

    invoke-static {v0, v1, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 3171
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheCallableStatements()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3172
    new-instance p1, Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCallableStatementCacheSize()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/mysql/jdbc/util/LRUCache;-><init>(I)V

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->parsedCallableStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    .line 3175
    :cond_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAllowMultiQueries()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    .line 3176
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->setCacheResultSetMetadata(Z)V

    .line 3179
    :cond_7
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheResultSetMetadata()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3180
    new-instance p1, Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataCacheSize()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/mysql/jdbc/util/LRUCache;-><init>(I)V

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;

    .line 3183
    :cond_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSocksProxyHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string p1, "com.mysql.jdbc.SocksProxySocketFactory"

    .line 3184
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->setSocketFactoryClassName(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private initializePropsFromServer()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3196
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionLifecycleInterceptors()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3198
    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3201
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    const-string v3, "Connection.badLifecycleInterceptor"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {p0, v2, v0, v3, v4}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    .line 3205
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->setSessionVariables()V

    const/4 v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3211
    invoke-virtual {p0, v0, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3212
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setTransformedBitIsBoolean(Z)V

    .line 3215
    :cond_1
    invoke-virtual {p0, v0, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->parserKnowsUnicode:Z

    .line 3220
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseServerPreparedStmts()Z

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x3

    if-eqz v4, :cond_2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3221
    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    .line 3223
    invoke-virtual {p0, v5, v3, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v5, v3, v6}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3224
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    :cond_2
    const/16 v4, 0x15

    const/16 v7, 0x16

    .line 3232
    invoke-virtual {p0, v6, v4, v7}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3233
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->loadServerVariables()V

    const/4 v4, 0x2

    .line 3235
    invoke-virtual {p0, v5, v3, v4}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "auto_increment_increment"

    .line 3236
    invoke-direct {p0, v4, v2}, Lcom/mysql/jdbc/ConnectionImpl;->getServerVariableAsInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoIncrementIncrement:I

    goto :goto_0

    .line 3238
    :cond_3
    iput v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoIncrementIncrement:I

    .line 3241
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->buildCollationMapping()V

    .line 3245
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v4, v4, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    if-nez v4, :cond_6

    .line 3246
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v7, "collation_server"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_5

    const/4 v7, 0x1

    .line 3248
    :goto_1
    sget-object v8, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_6

    .line 3249
    sget-object v8, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3250
    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iput v7, v8, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3255
    :cond_5
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    const/16 v7, 0x2d

    iput v7, v4, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    .line 3259
    :cond_6
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-static {v4}, Lcom/mysql/jdbc/LicenseConfiguration;->checkLicenseType(Ljava/util/Map;)V

    .line 3261
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v7, "lower_case_table_names"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "on"

    .line 3263
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "2"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/mysql/jdbc/ConnectionImpl;->lowerCaseTableNames:Z

    const-string v7, "1"

    .line 3265
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "on"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v4, 0x1

    :goto_5
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->storesLowerCaseTableName:Z

    .line 3267
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->configureTimezone()V

    .line 3269
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v7, "max_allowed_packet"

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, -0x1

    if-eqz v4, :cond_f

    const-string v4, "max_allowed_packet"

    .line 3270
    invoke-direct {p0, v4, v7}, Lcom/mysql/jdbc/ConnectionImpl;->getServerVariableAsInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v7, :cond_c

    .line 3272
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxAllowedPacket()I

    move-result v8

    if-lt v4, v8, :cond_b

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxAllowedPacket()I

    move-result v8

    if-gtz v8, :cond_c

    .line 3273
    :cond_b
    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->setMaxAllowedPacket(I)V

    goto :goto_6

    :cond_c
    if-ne v4, v7, :cond_d

    .line 3274
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxAllowedPacket()I

    move-result v4

    if-ne v4, v7, :cond_d

    const v4, 0xffff

    .line 3275
    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->setMaxAllowedPacket(I)V

    .line 3278
    :cond_d
    :goto_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseServerPrepStmts()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3279
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getBlobSendChunkSize()I

    move-result v4

    const/16 v8, 0x200b

    .line 3283
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxAllowedPacket()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, v8

    if-lez v4, :cond_e

    .line 3293
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/ConnectionImpl;->setBlobSendChunkSize(Ljava/lang/String;)V

    goto :goto_7

    .line 3286
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection setting too low for \'maxAllowedPacket\'. When \'useServerPrepStmts=true\', \'maxAllowedPacket\' must be higher than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Check also \'max_allowed_packet\' in MySQL configuration files."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "01S00"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 3297
    :cond_f
    :goto_7
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v8, "net_buffer_length"

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "net_buffer_length"

    const/16 v8, 0x4000

    .line 3298
    invoke-direct {p0, v4, v8}, Lcom/mysql/jdbc/ConnectionImpl;->getServerVariableAsInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->netBufferLength:I

    .line 3301
    :cond_10
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkTransactionIsolationLevel()V

    .line 3303
    invoke-virtual {p0, v0, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v4

    if-nez v4, :cond_11

    .line 3304
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkServerEncoding()V

    .line 3307
    :cond_11
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v4}, Lcom/mysql/jdbc/MysqlIO;->checkForCharsetMismatch()V

    .line 3309
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v8, "sql_mode"

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3310
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v8, "sql_mode"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3311
    invoke-static {v4}, Lcom/mysql/jdbc/StringUtils;->isStrictlyNumeric(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 3313
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    and-int/2addr v4, v0

    if-lez v4, :cond_12

    const/4 v4, 0x1

    goto :goto_8

    :cond_12
    const/4 v4, 0x0

    :goto_8
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    goto :goto_b

    :cond_13
    if-eqz v4, :cond_16

    const-string v8, "ANSI_QUOTES"

    .line 3315
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v7, :cond_14

    const/4 v8, 0x1

    goto :goto_9

    :cond_14
    const/4 v8, 0x0

    :goto_9
    iput-boolean v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    const-string v8, "NO_BACKSLASH_ESCAPES"

    .line 3316
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_15

    const/4 v4, 0x1

    goto :goto_a

    :cond_15
    const/4 v4, 0x0

    :goto_a
    iput-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->noBackslashEscapes:Z

    .line 3321
    :cond_16
    :goto_b
    invoke-direct {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->configureClientCharacterSet(Z)Z

    .line 3324
    :try_start_0
    invoke-static {p0}, Lcom/mysql/jdbc/CharsetMapping;->getCharacterEncodingForErrorMessages(Lcom/mysql/jdbc/ConnectionImpl;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xf

    const/16 v4, 0x17

    .line 3333
    invoke-virtual {p0, v6, v4, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3334
    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    .line 3335
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->handleAutoCommitDefaults()V

    goto :goto_c

    .line 3337
    :cond_17
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    :goto_c
    const/16 v1, 0x24

    .line 3340
    invoke-virtual {p0, v6, v4, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3341
    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    goto :goto_d

    .line 3343
    :cond_18
    iput-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    :goto_d
    const/4 v1, 0x6

    .line 3346
    invoke-virtual {p0, v6, v4, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasQuotedIdentifiers:Z

    .line 3348
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->resetMaxBuf()V

    .line 3354
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v1, v0, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3355
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v4, "jdbc.local.character_set_results"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1a

    const-string v4, "NULL"

    .line 3357
    invoke-static {v1, v4}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_19

    goto :goto_e

    .line 3370
    :cond_19
    invoke-static {v1}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetResultsOnServer:Ljava/lang/String;

    .line 3371
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetResultsOnServer:Ljava/lang/String;

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    goto :goto_10

    .line 3359
    :cond_1a
    :goto_e
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v4, "character_set_system"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 3363
    invoke-static {v1}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_1b
    const-string v1, "UTF-8"

    .line 3368
    :goto_f
    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    goto :goto_10

    .line 3374
    :cond_1c
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    .line 3381
    :goto_10
    invoke-virtual {p0, v0, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v2, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAllowMultiQueries()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3382
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->isQueryCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3383
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setAllowMultiQueries(Z)V

    .line 3387
    :cond_1d
    invoke-virtual {p0, v5, v3, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalTransactionState()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getElideSetAutoCommits()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->isQueryCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0x20

    invoke-virtual {p0, v5, v2, v0}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3390
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setUseLocalTransactionState(Z)V

    .line 3391
    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->setElideSetAutoCommits(Z)V

    .line 3398
    :cond_1f
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->setupServerForTruncationChecks()V

    return-void

    :catch_0
    move-exception v0

    .line 3328
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3329
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3330
    throw v1

    :catch_1
    move-exception v0

    .line 3326
    throw v0
.end method

.method private loadServerVariables()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3715
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheServerConfiguration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3716
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->createConfigCacheIfNeeded()V

    .line 3718
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/CacheAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v1, "server_version_string"

    .line 3721
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3723
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->getServerVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->getServerVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3724
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    return-void

    .line 3729
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/CacheAdapter;->invalidate(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 3737
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3739
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->dbmd:Ljava/sql/DatabaseMetaData;

    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->getDriverVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/16 v4, 0x2a

    .line 3741
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 3742
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    .line 3744
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 3745
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v4, :cond_2

    const-string v7, "[star]"

    .line 3748
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3750
    :cond_2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3754
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3757
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParanoid()Z

    move-result v4

    if-nez v4, :cond_6

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/* "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " */"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    :goto_2
    const-string v2, ""

    .line 3759
    :goto_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v4, 0x5

    const/4 v5, 0x1

    .line 3762
    :try_start_2
    invoke-virtual {p0, v4, v5, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3763
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SELECT"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  @@session.auto_increment_increment AS auto_increment_increment"

    .line 3764
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@character_set_client AS character_set_client"

    .line 3765
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@character_set_connection AS character_set_connection"

    .line 3766
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@character_set_results AS character_set_results"

    .line 3767
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@character_set_server AS character_set_server"

    .line 3768
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@collation_server AS collation_server"

    .line 3769
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@init_connect AS init_connect"

    .line 3770
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@interactive_timeout AS interactive_timeout"

    .line 3771
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3772
    invoke-virtual {p0, v4, v4, v3}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, ", @@language AS language"

    .line 3773
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v2, ", @@license AS license"

    .line 3775
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@lower_case_table_names AS lower_case_table_names"

    .line 3776
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@max_allowed_packet AS max_allowed_packet"

    .line 3777
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@net_buffer_length AS net_buffer_length"

    .line 3778
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@net_write_timeout AS net_write_timeout"

    .line 3779
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@have_query_cache AS have_query_cache"

    .line 3780
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@sql_mode AS sql_mode"

    .line 3781
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@system_time_zone AS system_time_zone"

    .line 3782
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@time_zone AS time_zone"

    .line 3783
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@tx_isolation AS tx_isolation"

    .line 3784
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", @@wait_timeout AS wait_timeout"

    .line 3785
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3787
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3788
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3789
    invoke-interface {v2}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v3

    const/4 v4, 0x1

    .line 3790
    :goto_4
    invoke-interface {v3}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v6

    if-gt v4, v6, :cond_8

    .line 3791
    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    const-string v3, "YES"

    .line 3795
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v6, "have_query_cache"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3796
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    const-string v3, "SELECT @@query_cache_size AS query_cache_size, @@query_cache_type AS query_cache_type"

    .line 3797
    invoke-interface {v1, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3798
    :try_start_4
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3799
    invoke-interface {v3}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v2

    .line 3800
    :goto_5
    invoke-interface {v2}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v4

    if-gt v5, v4, :cond_9

    .line 3801
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    move-object v2, v3

    goto :goto_7

    :catchall_0
    move-exception v2

    move-object v0, v3

    goto/16 :goto_d

    :catch_0
    move-exception v2

    move-object v0, v3

    goto :goto_8

    .line 3807
    :cond_a
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SHOW VARIABLES"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3808
    :goto_6
    :try_start_6
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3809
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-interface {v2, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 3813
    :cond_b
    :goto_7
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v9, v2

    move-object v2, v0

    goto :goto_c

    :catch_1
    move-exception v0

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_8

    :catch_2
    move-exception v2

    .line 3816
    :goto_8
    :try_start_7
    invoke-virtual {v2}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x71c

    if-ne v3, v4, :cond_f

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v3

    if-nez v3, :cond_f

    .line 3821
    :goto_9
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheServerConfiguration()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3822
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v3, "server_version_string"

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v4}, Lcom/mysql/jdbc/MysqlIO;->getServerVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3824
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverConfigCache:Lcom/mysql/jdbc/CacheAdapter;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Lcom/mysql/jdbc/CacheAdapter;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_c
    if-eqz v0, :cond_d

    .line 3832
    :try_start_8
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_a

    :catch_3
    nop

    :cond_d
    :goto_a
    if-eqz v1, :cond_e

    .line 3839
    :try_start_9
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    :cond_e
    return-void

    .line 3817
    :cond_f
    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v2

    goto :goto_d

    :catch_5
    move-exception v2

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_b

    :catchall_3
    move-exception v2

    move-object v1, v0

    goto :goto_d

    :catch_6
    move-exception v2

    move-object v1, v0

    .line 3828
    :goto_b
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v2

    move-object v9, v1

    move-object v1, v0

    :goto_c
    move-object v0, v9

    :goto_d
    if-eqz v0, :cond_10

    .line 3832
    :try_start_c
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_e

    :catch_7
    nop

    :cond_10
    :goto_e
    if-eqz v1, :cond_11

    .line 3839
    :try_start_d
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_8

    .line 3830
    :catch_8
    :cond_11
    throw v2
.end method

.method private makePreparedStatementCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/*"

    .line 4279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "*/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4280
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private normalizeHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 2206
    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->isEmptyOrWhitespaceOnly(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const-string p1, "localhost"

    return-object p1
.end method

.method private static nullSafeCompare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    if-eqz p0, :cond_2

    .line 418
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseCallableStatement(Ljava/lang/String;)Lcom/mysql/jdbc/CallableStatement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3888
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->serverSupportsConvertFn()Z

    move-result v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/EscapeProcessor;->escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;

    move-result-object p1

    .line 3893
    instance-of v0, p1, Lcom/mysql/jdbc/EscapeProcessorResult;

    if-eqz v0, :cond_0

    .line 3894
    check-cast p1, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-object v0, p1, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;

    .line 3895
    iget-boolean p1, p1, Lcom/mysql/jdbc/EscapeProcessorResult;->callingStoredFunction:Z

    goto :goto_0

    .line 3897
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const/4 p1, 0x0

    .line 3901
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v1, v0, v2, p1}, Lcom/mysql/jdbc/CallableStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mysql/jdbc/CallableStatement;

    move-result-object p1

    return-object p1
.end method

.method private parsePortNumber(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2216
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2218
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal connection port value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "01S00"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private repartitionHistogram([I[JJJ)V
    .locals 14

    move-object v10, p0

    move-object v11, p1

    move-object/from16 v12, p2

    .line 4348
    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    if-nez v0, :cond_0

    .line 4349
    array-length v0, v11

    new-array v0, v0, [I

    iput-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    .line 4350
    array-length v0, v12

    new-array v0, v0, [J

    iput-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->oldHistBreakpoints:[J

    .line 4353
    :cond_0
    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    array-length v1, v11

    const/4 v6, 0x0

    invoke-static {p1, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4355
    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->oldHistBreakpoints:[J

    array-length v1, v12

    invoke-static {v12, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    .line 4357
    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ConnectionImpl;->createInitialHistogram([JJJ)V

    const/4 v13, 0x0

    :goto_0
    const/16 v0, 0x14

    if-ge v13, v0, :cond_1

    .line 4360
    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->oldHistBreakpoints:[J

    aget-wide v3, v0, v13

    iget-object v0, v10, Lcom/mysql/jdbc/ConnectionImpl;->oldHistCounts:[I

    aget v5, v0, v13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/mysql/jdbc/ConnectionImpl;->addToHistogram([I[JJIJJ)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private repartitionPerformanceHistogram()V
    .locals 7

    .line 4365
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkAndCreatePerformanceHistogram()V

    .line 4367
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    :goto_0
    iget-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionImpl;->repartitionHistogram([I[JJJ)V

    return-void
.end method

.method private repartitionTablesAccessedHistogram()V
    .locals 7

    .line 4372
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkAndCreateTablesAccessedHistogram()V

    .line 4374
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    :goto_0
    iget-wide v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/ConnectionImpl;->repartitionHistogram([I[JJJ)V

    return-void
.end method

.method private reportMetrics()V
    .locals 15

    .line 4379
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4380
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "** Performance Metrics Report **\n"

    .line 4382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nLongest reported query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nShortest reported query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nAverage query execution time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->totalQueryTimeMs:D

    iget-wide v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nNumber of statements executed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nNumber of result sets created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfResultSetsCreated:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nNumber of statements prepared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPrepares:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nNumber of prepared statement executions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPreparedExecutes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4391
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    const/high16 v2, -0x80000000

    const/16 v3, 0x12

    const/16 v4, 0x14

    const/16 v5, 0x13

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_7

    const-string v1, "\n\n\tTiming Histogram:\n"

    .line 4392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/high16 v8, -0x80000000

    :goto_0
    if-ge v1, v4, :cond_1

    .line 4397
    iget-object v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v9, v9, v1

    if-le v9, v8, :cond_0

    .line 4398
    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v8, v8, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v8, :cond_2

    const/4 v8, 0x1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    if-ge v1, v5, :cond_6

    if-nez v1, :cond_4

    .line 4409
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\tless than "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    add-int/lit8 v11, v1, 0x1

    aget-wide v11, v10, v11

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms: \t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4411
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\tbetween "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    aget-wide v11, v10, v1

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " and "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    add-int/lit8 v11, v1, 0x1

    aget-wide v11, v10, v11

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms: \t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v9, "\t"

    .line 4415
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double v9, v4

    .line 4417
    iget-object v11, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v11, v11, v1

    int-to-double v11, v11

    int-to-double v13, v8

    div-double/2addr v11, v13

    mul-double v9, v9, v11

    double-to-int v9, v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_5

    const-string v11, "*"

    .line 4420
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 4423
    :cond_5
    iget-wide v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    iget-object v11, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    add-int/lit8 v1, v1, 0x1

    aget v11, v11, v1

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    .line 4428
    :cond_6
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    aget-wide v8, v1, v3

    iget-wide v10, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    cmp-long v1, v8, v10

    if-gez v1, :cond_7

    const-string v1, "\n\tbetween "

    .line 4429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4430
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    aget-wide v8, v1, v3

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " and "

    .line 4431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4432
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistBreakpoints:[J

    aget-wide v8, v1, v5

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms: \t"

    .line 4433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4434
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->perfMetricsHistCounts:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4438
    :cond_7
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    if-eqz v1, :cond_f

    const-string v1, "\n\n\tTable Join Histogram:\n"

    .line 4439
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_9

    .line 4444
    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v8, v8, v1

    if-le v8, v2, :cond_8

    .line 4445
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v2, v2, v1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    if-nez v2, :cond_a

    const/4 v2, 0x1

    :cond_a
    const/4 v1, 0x0

    :cond_b
    if-ge v1, v5, :cond_e

    if-nez v1, :cond_c

    .line 4456
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    add-int/lit8 v9, v1, 0x1

    aget-wide v9, v8, v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " tables or less: \t\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4458
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n\tbetween "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    aget-wide v9, v8, v1

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    add-int/lit8 v9, v1, 0x1

    aget-wide v9, v8, v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " tables: \t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v7, "\t"

    .line 4462
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double v7, v4

    .line 4464
    iget-object v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v9, v9, v1

    int-to-double v9, v9

    int-to-double v11, v2

    div-double/2addr v9, v11

    mul-double v7, v7, v9

    double-to-int v7, v7

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_d

    const-string v9, "*"

    .line 4467
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 4470
    :cond_d
    iget-wide v7, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    iget-object v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    add-int/lit8 v1, v1, 0x1

    aget-wide v10, v9, v1

    cmp-long v7, v7, v10

    if-gez v7, :cond_b

    .line 4475
    :cond_e
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    aget-wide v6, v1, v3

    iget-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    cmp-long v1, v6, v1

    if-gez v1, :cond_f

    const-string v1, "\n\tbetween "

    .line 4476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4477
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    aget-wide v2, v1, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " and "

    .line 4478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4479
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistBreakpoints:[J

    aget-wide v2, v1, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " tables: "

    .line 4480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4481
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->numTablesMetricsHistCounts:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4485
    :cond_f
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    invoke-interface {v1, v0}, Lcom/mysql/jdbc/log/Log;->logInfo(Ljava/lang/Object;)V

    .line 4487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->metricsLastReportedMs:J

    :cond_10
    return-void
.end method

.method private rollbackNoChecks()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4670
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalTransactionState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4671
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->inTransactionOnServer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const-string v3, "rollback"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    .line 4676
    iget-object v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    return-void
.end method

.method private setSavepoint(Lcom/mysql/jdbc/MysqlSavepoint;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4978
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0xe

    const/4 v3, 0x4

    .line 4979
    :try_start_0
    invoke-virtual {p0, v3, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4997
    :cond_0
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4980
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 4982
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAVEPOINT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x60

    .line 4983
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4984
    invoke-virtual {p1}, Lcom/mysql/jdbc/MysqlSavepoint;->getSavepointName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4985
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p1, 0x0

    .line 4990
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4992
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5000
    :try_start_3
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->closeStatement(Ljava/sql/Statement;)V

    .line 4999
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, p1

    move-object p1, v1

    .line 5000
    :goto_1
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->closeStatement(Ljava/sql/Statement;)V

    .line 4994
    throw p1

    :catchall_2
    move-exception p1

    .line 4999
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method private setSessionVariables()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 5016
    invoke-virtual {p0, v1, v0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSessionVariables()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5017
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5018
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSessionVariables()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, "\"\'("

    const-string v4, "\"\')"

    const-string v5, "\"\'"

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v4, ";"

    const-string v5, "\"\'("

    const-string v6, "\"\')"

    const-string v7, "\"\'"

    const/4 v8, 0x1

    .line 5019
    invoke-static/range {v3 .. v8}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5022
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 5025
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5026
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SET "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    .line 5028
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5029
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 5030
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    .line 5031
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SESSION "

    .line 5032
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5034
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    goto :goto_1

    .line 5038
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 5041
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 5040
    :cond_4
    throw v0

    :cond_5
    :goto_3
    return-void
.end method

.method private setupServerForTruncationChecks()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5130
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getJdbcCompliantTruncation()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 5131
    invoke-virtual {p0, v0, v2, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5132
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "sql_mode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "STRICT_TRANS_TABLES"

    .line 5134
    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5136
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_4

    .line 5151
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setJdbcCompliantTruncation(Z)V

    goto :goto_2

    .line 5137
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SET sql_mode=\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 5139
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 5140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    .line 5141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "STRICT_TRANS_TABLES\'"

    .line 5144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 5146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x3eb

    const/16 v9, 0x3ef

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v13}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 5148
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setJdbcCompliantTruncation(Z)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public abort(Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5467
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5470
    sget-object v1, Lcom/mysql/jdbc/ConnectionImpl;->ABORT_PERM:Ljava/sql/SQLPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 5477
    new-instance v0, Lcom/mysql/jdbc/ConnectionImpl$11;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/ConnectionImpl$11;-><init>(Lcom/mysql/jdbc/ConnectionImpl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 5474
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string v0, "Executor can not be null"

    const-string v1, "S1009"

    invoke-static {v0, v1, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public abortInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1309
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_0

    .line 1315
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 1316
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->releaseResources()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 1320
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    :cond_0
    const/4 v0, 0x1

    .line 1323
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    return-void
.end method

.method public changeUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1119
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1120
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    if-eqz p1, :cond_0

    const-string v1, ""

    .line 1122
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    const/4 v1, -0x1

    .line 1131
    iput v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2}, Lcom/mysql/jdbc/MysqlIO;->changeUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1141
    :try_start_2
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    .line 1142
    iput-object p2, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    const/4 p1, 0x4

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 1144
    invoke-virtual {p0, p1, v1, p2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1145
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->configureClientCharacterSet(Z)Z

    .line 1148
    :cond_3
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->setSessionVariables()V

    .line 1150
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->setupServerForTruncationChecks()V

    .line 1151
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x5

    const/4 v1, 0x6

    const/16 v2, 0xd

    .line 1136
    invoke-virtual {p0, p2, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "28000"

    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1137
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->cleanup(Ljava/lang/Throwable;)V

    .line 1139
    :cond_4
    throw p1

    :catchall_0
    move-exception p1

    .line 1151
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public checkClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1181
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    if-eqz v0, :cond_0

    .line 1182
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->throwConnectionClosedException()V

    :cond_0
    return-void
.end method

.method public clearHasTriedMaster()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1350
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasTriedMasterFlag:Z

    return-void
.end method

.method public clearWarnings()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    .line 1369
    invoke-virtual {p0, p1, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public clientPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1376
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 1378
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    return-object p1
.end method

.method public clientPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1390
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public clientPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p4, 0x1

    .line 1446
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1395
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    if-eqz p4, :cond_0

    .line 1397
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProcessEscapeCodesForPrepStmts()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1401
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 1402
    iget-object p4, p0, Lcom/mysql/jdbc/ConnectionImpl;->cachedPreparedStatementParams:Lcom/mysql/jdbc/CacheAdapter;

    invoke-interface {p4, p1}, Lcom/mysql/jdbc/CacheAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    if-nez p4, :cond_1

    .line 1405
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object p4

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {p4, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object p4

    .line 1407
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->cachedPreparedStatementParams:Lcom/mysql/jdbc/CacheAdapter;

    invoke-virtual {p4}, Lcom/mysql/jdbc/PreparedStatement;->getParseInfo()Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/mysql/jdbc/CacheAdapter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1409
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v0, p1, v1, p4}, Lcom/mysql/jdbc/PreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object p4

    goto :goto_0

    .line 1412
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object p4

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {p4, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object p4

    .line 1415
    :goto_0
    invoke-virtual {p4, p2}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetType(I)V

    .line 1416
    invoke-virtual {p4, p3}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetConcurrency(I)V

    return-object p4
.end method

.method public clientPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1426
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/PreparedStatement;

    if-eqz p2, :cond_0

    .line 1428
    array-length p2, p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    return-object p1
.end method

.method public clientPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1437
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/PreparedStatement;

    if-eqz p2, :cond_0

    .line 1439
    array-length p2, p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    return-object p1
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1462
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1463
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1464
    new-instance v1, Lcom/mysql/jdbc/ConnectionImpl$1;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mysql/jdbc/ConnectionImpl$1;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;)V

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionImpl$1;->doForAll()V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1472
    invoke-virtual {p0, v3, v3, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->realClose(ZZZLjava/lang/Throwable;)V

    .line 1473
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public commit()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1523
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1524
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1527
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1528
    new-instance v1, Lcom/mysql/jdbc/ConnectionImpl$2;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mysql/jdbc/ConnectionImpl$2;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;)V

    .line 1538
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 1540
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->fullIteration()Z

    move-result v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 1568
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 1541
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 1546
    :cond_0
    :try_start_3
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getRelaxAutoCommit()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Can\'t call commit when autocommit=true"

    .line 1547
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1548
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    if-eqz v1, :cond_4

    .line 1549
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalTransactionState()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1550
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->inTransactionOnServer()Z

    move-result v1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_3

    .line 1568
    :try_start_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 1551
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :cond_3
    const/4 v3, 0x0

    :try_start_5
    const-string v4, "commit"

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const/16 v8, 0x3ef

    const/4 v9, 0x0

    .line 1555
    iget-object v10, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1568
    :cond_4
    :try_start_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 1567
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_7
    const-string v2, "08S01"

    .line 1558
    invoke-virtual {v1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "Communications link failure during commit(). Transaction resolution unknown."

    const-string v2, "08007"

    .line 1559
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1563
    :cond_5
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1568
    :goto_1
    :try_start_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 1565
    throw v1

    :catchall_1
    move-exception v1

    .line 1567
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method public createNewIO(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2016
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2021
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->exposeAsProperties(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v1

    .line 2023
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2024
    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/ConnectionImpl;->connectOneTryOnly(ZLjava/util/Properties;)V

    .line 2026
    monitor-exit v0

    return-void

    .line 2029
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/ConnectionImpl;->connectWithRetries(ZLjava/util/Properties;)V

    .line 2030
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createStatement()Ljava/sql/Statement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    .line 2365
    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->createStatement(II)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2381
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 2383
    new-instance v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/StatementImpl;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 2384
    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/StatementImpl;->setResultSetType(I)V

    .line 2385
    invoke-virtual {v0, p2}, Lcom/mysql/jdbc/StatementImpl;->setResultSetConcurrency(I)V

    return-object v0
.end method

.method public createStatement(III)Ljava/sql/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2394
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPedantic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 2396
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "HOLD_CUSRORS_OVER_COMMIT is only supported holdability level"

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 2401
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ConnectionImpl;->createStatement(II)Ljava/sql/Statement;

    move-result-object p1

    return-object p1
.end method

.method public decachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4299
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4300
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/mysql/jdbc/ServerPreparedStatement;->isPoolable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4301
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4302
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    iget-object v3, p1, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-object p1, p1, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/mysql/jdbc/ConnectionImpl;->makePreparedStatementCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/mysql/jdbc/util/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4303
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 4305
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public dumpTestcaseQuery(Ljava/lang/String;)V
    .locals 1

    .line 2405
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public duplicate()Lcom/mysql/jdbc/Connection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2409
    new-instance v6, Lcom/mysql/jdbc/ConnectionImpl;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->origHostToConnectTo:Ljava/lang/String;

    iget v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->origPortToConnectTo:I

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->origDatabaseToConnectTo:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ConnectionImpl;-><init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 2448
    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    return-object v0
.end method

.method public execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v13, p4

    .line 2453
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    const/4 v0, 0x0

    if-eqz v13, :cond_0

    .line 2463
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    move v15, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    const/4 v15, 0x0

    .line 2466
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    .line 2467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide/from16 v16, v5

    goto :goto_1

    :cond_1
    move-wide/from16 v16, v3

    .line 2470
    :goto_1
    iput-wide v3, v1, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 2472
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v2

    const/4 v12, 0x1

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoReconnectForPools()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    if-nez p10, :cond_3

    .line 2474
    :try_start_1
    invoke-virtual {v1, v0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->pingInternal(ZI)V

    .line 2476
    iput-boolean v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2478
    :catch_0
    :try_start_2
    invoke-virtual {v1, v12}, Lcom/mysql/jdbc/ConnectionImpl;->createNewIO(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_2
    if-nez v13, :cond_7

    const/4 v0, 0x0

    .line 2486
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUnicode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2487
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object/from16 v21, v0

    .line 2490
    iget-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    const/16 v22, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move/from16 v23, p3

    move/from16 v24, p5

    move/from16 v25, p6

    move/from16 v26, p7

    move-object/from16 v27, p8

    move-object/from16 v28, p9

    invoke-virtual/range {v18 .. v28}, Lcom/mysql/jdbc/MysqlIO;->sqlQueryDirect(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;IIIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2543
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaintainTimeStats()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 2537
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long v2, v2, v16

    .line 2540
    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->registerQueryExecutionTime(J)V

    .line 2490
    :cond_6
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v0

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    const/4 v13, 0x1

    goto :goto_3

    :catch_2
    move-exception v0

    const/4 v13, 0x1

    goto :goto_5

    .line 2494
    :cond_7
    :try_start_5
    iget-object v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move/from16 v7, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    const/4 v13, 0x1

    move-object/from16 v12, p9

    :try_start_6
    invoke-virtual/range {v2 .. v12}, Lcom/mysql/jdbc/MysqlIO;->sqlQueryDirect(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;IIIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2541
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaintainTimeStats()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 2537
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long v2, v2, v16

    .line 2540
    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->registerQueryExecutionTime(J)V

    .line 2494
    :cond_9
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-object v0

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_5

    .line 2521
    :goto_3
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2523
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_b

    .line 2524
    invoke-direct {v1, v0}, Lcom/mysql/jdbc/ConnectionImpl;->cleanup(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2522
    :cond_a
    iput-boolean v13, v1, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    :cond_b
    :goto_4
    const-string v2, "Connection.UnexpectedException"

    .line 2527
    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2529
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2531
    throw v2

    .line 2499
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDumpQueriesOnException()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x1

    .line 2500
    invoke-virtual {v1, v2, v3, v15}, Lcom/mysql/jdbc/ConnectionImpl;->extractSqlFromPacket(Ljava/lang/String;Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object v2

    .line 2501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x20

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "\n\nQuery being executed when exception was thrown:\n"

    .line 2502
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2503
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    .line 2504
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2506
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->appendMessageToException(Ljava/sql/SQLException;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    goto :goto_6

    :cond_c
    const/4 v4, 0x1

    .line 2509
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2512
    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v3, "08S01"

    .line 2514
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2515
    invoke-direct {v1, v0}, Lcom/mysql/jdbc/ConnectionImpl;->cleanup(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 2510
    :cond_d
    iput-boolean v4, v1, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 2519
    :cond_e
    :goto_7
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2541
    :goto_8
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaintainTimeStats()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    .line 2537
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long v2, v2, v16

    .line 2540
    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/ConnectionImpl;->registerQueryExecutionTime(J)V

    .line 2533
    :cond_10
    throw v0

    .line 2543
    :goto_9
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0
.end method

.method public extractSqlFromPacket(Ljava/lang/String;Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2551
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxQuerySizeToLog()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 2552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxQuerySizeToLog()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "MysqlIO.25"

    .line 2553
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2554
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 2567
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxQuerySizeToLog()I

    move-result p1

    if-le p3, p1, :cond_2

    .line 2568
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxQuerySizeToLog()I

    move-result p3

    const/4 v0, 0x1

    .line 2572
    :cond_2
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object p1

    const/4 p2, 0x5

    sub-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/StringUtils;->toString([BII)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_3

    .line 2575
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MysqlIO.25"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    const-string v0, "/* conn id "

    .line 2584
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2585
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " clock: "

    .line 2586
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " */ "

    .line 2588
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 0

    return-object p0
.end method

.method public getActiveStatementCount()I
    .locals 1

    .line 2594
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAutoCommit()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2606
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2607
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2608
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAutoIncrementIncrement()I
    .locals 1

    .line 3849
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoIncrementIncrement:I

    return v0
.end method

.method public getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;
    .locals 2

    .line 5230
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;

    if-eqz v0, :cond_0

    .line 5231
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v0

    .line 5232
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/CachedResultSetMetaData;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5233
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;
    .locals 1

    .line 2616
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDynamicCalendars()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2617
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    return-object v0

    .line 2620
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSessionLockedCalendar()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getCancelTimer()Ljava/util/Timer;
    .locals 4

    .line 368
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 370
    new-instance v1, Ljava/util/Timer;

    const-string v2, "MySQL Statement Cancellation Timer"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 373
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCatalog()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2635
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2636
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2637
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCharacterSetMetadata()Ljava/lang/String;
    .locals 2

    .line 2644
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2645
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->characterSetMetadata:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2646
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2662
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->usePlatformCharsetConverters:Z

    if-eqz v1, :cond_1

    return-object v0

    .line 2668
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    monitor-enter v1

    .line 2669
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2671
    sget-object v3, Lcom/mysql/jdbc/ConnectionImpl;->CHARSET_CONVERTER_NOT_AVAILABLE_MARKER:Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    .line 2672
    monitor-exit v1

    return-object v0

    .line 2675
    :cond_2
    check-cast v2, Lcom/mysql/jdbc/SingleByteCharsetConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    .line 2679
    :try_start_1
    invoke-static {p1, p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->getInstance(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v2

    if-nez v2, :cond_3

    .line 2682
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    sget-object v4, Lcom/mysql/jdbc/ConnectionImpl;->CHARSET_CONVERTER_NOT_AVAILABLE_MARKER:Ljava/lang/Object;

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2684
    :cond_3
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2687
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->charsetConverterMap:Ljava/util/Map;

    sget-object v3, Lcom/mysql/jdbc/ConnectionImpl;->CHARSET_CONVERTER_NOT_AVAILABLE_MARKER:Ljava/lang/Object;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 2692
    :cond_4
    :goto_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getCharsetNameForIndex(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2702
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->getEncodingForIndex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionMutex()Ljava/lang/Object;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->realProxy:Ljava/lang/reflect/InvocationHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->realProxy:Ljava/lang/reflect/InvocationHandler;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDefaultTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 2762
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheDefaultTimezone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->defaultTimeZone:Ljava/util/TimeZone;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mysql/jdbc/TimeUtil;->getDefaultTimeZone(Z)Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEncodingForIndex(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2718
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseOldUTF8Behavior()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2719
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    .line 2726
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 2727
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2729
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    .line 2734
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForCollationIndex(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-nez v1, :cond_4

    .line 2748
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2741
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 2742
    invoke-virtual {v0, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2743
    throw v0

    .line 2738
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown character set index for field \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' received from server."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1000"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 2751
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEncoding()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_1
    return-object v1
.end method

.method public getErrorMessageEncoding()Ljava/lang/String;
    .locals 1

    .line 2766
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->errorMessageEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .line 5373
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method public getHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x2

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostPortPair()Ljava/lang/String;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hostPortPair:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getIO()Lcom/mysql/jdbc/MysqlIO;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2809
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    if-nez v0, :cond_0

    .line 2813
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    return-object v0

    .line 2810
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Operation not allowed on closed connection"

    const-string v2, "08003"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getId()J
    .locals 2

    .line 2777
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionId:J

    return-wide v0
.end method

.method public getIdleFor()J
    .locals 6

    .line 2789
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2790
    :try_start_0
    iget-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2791
    monitor-exit v0

    return-wide v3

    .line 2794
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2795
    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->lastQueryFinishedTime:J

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    .line 2797
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 2798
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLoadBalanceSafeProxy()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    return-object v0
.end method

.method public getLog()Lcom/mysql/jdbc/log/Log;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2825
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->log:Lcom/mysql/jdbc/log/Log;

    return-object v0
.end method

.method public getMaxBytesPerChar(Ljava/lang/Integer;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2842
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 2843
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 2847
    invoke-static {p1}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetNameForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 2852
    invoke-static {p2, p0}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetForJavaEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Ljava/lang/String;

    move-result-object v1

    .line 2857
    :cond_2
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->mysqlCharsetToCustomMblen:Ljava/util/Map;

    if-eqz p1, :cond_3

    .line 2858
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->mysqlCharsetToCustomMblen:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_4

    .line 2863
    invoke-static {v1}, Lcom/mysql/jdbc/CharsetMapping;->getMblen(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_4
    if-eqz p1, :cond_5

    .line 2867
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    :goto_2
    return p1

    :catch_0
    move-exception p1

    .line 2872
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "S1009"

    invoke-static {p2, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p2

    .line 2873
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2874
    throw p2

    :catch_1
    move-exception p1

    .line 2870
    throw p1
.end method

.method public getMaxBytesPerChar(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2829
    invoke-virtual {p0, v0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->getMaxBytesPerChar(Ljava/lang/Integer;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getMetaData()Ljava/sql/DatabaseMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2891
    invoke-direct {p0, v0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetaData(ZZ)Ljava/sql/DatabaseMetaData;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataSafeStatement()Ljava/sql/Statement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2903
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    .line 2905
    invoke-interface {v0}, Ljava/sql/Statement;->getMaxRows()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2906
    invoke-interface {v0, v2}, Ljava/sql/Statement;->setMaxRows(I)V

    .line 2909
    :cond_0
    invoke-interface {v0, v2}, Ljava/sql/Statement;->setEscapeProcessing(Z)V

    .line 2911
    invoke-interface {v0}, Ljava/sql/Statement;->getFetchSize()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2912
    invoke-interface {v0, v2}, Ljava/sql/Statement;->setFetchSize(I)V

    :cond_1
    return-object v0
.end method

.method public getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    return-object v0
.end method

.method public getNetBufferLength()I
    .locals 1

    .line 2922
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->netBufferLength:I

    return v0
.end method

.method public getNetworkTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5509
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5510
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5511
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSocketTimeout()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 5512
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;
    .locals 1

    .line 5516
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    .line 3109
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    return-object v0
.end method

.method public getRequiresEscapingEncoder()Z
    .locals 1

    .line 5377
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->requiresEscapingEncoder:Z

    return v0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5429
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5430
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    const/4 v1, 0x0

    .line 5432
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5433
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServerCharacterEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2930
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCharset()Ljava/lang/String;
    .locals 4

    .line 2939
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 2941
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 2942
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->indexToCustomMysqlCharset:Ljava/util/Map;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v1, v1, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    .line 2945
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget v0, v0, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetNameForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    .line 2947
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set_server"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    .line 2949
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v1, "character_set"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServerMajorVersion()I
    .locals 1

    .line 2953
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getServerMajorVersion()I

    move-result v0

    return v0
.end method

.method public getServerMinorVersion()I
    .locals 1

    .line 2957
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getServerMinorVersion()I

    move-result v0

    return v0
.end method

.method public getServerSubMinorVersion()I
    .locals 1

    .line 2961
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getServerSubMinorVersion()I

    move-result v0

    return v0
.end method

.method public getServerTimezoneTZ()Ljava/util/TimeZone;
    .locals 1

    .line 2965
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverTimezoneTZ:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getServerVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2969
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2970
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getServerVersion()Ljava/lang/String;
    .locals 1

    .line 2977
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getServerVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionLockedCalendar()Ljava/util/Calendar;
    .locals 1

    .line 2982
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSessionMaxRows()I
    .locals 2

    .line 5396
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5397
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 5398
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStatementComment()Ljava/lang/String;
    .locals 1

    .line 5292
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementComment:Ljava/lang/String;

    return-object v0
.end method

.method public getStatementInterceptorsInstances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/StatementInterceptorV2;",
            ">;"
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public getTransactionIsolation()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2994
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2995
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_7

    const/4 v1, 0x0

    .line 3000
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 3006
    :try_start_2
    invoke-virtual {p0, v3, v4, v5}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SELECT @@session.tx_isolation"

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "SHOW VARIABLES LIKE \'transaction_isolation\'"

    const/4 v4, 0x2

    .line 3014
    :goto_0
    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3016
    :try_start_3
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3017
    invoke-interface {v3, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3020
    sget-object v4, Lcom/mysql/jdbc/ConnectionImpl;->mapTransIsolationNameToValue:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 3023
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    .line 3037
    :try_start_4
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catch_0
    :cond_1
    if-eqz v2, :cond_2

    .line 3047
    :try_start_5
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 3023
    :catch_1
    :cond_2
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return v1

    .line 3027
    :cond_3
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not map transaction isolation \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a valid JDBC level."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    :cond_4
    const-string v1, "Could not retrieve transaction isolation level from server"

    const-string v4, "S1000"

    .line 3031
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_1

    :catchall_2
    move-exception v3

    move-object v2, v1

    move-object v1, v3

    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_5

    .line 3037
    :try_start_8
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catch_2
    :cond_5
    if-eqz v2, :cond_6

    .line 3047
    :try_start_9
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 3035
    :catch_3
    :cond_6
    :try_start_a
    throw v1

    .line 3057
    :cond_7
    iget v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    monitor-exit v0

    return v1

    :catchall_3
    move-exception v1

    .line 3058
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v1
.end method

.method public getTypeMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3070
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3071
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->typeMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 3072
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->typeMap:Ljava/util/Map;

    .line 3075
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->typeMap:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3076
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 3080
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->myURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 3084
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getUtcCalendar()Ljava/util/Calendar;
    .locals 1

    .line 3088
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->utcCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSameProperties(Lcom/mysql/jdbc/Connection;)Z
    .locals 1

    .line 3105
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getProperties()Ljava/util/Properties;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasTriedMaster()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3114
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasTriedMasterFlag:Z

    return v0
.end method

.method public incrementNumberOfPreparedExecutes()V
    .locals 4

    .line 3118
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3119
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPreparedExecutes:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPreparedExecutes:J

    .line 3122
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    :cond_0
    return-void
.end method

.method public incrementNumberOfPrepares()V
    .locals 4

    .line 3127
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3128
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPrepares:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfPrepares:J

    :cond_0
    return-void
.end method

.method public incrementNumberOfResultSetsCreated()V
    .locals 4

    .line 3133
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3134
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfResultSetsCreated:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfResultSetsCreated:J

    :cond_0
    return-void
.end method

.method public initializeExtension(Lcom/mysql/jdbc/Extension;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5330
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    invoke-interface {p1, p0, v0}, Lcom/mysql/jdbc/Extension;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    return-void
.end method

.method public initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_1

    .line 5261
    new-instance p2, Lcom/mysql/jdbc/CachedResultSetMetaData;

    invoke-direct {p2}, Lcom/mysql/jdbc/CachedResultSetMetaData;-><init>()V

    .line 5264
    invoke-interface {p3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->buildIndexMapping()V

    .line 5265
    invoke-interface {p3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->initializeWithMetadata()V

    .line 5267
    instance-of v0, p3, Lcom/mysql/jdbc/UpdatableResultSet;

    if-eqz v0, :cond_0

    .line 5268
    move-object v0, p3

    check-cast v0, Lcom/mysql/jdbc/UpdatableResultSet;

    invoke-virtual {v0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkUpdatability()V

    .line 5271
    :cond_0
    invoke-interface {p3, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->populateCachedMetaData(Lcom/mysql/jdbc/CachedResultSetMetaData;)V

    .line 5273
    iget-object p3, p0, Lcom/mysql/jdbc/ConnectionImpl;->resultSetMetadataCache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {p3, p1, p2}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5275
    :cond_1
    invoke-interface {p3, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->initializeFromCachedMetaData(Lcom/mysql/jdbc/CachedResultSetMetaData;)V

    .line 5276
    invoke-interface {p3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->initializeWithMetadata()V

    .line 5278
    instance-of p1, p3, Lcom/mysql/jdbc/UpdatableResultSet;

    if-eqz p1, :cond_2

    .line 5279
    check-cast p3, Lcom/mysql/jdbc/UpdatableResultSet;

    invoke-virtual {p3}, Lcom/mysql/jdbc/UpdatableResultSet;->checkUpdatability()V

    :cond_2
    :goto_0
    return-void
.end method

.method public initializeSafeStatementInterceptors()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 835
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 837
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->props:Ljava/util/Properties;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getStatementInterceptors()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MysqlIo.BadStatementInterceptor"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {p0, v1, v2, v3, v4}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v1

    .line 840
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    .line 842
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 843
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/Extension;

    .line 846
    instance-of v3, v2, Lcom/mysql/jdbc/StatementInterceptor;

    if-eqz v3, :cond_1

    .line 847
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->getV2PostProcessMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 848
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    new-instance v4, Lcom/mysql/jdbc/NoSubInterceptorWrapper;

    new-instance v5, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;

    check-cast v2, Lcom/mysql/jdbc/StatementInterceptor;

    invoke-direct {v5, v2}, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;-><init>(Lcom/mysql/jdbc/StatementInterceptor;)V

    invoke-direct {v4, v5}, Lcom/mysql/jdbc/NoSubInterceptorWrapper;-><init>(Lcom/mysql/jdbc/StatementInterceptorV2;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 850
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    new-instance v4, Lcom/mysql/jdbc/NoSubInterceptorWrapper;

    new-instance v5, Lcom/mysql/jdbc/V1toV2StatementInterceptorAdapter;

    check-cast v2, Lcom/mysql/jdbc/StatementInterceptor;

    invoke-direct {v5, v2}, Lcom/mysql/jdbc/V1toV2StatementInterceptorAdapter;-><init>(Lcom/mysql/jdbc/StatementInterceptor;)V

    invoke-direct {v4, v5}, Lcom/mysql/jdbc/NoSubInterceptorWrapper;-><init>(Lcom/mysql/jdbc/StatementInterceptorV2;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 853
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    new-instance v4, Lcom/mysql/jdbc/NoSubInterceptorWrapper;

    check-cast v2, Lcom/mysql/jdbc/StatementInterceptorV2;

    invoke-direct {v4, v2}, Lcom/mysql/jdbc/NoSubInterceptorWrapper;-><init>(Lcom/mysql/jdbc/StatementInterceptorV2;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public isAbonormallyLongQuery(J)Z
    .locals 8

    .line 5318
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5319
    :try_start_0
    iget-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    const-wide/16 v3, 0xf

    const/4 v5, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 5320
    monitor-exit v0

    return v5

    .line 5323
    :cond_0
    iget-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSumSquares:D

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSum:D

    iget-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSum:D

    mul-double v3, v3, v6

    iget-wide v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    long-to-double v6, v6

    div-double/2addr v3, v6

    sub-double/2addr v1, v3

    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    const-wide/16 v6, 0x1

    sub-long/2addr v3, v6

    long-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    long-to-double p1, p1

    .line 5325
    iget-wide v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeMean:D

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    mul-double v1, v1, v6

    add-double/2addr v3, v1

    cmpl-double p1, p1, v3

    if-lez p1, :cond_1

    const/4 v5, 0x1

    :cond_1
    monitor-exit v0

    return v5

    :catchall_0
    move-exception p1

    .line 5326
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isClientTzUTC()Z
    .locals 1

    .line 3476
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClientTzUTC:Z

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 3480
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    return v0
.end method

.method public isCursorFetchEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x2

    .line 3484
    invoke-virtual {p0, v1, v0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseCursorFetch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInGlobalTx()Z
    .locals 1

    .line 3488
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isInGlobalTx:Z

    return v0
.end method

.method public isMasterConnection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNoBackslashEscapesSet()Z
    .locals 1

    .line 3509
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->noBackslashEscapes:Z

    return v0
.end method

.method public isProxySet()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isQueryCacheEnabled()Z
    .locals 3

    const-string v0, "YES"

    .line 3402
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v2, "have_query_cache"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ON"

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v2, "query_cache_type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverVariables:Ljava/util/Map;

    const-string v2, "query_cache_size"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadInfoMsgEnabled()Z
    .locals 1

    .line 3513
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->readInfoMsg:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3526
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->isReadOnly(Z)Z

    move-result v0

    return v0
.end method

.method public isReadOnly(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 3543
    iget-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    if-nez p1, :cond_8

    const/4 p1, 0x6

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, v0}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReadOnlyPropagatesToServer()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 3549
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "select @@session.tx_read_only"

    .line 3551
    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3552
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 3553
    invoke-interface {v1, p1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3565
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_1
    if-eqz v0, :cond_2

    .line 3575
    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_2
    return p1

    :catch_2
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 3556
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    const/16 v3, 0x71c

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getDisconnectOnExpiredPasswords()Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v2, :cond_5

    :cond_3
    if-eqz v1, :cond_4

    .line 3565
    :try_start_6
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_4
    if-eqz v0, :cond_8

    .line 3575
    :try_start_7
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_3

    :cond_5
    :try_start_8
    const-string v2, "Could not retrieve transaction read-only status from server"

    const-string v3, "S1000"

    .line 3557
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, p1, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    :goto_2
    if-eqz v1, :cond_6

    .line 3565
    :try_start_9
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    :cond_6
    if-eqz v0, :cond_7

    .line 3575
    :try_start_a
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 3563
    :catch_7
    :cond_7
    throw p1

    .line 3585
    :catch_8
    :cond_8
    :goto_3
    iget-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->readOnly:Z

    return p1
.end method

.method public isRunningOnJDK13()Z
    .locals 1

    .line 3589
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isRunningOnJDK13:Z

    return v0
.end method

.method public isSameResource(Lcom/mysql/jdbc/Connection;)Z
    .locals 8

    .line 3593
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3595
    :try_start_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3600
    :cond_0
    move-object v2, p1

    check-cast v2, Lcom/mysql/jdbc/ConnectionImpl;

    iget-object v2, v2, Lcom/mysql/jdbc/ConnectionImpl;->origHostToConnectTo:Ljava/lang/String;

    .line 3601
    move-object v3, p1

    check-cast v3, Lcom/mysql/jdbc/ConnectionImpl;

    iget-object v3, v3, Lcom/mysql/jdbc/ConnectionImpl;->origDatabaseToConnectTo:Ljava/lang/String;

    .line 3602
    move-object v4, p1

    check-cast v4, Lcom/mysql/jdbc/ConnectionImpl;

    iget-object v4, v4, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    .line 3604
    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->origHostToConnectTo:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/mysql/jdbc/ConnectionImpl;->nullSafeCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const/16 v5, 0x2c

    .line 3606
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_3

    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 3608
    move-object v2, p1

    check-cast v2, Lcom/mysql/jdbc/ConnectionImpl;

    iget v2, v2, Lcom/mysql/jdbc/ConnectionImpl;->origPortToConnectTo:I

    iget v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->origPortToConnectTo:I

    if-ne v2, v5, :cond_1

    :cond_3
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_5

    .line 3612
    iget-object v5, p0, Lcom/mysql/jdbc/ConnectionImpl;->origDatabaseToConnectTo:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/mysql/jdbc/ConnectionImpl;->nullSafeCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/mysql/jdbc/ConnectionImpl;->nullSafeCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const/4 v2, 0x0

    :cond_5
    if-eqz v2, :cond_6

    .line 3618
    monitor-exit v0

    return v6

    .line 3622
    :cond_6
    check-cast p1, Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionImpl;->getResourceId()Ljava/lang/String;

    move-result-object p1

    .line 3623
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_7

    if-eqz v2, :cond_8

    .line 3626
    :cond_7
    invoke-static {p1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->nullSafeCompare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3629
    monitor-exit v0

    return v6

    .line 3633
    :cond_8
    monitor-exit v0

    return v1

    .line 3634
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isServerLocal()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5381
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5382
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v1

    iget-object v1, v1, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    .line 5384
    instance-of v2, v1, Lcom/mysql/jdbc/SocketMetadata;

    if-eqz v2, :cond_0

    .line 5385
    check-cast v1, Lcom/mysql/jdbc/SocketMetadata;

    invoke-interface {v1, p0}, Lcom/mysql/jdbc/SocketMetadata;->isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 5387
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v1

    const-string v2, "Connection.NoMetadataOnSocketFactory"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 5388
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 5389
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isServerTzUTC()Z
    .locals 1

    .line 3638
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->isServerTzUTC:Z

    return v0
.end method

.method public lowerCaseTableNames()Z
    .locals 1

    .line 3858
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->lowerCaseTableNames:Z

    return v0
.end method

.method public nativeSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3878
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->serverSupportsConvertFn()Z

    move-result v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/EscapeProcessor;->escapeSQL(Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)Ljava/lang/Object;

    move-result-object p1

    .line 3880
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3881
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 3884
    :cond_1
    check-cast p1, Lcom/mysql/jdbc/EscapeProcessorResult;

    iget-object p1, p1, Lcom/mysql/jdbc/EscapeProcessorResult;->escapedSql:Ljava/lang/String;

    return-object p1
.end method

.method public parserKnowsUnicode()Z
    .locals 1

    .line 3905
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->parserKnowsUnicode:Z

    return v0
.end method

.method public ping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3915
    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->pingInternal(ZI)V

    return-void
.end method

.method public pingInternal(ZI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3920
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 3923
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSelfDestructOnPingSecondsLifetime()I

    move-result p1

    int-to-long v0, p1

    .line 3924
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getSelfDestructOnPingMaxOperations()I

    move-result p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 3926
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionCreationTimeMillis:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gtz v0, :cond_2

    :cond_1
    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getCommandCount()I

    move-result v0

    if-le p1, v0, :cond_2

    goto :goto_0

    .line 3929
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->close()V

    const-string p1, "Connection.exceededConnectionLifetime"

    .line 3931
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "08S01"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 3935
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    return-void
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    .line 3944
    invoke-virtual {p0, p1, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 3963
    invoke-virtual {p0, v1, v0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3966
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCacheCallableStatements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3968
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->parseCallableStatement(Ljava/lang/String;)Lcom/mysql/jdbc/CallableStatement;

    move-result-object p1

    goto :goto_1

    .line 3970
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->parsedCallableStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v0

    .line 3971
    :try_start_0
    new-instance v1, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3973
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->parsedCallableStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    if-eqz v2, :cond_1

    .line 3977
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/mysql/jdbc/CallableStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)Lcom/mysql/jdbc/CallableStatement;

    move-result-object p1

    goto :goto_0

    .line 3979
    :cond_1
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->parseCallableStatement(Ljava/lang/String;)Lcom/mysql/jdbc/CallableStatement;

    move-result-object p1

    .line 3981
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3982
    :try_start_1
    iget-object v2, p1, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    .line 3983
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3985
    :try_start_2
    iget-object v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->parsedCallableStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v3, v1, v2}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3987
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3990
    :goto_1
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setResultSetType(I)V

    .line 3991
    invoke-virtual {p1, p3}, Lcom/mysql/jdbc/CallableStatement;->setResultSetConcurrency(I)V

    return-object p1

    :catchall_0
    move-exception p2

    .line 3983
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    :catchall_1
    move-exception p1

    .line 3987
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 3996
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Callable statements not supported."

    const-string p3, "S1C00"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4003
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPedantic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 4005
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "HOLD_CUSRORS_OVER_COMMIT is only supported holdability level"

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4010
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/ConnectionImpl;->prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/CallableStatement;

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    .line 4037
    invoke-virtual {p0, p1, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4044
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 4046
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4067
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4068
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 4077
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProcessEscapeCodesForPrepStmts()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 4079
    :goto_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEmulateUnsupportedPstmts()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4080
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->canHandleAsServerPreparedStatement(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    .line 4083
    :goto_1
    iget-boolean v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->useServerPreparedStmts:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    .line 4084
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4085
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4086
    :try_start_1
    iget-object v4, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-direct {p0, v6, p1}, Lcom/mysql/jdbc/ConnectionImpl;->makePreparedStatementCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mysql/jdbc/util/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/ServerPreparedStatement;

    if-eqz v4, :cond_2

    .line 4090
    move-object v6, v4

    check-cast v6, Lcom/mysql/jdbc/ServerPreparedStatement;

    invoke-virtual {v6, v5}, Lcom/mysql/jdbc/ServerPreparedStatement;->setClosed(Z)V

    .line 4091
    invoke-virtual {v4}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-nez v4, :cond_5

    .line 4096
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v4

    iget-object v6, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {v4, v1, v6, p2, p3}, Lcom/mysql/jdbc/ServerPreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;

    move-result-object v4

    .line 4098
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSqlLimit()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 4099
    move-object v6, v4

    check-cast v6, Lcom/mysql/jdbc/ServerPreparedStatement;

    iput-boolean v3, v6, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    .line 4102
    :cond_3
    invoke-virtual {v4, p2}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetType(I)V

    .line 4103
    invoke-virtual {v4, p3}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetConcurrency(I)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 4106
    :try_start_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEmulateUnsupportedPstmts()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4107
    invoke-virtual {p0, v1, p2, p3, v5}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/mysql/jdbc/PreparedStatement;

    .line 4109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPreparedStatementCacheSqlLimit()I

    move-result p3

    if-ge p2, p3, :cond_5

    .line 4110
    iget-object p2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCheckCache:Lcom/mysql/jdbc/util/LRUCache;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, p3}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 4113
    :cond_4
    throw v3

    .line 4117
    :cond_5
    :goto_2
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4120
    :cond_6
    :try_start_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object p1

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-static {p1, v1, v2, p2, p3}, Lcom/mysql/jdbc/ServerPreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;

    move-result-object v4

    .line 4122
    invoke-virtual {v4, p2}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetType(I)V

    .line 4123
    invoke-virtual {v4, p3}, Lcom/mysql/jdbc/PreparedStatement;->setResultSetConcurrency(I)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 4126
    :try_start_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getEmulateUnsupportedPstmts()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4127
    invoke-virtual {p0, v1, p2, p3, v5}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/mysql/jdbc/PreparedStatement;

    goto :goto_3

    .line 4129
    :cond_7
    throw p1

    .line 4134
    :cond_8
    invoke-virtual {p0, v1, p2, p3, v5}, Lcom/mysql/jdbc/ConnectionImpl;->clientPrepareStatement(Ljava/lang/String;IIZ)Ljava/sql/PreparedStatement;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/mysql/jdbc/PreparedStatement;

    .line 4137
    :goto_3
    monitor-exit v0

    return-object v4

    :catchall_1
    move-exception p1

    .line 4138
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4145
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPedantic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 4147
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "HOLD_CUSRORS_OVER_COMMIT is only supported holdability level"

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4152
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/ConnectionImpl;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4159
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 4161
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    if-eqz p2, :cond_0

    array-length p2, p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4170
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 4172
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    if-eqz p2, :cond_0

    array-length p2, p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    return-object p1
.end method

.method public realClose(ZZZLjava/lang/Throwable;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 4190
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p4

    .line 4194
    iput-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->forceClosedReason:Ljava/lang/Throwable;

    if-nez p3, :cond_4

    .line 4198
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoCommit()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 4200
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->rollback()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 4206
    :goto_1
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->reportMetrics()V

    .line 4208
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseUsageAdvisor()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez p1, :cond_2

    const-string v19, "Connection implicitly closed by Driver. You should call Connection.close() from your code to free resources more efficiently and avoid resource leaks."

    .line 4212
    iget-object v14, v1, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    new-instance v15, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v5, 0x0

    const-string v6, ""

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getId()J

    move-result-wide v8

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v16, 0x0

    sget-object v18, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/16 v20, 0x0

    iget-object v4, v1, Lcom/mysql/jdbc/ConnectionImpl;->pointOfOrigin:Ljava/lang/String;

    move-object/from16 v21, v4

    move-object v4, v15

    move-object v2, v14

    move-object v3, v15

    move-wide/from16 v14, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    invoke-direct/range {v4 .. v19}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 4216
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/mysql/jdbc/ConnectionImpl;->connectionCreationTimeMillis:J

    const/4 v6, 0x0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    const-string v18, "Connection lifetime of < .5 seconds. You might be un-necessarily creating short-lived connections and should investigate connection pooling to be more efficient."

    .line 4221
    iget-object v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    new-instance v15, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getId()J

    move-result-wide v7

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    sget-object v16, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/16 v17, 0x0

    iget-object v3, v1, Lcom/mysql/jdbc/ConnectionImpl;->pointOfOrigin:Ljava/lang/String;

    move-object/from16 v19, v3

    move-object v3, v15

    move-object/from16 v22, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v19

    invoke-direct/range {v3 .. v18}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v22

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4227
    :cond_3
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->closeAllOpenStatements()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    move-object v3, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 4232
    :goto_3
    :try_start_4
    iget-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_5

    .line 4234
    :try_start_5
    iget-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->quit()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 4240
    :cond_4
    :try_start_6
    iget-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    const/4 v3, 0x0

    .line 4243
    :catch_2
    :cond_5
    :goto_4
    iget-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 4244
    :goto_5
    iget-object v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 4245
    iget-object v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/StatementInterceptorV2;

    invoke-interface {v2}, Lcom/mysql/jdbc/StatementInterceptorV2;->destroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4249
    :cond_6
    iget-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    if-eqz v0, :cond_7

    .line 4250
    iget-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-interface {v0}, Lcom/mysql/jdbc/ExceptionInterceptor;->destroy()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4275
    :cond_7
    iget-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 4254
    iget-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_8

    .line 4255
    iget-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->releaseResources()V

    const/4 v2, 0x0

    .line 4256
    iput-object v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    .line 4258
    :goto_6
    iput-object v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    .line 4259
    iput-object v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 4260
    invoke-static/range {p0 .. p0}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->removeInstance(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4262
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4263
    :try_start_7
    iget-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 4264
    iget-object v0, v1, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4266
    :cond_9
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v2, 0x1

    .line 4268
    iput-boolean v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    if-nez v3, :cond_a

    return-void

    .line 4272
    :cond_a
    throw v3

    :catchall_1
    move-exception v0

    .line 4266
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 4268
    :goto_7
    iget-object v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 4254
    iget-object v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v2, :cond_b

    .line 4255
    iget-object v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->releaseResources()V

    const/4 v2, 0x0

    .line 4256
    iput-object v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    .line 4258
    :goto_8
    iput-object v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    .line 4259
    iput-object v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 4260
    invoke-static/range {p0 .. p0}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->removeInstance(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4262
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4263
    :try_start_9
    iget-object v3, v1, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    if-eqz v3, :cond_c

    .line 4264
    iget-object v3, v1, Lcom/mysql/jdbc/ConnectionImpl;->cancelTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 4266
    :cond_c
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 v2, 0x1

    .line 4268
    iput-boolean v2, v1, Lcom/mysql/jdbc/ConnectionImpl;->isClosed:Z

    .line 4253
    throw v0

    :catchall_2
    move-exception v0

    .line 4266
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0
.end method

.method public recachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4285
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4286
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCachePreparedStatements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/mysql/jdbc/ServerPreparedStatement;->isPoolable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4287
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4288
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->serverSideStatementCache:Lcom/mysql/jdbc/util/LRUCache;

    iget-object v3, p1, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-object v4, p1, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/mysql/jdbc/ConnectionImpl;->makePreparedStatementCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4290
    move-object v2, p1

    check-cast v2, Lcom/mysql/jdbc/ServerPreparedStatement;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    .line 4291
    check-cast p1, Lcom/mysql/jdbc/ServerPreparedStatement;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->realClose(ZZ)V

    .line 4293
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 4295
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public registerQueryExecutionTime(J)V
    .locals 4

    .line 4312
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 4313
    iput-wide p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->longestQueryTimeMs:J

    .line 4315
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->repartitionPerformanceHistogram()V

    :cond_0
    const/4 v0, 0x1

    .line 4318
    invoke-direct {p0, p1, p2, v0}, Lcom/mysql/jdbc/ConnectionImpl;->addToPerformanceHistogram(JI)V

    .line 4320
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    const-wide/16 v2, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_1
    move-wide v0, p1

    .line 4321
    :goto_0
    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->shortestQueryTimeMs:J

    .line 4324
    :cond_2
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->numberOfQueriesIssued:J

    .line 4326
    iget-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->totalQueryTimeMs:D

    long-to-double p1, p1

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->totalQueryTimeMs:D

    return-void
.end method

.method public registerStatement(Lcom/mysql/jdbc/Statement;)V
    .locals 1

    .line 4336
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public releaseSavepoint(Ljava/sql/Savepoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method protected reportMetricsIfNeeded()V
    .locals 4

    .line 4496
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->metricsLastReportedMs:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReportMetricsIntervalMillis()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 4498
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->reportMetrics()V

    :cond_0
    return-void
.end method

.method public reportNumberOfTablesAccessed(I)V
    .locals 4

    int-to-long v0, p1

    .line 4504
    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 4505
    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->minimumNumberTablesAccessed:J

    .line 4508
    :cond_0
    iget-wide v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 4509
    iput-wide v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->maximumNumberTablesAccessed:J

    .line 4511
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->repartitionTablesAccessedHistogram()V

    :cond_1
    const/4 p1, 0x1

    .line 4514
    invoke-direct {p0, v0, v1, p1}, Lcom/mysql/jdbc/ConnectionImpl;->addToTablesAccessedHistogram(JI)V

    return-void
.end method

.method public reportQueryTime(J)V
    .locals 8

    .line 5309
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5310
    :try_start_0
    iget-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    .line 5311
    iget-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSum:D

    long-to-double v5, p1

    add-double/2addr v1, v5

    iput-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSum:D

    .line 5312
    iget-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSumSquares:D

    mul-long p1, p1, p1

    long-to-double p1, p1

    add-double/2addr v1, p1

    iput-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeSumSquares:D

    .line 5313
    iget-wide p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeMean:D

    iget-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    const/4 v7, 0x0

    sub-long/2addr v1, v3

    long-to-double v1, v1

    mul-double p1, p1, v1

    add-double/2addr p1, v5

    iget-wide v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeCount:J

    long-to-double v1, v1

    div-double/2addr p1, v1

    iput-wide p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->queryTimeMean:D

    .line 5314
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resetServerState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4526
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getParanoid()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4527
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->password:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->changeUser(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public rollback()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4541
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4542
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4545
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4546
    new-instance v1, Lcom/mysql/jdbc/ConnectionImpl$5;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mysql/jdbc/ConnectionImpl$5;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;)V

    .line 4556
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 4558
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->fullIteration()Z

    move-result v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 4589
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4559
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 4563
    :cond_0
    :try_start_3
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getRelaxAutoCommit()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Can\'t call rollback when autocommit=true"

    const-string v2, "08003"

    .line 4564
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 4566
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 4568
    :try_start_4
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionImpl;->rollbackNoChecks()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 4571
    :try_start_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIgnoreNonTxTables()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v3, 0x4ac

    if-ne v2, v3, :cond_3

    .line 4589
    :try_start_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4572
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    .line 4574
    :cond_3
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4589
    :cond_4
    :goto_1
    :try_start_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4588
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_9
    const-string v2, "08S01"

    .line 4579
    invoke-virtual {v1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "Communications link failure during rollback(). Transaction resolution unknown."

    const-string v2, "08007"

    .line 4580
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 4584
    :cond_5
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4589
    :goto_2
    :try_start_a
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4586
    throw v1

    :catchall_1
    move-exception v1

    .line 4588
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v1
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4596
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, 0xe

    const/4 v3, 0x4

    .line 4597
    :try_start_0
    invoke-virtual {p0, v3, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4664
    :cond_0
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4598
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4601
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 4602
    new-instance v1, Lcom/mysql/jdbc/ConnectionImpl$6;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/mysql/jdbc/ConnectionImpl$6;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;Ljava/sql/Savepoint;)V

    .line 4612
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 4614
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->fullIteration()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v1, :cond_2

    .line 4667
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4615
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    return-void

    .line 4619
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ROLLBACK TO SAVEPOINT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x60

    .line 4620
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4621
    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4622
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v2, 0x0

    .line 4627
    :try_start_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v3
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4629
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4667
    :try_start_6
    invoke-direct {p0, v3}, Lcom/mysql/jdbc/ConnectionImpl;->closeStatement(Ljava/sql/Statement;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4666
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    return-void

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto/16 :goto_4

    :catch_0
    move-exception v1

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 4631
    :goto_1
    :try_start_8
    invoke-virtual {v1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x49d

    if-ne v3, v4, :cond_4

    .line 4634
    invoke-virtual {v1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "153"

    .line 4637
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    goto :goto_2

    .line 4640
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Savepoint \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {p1, v1, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4647
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIgnoreNonTxTables()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result p1

    const/16 v3, 0x4ac

    if-ne p1, v3, :cond_5

    goto :goto_3

    .line 4648
    :cond_5
    throw v1

    :cond_6
    :goto_3
    const-string p1, "08S01"

    .line 4651
    invoke-virtual {v1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Communications link failure during rollback(). Transaction resolution unknown."

    const-string v1, "08007"

    .line 4652
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4656
    :cond_7
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4667
    :goto_4
    :try_start_9
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->closeStatement(Ljava/sql/Statement;)V

    .line 4658
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    .line 4667
    :try_start_a
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReconnectAtTxEnd()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->needsPing:Z

    .line 4661
    throw p1

    :catchall_3
    move-exception p1

    .line 4666
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p1
.end method

.method public serverPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4683
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProcessEscapeCodesForPrepStmts()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4685
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3eb

    const/16 v3, 0x3ef

    invoke-static {v0, p1, v1, v2, v3}, Lcom/mysql/jdbc/ServerPreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public serverPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4693
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProcessEscapeCodesForPrepStmts()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4695
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3eb

    const/16 v3, 0x3ef

    invoke-static {v0, p1, v1, v2, v3}, Lcom/mysql/jdbc/ServerPreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4698
    :goto_0
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    return-object p1
.end method

.method public serverPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4707
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProcessEscapeCodesForPrepStmts()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4709
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getCatalog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1, p2, p3}, Lcom/mysql/jdbc/ServerPreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public serverPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4717
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPedantic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 4719
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "HOLD_CUSRORS_OVER_COMMIT is only supported holdability level"

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4724
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/ConnectionImpl;->serverPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public serverPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4732
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->serverPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/PreparedStatement;

    if-eqz p2, :cond_0

    .line 4734
    array-length p2, p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    return-object p1
.end method

.method public serverPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4743
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->serverPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/PreparedStatement;

    if-eqz p2, :cond_0

    .line 4745
    array-length p2, p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    return-object p1
.end method

.method public serverSupportsConvertFn()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 4751
    invoke-virtual {p0, v0, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public setAutoCommit(Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4773
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4774
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 4776
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4777
    new-instance v1, Lcom/mysql/jdbc/ConnectionImpl$7;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/mysql/jdbc/ConnectionImpl$7;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;Z)V

    .line 4787
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 4789
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->fullIteration()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4790
    monitor-exit v0

    return-void

    .line 4794
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoReconnectForPools()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4795
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ConnectionImpl;->setHighAvailability(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    const/4 v1, 0x0

    .line 4799
    :try_start_1
    iget-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    if-eqz v3, :cond_5

    .line 4803
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    if-ne v3, p1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 4805
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getHighAvailability()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4806
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mysql/jdbc/MysqlIO;->isSetNeededForAutoCommitMode(Z)Z

    move-result v2

    .line 4812
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z

    if-eqz v2, :cond_8

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    const-string p1, "SET autocommit=1"

    goto :goto_1

    :cond_4
    const-string p1, "SET autocommit=0"

    :goto_1
    move-object v5, p1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x3eb

    const/16 v9, 0x3ef

    const/4 v10, 0x0

    .line 4815
    iget-object v11, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v13}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    goto :goto_3

    :cond_5
    if-nez p1, :cond_7

    .line 4820
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getRelaxAutoCommit()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    const-string p1, "MySQL Versions Older than 3.23.15 do not support transactions"

    const-string v2, "08003"

    .line 4821
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4825
    :cond_7
    :goto_2
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->autoCommit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4834
    :cond_8
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoReconnectForPools()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 4829
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setHighAvailability(Z)V

    .line 4833
    :cond_9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 4829
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoReconnectForPools()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setHighAvailability(Z)V

    .line 4828
    :cond_a
    throw p1

    :catchall_1
    move-exception p1

    .line 4834
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public setCatalog(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4851
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4852
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    if-eqz p1, :cond_5

    .line 4858
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4859
    new-instance v1, Lcom/mysql/jdbc/ConnectionImpl$8;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/mysql/jdbc/ConnectionImpl$8;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;Ljava/lang/String;)V

    .line 4869
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 4871
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->fullIteration()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4872
    monitor-exit v0

    return-void

    .line 4876
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4877
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->lowerCaseTableNames:Z

    if-eqz v1, :cond_1

    .line 4878
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4879
    monitor-exit v0

    return-void

    .line 4882
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4883
    monitor-exit v0

    return-void

    .line 4888
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->dbmd:Ljava/sql/DatabaseMetaData;

    invoke-interface {v1}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, " "

    .line 4890
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v1, ""

    .line 4894
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "USE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4895
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getPedantic()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 4897
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x3eb

    const/16 v9, 0x3ef

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v13}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 4899
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    .line 4900
    monitor-exit v0

    return-void

    :cond_5
    const-string p1, "Catalog can not be null"

    const-string v1, "S1009"

    .line 4855
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 4900
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFailedOver(Z)V
    .locals 0

    return-void
.end method

.method public setHoldability(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public setInGlobalTx(Z)V
    .locals 0

    .line 4919
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isInGlobalTx:Z

    return-void
.end method

.method public setNetworkTimeout(Ljava/util/concurrent/Executor;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5491
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5492
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5495
    sget-object v2, Lcom/mysql/jdbc/ConnectionImpl;->SET_NETWORK_TIMEOUT_PERM:Ljava/sql/SQLPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 5502
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5503
    new-instance v1, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-direct {v1, p0, v2, p2}, Lcom/mysql/jdbc/ConnectionImpl$NetworkTimeoutSetter;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Lcom/mysql/jdbc/MysqlIO;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5504
    monitor-exit v0

    return-void

    :cond_1
    const-string p1, "Executor can not be null"

    const-string p2, "S1009"

    .line 5499
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 5504
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPreferSlaveDuringFailover(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setProfilerEventHandlerInstance(Lcom/mysql/jdbc/profiler/ProfilerEventHandler;)V
    .locals 0

    .line 5520
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    return-void
.end method

.method public setProxy(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 1

    .line 106
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    .line 107
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->proxy:Lcom/mysql/jdbc/MySQLConnection;

    instance-of v0, v0, Lcom/mysql/jdbc/MultiHostMySQLConnection;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mysql/jdbc/MultiHostMySQLConnection;

    invoke-virtual {p1}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/MultiHostConnectionProxy;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->realProxy:Ljava/lang/reflect/InvocationHandler;

    return-void
.end method

.method public setReadInfoMsgEnabled(Z)V
    .locals 0

    .line 4933
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->readInfoMsg:Z

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4948
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 4950
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl;->setReadOnlyInternal(Z)V

    return-void
.end method

.method public setReadOnlyInternal(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4955
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getReadOnlyPropagatesToServer()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4956
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->readOnly:Z

    if-eq p1, v0, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 4957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set session transaction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v1, "read only"

    goto :goto_0

    :cond_1
    const-string v1, "read write"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 4962
    :cond_2
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->readOnly:Z

    return-void
.end method

.method public setSavepoint()Ljava/sql/Savepoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4969
    new-instance v0, Lcom/mysql/jdbc/MysqlSavepoint;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/MysqlSavepoint;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 4971
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setSavepoint(Lcom/mysql/jdbc/MysqlSavepoint;)V

    return-object v0
.end method

.method public setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5006
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5007
    :try_start_0
    new-instance v1, Lcom/mysql/jdbc/MysqlSavepoint;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/mysql/jdbc/MysqlSavepoint;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 5009
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->setSavepoint(Lcom/mysql/jdbc/MysqlSavepoint;)V

    .line 5011
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 5012
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5422
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 5423
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5424
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSessionMaxRows(I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5410
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5411
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    if-eq v1, p1, :cond_1

    .line 5412
    iput p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    const/4 v3, 0x0

    .line 5413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET SQL_SELECT_LIMIT="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "DEFAULT"

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->sessionMaxRows:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const/16 v8, 0x3ef

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 5416
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

.method public setStatementComment(Ljava/lang/String;)V
    .locals 0

    .line 5305
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementComment:Ljava/lang/String;

    return-void
.end method

.method public setTransactionIsolation(I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5053
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5054
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5056
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    if-eqz v1, :cond_7

    .line 5061
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getAlwaysSendSetIsolation()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 5064
    :cond_0
    iget v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5069
    :goto_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getUseLocalSessionState()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5070
    iget v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    if-eq v1, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_2
    if-eqz v1, :cond_6

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    const/16 v1, 0x8

    if-eq p1, v1, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 5099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported transaction isolation level \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1C00"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :pswitch_0
    const-string v1, "SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED"

    goto :goto_3

    :pswitch_1
    const-string v1, "SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED"

    :goto_3
    move-object v4, v1

    goto :goto_4

    :pswitch_2
    const-string p1, "Transaction isolation level NONE not supported by MySQL"

    .line 5076
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_4
    const-string v1, "SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE"

    goto :goto_3

    :cond_5
    const-string v1, "SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ"

    goto :goto_3

    :goto_4
    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const/16 v8, 0x3ef

    const/4 v9, 0x0

    .line 5103
    iget-object v10, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 5105
    iput p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->isolationLevel:I

    .line 5111
    :cond_6
    monitor-exit v0

    return-void

    :cond_7
    const-string p1, "Transaction Isolation Levels are not supported on MySQL versions older than 3.23.36."

    const-string v1, "S1C00"

    .line 5108
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 5111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTypeMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5124
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5125
    :try_start_0
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl;->typeMap:Ljava/util/Map;

    .line 5126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public shutdownServer()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x7

    const/16 v2, 0x9

    .line 5166
    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const-string v3, "SHUTDOWN"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    .line 5167
    iget-object v9, p0, Lcom/mysql/jdbc/ConnectionImpl;->database:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mysql/jdbc/ConnectionImpl;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    goto :goto_0

    .line 5169
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Connection.UnhandledExceptionDuringShutdown"

    .line 5172
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1000"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 5175
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5177
    throw v1
.end method

.method public storesLowerCaseTableName()Z
    .locals 1

    .line 5366
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->storesLowerCaseTableName:Z

    return v0
.end method

.method public supportsIsolationLevel()Z
    .locals 1

    .line 5182
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasIsolationLevels:Z

    return v0
.end method

.method public supportsQuotedIdentifiers()Z
    .locals 1

    .line 5186
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->hasQuotedIdentifiers:Z

    return v0
.end method

.method public supportsTransactions()Z
    .locals 1

    .line 5190
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->transactionsSupported:Z

    return v0
.end method

.method public throwConnectionClosedException()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "No operations allowed after connection closed."

    const-string v1, "08003"

    .line 1187
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 1190
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->forceClosedReason:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->forceClosedReason:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1194
    :cond_0
    throw v0
.end method

.method public transactionBegun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5334
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5335
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 5336
    new-instance v1, Lcom/mysql/jdbc/ConnectionImpl$9;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mysql/jdbc/ConnectionImpl$9;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;)V

    .line 5344
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 5346
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

.method public transactionCompleted()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5350
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5351
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 5352
    new-instance v1, Lcom/mysql/jdbc/ConnectionImpl$10;

    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->connectionLifecycleInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mysql/jdbc/ConnectionImpl$10;-><init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;)V

    .line 5360
    invoke-virtual {v1}, Lcom/mysql/jdbc/IterateBlock;->doForAll()V

    .line 5362
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

.method public unSafeStatementInterceptors()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 819
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 821
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 822
    iget-object v2, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/NoSubInterceptorWrapper;

    .line 824
    invoke-virtual {v2}, Lcom/mysql/jdbc/NoSubInterceptorWrapper;->getUnderlyingInterceptor()Lcom/mysql/jdbc/StatementInterceptorV2;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 827
    :cond_0
    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    .line 829
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->statementInterceptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/MysqlIO;->setStatementInterceptors(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public unregisterStatement(Lcom/mysql/jdbc/Statement;)V
    .locals 1

    .line 5200
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->openStatements:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public useAnsiQuotedIdentifiers()Z
    .locals 2

    .line 5204
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5205
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionImpl;->useAnsiQuotes:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 5206
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public versionMeetsMinimum(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5210
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->checkClosed()V

    .line 5212
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result p1

    return p1
.end method
