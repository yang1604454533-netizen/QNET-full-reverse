.class public Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.super Ljava/lang/Object;
.source "ConnectionPropertiesImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/mysql/jdbc/ConnectionProperties;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;,
        Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;
    }
.end annotation


# static fields
.field private static final CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

.field private static final DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

.field private static final HA_CATEGORY:Ljava/lang/String;

.field private static final MISC_CATEGORY:Ljava/lang/String;

.field private static final NETWORK_CATEGORY:Ljava/lang/String;

.field private static final PERFORMANCE_CATEGORY:Ljava/lang/String;

.field private static final PROPERTY_CATEGORIES:[Ljava/lang/String;

.field private static final PROPERTY_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECURITY_CATEGORY:Ljava/lang/String;

.field private static final STANDARD_LOGGER_NAME:Ljava/lang/String;

.field protected static final ZERO_DATETIME_BEHAVIOR_CONVERT_TO_NULL:Ljava/lang/String; = "convertToNull"

.field protected static final ZERO_DATETIME_BEHAVIOR_EXCEPTION:Ljava/lang/String; = "exception"

.field protected static final ZERO_DATETIME_BEHAVIOR_ROUND:Ljava/lang/String; = "round"

.field private static final serialVersionUID:J = 0x3b16c01963dec004L


# instance fields
.field private allowLoadLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowMasterDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowMultiQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowNanAndInf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowPublicKeyRetrieval:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowSlaveDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private allowUrlInLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private alwaysSendSetIsolation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private authenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private autoClosePStmtStreams:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private autoDeserialize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private autoGenerateTestcaseScript:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private autoGenerateTestcaseScriptAsBoolean:Z

.field private autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private autoReconnectForPoolsAsBoolean:Z

.field private autoSlowLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private blobSendChunkSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

.field private blobsAreStrings:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private cacheCallableStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private cacheDefaultTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private cachePreparedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private cacheResultSetMetaDataAsBoolean:Z

.field private cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private cacheServerConfiguration:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private callableStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private capitalizeTypeNames:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private characterEncodingAsString:Ljava/lang/String;

.field protected characterEncodingIsAliasForSjis:Z

.field private characterSetResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clientCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clientCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clientCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clientInfoProvider:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clobCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private clobberStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private compensateOnDuplicateKeyUpdateCounts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private connectTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private connectionAttributes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private connectionCollation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private connectionLifecycleInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private continueBatchOnError:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private createDatabaseIfNotExist:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private defaultAuthenticationPlugin:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private defaultFetchSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private detectCustomCollations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private detectServerPreparedStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private disabledAuthenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private disconnectOnExpiredPasswords:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private dontCheckOnDuplicateKeyUpdateInSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private dontTrackOpenResources:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private dumpMetadataOnColumnNotFound:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private dumpQueriesOnException:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private dynamicCalendars:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private elideSetAutoCommits:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private emptyStringsConvertToZero:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private emulateLocators:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private emulateUnsupportedPstmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private enableEscapeProcessing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private enablePacketDebug:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private enableQueryTimeouts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private enabledSSLCipherSuites:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private exceptionInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private explainSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private failOverReadOnly:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private functionsNeverReturnBlobs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private gatherPerformanceMetrics:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private generateSimpleParameterMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private getProceduresReturnsFunctions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private highAvailabilityAsBoolean:Z

.field private holdResultsOpenOverStatementClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private ignoreNonTxTables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private includeInnodbStatusInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private includeThreadDumpInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private includeThreadNamesAsStatementComment:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private initialTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private isInteractiveClient:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private jdbcCompliantTruncation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private jdbcCompliantTruncationForReads:Z

.field protected largeRowSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

.field private loadBalanceAutoCommitStatementRegex:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceAutoCommitStatementThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private loadBalanceBlacklistTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private loadBalanceConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private loadBalanceExceptionChecker:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceHostRemovalGracePeriod:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private loadBalancePingTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private loadBalanceSQLExceptionSubclassFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceSQLStateFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceStrategy:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private loadBalanceValidateConnectionOnSwapServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private localSocketAddress:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private locatorFetchBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

.field private logSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private logXaCommands:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private maintainTimeStats:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private maintainTimeStatsAsBoolean:Z

.field private maxAllowedPacket:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private maxQuerySizeToLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private maxReconnects:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private maxRowsAsInt:I

.field private metadataCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private netTimeoutForStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private noAccessToProcedureBodies:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private noDatetimeStringSync:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private noTimezoneConversionForDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private noTimezoneConversionForTimeType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private nullCatalogMeansCurrent:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private nullNamePatternMatchesAll:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private overrideSupportsIntegrityEnhancementFacility:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private packetDebugBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private padCharsWithSpace:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private paranoid:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private parseInfoCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private passwordCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private pedantic:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private pinGlobalTxToPhysicalConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private populateInsertRowWithDefaultValues:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private preparedStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private preparedStatementCacheSqlLimit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private processEscapeCodesForPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private profileSQLAsBoolean:Z

.field private profileSql:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private profilerEventHandler:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private propertiesTransform:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private queriesBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private queryTimeoutKillsConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private readFromMasterWhenNoSlaves:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private readOnlyPropagatesToServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private reconnectAtTxEnd:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private reconnectTxAtEndAsBoolean:Z

.field private relaxAutoCommit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private replicationConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private replicationEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private reportMetricsIntervalMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private requireSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private resourceId:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private resultSetSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private retainStatementAfterResultSetClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private retriesAllDown:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private rewriteBatchedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private rollbackOnPooledClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private roundRobinLoadBalance:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private runningCTS13:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private secondsBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private selfDestructOnPingMaxOperations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private selfDestructOnPingSecondsLifetime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private sendFractionalSeconds:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private serverAffinityOrder:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private serverConfigCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private serverRSAPublicKeyFile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private serverTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private sessionVariables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private slowQueryThresholdMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private slowQueryThresholdNanos:Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;

.field private socketFactoryClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private socketTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private socksProxyHost:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private socksProxyPort:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private statementInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private strictFloatingPoint:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private strictUpdates:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private tcpKeepAlive:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private tcpNoDelay:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private tcpRcvBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private tcpSndBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private tcpTrafficClass:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

.field private tinyInt1isBit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field protected traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private transformedBitIsBoolean:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private treatUtilDateAsTimestamp:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private trustCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private trustCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private trustCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private useAffectedRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useBlobToStoreUTF8OutsideBMP:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useColumnNamesInFindColumn:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useCompression:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useConfigs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private useCursorFetch:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useDirectRowUnpack:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useDynamicCharsetInfo:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useFastDateParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useFastIntParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useGmtMillisForDatetimes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useHostsInPrivileges:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useInformationSchema:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useJDBCCompliantTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useJvmCharsetConverters:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useLegacyDatetimeCode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useLocalSessionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useLocalTransactionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useNanosForElapsedTime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useOldAliasMetadataBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useOldUTF8Behavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useOldUTF8BehaviorAsBoolean:Z

.field private useOnlyServerErrorMessages:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useReadAheadInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useSSPSCompatibleTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useSqlStateCodes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useStreamLengthsInPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useUltraDevWorkAround:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useUnbufferedInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useUnicode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useUnicodeAsBoolean:Z

.field private useUsageAdvisor:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private useUsageAdvisorAsBoolean:Z

.field private utf8OutsideBmpExcludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private utf8OutsideBmpIncludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

.field private verifyServerCertificate:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private yearIsDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

.field private zeroDateTimeBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ConnectionProperties.categoryConnectionAuthentication"

    .line 600
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const-string v0, "ConnectionProperties.categoryNetworking"

    .line 602
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const-string v0, "ConnectionProperties.categoryDebuggingProfiling"

    .line 604
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const-string v0, "ConnectionProperties.categorryHA"

    .line 606
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const-string v0, "ConnectionProperties.categoryMisc"

    .line 608
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const-string v0, "ConnectionProperties.categoryPerformance"

    .line 610
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const-string v0, "ConnectionProperties.categorySecurity"

    .line 612
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v0, 0x7

    .line 614
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sput-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_CATEGORIES:[Ljava/lang/String;

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    .line 622
    const-class v0, Lcom/mysql/jdbc/log/StandardLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->STANDARD_LOGGER_NAME:Ljava/lang/String;

    .line 632
    :try_start_0
    const-class v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 634
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_1

    .line 635
    const-class v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    sget-object v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 640
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 641
    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 643
    throw v1
.end method

.method public constructor <init>()V
    .locals 37

    move-object/from16 v0, p0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 671
    new-instance v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v2, "allowLoadLocalInfile"

    const-string v1, "ConnectionProperties.loadDataLocal"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "3.0.3"

    sget-object v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v3, 0x1

    const v7, 0x7fffffff

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v8, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowLoadLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 674
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v10, "allowMultiQueries"

    const-string v2, "ConnectionProperties.allowMultiQueries"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "3.1.1"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v15, 0x1

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMultiQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 677
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "allowNanAndInf"

    const-string v2, "ConnectionProperties.allowNANandINF"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.1.5"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v4, 0x0

    const/high16 v8, -0x80000000

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowNanAndInf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 680
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v10, "allowUrlInLocalInfile"

    const-string v2, "ConnectionProperties.allowUrlInLoadLocal"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "3.1.4"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const v15, 0x7fffffff

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowUrlInLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 683
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "alwaysSendSetIsolation"

    const-string v2, "ConnectionProperties.alwaysSendSetIsolation"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.1.7"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v4, 0x1

    const v8, 0x7fffffff

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->alwaysSendSetIsolation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 686
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v10, "autoClosePStmtStreams"

    const-string v2, "ConnectionProperties.autoClosePstmtStreams"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "3.1.12"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v15, -0x80000000

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoClosePStmtStreams:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 689
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "replicationConnectionGroup"

    const-string v2, "ConnectionProperties.replicationConnectionGroup"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.27"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v4, 0x0

    const/high16 v8, -0x80000000

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 692
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v10, "allowMasterDownConnections"

    const-string v2, "ConnectionProperties.allowMasterDownConnections"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "5.1.27"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const v15, 0x7fffffff

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMasterDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 695
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "allowSlaveDownConnections"

    const-string v2, "ConnectionProperties.allowSlaveDownConnections"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.38"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v4, 0x0

    const v8, 0x7fffffff

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowSlaveDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 698
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v10, "readFromMasterWhenNoSlaves"

    const-string v2, "ConnectionProperties.readFromMasterWhenNoSlaves"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "5.1.38"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readFromMasterWhenNoSlaves:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 701
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "autoDeserialize"

    const-string v2, "ConnectionProperties.autoDeserialize"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.1.5"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v8, -0x80000000

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoDeserialize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 704
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v10, "autoGenerateTestcaseScript"

    const-string v2, "ConnectionProperties.autoGenerateTestcaseScript"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "3.1.9"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v15, -0x80000000

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScript:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const/4 v1, 0x0

    .line 707
    iput-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScriptAsBoolean:Z

    .line 709
    new-instance v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "autoReconnect"

    const-string v2, "ConnectionProperties.autoReconnect"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1.1"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v9, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 712
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "autoReconnectForPools"

    const-string v3, "ConnectionProperties.autoReconnectForPools"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.1.3"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v12, 0x0

    const/16 v16, 0x1

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 715
    iput-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPoolsAsBoolean:Z

    .line 717
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    const-string v18, "blobSendChunkSize"

    const-string v3, "ConnectionProperties.blobSendChunkSize"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.1.9"

    sget-object v24, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v19, 0x100000

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v25, -0x80000000

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v25}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobSendChunkSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    .line 720
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "autoSlowLog"

    const-string v3, "ConnectionProperties.autoSlowLog"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.4"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x1

    const/high16 v9, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoSlowLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 723
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "blobsAreStrings"

    const-string v13, "Should the driver always treat BLOBs as Strings - specifically to work around dubious metadata returned by the server for GROUP BY clauses?"

    const-string v14, "5.0.8"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v16, -0x80000000

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobsAreStrings:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 727
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "functionsNeverReturnBlobs"

    const-string v6, "Should the driver always treat data from functions returning BLOBs as Strings - specifically to work around dubious metadata returned by the server for GROUP BY clauses?"

    const-string v7, "5.0.8"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->functionsNeverReturnBlobs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 732
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "cacheCallableStmts"

    const-string v3, "ConnectionProperties.cacheCallableStatements"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.1.2"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheCallableStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 735
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "cachePrepStmts"

    const-string v3, "ConnectionProperties.cachePrepStmts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.0.10"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cachePreparedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 738
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "cacheResultSetMetadata"

    const-string v3, "ConnectionProperties.cacheRSMetadata"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.1.1"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 743
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "serverConfigCacheFactory"

    const-class v3, Lcom/mysql/jdbc/PerVmServerConfigCacheFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v3, "ConnectionProperties.serverConfigCacheFactory"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.1"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/16 v9, 0xc

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverConfigCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 747
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "cacheServerConfiguration"

    const-string v3, "ConnectionProperties.cacheServerConfiguration"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.1.5"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheServerConfiguration:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 750
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v18, "callableStmtCacheSize"

    const-string v3, "ConnectionProperties.callableStmtCacheSize"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.1.2"

    sget-object v24, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/16 v19, 0x64

    const v21, 0x7fffffff

    const/16 v25, 0x5

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v25}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->callableStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 753
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "capitalizeTypeNames"

    const-string v3, "ConnectionProperties.capitalizeTypeNames"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "2.0.7"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x1

    const/high16 v9, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->capitalizeTypeNames:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 756
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v11, "characterEncoding"

    const-string v3, "ConnectionProperties.characterEncoding"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "1.1g"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v12, 0x0

    const/16 v16, 0x5

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const/4 v2, 0x0

    .line 759
    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncodingAsString:Ljava/lang/String;

    .line 761
    iput-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncodingIsAliasForSjis:Z

    .line 763
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "characterSetResults"

    const-string v3, "ConnectionProperties.characterSetResults"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.0.13"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v9, 0x6

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterSetResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 766
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v11, "connectionAttributes"

    const-string v3, "ConnectionProperties.connectionAttributes"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "5.1.25"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/16 v16, 0x7

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionAttributes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 769
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "clientInfoProvider"

    const-string v5, "com.mysql.jdbc.JDBC4CommentClientInfoProvider"

    const-string v3, "ConnectionProperties.clientInfoProvider"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.0"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v9, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientInfoProvider:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 772
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "clobberStreamingResults"

    const-string v3, "ConnectionProperties.clobberStreamingResults"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.0.9"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v12, 0x0

    const/high16 v16, -0x80000000

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobberStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 775
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "clobCharacterEncoding"

    const-string v3, "ConnectionProperties.clobCharacterEncoding"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.0.0"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 778
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "compensateOnDuplicateKeyUpdateCounts"

    const-string v3, "ConnectionProperties.compensateOnDuplicateKeyUpdateCounts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "5.1.7"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->compensateOnDuplicateKeyUpdateCounts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 780
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "connectionCollation"

    const-string v3, "ConnectionProperties.connectionCollation"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.0.13"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v9, 0x7

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionCollation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 783
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v11, "connectionLifecycleInterceptors"

    const-string v3, "ConnectionProperties.connectionLifecycleInterceptors"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "5.1.4"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/4 v12, 0x0

    const v16, 0x7fffffff

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionLifecycleInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 786
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v18, "connectTimeout"

    const-string v3, "ConnectionProperties.connectTimeout"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "3.0.1"

    sget-object v24, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v25, 0x9

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v25}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 789
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "continueBatchOnError"

    const-string v3, "ConnectionProperties.continueBatchOnError"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.0.3"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x1

    const/high16 v9, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->continueBatchOnError:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 792
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "createDatabaseIfNotExist"

    const-string v3, "ConnectionProperties.createDatabaseIfNotExist"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.1.9"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v12, 0x0

    const/high16 v16, -0x80000000

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->createDatabaseIfNotExist:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 795
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v4, "defaultFetchSize"

    const-string v3, "ConnectionProperties.defaultFetchSize"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.9"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultFetchSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 800
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "useServerPrepStmts"

    const-string v3, "ConnectionProperties.useServerPrepStmts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.1.0"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectServerPreparedStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 803
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "dontTrackOpenResources"

    const-string v3, "ConnectionProperties.dontTrackOpenResources"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.7"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontTrackOpenResources:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 806
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "dumpQueriesOnException"

    const-string v3, "ConnectionProperties.dumpQueriesOnException"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.1.3"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpQueriesOnException:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 809
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "dynamicCalendars"

    const-string v3, "ConnectionProperties.dynamicCalendars"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.5"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dynamicCalendars:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 812
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "elideSetAutoCommits"

    const-string v3, "ConnectionProperties.eliseSetAutoCommit"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.1.3"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->elideSetAutoCommits:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 815
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "emptyStringsConvertToZero"

    const-string v3, "ConnectionProperties.emptyStringsConvertToZero"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.8"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emptyStringsConvertToZero:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 818
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "emulateLocators"

    const-string v3, "ConnectionProperties.emulateLocators"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.1.0"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateLocators:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 821
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "emulateUnsupportedPstmts"

    const-string v3, "ConnectionProperties.emulateUnsupportedPstmts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.7"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateUnsupportedPstmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 824
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "enablePacketDebug"

    const-string v3, "ConnectionProperties.enablePacketDebug"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.1.3"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enablePacketDebug:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 827
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "enableQueryTimeouts"

    const-string v3, "ConnectionProperties.enableQueryTimeouts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.0.6"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableQueryTimeouts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 830
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "explainSlowQueries"

    const-string v3, "ConnectionProperties.explainSlowQueries"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.1.2"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->explainSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 833
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "exceptionInterceptors"

    const-string v3, "ConnectionProperties.exceptionInterceptors"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.8"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->exceptionInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 837
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "failOverReadOnly"

    const-string v3, "ConnectionProperties.failoverReadOnly"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.0.12"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v12, 0x1

    const/16 v16, 0x2

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->failOverReadOnly:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 840
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "gatherPerfMetrics"

    const-string v3, "ConnectionProperties.gatherPerfMetrics"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.2"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->gatherPerformanceMetrics:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 843
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "generateSimpleParameterMetadata"

    const-string v3, "ConnectionProperties.generateSimpleParameterMetadata"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "5.0.5"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v12, 0x0

    const/high16 v16, -0x80000000

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->generateSimpleParameterMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 846
    iput-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->highAvailabilityAsBoolean:Z

    .line 848
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "holdResultsOpenOverStatementClose"

    const-string v3, "ConnectionProperties.holdRSOpenOverStmtClose"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.7"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v9, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->holdResultsOpenOverStatementClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 851
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "includeInnodbStatusInDeadlockExceptions"

    const-string v3, "ConnectionProperties.includeInnodbStatusInDeadlockExceptions"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "5.0.7"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeInnodbStatusInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 854
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "includeThreadDumpInDeadlockExceptions"

    const-string v3, "ConnectionProperties.includeThreadDumpInDeadlockExceptions"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.15"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadDumpInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 857
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "includeThreadNamesAsStatementComment"

    const-string v3, "ConnectionProperties.includeThreadNamesAsStatementComment"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "5.1.15"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadNamesAsStatementComment:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 860
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "ignoreNonTxTables"

    const-string v3, "ConnectionProperties.ignoreNonTxTables"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.0.9"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->ignoreNonTxTables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 863
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v11, "initialTimeout"

    const-string v3, "ConnectionProperties.initialTimeout"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "1.1"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v12, 0x2

    const/4 v13, 0x1

    const v14, 0x7fffffff

    const/16 v18, 0x5

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->initialTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 866
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "interactiveClient"

    const-string v3, "ConnectionProperties.interactiveClient"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.0"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->isInteractiveClient:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 869
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "jdbcCompliantTruncation"

    const-string v3, "ConnectionProperties.jdbcCompliantTruncation"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.1.2"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v12, 0x1

    const/high16 v16, -0x80000000

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 872
    iget-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v2

    iput-boolean v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncationForReads:Z

    .line 874
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    const-string v4, "largeRowSizeThreshold"

    const-string v3, "ConnectionProperties.largeRowSizeThreshold"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "5.1.1"

    sget-object v10, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/16 v5, 0x800

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/high16 v11, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->largeRowSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    .line 877
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v13, "loadBalanceStrategy"

    const-string v14, "random"

    const-string v3, "ConnectionProperties.loadBalanceStrategy"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "5.0.6"

    sget-object v18, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v15, 0x0

    const/high16 v19, -0x80000000

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceStrategy:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 880
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "serverAffinityOrder"

    const-string v5, ""

    const-string v3, "ConnectionProperties.serverAffinityOrder"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "5.1.4."

    sget-object v9, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v6, 0x0

    const/high16 v10, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverAffinityOrder:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 883
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v12, "loadBalanceBlacklistTimeout"

    const-string v3, "ConnectionProperties.loadBalanceBlacklistTimeout"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "5.1.0"

    sget-object v18, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v15, 0x7fffffff

    move-object v11, v2

    invoke-direct/range {v11 .. v19}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceBlacklistTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 886
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v4, "loadBalancePingTimeout"

    const-string v3, "ConnectionProperties.loadBalancePingTimeout"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "5.1.13"

    sget-object v10, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/high16 v11, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalancePingTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 889
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "loadBalanceValidateConnectionOnSwapServer"

    const-string v3, "ConnectionProperties.loadBalanceValidateConnectionOnSwapServer"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "5.1.13"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v18, -0x80000000

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceValidateConnectionOnSwapServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 892
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "loadBalanceConnectionGroup"

    const-string v3, "ConnectionProperties.loadBalanceConnectionGroup"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.13"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    const/high16 v9, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 895
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v11, "loadBalanceExceptionChecker"

    const-string v12, "com.mysql.jdbc.StandardLoadBalanceExceptionChecker"

    const-string v3, "ConnectionProperties.loadBalanceExceptionChecker"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "5.1.13"

    sget-object v16, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v13, 0x0

    const/high16 v17, -0x80000000

    move-object v10, v2

    invoke-direct/range {v10 .. v17}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceExceptionChecker:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 899
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "loadBalanceSQLStateFailover"

    const-string v3, "ConnectionProperties.loadBalanceSQLStateFailover"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.13"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLStateFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 902
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v11, "loadBalanceSQLExceptionSubclassFailover"

    const-string v3, "ConnectionProperties.loadBalanceSQLExceptionSubclassFailover"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "5.1.13"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v12, 0x0

    const/high16 v16, -0x80000000

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLExceptionSubclassFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 905
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "loadBalanceEnableJMX"

    const-string v3, "ConnectionProperties.loadBalanceEnableJMX"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.13"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    const v9, 0x7fffffff

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 908
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v11, "loadBalanceHostRemovalGracePeriod"

    const-string v3, "ConnectionProperties.loadBalanceHostRemovalGracePeriod"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "5.1.39"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/16 v12, 0x3a98

    const/4 v13, 0x0

    const v14, 0x7fffffff

    const v18, 0x7fffffff

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceHostRemovalGracePeriod:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 911
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "loadBalanceAutoCommitStatementRegex"

    const-string v3, "ConnectionProperties.loadBalanceAutoCommitStatementRegex"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.15"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    const/high16 v9, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementRegex:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 914
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v11, "loadBalanceAutoCommitStatementThreshold"

    const-string v3, "ConnectionProperties.loadBalanceAutoCommitStatementThreshold"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "5.1.15"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v12, 0x0

    const/high16 v18, -0x80000000

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 917
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "localSocketAddress"

    const-string v3, "ConnectionProperties.localSocketAddress"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.0.5"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->localSocketAddress:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 920
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    const-string v11, "locatorFetchBufferSize"

    const-string v3, "ConnectionProperties.locatorFetchBufferSize"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.2.1"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/high16 v12, 0x100000

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->locatorFetchBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    .line 923
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "logger"

    sget-object v5, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->STANDARD_LOGGER_NAME:Ljava/lang/String;

    const-string v3, "ConnectionProperties.logger"

    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/Object;

    const-class v7, Lcom/mysql/jdbc/log/Log;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->STANDARD_LOGGER_NAME:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v7, v6, v11

    invoke-static {v3, v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.1"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 927
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "logSlowQueries"

    const-string v3, "ConnectionProperties.logSlowQueries"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.1.2"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 930
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "logXaCommands"

    const-string v3, "ConnectionProperties.logXaCommands"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.0.5"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    const/high16 v9, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logXaCommands:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 933
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "maintainTimeStats"

    const-string v3, "ConnectionProperties.maintainTimeStats"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.1.9"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x1

    const v18, 0x7fffffff

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStats:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 936
    iput-boolean v11, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStatsAsBoolean:Z

    .line 938
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v20, "maxQuerySizeToLog"

    const-string v3, "ConnectionProperties.maxQuerySizeToLog"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "3.1.3"

    sget-object v26, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/16 v21, 0x800

    const/16 v22, 0x0

    const v23, 0x7fffffff

    const/16 v27, 0x4

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v27}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxQuerySizeToLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 941
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v29, "maxReconnects"

    const-string v3, "ConnectionProperties.maxReconnects"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v34, "1.1"

    sget-object v35, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/16 v30, 0x3

    const/16 v31, 0x1

    const v32, 0x7fffffff

    const/16 v36, 0x4

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v36}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxReconnects:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 944
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v13, "retriesAllDown"

    const-string v3, "ConnectionProperties.retriesAllDown"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "5.1.6"

    sget-object v19, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/16 v14, 0x78

    const/4 v15, 0x0

    const v16, 0x7fffffff

    const/16 v20, 0x4

    move-object v12, v2

    invoke-direct/range {v12 .. v20}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retriesAllDown:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 947
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v22, "maxRows"

    const-string v3, "ConnectionProperties.maxRows"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v3, "ConnectionProperties.allVersions"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget-object v28, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/16 v23, -0x1

    const/16 v24, -0x1

    const v25, 0x7fffffff

    const/high16 v29, -0x80000000

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v29}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const/4 v2, -0x1

    .line 950
    iput v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRowsAsInt:I

    .line 952
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v13, "metadataCacheSize"

    const-string v3, "ConnectionProperties.metadataCacheSize"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "3.1.1"

    sget-object v19, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/16 v14, 0x32

    const/4 v15, 0x1

    const/16 v20, 0x5

    move-object v12, v2

    invoke-direct/range {v12 .. v20}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->metadataCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 955
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v22, "netTimeoutForStreamingResults"

    const-string v3, "ConnectionProperties.netTimeoutForStreamingResults"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "5.1.0"

    sget-object v28, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/16 v23, 0x258

    const/16 v24, 0x0

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v29}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->netTimeoutForStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 958
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "noAccessToProcedureBodies"

    const-string v6, "When determining procedure parameter types for CallableStatements, and the connected user  can\'t access procedure bodies through \"SHOW CREATE PROCEDURE\" or select on mysql.proc  should the driver instead create basic metadata (all parameters reported as IN VARCHARs, but allowing registerOutParameter() to be called on them anyway) instead of throwing an exception?"

    const-string v7, "5.0.3"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noAccessToProcedureBodies:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 965
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "noDatetimeStringSync"

    const-string v3, "ConnectionProperties.noDatetimeStringSync"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.1.7"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    const/high16 v18, -0x80000000

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noDatetimeStringSync:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 968
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "noTimezoneConversionForTimeType"

    const-string v3, "ConnectionProperties.noTzConversionForTimeType"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.0.0"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForTimeType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 971
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "noTimezoneConversionForDateType"

    const-string v3, "ConnectionProperties.noTzConversionForDateType"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "5.1.35"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x1

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 974
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "cacheDefaultTimezone"

    const-string v3, "ConnectionProperties.cacheDefaultTimezone"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.35"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheDefaultTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 977
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "nullCatalogMeansCurrent"

    const-string v3, "ConnectionProperties.nullCatalogMeansCurrent"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.1.8"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullCatalogMeansCurrent:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 980
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "nullNamePatternMatchesAll"

    const-string v3, "ConnectionProperties.nullNamePatternMatchesAll"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.8"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullNamePatternMatchesAll:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 983
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v13, "packetDebugBufferSize"

    const-string v3, "ConnectionProperties.packetDebugBufferSize"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "3.1.3"

    sget-object v19, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/16 v14, 0x14

    const/4 v15, 0x0

    const v16, 0x7fffffff

    const/16 v20, 0x7

    move-object v12, v2

    invoke-direct/range {v12 .. v20}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->packetDebugBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 986
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "padCharsWithSpace"

    const-string v3, "ConnectionProperties.padCharsWithSpace"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.0.6"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->padCharsWithSpace:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 989
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "paranoid"

    const-string v3, "ConnectionProperties.paranoid"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.0.1"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    const/high16 v18, -0x80000000

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->paranoid:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 992
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "pedantic"

    const-string v3, "ConnectionProperties.pedantic"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.0.0"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pedantic:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 995
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "pinGlobalTxToPhysicalConnection"

    const-string v3, "ConnectionProperties.pinGlobalTxToPhysicalConnection"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "5.0.1"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pinGlobalTxToPhysicalConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 998
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "populateInsertRowWithDefaultValues"

    const-string v3, "ConnectionProperties.populateInsertRowWithDefaultValues"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.0.5"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->populateInsertRowWithDefaultValues:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1001
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v13, "prepStmtCacheSize"

    const-string v3, "ConnectionProperties.prepStmtCacheSize"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "3.0.10"

    sget-object v19, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/16 v14, 0x19

    const/4 v15, 0x0

    const v16, 0x7fffffff

    const/16 v20, 0xa

    move-object v12, v2

    invoke-direct/range {v12 .. v20}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1004
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v22, "prepStmtCacheSqlLimit"

    const-string v3, "ConnectionProperties.prepStmtCacheSqlLimit"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "3.0.10"

    sget-object v28, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/16 v23, 0x100

    const/16 v24, 0x1

    const/16 v29, 0xb

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v29}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSqlLimit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1007
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "parseInfoCacheFactory"

    const-class v3, Lcom/mysql/jdbc/PerConnectionLRUFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v3, "ConnectionProperties.parseInfoCacheFactory"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.1"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/16 v9, 0xc

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->parseInfoCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1010
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "processEscapeCodesForPrepStmts"

    const-string v3, "ConnectionProperties.processEscapeCodesForPrepStmts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.1.12"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x1

    const/high16 v18, -0x80000000

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->processEscapeCodesForPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1013
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "profilerEventHandler"

    const-string v5, "com.mysql.jdbc.profiler.LoggingProfilerEventHandler"

    const-string v3, "ConnectionProperties.profilerEventHandler"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.6"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/high16 v9, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profilerEventHandler:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1017
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v13, "profileSql"

    const-string v3, "ConnectionProperties.profileSqlDeprecated"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "2.0.14"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v18, 0x3

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSql:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1020
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "profileSQL"

    const-string v3, "ConnectionProperties.profileSQL"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.0"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1023
    iput-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQLAsBoolean:Z

    .line 1025
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v13, "propertiesTransform"

    const-string v3, "ConnectionProperties.connectionPropertiesTransform"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.1.4"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/high16 v18, -0x80000000

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->propertiesTransform:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1028
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v20, "queriesBeforeRetryMaster"

    const-string v3, "ConnectionProperties.queriesBeforeRetryMaster"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "3.0.2"

    sget-object v26, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/16 v21, 0x32

    const/16 v22, 0x0

    const v23, 0x7fffffff

    const/16 v27, 0x7

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v27}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queriesBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1031
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "queryTimeoutKillsConnection"

    const-string v3, "ConnectionProperties.queryTimeoutKillsConnection"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.9"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v9, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queryTimeoutKillsConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1034
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "reconnectAtTxEnd"

    const-string v3, "ConnectionProperties.reconnectAtTxEnd"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.0.10"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v18, 0x4

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectAtTxEnd:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1037
    iput-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectTxAtEndAsBoolean:Z

    .line 1039
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "relaxAutoCommit"

    const-string v3, "ConnectionProperties.relaxAutoCommit"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "2.0.13"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->relaxAutoCommit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1042
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v13, "reportMetricsIntervalMillis"

    const-string v3, "ConnectionProperties.reportMetricsIntervalMillis"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "3.1.2"

    sget-object v19, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/16 v14, 0x7530

    const/4 v15, 0x0

    const v16, 0x7fffffff

    const/16 v20, 0x3

    move-object v12, v2

    invoke-direct/range {v12 .. v20}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reportMetricsIntervalMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1045
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "requireSSL"

    const-string v3, "ConnectionProperties.requireSSL"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.0"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v9, 0x3

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->requireSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1048
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v13, "resourceId"

    const-string v3, "ConnectionProperties.resourceId"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "5.0.1"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    const/high16 v18, -0x80000000

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resourceId:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1051
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v4, "resultSetSizeThreshold"

    const-string v3, "ConnectionProperties.resultSetSizeThreshold"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.0.5"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/16 v5, 0x64

    const/high16 v9, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resultSetSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1054
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "retainStatementAfterResultSetClose"

    const-string v3, "ConnectionProperties.retainStatementAfterResultSetClose"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.1.11"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retainStatementAfterResultSetClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1057
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "rewriteBatchedStatements"

    const-string v3, "ConnectionProperties.rewriteBatchedStatements"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.13"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rewriteBatchedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1060
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "rollbackOnPooledClose"

    const-string v3, "ConnectionProperties.rollbackOnPooledClose"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.0.15"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x1

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rollbackOnPooledClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1063
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "roundRobinLoadBalance"

    const-string v3, "ConnectionProperties.roundRobinLoadBalance"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.2"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v9, 0x5

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->roundRobinLoadBalance:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1066
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "runningCTS13"

    const-string v3, "ConnectionProperties.runningCTS13"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.1.7"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->runningCTS13:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1069
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v20, "secondsBeforeRetryMaster"

    const-string v3, "ConnectionProperties.secondsBeforeRetryMaster"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "3.0.2"

    sget-object v26, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/16 v21, 0x1e

    const/16 v27, 0x8

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v27}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->secondsBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1072
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v29, "selfDestructOnPingSecondsLifetime"

    const-string v3, "ConnectionProperties.selfDestructOnPingSecondsLifetime"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v34, "5.1.6"

    sget-object v35, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const v36, 0x7fffffff

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v36}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingSecondsLifetime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1075
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v13, "selfDestructOnPingMaxOperations"

    const-string v3, "ConnectionProperties.selfDestructOnPingMaxOperations"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "5.1.6"

    sget-object v19, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const/4 v15, 0x0

    const v16, 0x7fffffff

    const v20, 0x7fffffff

    move-object v12, v2

    invoke-direct/range {v12 .. v20}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingMaxOperations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1078
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "replicationEnableJMX"

    const-string v3, "ConnectionProperties.loadBalanceEnableJMX"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.27"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->HA_CATEGORY:Ljava/lang/String;

    const v9, 0x7fffffff

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1081
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v13, "serverTimezone"

    const-string v3, "ConnectionProperties.serverTimezone"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.0.2"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    const/high16 v18, -0x80000000

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1084
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "sessionVariables"

    const-string v3, "ConnectionProperties.sessionVariables"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.8"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sessionVariables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1087
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v13, "slowQueryThresholdMillis"

    const-string v3, "ConnectionProperties.slowQueryThresholdMillis"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "3.1.2"

    sget-object v19, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/16 v14, 0x7d0

    const/4 v15, 0x0

    const v16, 0x7fffffff

    const/16 v20, 0x9

    move-object v12, v2

    invoke-direct/range {v12 .. v20}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1090
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;

    const-string v22, "slowQueryThresholdNanos"

    const-string v3, "ConnectionProperties.slowQueryThresholdNanos"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "5.0.7"

    sget-object v27, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const-wide/16 v23, 0x0

    const/16 v28, 0xa

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v28}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdNanos:Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;

    .line 1093
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "socketFactory"

    const-class v3, Lcom/mysql/jdbc/StandardSocketFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v3, "ConnectionProperties.socketFactory"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.0.3"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/4 v9, 0x4

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketFactoryClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1096
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v13, "socksProxyHost"

    const-string v3, "ConnectionProperties.socksProxyHost"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "5.1.34"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v18, 0x1

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyHost:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1099
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v20, "socksProxyPort"

    sget v21, Lcom/mysql/jdbc/SocksProxySocketFactory;->SOCKS_DEFAULT_PORT:I

    const-string v3, "ConnectionProperties.socksProxyPort"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "5.1.34"

    sget-object v26, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const/16 v22, 0x0

    const v23, 0xffff

    const/16 v27, 0x2

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v27}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyPort:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1102
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v29, "socketTimeout"

    const-string v3, "ConnectionProperties.socketTimeout"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v34, "3.0.1"

    sget-object v35, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/16 v36, 0xa

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v36}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1105
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "statementInterceptors"

    const-string v3, "ConnectionProperties.statementInterceptors"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.1"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    const/high16 v9, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->statementInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1108
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "strictFloatingPoint"

    const-string v3, "ConnectionProperties.strictFloatingPoint"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.0.0"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    const/high16 v18, -0x80000000

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictFloatingPoint:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1111
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "strictUpdates"

    const-string v3, "ConnectionProperties.strictUpdates"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.0.4"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictUpdates:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1114
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "overrideSupportsIntegrityEnhancementFacility"

    const-string v3, "ConnectionProperties.overrideSupportsIEF"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.1.12"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->overrideSupportsIntegrityEnhancementFacility:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1118
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "tcpNoDelay"

    const-string v3, "true"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v3, "ConnectionProperties.tcpNoDelay"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.0.7"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpNoDelay:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1122
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "tcpKeepAlive"

    const-string v3, "true"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const-string v3, "ConnectionProperties.tcpKeepAlive"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "5.0.7"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpKeepAlive:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1126
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v20, "tcpRcvBuf"

    const-string v3, "0"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const-string v3, "ConnectionProperties.tcpSoRcvBuf"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "5.0.7"

    sget-object v26, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const v23, 0x7fffffff

    const/high16 v27, -0x80000000

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v27}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpRcvBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1130
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v29, "tcpSndBuf"

    const-string v3, "0"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const-string v3, "ConnectionProperties.tcpSoSndBuf"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v34, "5.0.7"

    sget-object v35, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const/high16 v36, -0x80000000

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v36}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpSndBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1134
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v13, "tcpTrafficClass"

    const-string v3, "0"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const-string v3, "ConnectionProperties.tcpTrafficClass"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "5.0.7"

    sget-object v19, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0xff

    const/high16 v20, -0x80000000

    move-object v12, v2

    invoke-direct/range {v12 .. v20}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpTrafficClass:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1138
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "tinyInt1isBit"

    const-string v3, "ConnectionProperties.tinyInt1isBit"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.0.16"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tinyInt1isBit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1141
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "traceProtocol"

    const-string v3, "ConnectionProperties.traceProtocol"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.1.2"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    const/high16 v18, -0x80000000

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1144
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "treatUtilDateAsTimestamp"

    const-string v3, "ConnectionProperties.treatUtilDateAsTimestamp"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.0.5"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->treatUtilDateAsTimestamp:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1147
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "transformedBitIsBoolean"

    const-string v3, "ConnectionProperties.transformedBitIsBoolean"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.1.9"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->transformedBitIsBoolean:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1150
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "useBlobToStoreUTF8OutsideBMP"

    const-string v3, "ConnectionProperties.useBlobToStoreUTF8OutsideBMP"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.3"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v9, 0x80

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useBlobToStoreUTF8OutsideBMP:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1153
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v13, "utf8OutsideBmpExcludedColumnNamePattern"

    const-string v3, "ConnectionProperties.utf8OutsideBmpExcludedColumnNamePattern"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "5.1.3"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v18, 0x81

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpExcludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1156
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v4, "utf8OutsideBmpIncludedColumnNamePattern"

    const-string v3, "ConnectionProperties.utf8OutsideBmpIncludedColumnNamePattern"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.3"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v9, 0x81

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpIncludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1159
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "useCompression"

    const-string v3, "ConnectionProperties.useCompression"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.0.17"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    const/high16 v18, -0x80000000

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCompression:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1162
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "useColumnNamesInFindColumn"

    const-string v3, "ConnectionProperties.useColumnNamesInFindColumn"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.7"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    const v9, 0x7fffffff

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useColumnNamesInFindColumn:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1165
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v13, "useConfigs"

    const-string v3, "ConnectionProperties.useConfigs"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.1.5"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    const v18, 0x7fffffff

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useConfigs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1168
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "useCursorFetch"

    const-string v3, "ConnectionProperties.useCursorFetch"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.0.0"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCursorFetch:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1171
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "useDynamicCharsetInfo"

    const-string v3, "ConnectionProperties.useDynamicCharsetInfo"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "5.0.6"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x1

    const/high16 v18, -0x80000000

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDynamicCharsetInfo:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1174
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "useDirectRowUnpack"

    const-string v6, "Use newer result set row unpacking code that skips a copy from network buffers  to a MySQL packet instance and instead reads directly into the result set row data buffers."

    const-string v7, "5.1.1"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x1

    const/high16 v9, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDirectRowUnpack:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1179
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "useFastIntParsing"

    const-string v3, "ConnectionProperties.useFastIntParsing"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.1.4"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastIntParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1182
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "useFastDateParsing"

    const-string v3, "ConnectionProperties.useFastDateParsing"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.0.5"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastDateParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1185
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "useHostsInPrivileges"

    const-string v3, "ConnectionProperties.useHostsInPrivileges"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.0.2"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useHostsInPrivileges:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1187
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "useInformationSchema"

    const-string v3, "ConnectionProperties.useInformationSchema"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.0.0"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useInformationSchema:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1189
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "useJDBCCompliantTimezoneShift"

    const-string v3, "ConnectionProperties.useJDBCCompliantTimezoneShift"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "5.0.0"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJDBCCompliantTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1192
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "useLocalSessionState"

    const-string v3, "ConnectionProperties.useLocalSessionState"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.7"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v9, 0x5

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalSessionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1195
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "useLocalTransactionState"

    const-string v3, "ConnectionProperties.useLocalTransactionState"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "5.1.7"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/16 v18, 0x6

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalTransactionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1198
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "useLegacyDatetimeCode"

    const-string v3, "ConnectionProperties.useLegacyDatetimeCode"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.1.6"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x1

    const/high16 v9, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLegacyDatetimeCode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1201
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "sendFractionalSeconds"

    const-string v3, "ConnectionProperties.sendFractionalSeconds"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "5.1.37"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x1

    const/high16 v18, -0x80000000

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sendFractionalSeconds:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1204
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "useNanosForElapsedTime"

    const-string v3, "ConnectionProperties.useNanosForElapsedTime"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.0.7"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useNanosForElapsedTime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1207
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "useOldAliasMetadataBehavior"

    const-string v3, "ConnectionProperties.useOldAliasMetadataBehavior"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "5.0.4"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldAliasMetadataBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1210
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "useOldUTF8Behavior"

    const-string v3, "ConnectionProperties.useOldUtf8Behavior"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.6"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8Behavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1213
    iput-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8BehaviorAsBoolean:Z

    .line 1215
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "useOnlyServerErrorMessages"

    const-string v3, "ConnectionProperties.useOnlyServerErrorMessages"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.0.15"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x1

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOnlyServerErrorMessages:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1218
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "useReadAheadInput"

    const-string v3, "ConnectionProperties.useReadAheadInput"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.5"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useReadAheadInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1221
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "useSqlStateCodes"

    const-string v3, "ConnectionProperties.useSqlStateCodes"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.1.3"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSqlStateCodes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1224
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "useSSL"

    const-string v3, "ConnectionProperties.useSSL"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.0.2"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1227
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "useSSPSCompatibleTimezoneShift"

    const-string v3, "ConnectionProperties.useSSPSCompatibleTimezoneShift"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "5.0.5"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSPSCompatibleTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1230
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "useStreamLengthsInPrepStmts"

    const-string v3, "ConnectionProperties.useStreamLengthsInPrepStmts"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.0.2"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x1

    const/high16 v9, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useStreamLengthsInPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1233
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "useTimezone"

    const-string v3, "ConnectionProperties.useTimezone"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.0.2"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1236
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "ultraDevHack"

    const-string v3, "ConnectionProperties.ultraDevHack"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "2.0.3"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUltraDevWorkAround:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1239
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "useUnbufferedInput"

    const-string v3, "ConnectionProperties.useUnbufferedInput"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.0.11"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x1

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnbufferedInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1242
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "useUnicode"

    const-string v3, "ConnectionProperties.useUnicode"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1.1g"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1246
    iput-boolean v11, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicodeAsBoolean:Z

    .line 1248
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v13, "useUsageAdvisor"

    const-string v3, "ConnectionProperties.useUsageAdvisor"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "3.1.1"

    sget-object v17, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v18, 0xa

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisor:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1251
    iput-boolean v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisorAsBoolean:Z

    .line 1253
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "yearIsDateType"

    const-string v3, "ConnectionProperties.yearIsDateType"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "3.1.9"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v9, -0x80000000

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->yearIsDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1256
    new-instance v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v13, "zeroDateTimeBehavior"

    const-string v14, "exception"

    const-string v3, "exception"

    const-string v4, "round"

    const-string v5, "convertToNull"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v15

    const-string v3, "ConnectionProperties.zeroDateTimeBehavior"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "exception"

    aput-object v5, v4, v1

    const-string v1, "round"

    aput-object v1, v4, v11

    const-string v1, "convertToNull"

    aput-object v1, v4, v10

    invoke-static {v3, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "3.1.4"

    sget-object v18, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/high16 v19, -0x80000000

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->zeroDateTimeBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1262
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v4, "useJvmCharsetConverters"

    const-string v2, "ConnectionProperties.useJvmCharsetConverters"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5.0.1"

    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJvmCharsetConverters:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1265
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v11, "useGmtMillisForDatetimes"

    const-string v2, "ConnectionProperties.useGmtMillisForDatetimes"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.1.12"

    sget-object v15, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v12, 0x0

    const/high16 v16, -0x80000000

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useGmtMillisForDatetimes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1268
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "dumpMetadataOnColumnNotFound"

    const-string v2, "ConnectionProperties.dumpMetadataOnColumnNotFound"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.1.13"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->DEBUGING_PROFILING_CATEGORY:Ljava/lang/String;

    const/4 v4, 0x0

    const/high16 v8, -0x80000000

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpMetadataOnColumnNotFound:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1273
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v10, "clientCertificateKeyStoreUrl"

    const-string v2, "ConnectionProperties.clientCertificateKeyStoreUrl"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "5.1.0"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v15, 0x5

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1276
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "trustCertificateKeyStoreUrl"

    const-string v2, "ConnectionProperties.trustCertificateKeyStoreUrl"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.0"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v8, 0x8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1279
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v10, "clientCertificateKeyStoreType"

    const-string v11, "JKS"

    const-string v2, "ConnectionProperties.clientCertificateKeyStoreType"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "5.1.0"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v15, 0x6

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1282
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "clientCertificateKeyStorePassword"

    const-string v2, "ConnectionProperties.clientCertificateKeyStorePassword"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.0"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v8, 0x7

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1285
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v10, "trustCertificateKeyStoreType"

    const-string v11, "JKS"

    const-string v2, "ConnectionProperties.trustCertificateKeyStoreType"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "5.1.0"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/16 v15, 0x9

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1288
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "trustCertificateKeyStorePassword"

    const-string v2, "ConnectionProperties.trustCertificateKeyStorePassword"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.0"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/16 v8, 0xa

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1291
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v10, "verifyServerCertificate"

    const-string v2, "ConnectionProperties.verifyServerCertificate"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "5.1.6"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v11, 0x1

    const/4 v15, 0x4

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->verifyServerCertificate:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1294
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "useAffectedRows"

    const-string v2, "ConnectionProperties.useAffectedRows"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.7"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v4, 0x0

    const/high16 v8, -0x80000000

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useAffectedRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1297
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v10, "passwordCharacterEncoding"

    const-string v2, "ConnectionProperties.passwordCharacterEncoding"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "5.1.7"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v11, 0x0

    const/high16 v15, -0x80000000

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->passwordCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1300
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const-string v3, "maxAllowedPacket"

    const-string v2, "ConnectionProperties.maxAllowedPacket"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.8"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->NETWORK_CATEGORY:Ljava/lang/String;

    const/4 v4, -0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxAllowedPacket:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    .line 1303
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v10, "authenticationPlugins"

    const-string v2, "ConnectionProperties.authenticationPlugins"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "5.1.19"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->authenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1306
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v3, "disabledAuthenticationPlugins"

    const-string v2, "ConnectionProperties.disabledAuthenticationPlugins"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.19"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disabledAuthenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1309
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v10, "defaultAuthenticationPlugin"

    const-string v11, "com.mysql.jdbc.authentication.MysqlNativePasswordPlugin"

    const-string v2, "ConnectionProperties.defaultAuthenticationPlugin"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "5.1.19"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultAuthenticationPlugin:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1313
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "disconnectOnExpiredPasswords"

    const-string v2, "ConnectionProperties.disconnectOnExpiredPasswords"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.23"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disconnectOnExpiredPasswords:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1316
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v10, "getProceduresReturnsFunctions"

    const-string v2, "ConnectionProperties.getProceduresReturnsFunctions"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "5.1.26"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v11, 0x1

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getProceduresReturnsFunctions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1319
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "detectCustomCollations"

    const-string v2, "ConnectionProperties.detectCustomCollations"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.29"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->MISC_CATEGORY:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectCustomCollations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1322
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v10, "serverRSAPublicKeyFile"

    const-string v2, "ConnectionProperties.serverRSAPublicKeyFile"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "5.1.31"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverRSAPublicKeyFile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1325
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "allowPublicKeyRetrieval"

    const-string v2, "ConnectionProperties.allowPublicKeyRetrieval"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.31"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowPublicKeyRetrieval:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1328
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v10, "dontCheckOnDuplicateKeyUpdateInSQL"

    const-string v2, "ConnectionProperties.dontCheckOnDuplicateKeyUpdateInSQL"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "5.1.32"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontCheckOnDuplicateKeyUpdateInSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1331
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "readOnlyPropagatesToServer"

    const-string v2, "ConnectionProperties.readOnlyPropagatesToServer"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.35"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readOnlyPropagatesToServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    .line 1334
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v10, "enabledSSLCipherSuites"

    const-string v2, "ConnectionProperties.enabledSSLCipherSuites"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "5.1.35"

    sget-object v14, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->SECURITY_CATEGORY:Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v15, 0xb

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enabledSSLCipherSuites:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    .line 1337
    new-instance v1, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    const-string v3, "enableEscapeProcessing"

    const-string v2, "ConnectionProperties.enableEscapeProcessing"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5.1.37"

    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PERFORMANCE_CATEGORY:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableEscapeProcessing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    return-void
.end method

.method protected static exposeAsDriverPropertyInfo(Ljava/util/Properties;I)[Ljava/sql/DriverPropertyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 666
    new-instance v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$1;

    invoke-direct {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$1;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$1;->exposeAsDriverPropertyInfoInternal(Ljava/util/Properties;I)[Ljava/sql/DriverPropertyInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected exposeAsDriverPropertyInfoInternal(Ljava/util/Properties;I)[Ljava/sql/DriverPropertyInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1341
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->initializeProperties(Ljava/util/Properties;)V

    .line 1343
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p2

    .line 1347
    new-array v1, v0, [Ljava/sql/DriverPropertyInfo;

    move v2, p2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1350
    sget-object v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    sub-int v4, v2, p2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 1353
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    if-eqz p1, :cond_0

    .line 1356
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->initializeFrom(Ljava/util/Properties;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 1359
    :cond_0
    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getAsDriverPropertyInfo()Ljava/sql/DriverPropertyInfo;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    const-string p1, "ConnectionProperties.InternalPropertiesFailure"

    .line 1361
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1000"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    return-object v1
.end method

.method protected exposeAsProperties(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1371
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 1374
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1377
    sget-object v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 1380
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 1382
    invoke-virtual {v2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1385
    invoke-virtual {v2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1388
    :catch_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string v0, "Internal properties failure"

    const-string v1, "S1000"

    invoke-static {v0, v1, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_2
    return-object p1
.end method

.method public exposeAsXml()Ljava/lang/String;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<ConnectionProperties>"

    .line 1407
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    sget-object v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1411
    sget-object v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_CATEGORIES:[Ljava/lang/String;

    array-length v3, v3

    .line 1413
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    .line 1416
    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_CATEGORIES:[Ljava/lang/String;

    aget-object v7, v7, v6

    new-instance v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;

    invoke-direct {v8, v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;-><init>(Lcom/mysql/jdbc/ConnectionPropertiesImpl;)V

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1423
    :cond_0
    new-instance v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v8, "user"

    const/4 v9, 0x0

    const-string v7, "ConnectionProperties.Username"

    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "ConnectionProperties.allVersions"

    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const v13, -0x7fffffff

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1426
    new-instance v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    const-string v15, "password"

    const/16 v16, 0x0

    const-string v8, "ConnectionProperties.Password"

    invoke-static {v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v8, "ConnectionProperties.allVersions"

    invoke-static {v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    const v20, -0x7ffffffe

    move-object v14, v7

    invoke-direct/range {v14 .. v20}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1430
    sget-object v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->CONNECTION_AND_AUTH_CATEGORY:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;

    .line 1431
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 1432
    invoke-virtual {v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    iget-object v10, v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->ordered:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getOrder()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v10, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 1437
    invoke-virtual {v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    iget-object v8, v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->ordered:Ljava/util/Map;

    new-instance v9, Ljava/lang/Integer;

    invoke-virtual {v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getOrder()I

    move-result v7

    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_3

    .line 1443
    :try_start_0
    sget-object v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    .line 1444
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 1445
    invoke-virtual {v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getCategoryName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;

    .line 1446
    invoke-virtual {v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getOrder()I

    move-result v9

    const/high16 v10, -0x80000000

    if-ne v9, v10, :cond_1

    .line 1449
    iget-object v8, v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->alpha:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1451
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1452
    iget-object v10, v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->ordered:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    if-nez v10, :cond_2

    .line 1455
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 1456
    iget-object v8, v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->ordered:Ljava/util/Map;

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    :cond_2
    invoke-virtual {v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v5, v3, :cond_b

    .line 1464
    sget-object v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_CATEGORIES:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;

    const-string v6, "\n <PropertyCategory name=\""

    .line 1466
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    sget-object v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_CATEGORIES:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\">"

    .line 1468
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    iget-object v6, v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->ordered:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 1471
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    const-string v9, "\n  <Property name=\""

    .line 1472
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    invoke-virtual {v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\" required=\""

    .line 1474
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    iget-boolean v9, v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->required:Z

    if-eqz v9, :cond_5

    const-string v9, "Yes"

    goto :goto_5

    :cond_5
    const-string v9, "No"

    :goto_5
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\" default=\""

    .line 1477
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    invoke-virtual {v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getDefaultValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1480
    invoke-virtual {v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getDefaultValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v9, "\" sortOrder=\""

    .line 1483
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    invoke-virtual {v8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getOrder()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\" since=\""

    .line 1485
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    iget-object v9, v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->sinceVersion:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\">\n"

    .line 1487
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "    "

    .line 1488
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    iget-object v8, v8, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->description:Ljava/lang/String;

    const-string v9, "&"

    const-string v10, "&amp;"

    .line 1490
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "<"

    const-string v10, "&lt;"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ">"

    const-string v10, "&gt;"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1492
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n  </Property>"

    .line 1493
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1497
    :cond_7
    iget-object v2, v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$XmlMap;->alpha:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    const-string v7, "\n  <Property name=\""

    .line 1498
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    invoke-virtual {v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\" required=\""

    .line 1500
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    iget-boolean v7, v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->required:Z

    if-eqz v7, :cond_8

    const-string v7, "Yes"

    goto :goto_7

    :cond_8
    const-string v7, "No"

    :goto_7
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\" default=\""

    .line 1503
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    invoke-virtual {v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 1506
    invoke-virtual {v6}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v7, "\" sortOrder=\"alpha\" since=\""

    .line 1509
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    iget-object v7, v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->sinceVersion:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\">\n"

    .line 1511
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    "

    .line 1512
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    iget-object v6, v6, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->description:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n  </Property>"

    .line 1514
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    const-string v2, "\n </PropertyCategory>"

    .line 1517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 1520
    :catch_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "Internal properties failure"

    const-string v3, "S1000"

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    :cond_b
    const-string v2, "\n</ConnectionProperties>"

    .line 1523
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAllowLoadLocalInfile()Z
    .locals 1

    .line 1534
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowLoadLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowMasterDownConnections()Z
    .locals 1

    .line 4839
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMasterDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowMultiQueries()Z
    .locals 1

    .line 1543
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMultiQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowNanAndInf()Z
    .locals 1

    .line 1552
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowNanAndInf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowPublicKeyRetrieval()Z
    .locals 1

    .line 4899
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowPublicKeyRetrieval:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowSlaveDownConnections()Z
    .locals 1

    .line 4847
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowSlaveDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAllowUrlInLocalInfile()Z
    .locals 1

    .line 1561
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowUrlInLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAlwaysSendSetIsolation()Z
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->alwaysSendSetIsolation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAuthenticationPlugins()Ljava/lang/String;
    .locals 1

    .line 4787
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->authenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoClosePStmtStreams()Z
    .locals 1

    .line 3673
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoClosePStmtStreams:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAutoDeserialize()Z
    .locals 1

    .line 1579
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoDeserialize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getAutoGenerateTestcaseScript()Z
    .locals 1

    .line 1588
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScriptAsBoolean:Z

    return v0
.end method

.method public getAutoReconnectForPools()Z
    .locals 1

    .line 1597
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPoolsAsBoolean:Z

    return v0
.end method

.method public getAutoSlowLog()Z
    .locals 1

    .line 4536
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoSlowLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getBlobSendChunkSize()I
    .locals 1

    .line 1606
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobSendChunkSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getBlobsAreStrings()Z
    .locals 1

    .line 4520
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobsAreStrings:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCacheCallableStatements()Z
    .locals 1

    .line 1615
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheCallableStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCacheCallableStmts()Z
    .locals 1

    .line 3930
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getCacheCallableStatements()Z

    move-result v0

    return v0
.end method

.method public getCacheDefaultTimezone()Z
    .locals 1

    .line 3637
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheDefaultTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCachePrepStmts()Z
    .locals 1

    .line 3948
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getCachePreparedStatements()Z

    move-result v0

    return v0
.end method

.method public getCachePreparedStatements()Z
    .locals 1

    .line 1624
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cachePreparedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getCacheResultSetMetadata()Z
    .locals 1

    .line 1633
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetaDataAsBoolean:Z

    return v0
.end method

.method public getCacheServerConfiguration()Z
    .locals 1

    .line 1642
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheServerConfiguration:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCallableStatementCacheSize()I
    .locals 1

    .line 1651
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->callableStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getCallableStmtCacheSize()I
    .locals 1

    .line 3966
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getCallableStatementCacheSize()I

    move-result v0

    return v0
.end method

.method public getCapitalizeTypeNames()Z
    .locals 1

    .line 1660
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->capitalizeTypeNames:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCharacterSetResults()Ljava/lang/String;
    .locals 1

    .line 1669
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterSetResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateKeyStorePassword()Ljava/lang/String;
    .locals 1

    .line 4047
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateKeyStoreType()Ljava/lang/String;
    .locals 1

    .line 4065
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificateKeyStoreUrl()Ljava/lang/String;
    .locals 1

    .line 4083
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfoProvider()Ljava/lang/String;
    .locals 1

    .line 4371
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientInfoProvider:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClobCharacterEncoding()Ljava/lang/String;
    .locals 1

    .line 1695
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClobberStreamingResults()Z
    .locals 1

    .line 1686
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobberStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCompensateOnDuplicateKeyUpdateCounts()Z
    .locals 1

    .line 4616
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->compensateOnDuplicateKeyUpdateCounts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 1713
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getConnectionAttributes()Ljava/lang/String;
    .locals 1

    .line 1673
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionAttributes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionCollation()Ljava/lang/String;
    .locals 1

    .line 1704
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionCollation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionLifecycleInterceptors()Ljava/lang/String;
    .locals 1

    .line 4544
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionLifecycleInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContinueBatchOnError()Z
    .locals 1

    .line 1722
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->continueBatchOnError:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getCreateDatabaseIfNotExist()Z
    .locals 1

    .line 1731
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->createDatabaseIfNotExist:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDefaultAuthenticationPlugin()Ljava/lang/String;
    .locals 1

    .line 4803
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultAuthenticationPlugin:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFetchSize()I
    .locals 1

    .line 1740
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultFetchSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getDetectCustomCollations()Z
    .locals 1

    .line 4883
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectCustomCollations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDisabledAuthenticationPlugins()Ljava/lang/String;
    .locals 1

    .line 4795
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disabledAuthenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectOnExpiredPasswords()Z
    .locals 1

    .line 4827
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disconnectOnExpiredPasswords:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDontCheckOnDuplicateKeyUpdateInSQL()Z
    .locals 1

    .line 4916
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontCheckOnDuplicateKeyUpdateInSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDontTrackOpenResources()Z
    .locals 1

    .line 1749
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontTrackOpenResources:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDumpMetadataOnColumnNotFound()Z
    .locals 1

    .line 3727
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpMetadataOnColumnNotFound:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDumpQueriesOnException()Z
    .locals 1

    .line 1758
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpQueriesOnException:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getDynamicCalendars()Z
    .locals 1

    .line 1767
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dynamicCalendars:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getElideSetAutoCommits()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEmptyStringsConvertToZero()Z
    .locals 1

    .line 1788
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emptyStringsConvertToZero:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEmulateLocators()Z
    .locals 1

    .line 1797
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateLocators:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEmulateUnsupportedPstmts()Z
    .locals 1

    .line 1806
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateUnsupportedPstmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEnableEscapeProcessing()Z
    .locals 1

    .line 4952
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableEscapeProcessing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEnablePacketDebug()Z
    .locals 1

    .line 1815
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enablePacketDebug:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEnableQueryTimeouts()Z
    .locals 1

    .line 4317
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableQueryTimeouts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getEnabledSSLCipherSuites()Ljava/lang/String;
    .locals 1

    .line 4944
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enabledSSLCipherSuites:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 1824
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncodingAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExceptionInterceptors()Ljava/lang/String;
    .locals 1

    .line 4675
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->exceptionInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExplainSlowQueries()Z
    .locals 1

    .line 1833
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->explainSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getFailOverReadOnly()Z
    .locals 1

    .line 1842
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->failOverReadOnly:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getFunctionsNeverReturnBlobs()Z
    .locals 1

    .line 4528
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->functionsNeverReturnBlobs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getGatherPerfMetrics()Z
    .locals 1

    .line 3849
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getGatherPerformanceMetrics()Z

    move-result v0

    return v0
.end method

.method public getGatherPerformanceMetrics()Z
    .locals 1

    .line 1851
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->gatherPerformanceMetrics:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getGenerateSimpleParameterMetadata()Z
    .locals 1

    .line 4245
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->generateSimpleParameterMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getGetProceduresReturnsFunctions()Z
    .locals 1

    .line 4875
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getProceduresReturnsFunctions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method protected getHighAvailability()Z
    .locals 1

    .line 1855
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->highAvailabilityAsBoolean:Z

    return v0
.end method

.method public getHoldResultsOpenOverStatementClose()Z
    .locals 1

    .line 1864
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->holdResultsOpenOverStatementClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getIgnoreNonTxTables()Z
    .locals 1

    .line 1873
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->ignoreNonTxTables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getIncludeInnodbStatusInDeadlockExceptions()Z
    .locals 1

    .line 4512
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeInnodbStatusInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getIncludeThreadDumpInDeadlockExceptions()Z
    .locals 1

    .line 4771
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadDumpInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getIncludeThreadNamesAsStatementComment()Z
    .locals 1

    .line 4779
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadNamesAsStatementComment:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getInitialTimeout()I
    .locals 1

    .line 1882
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->initialTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getInteractiveClient()Z
    .locals 1

    .line 1891
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->isInteractiveClient:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getIsInteractiveClient()Z
    .locals 1

    .line 1900
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->isInteractiveClient:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getJdbcCompliantTruncation()Z
    .locals 1

    .line 1909
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getJdbcCompliantTruncationForReads()Z
    .locals 1

    .line 3781
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncationForReads:Z

    return v0
.end method

.method public getLargeRowSizeThreshold()Ljava/lang/String;
    .locals 1

    .line 4480
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->largeRowSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceAutoCommitStatementRegex()Ljava/lang/String;
    .locals 1

    .line 4763
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementRegex:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceAutoCommitStatementThreshold()I
    .locals 1

    .line 4755
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getLoadBalanceBlacklistTimeout()I
    .locals 1

    .line 4624
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceBlacklistTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getLoadBalanceConnectionGroup()Ljava/lang/String;
    .locals 1

    .line 4703
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceEnableJMX()Z
    .locals 1

    .line 4735
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getLoadBalanceExceptionChecker()Ljava/lang/String;
    .locals 1

    .line 4711
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceExceptionChecker:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceHostRemovalGracePeriod()I
    .locals 1

    .line 4747
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceHostRemovalGracePeriod:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getLoadBalancePingTimeout()I
    .locals 1

    .line 4632
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalancePingTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getLoadBalanceSQLExceptionSubclassFailover()Ljava/lang/String;
    .locals 1

    .line 4727
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLExceptionSubclassFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceSQLStateFailover()Ljava/lang/String;
    .locals 1

    .line 4719
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLStateFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceStrategy()Ljava/lang/String;
    .locals 1

    .line 4392
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceStrategy:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalanceValidateConnectionOnSwapServer()Z
    .locals 1

    .line 4695
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceValidateConnectionOnSwapServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/lang/String;
    .locals 1

    .line 4209
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->localSocketAddress:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocatorFetchBufferSize()I
    .locals 1

    .line 1918
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->locatorFetchBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getLogSlowQueries()Z
    .locals 1

    .line 1945
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getLogXaCommands()Z
    .locals 1

    .line 4263
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logXaCommands:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getLogger()Ljava/lang/String;
    .locals 1

    .line 1927
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerClassName()Ljava/lang/String;
    .locals 1

    .line 1936
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaintainTimeStats()Z
    .locals 1

    .line 1954
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStatsAsBoolean:Z

    return v0
.end method

.method public getMaxAllowedPacket()I
    .locals 1

    .line 4683
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxAllowedPacket:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getMaxQuerySizeToLog()I
    .locals 1

    .line 1963
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxQuerySizeToLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getMaxReconnects()I
    .locals 1

    .line 1972
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxReconnects:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getMaxRows()I
    .locals 1

    .line 1981
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRowsAsInt:I

    return v0
.end method

.method public getMetadataCacheSize()I
    .locals 1

    .line 1990
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->metadataCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getNetTimeoutForStreamingResults()I
    .locals 1

    .line 4299
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->netTimeoutForStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getNoAccessToProcedureBodies()Z
    .locals 1

    .line 4011
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noAccessToProcedureBodies:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getNoDatetimeStringSync()Z
    .locals 1

    .line 1999
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noDatetimeStringSync:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getNoTimezoneConversionForDateType()Z
    .locals 1

    .line 3619
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getNoTimezoneConversionForTimeType()Z
    .locals 1

    .line 3601
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForTimeType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getNullCatalogMeansCurrent()Z
    .locals 1

    .line 2008
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullCatalogMeansCurrent:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getNullNamePatternMatchesAll()Z
    .locals 1

    .line 2017
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullNamePatternMatchesAll:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getOverrideSupportsIntegrityEnhancementFacility()Z
    .locals 1

    .line 3583
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->overrideSupportsIntegrityEnhancementFacility:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getPacketDebugBufferSize()I
    .locals 1

    .line 2026
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->packetDebugBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getPadCharsWithSpace()Z
    .locals 1

    .line 4335
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->padCharsWithSpace:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getParanoid()Z
    .locals 1

    .line 2035
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->paranoid:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getParseInfoCacheFactory()Ljava/lang/String;
    .locals 1

    .line 4811
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->parseInfoCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordCharacterEncoding()Ljava/lang/String;
    .locals 1

    .line 4661
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->passwordCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4664
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getPedantic()Z
    .locals 1

    .line 2044
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pedantic:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getPinGlobalTxToPhysicalConnection()Z
    .locals 1

    .line 3817
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pinGlobalTxToPhysicalConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getPopulateInsertRowWithDefaultValues()Z
    .locals 1

    .line 4384
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->populateInsertRowWithDefaultValues:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getPrepStmtCacheSize()I
    .locals 1

    .line 3984
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getPreparedStatementCacheSize()I

    move-result v0

    return v0
.end method

.method public getPrepStmtCacheSqlLimit()I
    .locals 1

    .line 4002
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getPreparedStatementCacheSqlLimit()I

    move-result v0

    return v0
.end method

.method public getPreparedStatementCacheSize()I
    .locals 1

    .line 2053
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPreparedStatementCacheSqlLimit()I
    .locals 1

    .line 2062
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSqlLimit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getProcessEscapeCodesForPrepStmts()Z
    .locals 1

    .line 3691
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->processEscapeCodesForPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getProfileSQL()Z
    .locals 1

    .line 2080
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getProfileSql()Z
    .locals 1

    .line 2071
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQLAsBoolean:Z

    return v0
.end method

.method public getProfilerEventHandler()Ljava/lang/String;
    .locals 1

    .line 4552
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profilerEventHandler:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertiesTransform()Ljava/lang/String;
    .locals 1

    .line 2089
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->propertiesTransform:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueriesBeforeRetryMaster()I
    .locals 1

    .line 2098
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queriesBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getQueryTimeoutKillsConnection()Z
    .locals 1

    .line 4687
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queryTimeoutKillsConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getReadFromMasterWhenNoSlaves()Z
    .locals 1

    .line 4855
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readFromMasterWhenNoSlaves:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getReadOnlyPropagatesToServer()Z
    .locals 1

    .line 4936
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readOnlyPropagatesToServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getReconnectAtTxEnd()Z
    .locals 1

    .line 2107
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectTxAtEndAsBoolean:Z

    return v0
.end method

.method public getRelaxAutoCommit()Z
    .locals 1

    .line 2116
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->relaxAutoCommit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getReplicationConnectionGroup()Ljava/lang/String;
    .locals 1

    .line 4831
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplicationEnableJMX()Z
    .locals 1

    .line 4863
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getReportMetricsIntervalMillis()I
    .locals 1

    .line 2125
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reportMetricsIntervalMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getRequireSSL()Z
    .locals 1

    .line 2134
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->requireSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .line 3745
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resourceId:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultSetSizeThreshold()I
    .locals 1

    .line 4281
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resultSetSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getRetainStatementAfterResultSetClose()Z
    .locals 1

    .line 2138
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retainStatementAfterResultSetClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getRetriesAllDown()I
    .locals 1

    .line 4644
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retriesAllDown:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getRewriteBatchedStatements()Z
    .locals 1

    .line 3763
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rewriteBatchedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getRollbackOnPooledClose()Z
    .locals 1

    .line 2147
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rollbackOnPooledClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getRoundRobinLoadBalance()Z
    .locals 1

    .line 2156
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->roundRobinLoadBalance:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getRunningCTS13()Z
    .locals 1

    .line 2165
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->runningCTS13:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getSecondsBeforeRetryMaster()I
    .locals 1

    .line 2174
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->secondsBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getSelfDestructOnPingMaxOperations()I
    .locals 1

    .line 4592
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingMaxOperations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getSelfDestructOnPingSecondsLifetime()I
    .locals 1

    .line 4584
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingSecondsLifetime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getSendFractionalSeconds()Z
    .locals 1

    .line 4576
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sendFractionalSeconds:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getServerAffinityOrder()Ljava/lang/String;
    .locals 1

    .line 4400
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverAffinityOrder:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerConfigCacheFactory()Ljava/lang/String;
    .locals 1

    .line 4819
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverConfigCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerRSAPublicKeyFile()Ljava/lang/String;
    .locals 1

    .line 4887
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverRSAPublicKeyFile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTimezone()Ljava/lang/String;
    .locals 1

    .line 2183
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionVariables()Ljava/lang/String;
    .locals 1

    .line 2192
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sessionVariables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSlowQueryThresholdMillis()I
    .locals 1

    .line 2201
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getSlowQueryThresholdNanos()J
    .locals 2

    .line 4456
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdNanos:Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->getValueAsLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSocketFactory()Ljava/lang/String;
    .locals 1

    .line 3894
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getSocketFactoryClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocketFactoryClassName()Ljava/lang/String;
    .locals 1

    .line 2210
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketFactoryClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .line 2219
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getSocksProxyHost()Ljava/lang/String;
    .locals 1

    .line 4924
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyHost:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocksProxyPort()I
    .locals 1

    .line 4932
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyPort:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getStatementInterceptors()Ljava/lang/String;
    .locals 1

    .line 4464
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->statementInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrictFloatingPoint()Z
    .locals 1

    .line 2228
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictFloatingPoint:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getStrictUpdates()Z
    .locals 1

    .line 2237
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictUpdates:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTcpKeepAlive()Z
    .locals 1

    .line 4416
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpKeepAlive:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1

    .line 4408
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpNoDelay:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTcpRcvBuf()I
    .locals 1

    .line 4424
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpRcvBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getTcpSndBuf()I
    .locals 1

    .line 4432
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpSndBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getTcpTrafficClass()I
    .locals 1

    .line 4440
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpTrafficClass:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result v0

    return v0
.end method

.method public getTinyInt1isBit()Z
    .locals 1

    .line 2246
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tinyInt1isBit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTraceProtocol()Z
    .locals 1

    .line 2255
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTransformedBitIsBoolean()Z
    .locals 1

    .line 2264
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->transformedBitIsBoolean:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTreatUtilDateAsTimestamp()Z
    .locals 1

    .line 4173
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->treatUtilDateAsTimestamp:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getTrustCertificateKeyStorePassword()Ljava/lang/String;
    .locals 1

    .line 4101
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustCertificateKeyStoreType()Ljava/lang/String;
    .locals 1

    .line 4119
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustCertificateKeyStoreUrl()Ljava/lang/String;
    .locals 1

    .line 4137
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUltraDevHack()Z
    .locals 1

    .line 3867
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getUseUltraDevWorkAround()Z

    move-result v0

    return v0
.end method

.method public getUseAffectedRows()Z
    .locals 1

    .line 4652
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useAffectedRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseBlobToStoreUTF8OutsideBMP()Z
    .locals 1

    .line 4488
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useBlobToStoreUTF8OutsideBMP:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseColumnNamesInFindColumn()Z
    .locals 1

    .line 4600
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useColumnNamesInFindColumn:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseCompression()Z
    .locals 1

    .line 2273
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCompression:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseConfigs()Ljava/lang/String;
    .locals 1

    .line 4236
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useConfigs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseCursorFetch()Z
    .locals 1

    .line 3565
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCursorFetch:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseDirectRowUnpack()Z
    .locals 1

    .line 4472
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDirectRowUnpack:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseDynamicCharsetInfo()Z
    .locals 1

    .line 4353
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDynamicCharsetInfo:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseFastDateParsing()Z
    .locals 1

    .line 4191
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastDateParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseFastIntParsing()Z
    .locals 1

    .line 2282
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastIntParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseGmtMillisForDatetimes()Z
    .locals 1

    .line 3709
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useGmtMillisForDatetimes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseHostsInPrivileges()Z
    .locals 1

    .line 2291
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useHostsInPrivileges:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseInformationSchema()Z
    .locals 1

    .line 2300
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useInformationSchema:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseJDBCCompliantTimezoneShift()Z
    .locals 1

    .line 3655
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJDBCCompliantTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseJvmCharsetConverters()Z
    .locals 1

    .line 3799
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJvmCharsetConverters:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseLegacyDatetimeCode()Z
    .locals 1

    .line 4568
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLegacyDatetimeCode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseLocalSessionState()Z
    .locals 1

    .line 2309
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalSessionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseLocalTransactionState()Z
    .locals 1

    .line 4608
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalTransactionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseNanosForElapsedTime()Z
    .locals 1

    .line 4448
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useNanosForElapsedTime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseOldAliasMetadataBehavior()Z
    .locals 1

    .line 4029
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldAliasMetadataBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseOldUTF8Behavior()Z
    .locals 1

    .line 2318
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8BehaviorAsBoolean:Z

    return v0
.end method

.method public getUseOnlyServerErrorMessages()Z
    .locals 1

    .line 2327
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOnlyServerErrorMessages:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseReadAheadInput()Z
    .locals 1

    .line 2336
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useReadAheadInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseSSL()Z
    .locals 1

    .line 2363
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseSSPSCompatibleTimezoneShift()Z
    .locals 1

    .line 4155
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSPSCompatibleTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseServerPrepStmts()Z
    .locals 1

    .line 3912
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getUseServerPreparedStmts()Z

    move-result v0

    return v0
.end method

.method public getUseServerPreparedStmts()Z
    .locals 1

    .line 2345
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectServerPreparedStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseSqlStateCodes()Z
    .locals 1

    .line 2354
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSqlStateCodes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseStreamLengthsInPrepStmts()Z
    .locals 1

    .line 2381
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useStreamLengthsInPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseTimezone()Z
    .locals 1

    .line 2390
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseUltraDevWorkAround()Z
    .locals 1

    .line 2399
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUltraDevWorkAround:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseUnbufferedInput()Z
    .locals 1

    .line 2408
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnbufferedInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getUseUnicode()Z
    .locals 1

    .line 2417
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicodeAsBoolean:Z

    return v0
.end method

.method public getUseUsageAdvisor()Z
    .locals 1

    .line 2426
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisorAsBoolean:Z

    return v0
.end method

.method public getUtf8OutsideBmpExcludedColumnNamePattern()Ljava/lang/String;
    .locals 1

    .line 4496
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpExcludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUtf8OutsideBmpIncludedColumnNamePattern()Ljava/lang/String;
    .locals 1

    .line 4504
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpIncludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerifyServerCertificate()Z
    .locals 1

    .line 4560
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->verifyServerCertificate:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getYearIsDateType()Z
    .locals 1

    .line 2435
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->yearIsDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method

.method public getZeroDateTimeBehavior()Ljava/lang/String;
    .locals 1

    .line 2444
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->zeroDateTimeBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeFromRef(Ljavax/naming/Reference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2457
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2460
    sget-object v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 2463
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    if-eqz p1, :cond_0

    .line 2466
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->initializeFrom(Ljavax/naming/Reference;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2469
    :catch_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string v0, "Internal properties failure"

    const-string v1, "S1000"

    invoke-static {v0, v1, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 2473
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->postInitialization()V

    return-void
.end method

.method protected initializeProperties(Ljava/util/Properties;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string v0, "profileSql"

    .line 2486
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "profileSQL"

    .line 2489
    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2492
    :cond_0
    invoke-virtual {p1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Properties;

    const-string v0, "HOST"

    .line 2494
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "user"

    .line 2495
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    .line 2496
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DBNAME"

    .line 2497
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PORT"

    .line 2498
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "profileSql"

    .line 2499
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2501
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2504
    sget-object v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 2507
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    .line 2509
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->initializeFrom(Ljava/util/Properties;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionProperties.unableToInitDriverProperties"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1000"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 2516
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->postInitialization()V

    :cond_2
    return-void
.end method

.method public isUseSSLExplicit()Z
    .locals 1

    .line 2372
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    iget-boolean v0, v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->wasExplicitlySet:Z

    return v0
.end method

.method protected postInitialization()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2523
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSql:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2524
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSql:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 2527
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectAtTxEnd:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectTxAtEndAsBoolean:Z

    .line 2530
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getMaxRows()I

    move-result v0

    if-nez v0, :cond_1

    .line 2532
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValueAsObject(Ljava/lang/Object;)V

    .line 2538
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    :try_start_0
    const-string v3, "abc"

    .line 2544
    invoke-static {v3, v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2546
    :catch_0
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "ConnectionProperties.unsupportedCharacterEncoding"

    invoke-static {v0, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "0S100"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2553
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_1
    const-string v0, "java.util.LinkedHashMap"

    .line 2555
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2557
    :catch_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2561
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetaDataAsBoolean:Z

    .line 2562
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicodeAsBoolean:Z

    .line 2563
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncodingAsString:Ljava/lang/String;

    .line 2564
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->highAvailabilityAsBoolean:Z

    .line 2565
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPoolsAsBoolean:Z

    .line 2566
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRowsAsInt:I

    .line 2567
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQLAsBoolean:Z

    .line 2568
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisor:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisorAsBoolean:Z

    .line 2569
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8Behavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8BehaviorAsBoolean:Z

    .line 2570
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScript:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScriptAsBoolean:Z

    .line 2571
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStats:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStatsAsBoolean:Z

    .line 2572
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getJdbcCompliantTruncation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncationForReads:Z

    .line 2574
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getUseCursorFetch()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2576
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setDetectServerPreparedStmts(Z)V

    :cond_4
    return-void
.end method

.method public setAllowLoadLocalInfile(Z)V
    .locals 1

    .line 2586
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowLoadLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setAllowMasterDownConnections(Z)V
    .locals 1

    .line 4843
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMasterDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setAllowMultiQueries(Z)V
    .locals 1

    .line 2595
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowMultiQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setAllowNanAndInf(Z)V
    .locals 1

    .line 2604
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowNanAndInf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setAllowPublicKeyRetrieval(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4903
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowPublicKeyRetrieval:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getUpdateCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 4908
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowPublicKeyRetrieval:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 4904
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "\'allowPublicKeyRetrieval\'"

    aput-object v1, p1, v0

    const-string v0, "ConnectionProperties.dynamicChangeIsNotAllowed"

    invoke-static {v0, p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setAllowSlaveDownConnections(Z)V
    .locals 1

    .line 4851
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowSlaveDownConnections:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setAllowUrlInLocalInfile(Z)V
    .locals 1

    .line 2613
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->allowUrlInLocalInfile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setAlwaysSendSetIsolation(Z)V
    .locals 1

    .line 2622
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->alwaysSendSetIsolation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setAuthenticationPlugins(Ljava/lang/String;)V
    .locals 1

    .line 4783
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->authenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setAutoClosePStmtStreams(Z)V
    .locals 1

    .line 3682
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoClosePStmtStreams:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setAutoDeserialize(Z)V
    .locals 1

    .line 2631
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoDeserialize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setAutoGenerateTestcaseScript(Z)V
    .locals 1

    .line 2640
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScript:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2641
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScript:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoGenerateTestcaseScriptAsBoolean:Z

    return-void
.end method

.method public setAutoReconnect(Z)V
    .locals 1

    .line 2650
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setAutoReconnectForConnectionPools(Z)V
    .locals 1

    .line 2659
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2660
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPoolsAsBoolean:Z

    return-void
.end method

.method public setAutoReconnectForPools(Z)V
    .locals 1

    .line 2669
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnectForPools:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setAutoSlowLog(Z)V
    .locals 1

    .line 4540
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoSlowLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setBlobSendChunkSize(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2678
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobSendChunkSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->setValue(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setBlobsAreStrings(Z)V
    .locals 1

    .line 4524
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->blobsAreStrings:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setCacheCallableStatements(Z)V
    .locals 1

    .line 2687
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheCallableStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setCacheCallableStmts(Z)V
    .locals 0

    .line 3921
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCacheCallableStatements(Z)V

    return-void
.end method

.method public setCacheDefaultTimezone(Z)V
    .locals 1

    .line 3646
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheDefaultTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setCachePrepStmts(Z)V
    .locals 0

    .line 3939
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCachePreparedStatements(Z)V

    return-void
.end method

.method public setCachePreparedStatements(Z)V
    .locals 1

    .line 2696
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cachePreparedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setCacheResultSetMetadata(Z)V
    .locals 1

    .line 2705
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2706
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheResultSetMetaDataAsBoolean:Z

    return-void
.end method

.method public setCacheServerConfiguration(Z)V
    .locals 1

    .line 2715
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->cacheServerConfiguration:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setCallableStatementCacheSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2724
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->callableStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setCallableStmtCacheSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3957
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCallableStatementCacheSize(I)V

    return-void
.end method

.method public setCapitalizeDBMDTypes(Z)V
    .locals 1

    .line 2733
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->capitalizeTypeNames:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setCapitalizeTypeNames(Z)V
    .locals 1

    .line 2742
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->capitalizeTypeNames:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1

    .line 2751
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCharacterSetResults(Ljava/lang/String;)V
    .locals 1

    .line 2760
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterSetResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setClientCertificateKeyStorePassword(Ljava/lang/String;)V
    .locals 1

    .line 4056
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setClientCertificateKeyStoreType(Ljava/lang/String;)V
    .locals 1

    .line 4074
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setClientCertificateKeyStoreUrl(Ljava/lang/String;)V
    .locals 1

    .line 4092
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setClientInfoProvider(Ljava/lang/String;)V
    .locals 1

    .line 4380
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clientInfoProvider:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setClobCharacterEncoding(Ljava/lang/String;)V
    .locals 1

    .line 2778
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setClobberStreamingResults(Z)V
    .locals 1

    .line 2769
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->clobberStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setCompensateOnDuplicateKeyUpdateCounts(Z)V
    .locals 1

    .line 4620
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->compensateOnDuplicateKeyUpdateCounts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2796
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setConnectionAttributes(Ljava/lang/String;)V
    .locals 1

    .line 1677
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionAttributes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setConnectionCollation(Ljava/lang/String;)V
    .locals 1

    .line 2787
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionCollation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setConnectionLifecycleInterceptors(Ljava/lang/String;)V
    .locals 1

    .line 4548
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->connectionLifecycleInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setContinueBatchOnError(Z)V
    .locals 1

    .line 2805
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->continueBatchOnError:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setCreateDatabaseIfNotExist(Z)V
    .locals 1

    .line 2814
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->createDatabaseIfNotExist:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setDefaultAuthenticationPlugin(Ljava/lang/String;)V
    .locals 1

    .line 4799
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultAuthenticationPlugin:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultFetchSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2823
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->defaultFetchSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setDetectCustomCollations(Z)V
    .locals 1

    .line 4879
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectCustomCollations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setDetectServerPreparedStmts(Z)V
    .locals 1

    .line 2832
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectServerPreparedStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setDisabledAuthenticationPlugins(Ljava/lang/String;)V
    .locals 1

    .line 4791
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disabledAuthenticationPlugins:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setDisconnectOnExpiredPasswords(Z)V
    .locals 1

    .line 4823
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->disconnectOnExpiredPasswords:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setDontCheckOnDuplicateKeyUpdateInSQL(Z)V
    .locals 1

    .line 4912
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontCheckOnDuplicateKeyUpdateInSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setDontTrackOpenResources(Z)V
    .locals 1

    .line 2841
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dontTrackOpenResources:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setDumpMetadataOnColumnNotFound(Z)V
    .locals 1

    .line 3736
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpMetadataOnColumnNotFound:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setDumpQueriesOnException(Z)V
    .locals 1

    .line 2850
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dumpQueriesOnException:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setDynamicCalendars(Z)V
    .locals 1

    .line 2859
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->dynamicCalendars:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setElideSetAutoCommits(Z)V
    .locals 1

    .line 2868
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->elideSetAutoCommits:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setEmptyStringsConvertToZero(Z)V
    .locals 1

    .line 2877
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emptyStringsConvertToZero:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setEmulateLocators(Z)V
    .locals 1

    .line 2886
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateLocators:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setEmulateUnsupportedPstmts(Z)V
    .locals 1

    .line 2895
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->emulateUnsupportedPstmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setEnableEscapeProcessing(Z)V
    .locals 1

    .line 4956
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableEscapeProcessing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setEnablePacketDebug(Z)V
    .locals 1

    .line 2904
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enablePacketDebug:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setEnableQueryTimeouts(Z)V
    .locals 1

    .line 4326
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enableQueryTimeouts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setEnabledSSLCipherSuites(Ljava/lang/String;)V
    .locals 1

    .line 4948
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->enabledSSLCipherSuites:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .line 2913
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    .line 2914
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getValueAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->characterEncodingAsString:Ljava/lang/String;

    return-void
.end method

.method public setExceptionInterceptors(Ljava/lang/String;)V
    .locals 1

    .line 4671
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->exceptionInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setExplainSlowQueries(Z)V
    .locals 1

    .line 2923
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->explainSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setFailOverReadOnly(Z)V
    .locals 1

    .line 2932
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->failOverReadOnly:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setFunctionsNeverReturnBlobs(Z)V
    .locals 1

    .line 4532
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->functionsNeverReturnBlobs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setGatherPerfMetrics(Z)V
    .locals 0

    .line 3840
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setGatherPerformanceMetrics(Z)V

    return-void
.end method

.method public setGatherPerformanceMetrics(Z)V
    .locals 1

    .line 2941
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->gatherPerformanceMetrics:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setGenerateSimpleParameterMetadata(Z)V
    .locals 1

    .line 4254
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->generateSimpleParameterMetadata:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setGetProceduresReturnsFunctions(Z)V
    .locals 1

    .line 4871
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getProceduresReturnsFunctions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method protected setHighAvailability(Z)V
    .locals 1

    .line 2945
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 2946
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->autoReconnect:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->highAvailabilityAsBoolean:Z

    return-void
.end method

.method public setHoldResultsOpenOverStatementClose(Z)V
    .locals 1

    .line 2955
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->holdResultsOpenOverStatementClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setIgnoreNonTxTables(Z)V
    .locals 1

    .line 2964
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->ignoreNonTxTables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setIncludeInnodbStatusInDeadlockExceptions(Z)V
    .locals 1

    .line 4516
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeInnodbStatusInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setIncludeThreadDumpInDeadlockExceptions(Z)V
    .locals 1

    .line 4767
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadDumpInDeadlockExceptions:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setIncludeThreadNamesAsStatementComment(Z)V
    .locals 1

    .line 4775
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->includeThreadNamesAsStatementComment:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setInitialTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2973
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->initialTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setInteractiveClient(Z)V
    .locals 0

    .line 3876
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setIsInteractiveClient(Z)V

    return-void
.end method

.method public setIsInteractiveClient(Z)V
    .locals 1

    .line 2982
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->isInteractiveClient:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setJdbcCompliantTruncation(Z)V
    .locals 1

    .line 2991
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncation:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setJdbcCompliantTruncationForReads(Z)V
    .locals 0

    .line 3790
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->jdbcCompliantTruncationForReads:Z

    return-void
.end method

.method public setLargeRowSizeThreshold(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4484
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->largeRowSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->setValue(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setLoadBalanceAutoCommitStatementRegex(Ljava/lang/String;)V
    .locals 1

    .line 4759
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementRegex:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setLoadBalanceAutoCommitStatementThreshold(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4751
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceAutoCommitStatementThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setLoadBalanceBlacklistTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4628
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceBlacklistTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setLoadBalanceConnectionGroup(Ljava/lang/String;)V
    .locals 1

    .line 4707
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setLoadBalanceEnableJMX(Z)V
    .locals 1

    .line 4739
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setLoadBalanceExceptionChecker(Ljava/lang/String;)V
    .locals 1

    .line 4715
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceExceptionChecker:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setLoadBalanceHostRemovalGracePeriod(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4743
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceHostRemovalGracePeriod:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setLoadBalancePingTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4636
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalancePingTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setLoadBalanceSQLExceptionSubclassFailover(Ljava/lang/String;)V
    .locals 1

    .line 4731
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLExceptionSubclassFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setLoadBalanceSQLStateFailover(Ljava/lang/String;)V
    .locals 1

    .line 4723
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceSQLStateFailover:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setLoadBalanceStrategy(Ljava/lang/String;)V
    .locals 1

    .line 4396
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceStrategy:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setLoadBalanceValidateConnectionOnSwapServer(Z)V
    .locals 1

    .line 4699
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loadBalanceValidateConnectionOnSwapServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setLocalSocketAddress(Ljava/lang/String;)V
    .locals 1

    .line 4218
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->localSocketAddress:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setLocatorFetchBufferSize(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3000
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->locatorFetchBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->setValue(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setLogSlowQueries(Z)V
    .locals 1

    .line 3027
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logSlowQueries:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setLogXaCommands(Z)V
    .locals 1

    .line 4272
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->logXaCommands:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setLogger(Ljava/lang/String;)V
    .locals 1

    .line 3009
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValueAsObject(Ljava/lang/Object;)V

    return-void
.end method

.method public setLoggerClassName(Ljava/lang/String;)V
    .locals 1

    .line 3018
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->loggerClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setMaintainTimeStats(Z)V
    .locals 1

    .line 3036
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStats:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3037
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStats:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maintainTimeStatsAsBoolean:Z

    return-void
.end method

.method public setMaxAllowedPacket(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4679
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxAllowedPacket:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setMaxQuerySizeToLog(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3046
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxQuerySizeToLog:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setMaxReconnects(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3055
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxReconnects:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setMaxRows(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3064
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 3065
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->getValueAsInt()I

    move-result p1

    iput p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->maxRowsAsInt:I

    return-void
.end method

.method public setMetadataCacheSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3074
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->metadataCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setNetTimeoutForStreamingResults(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4308
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->netTimeoutForStreamingResults:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setNoAccessToProcedureBodies(Z)V
    .locals 1

    .line 4020
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noAccessToProcedureBodies:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setNoDatetimeStringSync(Z)V
    .locals 1

    .line 3083
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noDatetimeStringSync:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setNoTimezoneConversionForDateType(Z)V
    .locals 1

    .line 3628
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setNoTimezoneConversionForTimeType(Z)V
    .locals 1

    .line 3610
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->noTimezoneConversionForTimeType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setNullCatalogMeansCurrent(Z)V
    .locals 1

    .line 3092
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullCatalogMeansCurrent:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setNullNamePatternMatchesAll(Z)V
    .locals 1

    .line 3101
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->nullNamePatternMatchesAll:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setOverrideSupportsIntegrityEnhancementFacility(Z)V
    .locals 1

    .line 3592
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->overrideSupportsIntegrityEnhancementFacility:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setPacketDebugBufferSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3110
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->packetDebugBufferSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setPadCharsWithSpace(Z)V
    .locals 1

    .line 4344
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->padCharsWithSpace:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setParanoid(Z)V
    .locals 1

    .line 3119
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->paranoid:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setParseInfoCacheFactory(Ljava/lang/String;)V
    .locals 1

    .line 4807
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->parseInfoCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setPasswordCharacterEncoding(Ljava/lang/String;)V
    .locals 1

    .line 4656
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->passwordCharacterEncoding:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setPedantic(Z)V
    .locals 1

    .line 3128
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pedantic:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setPinGlobalTxToPhysicalConnection(Z)V
    .locals 1

    .line 3826
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->pinGlobalTxToPhysicalConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setPopulateInsertRowWithDefaultValues(Z)V
    .locals 1

    .line 4388
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->populateInsertRowWithDefaultValues:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setPrepStmtCacheSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3975
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPreparedStatementCacheSize(I)V

    return-void
.end method

.method public setPrepStmtCacheSqlLimit(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3993
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPreparedStatementCacheSqlLimit(I)V

    return-void
.end method

.method public setPreparedStatementCacheSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3137
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSize:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setPreparedStatementCacheSqlLimit(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3146
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->preparedStatementCacheSqlLimit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setProcessEscapeCodesForPrepStmts(Z)V
    .locals 1

    .line 3700
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->processEscapeCodesForPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setProfileSQL(Z)V
    .locals 1

    .line 3165
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setProfileSql(Z)V
    .locals 1

    .line 3155
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3156
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profileSQLAsBoolean:Z

    return-void
.end method

.method public setProfilerEventHandler(Ljava/lang/String;)V
    .locals 1

    .line 4556
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->profilerEventHandler:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setPropertiesTransform(Ljava/lang/String;)V
    .locals 1

    .line 3174
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->propertiesTransform:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setQueriesBeforeRetryMaster(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3183
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queriesBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setQueryTimeoutKillsConnection(Z)V
    .locals 1

    .line 4691
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->queryTimeoutKillsConnection:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setReadFromMasterWhenNoSlaves(Z)V
    .locals 1

    .line 4859
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readFromMasterWhenNoSlaves:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setReadOnlyPropagatesToServer(Z)V
    .locals 1

    .line 4940
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->readOnlyPropagatesToServer:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setReconnectAtTxEnd(Z)V
    .locals 1

    .line 3192
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectAtTxEnd:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3193
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectAtTxEnd:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reconnectTxAtEndAsBoolean:Z

    return-void
.end method

.method public setRelaxAutoCommit(Z)V
    .locals 1

    .line 3202
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->relaxAutoCommit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setReplicationConnectionGroup(Ljava/lang/String;)V
    .locals 1

    .line 4835
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationConnectionGroup:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setReplicationEnableJMX(Z)V
    .locals 1

    .line 4867
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->replicationEnableJMX:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setReportMetricsIntervalMillis(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3211
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->reportMetricsIntervalMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setRequireSSL(Z)V
    .locals 1

    .line 3220
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->requireSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 1

    .line 3754
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resourceId:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setResultSetSizeThreshold(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4290
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->resultSetSizeThreshold:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setRetainStatementAfterResultSetClose(Z)V
    .locals 1

    .line 3229
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retainStatementAfterResultSetClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setRetriesAllDown(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4640
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->retriesAllDown:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setRewriteBatchedStatements(Z)V
    .locals 1

    .line 3772
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rewriteBatchedStatements:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setRollbackOnPooledClose(Z)V
    .locals 1

    .line 3238
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->rollbackOnPooledClose:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setRoundRobinLoadBalance(Z)V
    .locals 1

    .line 3247
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->roundRobinLoadBalance:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setRunningCTS13(Z)V
    .locals 1

    .line 3256
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->runningCTS13:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setSecondsBeforeRetryMaster(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3265
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->secondsBeforeRetryMaster:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setSelfDestructOnPingMaxOperations(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4596
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingMaxOperations:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setSelfDestructOnPingSecondsLifetime(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4588
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->selfDestructOnPingSecondsLifetime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setSendFractionalSeconds(Z)V
    .locals 1

    .line 4580
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sendFractionalSeconds:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setServerAffinityOrder(Ljava/lang/String;)V
    .locals 1

    .line 4404
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverAffinityOrder:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setServerConfigCacheFactory(Ljava/lang/String;)V
    .locals 1

    .line 4815
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverConfigCacheFactory:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setServerRSAPublicKeyFile(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4891
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverRSAPublicKeyFile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->getUpdateCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 4895
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverRSAPublicKeyFile:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 4892
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "\'serverRSAPublicKeyFile\'"

    aput-object v1, p1, v0

    const-string v0, "ConnectionProperties.dynamicChangeIsNotAllowed"

    invoke-static {v0, p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setServerTimezone(Ljava/lang/String;)V
    .locals 1

    .line 3274
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->serverTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setSessionVariables(Ljava/lang/String;)V
    .locals 1

    .line 3283
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->sessionVariables:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setSlowQueryThresholdMillis(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3292
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdMillis:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setSlowQueryThresholdNanos(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4460
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->slowQueryThresholdNanos:Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->setValue(JLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setSocketFactory(Ljava/lang/String;)V
    .locals 0

    .line 3885
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setSocketFactoryClassName(Ljava/lang/String;)V

    return-void
.end method

.method public setSocketFactoryClassName(Ljava/lang/String;)V
    .locals 1

    .line 3301
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketFactoryClassName:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3310
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socketTimeout:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setSocksProxyHost(Ljava/lang/String;)V
    .locals 1

    .line 4920
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyHost:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setSocksProxyPort(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4928
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->socksProxyPort:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setStatementInterceptors(Ljava/lang/String;)V
    .locals 1

    .line 4468
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->statementInterceptors:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setStrictFloatingPoint(Z)V
    .locals 1

    .line 3319
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictFloatingPoint:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setStrictUpdates(Z)V
    .locals 1

    .line 3328
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->strictUpdates:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setTcpKeepAlive(Z)V
    .locals 1

    .line 4420
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpKeepAlive:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1

    .line 4412
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpNoDelay:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setTcpRcvBuf(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4428
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpRcvBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setTcpSndBuf(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4436
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpSndBuf:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setTcpTrafficClass(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4444
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tcpTrafficClass:Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->setValue(ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method public setTinyInt1isBit(Z)V
    .locals 1

    .line 3337
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->tinyInt1isBit:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setTraceProtocol(Z)V
    .locals 1

    .line 3346
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->traceProtocol:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setTransformedBitIsBoolean(Z)V
    .locals 1

    .line 3355
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->transformedBitIsBoolean:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setTreatUtilDateAsTimestamp(Z)V
    .locals 1

    .line 4182
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->treatUtilDateAsTimestamp:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setTrustCertificateKeyStorePassword(Ljava/lang/String;)V
    .locals 1

    .line 4110
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStorePassword:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setTrustCertificateKeyStoreType(Ljava/lang/String;)V
    .locals 1

    .line 4128
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setTrustCertificateKeyStoreUrl(Ljava/lang/String;)V
    .locals 1

    .line 4146
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->trustCertificateKeyStoreUrl:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setUltraDevHack(Z)V
    .locals 0

    .line 3858
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseUltraDevWorkAround(Z)V

    return-void
.end method

.method public setUseAffectedRows(Z)V
    .locals 1

    .line 4648
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useAffectedRows:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseBlobToStoreUTF8OutsideBMP(Z)V
    .locals 1

    .line 4492
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useBlobToStoreUTF8OutsideBMP:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseColumnNamesInFindColumn(Z)V
    .locals 1

    .line 4604
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useColumnNamesInFindColumn:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseCompression(Z)V
    .locals 1

    .line 3364
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCompression:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseConfigs(Ljava/lang/String;)V
    .locals 1

    .line 4227
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useConfigs:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setUseCursorFetch(Z)V
    .locals 1

    .line 3574
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useCursorFetch:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseDirectRowUnpack(Z)V
    .locals 1

    .line 4476
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDirectRowUnpack:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseDynamicCharsetInfo(Z)V
    .locals 1

    .line 4362
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useDynamicCharsetInfo:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseFastDateParsing(Z)V
    .locals 1

    .line 4200
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastDateParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseFastIntParsing(Z)V
    .locals 1

    .line 3373
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useFastIntParsing:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseGmtMillisForDatetimes(Z)V
    .locals 1

    .line 3718
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useGmtMillisForDatetimes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseHostsInPrivileges(Z)V
    .locals 1

    .line 3382
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useHostsInPrivileges:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseInformationSchema(Z)V
    .locals 1

    .line 3391
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useInformationSchema:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseJDBCCompliantTimezoneShift(Z)V
    .locals 1

    .line 3664
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJDBCCompliantTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseJvmCharsetConverters(Z)V
    .locals 1

    .line 3808
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useJvmCharsetConverters:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseLegacyDatetimeCode(Z)V
    .locals 1

    .line 4572
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLegacyDatetimeCode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseLocalSessionState(Z)V
    .locals 1

    .line 3400
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalSessionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseLocalTransactionState(Z)V
    .locals 1

    .line 4612
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useLocalTransactionState:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseNanosForElapsedTime(Z)V
    .locals 1

    .line 4452
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useNanosForElapsedTime:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseOldAliasMetadataBehavior(Z)V
    .locals 1

    .line 4038
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldAliasMetadataBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseOldUTF8Behavior(Z)V
    .locals 1

    .line 3409
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8Behavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3410
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8Behavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOldUTF8BehaviorAsBoolean:Z

    return-void
.end method

.method public setUseOnlyServerErrorMessages(Z)V
    .locals 1

    .line 3419
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useOnlyServerErrorMessages:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseReadAheadInput(Z)V
    .locals 1

    .line 3428
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useReadAheadInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseSSL(Z)V
    .locals 1

    .line 3455
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSL:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseSSPSCompatibleTimezoneShift(Z)V
    .locals 1

    .line 4164
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSSPSCompatibleTimezoneShift:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseServerPrepStmts(Z)V
    .locals 0

    .line 3903
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseServerPreparedStmts(Z)V

    return-void
.end method

.method public setUseServerPreparedStmts(Z)V
    .locals 1

    .line 3437
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->detectServerPreparedStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseSqlStateCodes(Z)V
    .locals 1

    .line 3446
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useSqlStateCodes:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseStreamLengthsInPrepStmts(Z)V
    .locals 1

    .line 3464
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useStreamLengthsInPrepStmts:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseTimezone(Z)V
    .locals 1

    .line 3473
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useTimezone:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseUltraDevWorkAround(Z)V
    .locals 1

    .line 3482
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUltraDevWorkAround:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseUnbufferedInput(Z)V
    .locals 1

    .line 3491
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnbufferedInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setUseUnicode(Z)V
    .locals 1

    .line 3500
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3501
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicode:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnicodeAsBoolean:Z

    return-void
.end method

.method public setUseUsageAdvisor(Z)V
    .locals 1

    .line 3510
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisor:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    .line 3511
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisor:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUsageAdvisorAsBoolean:Z

    return-void
.end method

.method public setUtf8OutsideBmpExcludedColumnNamePattern(Ljava/lang/String;)V
    .locals 1

    .line 4500
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpExcludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setUtf8OutsideBmpIncludedColumnNamePattern(Ljava/lang/String;)V
    .locals 1

    .line 4508
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->utf8OutsideBmpIncludedColumnNamePattern:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setVerifyServerCertificate(Z)V
    .locals 1

    .line 4564
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->verifyServerCertificate:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setYearIsDateType(Z)V
    .locals 1

    .line 3520
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->yearIsDateType:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->setValue(Z)V

    return-void
.end method

.method public setZeroDateTimeBehavior(Ljava/lang/String;)V
    .locals 1

    .line 3529
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->zeroDateTimeBehavior:Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected storeToRef(Ljavax/naming/Reference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3533
    sget-object v0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3536
    sget-object v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->PROPERTY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 3539
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;

    if-eqz p1, :cond_0

    .line 3542
    invoke-virtual {v2, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->storeTo(Ljavax/naming/Reference;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    const-string p1, "ConnectionProperties.errorNotExpected"

    .line 3545
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method public useUnbufferedInput()Z
    .locals 1

    .line 3556
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->useUnbufferedInput:Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->getValueAsBoolean()Z

    move-result v0

    return v0
.end method
