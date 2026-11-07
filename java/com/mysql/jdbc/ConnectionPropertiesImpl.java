package com.mysql.jdbc;

import android.support.v4.internal.view.SupportMenu;
import com.mysql.jdbc.log.Log;
import com.mysql.jdbc.log.StandardLogger;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.sql.DriverPropertyInfo;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.TreeMap;
import javax.naming.RefAddr;
import javax.naming.Reference;
import javax.naming.StringRefAddr;

/* JADX INFO: loaded from: classes.dex */
public class ConnectionPropertiesImpl implements Serializable, ConnectionProperties {
    protected static final String ZERO_DATETIME_BEHAVIOR_CONVERT_TO_NULL = "convertToNull";
    protected static final String ZERO_DATETIME_BEHAVIOR_EXCEPTION = "exception";
    protected static final String ZERO_DATETIME_BEHAVIOR_ROUND = "round";
    private static final long serialVersionUID = 4257801713007640580L;
    private boolean cacheResultSetMetaDataAsBoolean;
    private static final String CONNECTION_AND_AUTH_CATEGORY = Messages.getString("ConnectionProperties.categoryConnectionAuthentication");
    private static final String NETWORK_CATEGORY = Messages.getString("ConnectionProperties.categoryNetworking");
    private static final String DEBUGING_PROFILING_CATEGORY = Messages.getString("ConnectionProperties.categoryDebuggingProfiling");
    private static final String HA_CATEGORY = Messages.getString("ConnectionProperties.categorryHA");
    private static final String MISC_CATEGORY = Messages.getString("ConnectionProperties.categoryMisc");
    private static final String PERFORMANCE_CATEGORY = Messages.getString("ConnectionProperties.categoryPerformance");
    private static final String SECURITY_CATEGORY = Messages.getString("ConnectionProperties.categorySecurity");
    private static final String[] PROPERTY_CATEGORIES = {CONNECTION_AND_AUTH_CATEGORY, NETWORK_CATEGORY, HA_CATEGORY, SECURITY_CATEGORY, PERFORMANCE_CATEGORY, DEBUGING_PROFILING_CATEGORY, MISC_CATEGORY};
    private static final ArrayList<java.lang.reflect.Field> PROPERTY_LIST = new ArrayList<>();
    private static final String STANDARD_LOGGER_NAME = StandardLogger.class.getName();
    private BooleanConnectionProperty allowLoadLocalInfile = new BooleanConnectionProperty("allowLoadLocalInfile", true, Messages.getString("ConnectionProperties.loadDataLocal"), "3.0.3", SECURITY_CATEGORY, Integer.MAX_VALUE);
    private BooleanConnectionProperty allowMultiQueries = new BooleanConnectionProperty("allowMultiQueries", false, Messages.getString("ConnectionProperties.allowMultiQueries"), "3.1.1", SECURITY_CATEGORY, 1);
    private BooleanConnectionProperty allowNanAndInf = new BooleanConnectionProperty("allowNanAndInf", false, Messages.getString("ConnectionProperties.allowNANandINF"), "3.1.5", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty allowUrlInLocalInfile = new BooleanConnectionProperty("allowUrlInLocalInfile", false, Messages.getString("ConnectionProperties.allowUrlInLoadLocal"), "3.1.4", SECURITY_CATEGORY, Integer.MAX_VALUE);
    private BooleanConnectionProperty alwaysSendSetIsolation = new BooleanConnectionProperty("alwaysSendSetIsolation", true, Messages.getString("ConnectionProperties.alwaysSendSetIsolation"), "3.1.7", PERFORMANCE_CATEGORY, Integer.MAX_VALUE);
    private BooleanConnectionProperty autoClosePStmtStreams = new BooleanConnectionProperty("autoClosePStmtStreams", false, Messages.getString("ConnectionProperties.autoClosePstmtStreams"), "3.1.12", MISC_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty replicationConnectionGroup = new StringConnectionProperty("replicationConnectionGroup", null, Messages.getString("ConnectionProperties.replicationConnectionGroup"), "5.1.27", HA_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty allowMasterDownConnections = new BooleanConnectionProperty("allowMasterDownConnections", false, Messages.getString("ConnectionProperties.allowMasterDownConnections"), "5.1.27", HA_CATEGORY, Integer.MAX_VALUE);
    private BooleanConnectionProperty allowSlaveDownConnections = new BooleanConnectionProperty("allowSlaveDownConnections", false, Messages.getString("ConnectionProperties.allowSlaveDownConnections"), "5.1.38", HA_CATEGORY, Integer.MAX_VALUE);
    private BooleanConnectionProperty readFromMasterWhenNoSlaves = new BooleanConnectionProperty("readFromMasterWhenNoSlaves", false, Messages.getString("ConnectionProperties.readFromMasterWhenNoSlaves"), "5.1.38", HA_CATEGORY, Integer.MAX_VALUE);
    private BooleanConnectionProperty autoDeserialize = new BooleanConnectionProperty("autoDeserialize", false, Messages.getString("ConnectionProperties.autoDeserialize"), "3.1.5", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty autoGenerateTestcaseScript = new BooleanConnectionProperty("autoGenerateTestcaseScript", false, Messages.getString("ConnectionProperties.autoGenerateTestcaseScript"), "3.1.9", DEBUGING_PROFILING_CATEGORY, Integer.MIN_VALUE);
    private boolean autoGenerateTestcaseScriptAsBoolean = false;
    private BooleanConnectionProperty autoReconnect = new BooleanConnectionProperty("autoReconnect", false, Messages.getString("ConnectionProperties.autoReconnect"), "1.1", HA_CATEGORY, 0);
    private BooleanConnectionProperty autoReconnectForPools = new BooleanConnectionProperty("autoReconnectForPools", false, Messages.getString("ConnectionProperties.autoReconnectForPools"), "3.1.3", HA_CATEGORY, 1);
    private boolean autoReconnectForPoolsAsBoolean = false;
    private MemorySizeConnectionProperty blobSendChunkSize = new MemorySizeConnectionProperty("blobSendChunkSize", 1048576, 0, 0, Messages.getString("ConnectionProperties.blobSendChunkSize"), "3.1.9", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty autoSlowLog = new BooleanConnectionProperty("autoSlowLog", true, Messages.getString("ConnectionProperties.autoSlowLog"), "5.1.4", DEBUGING_PROFILING_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty blobsAreStrings = new BooleanConnectionProperty("blobsAreStrings", false, "Should the driver always treat BLOBs as Strings - specifically to work around dubious metadata returned by the server for GROUP BY clauses?", "5.0.8", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty functionsNeverReturnBlobs = new BooleanConnectionProperty("functionsNeverReturnBlobs", false, "Should the driver always treat data from functions returning BLOBs as Strings - specifically to work around dubious metadata returned by the server for GROUP BY clauses?", "5.0.8", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty cacheCallableStatements = new BooleanConnectionProperty("cacheCallableStmts", false, Messages.getString("ConnectionProperties.cacheCallableStatements"), "3.1.2", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty cachePreparedStatements = new BooleanConnectionProperty("cachePrepStmts", false, Messages.getString("ConnectionProperties.cachePrepStmts"), "3.0.10", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty cacheResultSetMetadata = new BooleanConnectionProperty("cacheResultSetMetadata", false, Messages.getString("ConnectionProperties.cacheRSMetadata"), "3.1.1", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty serverConfigCacheFactory = new StringConnectionProperty("serverConfigCacheFactory", PerVmServerConfigCacheFactory.class.getName(), Messages.getString("ConnectionProperties.serverConfigCacheFactory"), "5.1.1", PERFORMANCE_CATEGORY, 12);
    private BooleanConnectionProperty cacheServerConfiguration = new BooleanConnectionProperty("cacheServerConfiguration", false, Messages.getString("ConnectionProperties.cacheServerConfiguration"), "3.1.5", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private IntegerConnectionProperty callableStatementCacheSize = new IntegerConnectionProperty("callableStmtCacheSize", 100, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.callableStmtCacheSize"), "3.1.2", PERFORMANCE_CATEGORY, 5);
    private BooleanConnectionProperty capitalizeTypeNames = new BooleanConnectionProperty("capitalizeTypeNames", true, Messages.getString("ConnectionProperties.capitalizeTypeNames"), "2.0.7", MISC_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty characterEncoding = new StringConnectionProperty("characterEncoding", null, Messages.getString("ConnectionProperties.characterEncoding"), "1.1g", MISC_CATEGORY, 5);
    private String characterEncodingAsString = null;
    protected boolean characterEncodingIsAliasForSjis = false;
    private StringConnectionProperty characterSetResults = new StringConnectionProperty("characterSetResults", null, Messages.getString("ConnectionProperties.characterSetResults"), "3.0.13", MISC_CATEGORY, 6);
    private StringConnectionProperty connectionAttributes = new StringConnectionProperty("connectionAttributes", null, Messages.getString("ConnectionProperties.connectionAttributes"), "5.1.25", MISC_CATEGORY, 7);
    private StringConnectionProperty clientInfoProvider = new StringConnectionProperty("clientInfoProvider", "com.mysql.jdbc.JDBC4CommentClientInfoProvider", Messages.getString("ConnectionProperties.clientInfoProvider"), "5.1.0", DEBUGING_PROFILING_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty clobberStreamingResults = new BooleanConnectionProperty("clobberStreamingResults", false, Messages.getString("ConnectionProperties.clobberStreamingResults"), "3.0.9", MISC_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty clobCharacterEncoding = new StringConnectionProperty("clobCharacterEncoding", null, Messages.getString("ConnectionProperties.clobCharacterEncoding"), "5.0.0", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty compensateOnDuplicateKeyUpdateCounts = new BooleanConnectionProperty("compensateOnDuplicateKeyUpdateCounts", false, Messages.getString("ConnectionProperties.compensateOnDuplicateKeyUpdateCounts"), "5.1.7", MISC_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty connectionCollation = new StringConnectionProperty("connectionCollation", null, Messages.getString("ConnectionProperties.connectionCollation"), "3.0.13", MISC_CATEGORY, 7);
    private StringConnectionProperty connectionLifecycleInterceptors = new StringConnectionProperty("connectionLifecycleInterceptors", null, Messages.getString("ConnectionProperties.connectionLifecycleInterceptors"), "5.1.4", CONNECTION_AND_AUTH_CATEGORY, Integer.MAX_VALUE);
    private IntegerConnectionProperty connectTimeout = new IntegerConnectionProperty("connectTimeout", 0, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.connectTimeout"), "3.0.1", CONNECTION_AND_AUTH_CATEGORY, 9);
    private BooleanConnectionProperty continueBatchOnError = new BooleanConnectionProperty("continueBatchOnError", true, Messages.getString("ConnectionProperties.continueBatchOnError"), "3.0.3", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty createDatabaseIfNotExist = new BooleanConnectionProperty("createDatabaseIfNotExist", false, Messages.getString("ConnectionProperties.createDatabaseIfNotExist"), "3.1.9", MISC_CATEGORY, Integer.MIN_VALUE);
    private IntegerConnectionProperty defaultFetchSize = new IntegerConnectionProperty("defaultFetchSize", 0, Messages.getString("ConnectionProperties.defaultFetchSize"), "3.1.9", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty detectServerPreparedStmts = new BooleanConnectionProperty("useServerPrepStmts", false, Messages.getString("ConnectionProperties.useServerPrepStmts"), "3.1.0", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty dontTrackOpenResources = new BooleanConnectionProperty("dontTrackOpenResources", false, Messages.getString("ConnectionProperties.dontTrackOpenResources"), "3.1.7", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty dumpQueriesOnException = new BooleanConnectionProperty("dumpQueriesOnException", false, Messages.getString("ConnectionProperties.dumpQueriesOnException"), "3.1.3", DEBUGING_PROFILING_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty dynamicCalendars = new BooleanConnectionProperty("dynamicCalendars", false, Messages.getString("ConnectionProperties.dynamicCalendars"), "3.1.5", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty elideSetAutoCommits = new BooleanConnectionProperty("elideSetAutoCommits", false, Messages.getString("ConnectionProperties.eliseSetAutoCommit"), "3.1.3", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty emptyStringsConvertToZero = new BooleanConnectionProperty("emptyStringsConvertToZero", true, Messages.getString("ConnectionProperties.emptyStringsConvertToZero"), "3.1.8", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty emulateLocators = new BooleanConnectionProperty("emulateLocators", false, Messages.getString("ConnectionProperties.emulateLocators"), "3.1.0", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty emulateUnsupportedPstmts = new BooleanConnectionProperty("emulateUnsupportedPstmts", true, Messages.getString("ConnectionProperties.emulateUnsupportedPstmts"), "3.1.7", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty enablePacketDebug = new BooleanConnectionProperty("enablePacketDebug", false, Messages.getString("ConnectionProperties.enablePacketDebug"), "3.1.3", DEBUGING_PROFILING_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty enableQueryTimeouts = new BooleanConnectionProperty("enableQueryTimeouts", true, Messages.getString("ConnectionProperties.enableQueryTimeouts"), "5.0.6", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty explainSlowQueries = new BooleanConnectionProperty("explainSlowQueries", false, Messages.getString("ConnectionProperties.explainSlowQueries"), "3.1.2", DEBUGING_PROFILING_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty exceptionInterceptors = new StringConnectionProperty("exceptionInterceptors", null, Messages.getString("ConnectionProperties.exceptionInterceptors"), "5.1.8", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty failOverReadOnly = new BooleanConnectionProperty("failOverReadOnly", true, Messages.getString("ConnectionProperties.failoverReadOnly"), "3.0.12", HA_CATEGORY, 2);
    private BooleanConnectionProperty gatherPerformanceMetrics = new BooleanConnectionProperty("gatherPerfMetrics", false, Messages.getString("ConnectionProperties.gatherPerfMetrics"), "3.1.2", DEBUGING_PROFILING_CATEGORY, 1);
    private BooleanConnectionProperty generateSimpleParameterMetadata = new BooleanConnectionProperty("generateSimpleParameterMetadata", false, Messages.getString("ConnectionProperties.generateSimpleParameterMetadata"), "5.0.5", MISC_CATEGORY, Integer.MIN_VALUE);
    private boolean highAvailabilityAsBoolean = false;
    private BooleanConnectionProperty holdResultsOpenOverStatementClose = new BooleanConnectionProperty("holdResultsOpenOverStatementClose", false, Messages.getString("ConnectionProperties.holdRSOpenOverStmtClose"), "3.1.7", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty includeInnodbStatusInDeadlockExceptions = new BooleanConnectionProperty("includeInnodbStatusInDeadlockExceptions", false, Messages.getString("ConnectionProperties.includeInnodbStatusInDeadlockExceptions"), "5.0.7", DEBUGING_PROFILING_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty includeThreadDumpInDeadlockExceptions = new BooleanConnectionProperty("includeThreadDumpInDeadlockExceptions", false, Messages.getString("ConnectionProperties.includeThreadDumpInDeadlockExceptions"), "5.1.15", DEBUGING_PROFILING_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty includeThreadNamesAsStatementComment = new BooleanConnectionProperty("includeThreadNamesAsStatementComment", false, Messages.getString("ConnectionProperties.includeThreadNamesAsStatementComment"), "5.1.15", DEBUGING_PROFILING_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty ignoreNonTxTables = new BooleanConnectionProperty("ignoreNonTxTables", false, Messages.getString("ConnectionProperties.ignoreNonTxTables"), "3.0.9", MISC_CATEGORY, Integer.MIN_VALUE);
    private IntegerConnectionProperty initialTimeout = new IntegerConnectionProperty("initialTimeout", 2, 1, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.initialTimeout"), "1.1", HA_CATEGORY, 5);
    private BooleanConnectionProperty isInteractiveClient = new BooleanConnectionProperty("interactiveClient", false, Messages.getString("ConnectionProperties.interactiveClient"), "3.1.0", CONNECTION_AND_AUTH_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty jdbcCompliantTruncation = new BooleanConnectionProperty("jdbcCompliantTruncation", true, Messages.getString("ConnectionProperties.jdbcCompliantTruncation"), "3.1.2", MISC_CATEGORY, Integer.MIN_VALUE);
    private boolean jdbcCompliantTruncationForReads = this.jdbcCompliantTruncation.getValueAsBoolean();
    protected MemorySizeConnectionProperty largeRowSizeThreshold = new MemorySizeConnectionProperty("largeRowSizeThreshold", 2048, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.largeRowSizeThreshold"), "5.1.1", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty loadBalanceStrategy = new StringConnectionProperty("loadBalanceStrategy", "random", null, Messages.getString("ConnectionProperties.loadBalanceStrategy"), "5.0.6", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty serverAffinityOrder = new StringConnectionProperty(ServerAffinityStrategy.AFFINITY_ORDER, "", null, Messages.getString("ConnectionProperties.serverAffinityOrder"), "5.1.4.", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private IntegerConnectionProperty loadBalanceBlacklistTimeout = new IntegerConnectionProperty(LoadBalancedConnectionProxy.BLACKLIST_TIMEOUT_PROPERTY_KEY, 0, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.loadBalanceBlacklistTimeout"), "5.1.0", MISC_CATEGORY, Integer.MIN_VALUE);
    private IntegerConnectionProperty loadBalancePingTimeout = new IntegerConnectionProperty("loadBalancePingTimeout", 0, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.loadBalancePingTimeout"), "5.1.13", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty loadBalanceValidateConnectionOnSwapServer = new BooleanConnectionProperty("loadBalanceValidateConnectionOnSwapServer", false, Messages.getString("ConnectionProperties.loadBalanceValidateConnectionOnSwapServer"), "5.1.13", MISC_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty loadBalanceConnectionGroup = new StringConnectionProperty("loadBalanceConnectionGroup", null, Messages.getString("ConnectionProperties.loadBalanceConnectionGroup"), "5.1.13", MISC_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty loadBalanceExceptionChecker = new StringConnectionProperty("loadBalanceExceptionChecker", "com.mysql.jdbc.StandardLoadBalanceExceptionChecker", null, Messages.getString("ConnectionProperties.loadBalanceExceptionChecker"), "5.1.13", MISC_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty loadBalanceSQLStateFailover = new StringConnectionProperty("loadBalanceSQLStateFailover", null, Messages.getString("ConnectionProperties.loadBalanceSQLStateFailover"), "5.1.13", MISC_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty loadBalanceSQLExceptionSubclassFailover = new StringConnectionProperty("loadBalanceSQLExceptionSubclassFailover", null, Messages.getString("ConnectionProperties.loadBalanceSQLExceptionSubclassFailover"), "5.1.13", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty loadBalanceEnableJMX = new BooleanConnectionProperty("loadBalanceEnableJMX", false, Messages.getString("ConnectionProperties.loadBalanceEnableJMX"), "5.1.13", MISC_CATEGORY, Integer.MAX_VALUE);
    private IntegerConnectionProperty loadBalanceHostRemovalGracePeriod = new IntegerConnectionProperty(LoadBalancedConnectionProxy.HOST_REMOVAL_GRACE_PERIOD_PROPERTY_KEY, 15000, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.loadBalanceHostRemovalGracePeriod"), "5.1.39", MISC_CATEGORY, Integer.MAX_VALUE);
    private StringConnectionProperty loadBalanceAutoCommitStatementRegex = new StringConnectionProperty("loadBalanceAutoCommitStatementRegex", null, Messages.getString("ConnectionProperties.loadBalanceAutoCommitStatementRegex"), "5.1.15", MISC_CATEGORY, Integer.MIN_VALUE);
    private IntegerConnectionProperty loadBalanceAutoCommitStatementThreshold = new IntegerConnectionProperty("loadBalanceAutoCommitStatementThreshold", 0, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.loadBalanceAutoCommitStatementThreshold"), "5.1.15", MISC_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty localSocketAddress = new StringConnectionProperty("localSocketAddress", null, Messages.getString("ConnectionProperties.localSocketAddress"), "5.0.5", CONNECTION_AND_AUTH_CATEGORY, Integer.MIN_VALUE);
    private MemorySizeConnectionProperty locatorFetchBufferSize = new MemorySizeConnectionProperty("locatorFetchBufferSize", 1048576, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.locatorFetchBufferSize"), "3.2.1", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty loggerClassName = new StringConnectionProperty("logger", STANDARD_LOGGER_NAME, Messages.getString("ConnectionProperties.logger", new Object[]{Log.class.getName(), STANDARD_LOGGER_NAME}), "3.1.1", DEBUGING_PROFILING_CATEGORY, 0);
    private BooleanConnectionProperty logSlowQueries = new BooleanConnectionProperty("logSlowQueries", false, Messages.getString("ConnectionProperties.logSlowQueries"), "3.1.2", DEBUGING_PROFILING_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty logXaCommands = new BooleanConnectionProperty("logXaCommands", false, Messages.getString("ConnectionProperties.logXaCommands"), "5.0.5", DEBUGING_PROFILING_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty maintainTimeStats = new BooleanConnectionProperty("maintainTimeStats", true, Messages.getString("ConnectionProperties.maintainTimeStats"), "3.1.9", PERFORMANCE_CATEGORY, Integer.MAX_VALUE);
    private boolean maintainTimeStatsAsBoolean = true;
    private IntegerConnectionProperty maxQuerySizeToLog = new IntegerConnectionProperty("maxQuerySizeToLog", 2048, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.maxQuerySizeToLog"), "3.1.3", DEBUGING_PROFILING_CATEGORY, 4);
    private IntegerConnectionProperty maxReconnects = new IntegerConnectionProperty("maxReconnects", 3, 1, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.maxReconnects"), "1.1", HA_CATEGORY, 4);
    private IntegerConnectionProperty retriesAllDown = new IntegerConnectionProperty("retriesAllDown", 120, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.retriesAllDown"), "5.1.6", HA_CATEGORY, 4);
    private IntegerConnectionProperty maxRows = new IntegerConnectionProperty("maxRows", -1, -1, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.maxRows"), Messages.getString("ConnectionProperties.allVersions"), MISC_CATEGORY, Integer.MIN_VALUE);
    private int maxRowsAsInt = -1;
    private IntegerConnectionProperty metadataCacheSize = new IntegerConnectionProperty("metadataCacheSize", 50, 1, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.metadataCacheSize"), "3.1.1", PERFORMANCE_CATEGORY, 5);
    private IntegerConnectionProperty netTimeoutForStreamingResults = new IntegerConnectionProperty("netTimeoutForStreamingResults", 600, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.netTimeoutForStreamingResults"), "5.1.0", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty noAccessToProcedureBodies = new BooleanConnectionProperty("noAccessToProcedureBodies", false, "When determining procedure parameter types for CallableStatements, and the connected user  can't access procedure bodies through \"SHOW CREATE PROCEDURE\" or select on mysql.proc  should the driver instead create basic metadata (all parameters reported as IN VARCHARs, but allowing registerOutParameter() to be called on them anyway) instead of throwing an exception?", "5.0.3", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty noDatetimeStringSync = new BooleanConnectionProperty("noDatetimeStringSync", false, Messages.getString("ConnectionProperties.noDatetimeStringSync"), "3.1.7", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty noTimezoneConversionForTimeType = new BooleanConnectionProperty("noTimezoneConversionForTimeType", false, Messages.getString("ConnectionProperties.noTzConversionForTimeType"), "5.0.0", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty noTimezoneConversionForDateType = new BooleanConnectionProperty("noTimezoneConversionForDateType", true, Messages.getString("ConnectionProperties.noTzConversionForDateType"), "5.1.35", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty cacheDefaultTimezone = new BooleanConnectionProperty("cacheDefaultTimezone", true, Messages.getString("ConnectionProperties.cacheDefaultTimezone"), "5.1.35", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty nullCatalogMeansCurrent = new BooleanConnectionProperty("nullCatalogMeansCurrent", true, Messages.getString("ConnectionProperties.nullCatalogMeansCurrent"), "3.1.8", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty nullNamePatternMatchesAll = new BooleanConnectionProperty("nullNamePatternMatchesAll", true, Messages.getString("ConnectionProperties.nullNamePatternMatchesAll"), "3.1.8", MISC_CATEGORY, Integer.MIN_VALUE);
    private IntegerConnectionProperty packetDebugBufferSize = new IntegerConnectionProperty("packetDebugBufferSize", 20, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.packetDebugBufferSize"), "3.1.3", DEBUGING_PROFILING_CATEGORY, 7);
    private BooleanConnectionProperty padCharsWithSpace = new BooleanConnectionProperty("padCharsWithSpace", false, Messages.getString("ConnectionProperties.padCharsWithSpace"), "5.0.6", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty paranoid = new BooleanConnectionProperty("paranoid", false, Messages.getString("ConnectionProperties.paranoid"), "3.0.1", SECURITY_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty pedantic = new BooleanConnectionProperty("pedantic", false, Messages.getString("ConnectionProperties.pedantic"), "3.0.0", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty pinGlobalTxToPhysicalConnection = new BooleanConnectionProperty("pinGlobalTxToPhysicalConnection", false, Messages.getString("ConnectionProperties.pinGlobalTxToPhysicalConnection"), "5.0.1", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty populateInsertRowWithDefaultValues = new BooleanConnectionProperty("populateInsertRowWithDefaultValues", false, Messages.getString("ConnectionProperties.populateInsertRowWithDefaultValues"), "5.0.5", MISC_CATEGORY, Integer.MIN_VALUE);
    private IntegerConnectionProperty preparedStatementCacheSize = new IntegerConnectionProperty("prepStmtCacheSize", 25, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.prepStmtCacheSize"), "3.0.10", PERFORMANCE_CATEGORY, 10);
    private IntegerConnectionProperty preparedStatementCacheSqlLimit = new IntegerConnectionProperty("prepStmtCacheSqlLimit", 256, 1, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.prepStmtCacheSqlLimit"), "3.0.10", PERFORMANCE_CATEGORY, 11);
    private StringConnectionProperty parseInfoCacheFactory = new StringConnectionProperty("parseInfoCacheFactory", PerConnectionLRUFactory.class.getName(), Messages.getString("ConnectionProperties.parseInfoCacheFactory"), "5.1.1", PERFORMANCE_CATEGORY, 12);
    private BooleanConnectionProperty processEscapeCodesForPrepStmts = new BooleanConnectionProperty("processEscapeCodesForPrepStmts", true, Messages.getString("ConnectionProperties.processEscapeCodesForPrepStmts"), "3.1.12", MISC_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty profilerEventHandler = new StringConnectionProperty("profilerEventHandler", "com.mysql.jdbc.profiler.LoggingProfilerEventHandler", Messages.getString("ConnectionProperties.profilerEventHandler"), "5.1.6", DEBUGING_PROFILING_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty profileSql = new StringConnectionProperty("profileSql", null, Messages.getString("ConnectionProperties.profileSqlDeprecated"), "2.0.14", DEBUGING_PROFILING_CATEGORY, 3);
    private BooleanConnectionProperty profileSQL = new BooleanConnectionProperty("profileSQL", false, Messages.getString("ConnectionProperties.profileSQL"), "3.1.0", DEBUGING_PROFILING_CATEGORY, 1);
    private boolean profileSQLAsBoolean = false;
    private StringConnectionProperty propertiesTransform = new StringConnectionProperty(NonRegisteringDriver.PROPERTIES_TRANSFORM_KEY, null, Messages.getString("ConnectionProperties.connectionPropertiesTransform"), "3.1.4", CONNECTION_AND_AUTH_CATEGORY, Integer.MIN_VALUE);
    private IntegerConnectionProperty queriesBeforeRetryMaster = new IntegerConnectionProperty("queriesBeforeRetryMaster", 50, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.queriesBeforeRetryMaster"), "3.0.2", HA_CATEGORY, 7);
    private BooleanConnectionProperty queryTimeoutKillsConnection = new BooleanConnectionProperty("queryTimeoutKillsConnection", false, Messages.getString("ConnectionProperties.queryTimeoutKillsConnection"), "5.1.9", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty reconnectAtTxEnd = new BooleanConnectionProperty("reconnectAtTxEnd", false, Messages.getString("ConnectionProperties.reconnectAtTxEnd"), "3.0.10", HA_CATEGORY, 4);
    private boolean reconnectTxAtEndAsBoolean = false;
    private BooleanConnectionProperty relaxAutoCommit = new BooleanConnectionProperty("relaxAutoCommit", false, Messages.getString("ConnectionProperties.relaxAutoCommit"), "2.0.13", MISC_CATEGORY, Integer.MIN_VALUE);
    private IntegerConnectionProperty reportMetricsIntervalMillis = new IntegerConnectionProperty("reportMetricsIntervalMillis", 30000, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.reportMetricsIntervalMillis"), "3.1.2", DEBUGING_PROFILING_CATEGORY, 3);
    private BooleanConnectionProperty requireSSL = new BooleanConnectionProperty("requireSSL", false, Messages.getString("ConnectionProperties.requireSSL"), "3.1.0", SECURITY_CATEGORY, 3);
    private StringConnectionProperty resourceId = new StringConnectionProperty("resourceId", null, Messages.getString("ConnectionProperties.resourceId"), "5.0.1", HA_CATEGORY, Integer.MIN_VALUE);
    private IntegerConnectionProperty resultSetSizeThreshold = new IntegerConnectionProperty("resultSetSizeThreshold", 100, Messages.getString("ConnectionProperties.resultSetSizeThreshold"), "5.0.5", DEBUGING_PROFILING_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty retainStatementAfterResultSetClose = new BooleanConnectionProperty("retainStatementAfterResultSetClose", false, Messages.getString("ConnectionProperties.retainStatementAfterResultSetClose"), "3.1.11", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty rewriteBatchedStatements = new BooleanConnectionProperty("rewriteBatchedStatements", false, Messages.getString("ConnectionProperties.rewriteBatchedStatements"), "3.1.13", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty rollbackOnPooledClose = new BooleanConnectionProperty("rollbackOnPooledClose", true, Messages.getString("ConnectionProperties.rollbackOnPooledClose"), "3.0.15", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty roundRobinLoadBalance = new BooleanConnectionProperty("roundRobinLoadBalance", false, Messages.getString("ConnectionProperties.roundRobinLoadBalance"), "3.1.2", HA_CATEGORY, 5);
    private BooleanConnectionProperty runningCTS13 = new BooleanConnectionProperty("runningCTS13", false, Messages.getString("ConnectionProperties.runningCTS13"), "3.1.7", MISC_CATEGORY, Integer.MIN_VALUE);
    private IntegerConnectionProperty secondsBeforeRetryMaster = new IntegerConnectionProperty("secondsBeforeRetryMaster", 30, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.secondsBeforeRetryMaster"), "3.0.2", HA_CATEGORY, 8);
    private IntegerConnectionProperty selfDestructOnPingSecondsLifetime = new IntegerConnectionProperty("selfDestructOnPingSecondsLifetime", 0, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.selfDestructOnPingSecondsLifetime"), "5.1.6", HA_CATEGORY, Integer.MAX_VALUE);
    private IntegerConnectionProperty selfDestructOnPingMaxOperations = new IntegerConnectionProperty("selfDestructOnPingMaxOperations", 0, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.selfDestructOnPingMaxOperations"), "5.1.6", HA_CATEGORY, Integer.MAX_VALUE);
    private BooleanConnectionProperty replicationEnableJMX = new BooleanConnectionProperty("replicationEnableJMX", false, Messages.getString("ConnectionProperties.loadBalanceEnableJMX"), "5.1.27", HA_CATEGORY, Integer.MAX_VALUE);
    private StringConnectionProperty serverTimezone = new StringConnectionProperty("serverTimezone", null, Messages.getString("ConnectionProperties.serverTimezone"), "3.0.2", MISC_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty sessionVariables = new StringConnectionProperty("sessionVariables", null, Messages.getString("ConnectionProperties.sessionVariables"), "3.1.8", MISC_CATEGORY, Integer.MAX_VALUE);
    private IntegerConnectionProperty slowQueryThresholdMillis = new IntegerConnectionProperty("slowQueryThresholdMillis", 2000, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.slowQueryThresholdMillis"), "3.1.2", DEBUGING_PROFILING_CATEGORY, 9);
    private LongConnectionProperty slowQueryThresholdNanos = new LongConnectionProperty("slowQueryThresholdNanos", 0, Messages.getString("ConnectionProperties.slowQueryThresholdNanos"), "5.0.7", DEBUGING_PROFILING_CATEGORY, 10);
    private StringConnectionProperty socketFactoryClassName = new StringConnectionProperty("socketFactory", StandardSocketFactory.class.getName(), Messages.getString("ConnectionProperties.socketFactory"), "3.0.3", CONNECTION_AND_AUTH_CATEGORY, 4);
    private StringConnectionProperty socksProxyHost = new StringConnectionProperty("socksProxyHost", null, Messages.getString("ConnectionProperties.socksProxyHost"), "5.1.34", NETWORK_CATEGORY, 1);
    private IntegerConnectionProperty socksProxyPort = new IntegerConnectionProperty("socksProxyPort", SocksProxySocketFactory.SOCKS_DEFAULT_PORT, 0, SupportMenu.USER_MASK, Messages.getString("ConnectionProperties.socksProxyPort"), "5.1.34", NETWORK_CATEGORY, 2);
    private IntegerConnectionProperty socketTimeout = new IntegerConnectionProperty("socketTimeout", 0, 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.socketTimeout"), "3.0.1", CONNECTION_AND_AUTH_CATEGORY, 10);
    private StringConnectionProperty statementInterceptors = new StringConnectionProperty("statementInterceptors", null, Messages.getString("ConnectionProperties.statementInterceptors"), "5.1.1", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty strictFloatingPoint = new BooleanConnectionProperty("strictFloatingPoint", false, Messages.getString("ConnectionProperties.strictFloatingPoint"), "3.0.0", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty strictUpdates = new BooleanConnectionProperty("strictUpdates", true, Messages.getString("ConnectionProperties.strictUpdates"), "3.0.4", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty overrideSupportsIntegrityEnhancementFacility = new BooleanConnectionProperty("overrideSupportsIntegrityEnhancementFacility", false, Messages.getString("ConnectionProperties.overrideSupportsIEF"), "3.1.12", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty tcpNoDelay = new BooleanConnectionProperty(StandardSocketFactory.TCP_NO_DELAY_PROPERTY_NAME, Boolean.valueOf("true").booleanValue(), Messages.getString("ConnectionProperties.tcpNoDelay"), "5.0.7", NETWORK_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty tcpKeepAlive = new BooleanConnectionProperty(StandardSocketFactory.TCP_KEEP_ALIVE_PROPERTY_NAME, Boolean.valueOf("true").booleanValue(), Messages.getString("ConnectionProperties.tcpKeepAlive"), "5.0.7", NETWORK_CATEGORY, Integer.MIN_VALUE);
    private IntegerConnectionProperty tcpRcvBuf = new IntegerConnectionProperty(StandardSocketFactory.TCP_RCV_BUF_PROPERTY_NAME, Integer.parseInt("0"), 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.tcpSoRcvBuf"), "5.0.7", NETWORK_CATEGORY, Integer.MIN_VALUE);
    private IntegerConnectionProperty tcpSndBuf = new IntegerConnectionProperty(StandardSocketFactory.TCP_SND_BUF_PROPERTY_NAME, Integer.parseInt("0"), 0, Integer.MAX_VALUE, Messages.getString("ConnectionProperties.tcpSoSndBuf"), "5.0.7", NETWORK_CATEGORY, Integer.MIN_VALUE);
    private IntegerConnectionProperty tcpTrafficClass = new IntegerConnectionProperty(StandardSocketFactory.TCP_TRAFFIC_CLASS_PROPERTY_NAME, Integer.parseInt("0"), 0, 255, Messages.getString("ConnectionProperties.tcpTrafficClass"), "5.0.7", NETWORK_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty tinyInt1isBit = new BooleanConnectionProperty("tinyInt1isBit", true, Messages.getString("ConnectionProperties.tinyInt1isBit"), "3.0.16", MISC_CATEGORY, Integer.MIN_VALUE);
    protected BooleanConnectionProperty traceProtocol = new BooleanConnectionProperty("traceProtocol", false, Messages.getString("ConnectionProperties.traceProtocol"), "3.1.2", DEBUGING_PROFILING_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty treatUtilDateAsTimestamp = new BooleanConnectionProperty("treatUtilDateAsTimestamp", true, Messages.getString("ConnectionProperties.treatUtilDateAsTimestamp"), "5.0.5", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty transformedBitIsBoolean = new BooleanConnectionProperty("transformedBitIsBoolean", false, Messages.getString("ConnectionProperties.transformedBitIsBoolean"), "3.1.9", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useBlobToStoreUTF8OutsideBMP = new BooleanConnectionProperty("useBlobToStoreUTF8OutsideBMP", false, Messages.getString("ConnectionProperties.useBlobToStoreUTF8OutsideBMP"), "5.1.3", MISC_CATEGORY, 128);
    private StringConnectionProperty utf8OutsideBmpExcludedColumnNamePattern = new StringConnectionProperty("utf8OutsideBmpExcludedColumnNamePattern", null, Messages.getString("ConnectionProperties.utf8OutsideBmpExcludedColumnNamePattern"), "5.1.3", MISC_CATEGORY, 129);
    private StringConnectionProperty utf8OutsideBmpIncludedColumnNamePattern = new StringConnectionProperty("utf8OutsideBmpIncludedColumnNamePattern", null, Messages.getString("ConnectionProperties.utf8OutsideBmpIncludedColumnNamePattern"), "5.1.3", MISC_CATEGORY, 129);
    private BooleanConnectionProperty useCompression = new BooleanConnectionProperty("useCompression", false, Messages.getString("ConnectionProperties.useCompression"), "3.0.17", CONNECTION_AND_AUTH_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useColumnNamesInFindColumn = new BooleanConnectionProperty("useColumnNamesInFindColumn", false, Messages.getString("ConnectionProperties.useColumnNamesInFindColumn"), "5.1.7", MISC_CATEGORY, Integer.MAX_VALUE);
    private StringConnectionProperty useConfigs = new StringConnectionProperty(NonRegisteringDriver.USE_CONFIG_PROPERTY_KEY, null, Messages.getString("ConnectionProperties.useConfigs"), "3.1.5", CONNECTION_AND_AUTH_CATEGORY, Integer.MAX_VALUE);
    private BooleanConnectionProperty useCursorFetch = new BooleanConnectionProperty("useCursorFetch", false, Messages.getString("ConnectionProperties.useCursorFetch"), "5.0.0", PERFORMANCE_CATEGORY, Integer.MAX_VALUE);
    private BooleanConnectionProperty useDynamicCharsetInfo = new BooleanConnectionProperty("useDynamicCharsetInfo", true, Messages.getString("ConnectionProperties.useDynamicCharsetInfo"), "5.0.6", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useDirectRowUnpack = new BooleanConnectionProperty("useDirectRowUnpack", true, "Use newer result set row unpacking code that skips a copy from network buffers  to a MySQL packet instance and instead reads directly into the result set row data buffers.", "5.1.1", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useFastIntParsing = new BooleanConnectionProperty("useFastIntParsing", true, Messages.getString("ConnectionProperties.useFastIntParsing"), "3.1.4", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useFastDateParsing = new BooleanConnectionProperty("useFastDateParsing", true, Messages.getString("ConnectionProperties.useFastDateParsing"), "5.0.5", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useHostsInPrivileges = new BooleanConnectionProperty("useHostsInPrivileges", true, Messages.getString("ConnectionProperties.useHostsInPrivileges"), "3.0.2", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useInformationSchema = new BooleanConnectionProperty("useInformationSchema", false, Messages.getString("ConnectionProperties.useInformationSchema"), "5.0.0", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useJDBCCompliantTimezoneShift = new BooleanConnectionProperty("useJDBCCompliantTimezoneShift", false, Messages.getString("ConnectionProperties.useJDBCCompliantTimezoneShift"), "5.0.0", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useLocalSessionState = new BooleanConnectionProperty("useLocalSessionState", false, Messages.getString("ConnectionProperties.useLocalSessionState"), "3.1.7", PERFORMANCE_CATEGORY, 5);
    private BooleanConnectionProperty useLocalTransactionState = new BooleanConnectionProperty("useLocalTransactionState", false, Messages.getString("ConnectionProperties.useLocalTransactionState"), "5.1.7", PERFORMANCE_CATEGORY, 6);
    private BooleanConnectionProperty useLegacyDatetimeCode = new BooleanConnectionProperty("useLegacyDatetimeCode", true, Messages.getString("ConnectionProperties.useLegacyDatetimeCode"), "5.1.6", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty sendFractionalSeconds = new BooleanConnectionProperty("sendFractionalSeconds", true, Messages.getString("ConnectionProperties.sendFractionalSeconds"), "5.1.37", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useNanosForElapsedTime = new BooleanConnectionProperty("useNanosForElapsedTime", false, Messages.getString("ConnectionProperties.useNanosForElapsedTime"), "5.0.7", DEBUGING_PROFILING_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useOldAliasMetadataBehavior = new BooleanConnectionProperty("useOldAliasMetadataBehavior", false, Messages.getString("ConnectionProperties.useOldAliasMetadataBehavior"), "5.0.4", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useOldUTF8Behavior = new BooleanConnectionProperty("useOldUTF8Behavior", false, Messages.getString("ConnectionProperties.useOldUtf8Behavior"), "3.1.6", MISC_CATEGORY, Integer.MIN_VALUE);
    private boolean useOldUTF8BehaviorAsBoolean = false;
    private BooleanConnectionProperty useOnlyServerErrorMessages = new BooleanConnectionProperty("useOnlyServerErrorMessages", true, Messages.getString("ConnectionProperties.useOnlyServerErrorMessages"), "3.0.15", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useReadAheadInput = new BooleanConnectionProperty("useReadAheadInput", true, Messages.getString("ConnectionProperties.useReadAheadInput"), "3.1.5", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useSqlStateCodes = new BooleanConnectionProperty("useSqlStateCodes", true, Messages.getString("ConnectionProperties.useSqlStateCodes"), "3.1.3", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useSSL = new BooleanConnectionProperty("useSSL", false, Messages.getString("ConnectionProperties.useSSL"), "3.0.2", SECURITY_CATEGORY, 2);
    private BooleanConnectionProperty useSSPSCompatibleTimezoneShift = new BooleanConnectionProperty("useSSPSCompatibleTimezoneShift", false, Messages.getString("ConnectionProperties.useSSPSCompatibleTimezoneShift"), "5.0.5", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useStreamLengthsInPrepStmts = new BooleanConnectionProperty("useStreamLengthsInPrepStmts", true, Messages.getString("ConnectionProperties.useStreamLengthsInPrepStmts"), "3.0.2", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useTimezone = new BooleanConnectionProperty("useTimezone", false, Messages.getString("ConnectionProperties.useTimezone"), "3.0.2", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useUltraDevWorkAround = new BooleanConnectionProperty("ultraDevHack", false, Messages.getString("ConnectionProperties.ultraDevHack"), "2.0.3", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useUnbufferedInput = new BooleanConnectionProperty("useUnbufferedInput", true, Messages.getString("ConnectionProperties.useUnbufferedInput"), "3.0.11", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useUnicode = new BooleanConnectionProperty("useUnicode", true, Messages.getString("ConnectionProperties.useUnicode"), "1.1g", MISC_CATEGORY, 0);
    private boolean useUnicodeAsBoolean = true;
    private BooleanConnectionProperty useUsageAdvisor = new BooleanConnectionProperty("useUsageAdvisor", false, Messages.getString("ConnectionProperties.useUsageAdvisor"), "3.1.1", DEBUGING_PROFILING_CATEGORY, 10);
    private boolean useUsageAdvisorAsBoolean = false;
    private BooleanConnectionProperty yearIsDateType = new BooleanConnectionProperty("yearIsDateType", true, Messages.getString("ConnectionProperties.yearIsDateType"), "3.1.9", MISC_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty zeroDateTimeBehavior = new StringConnectionProperty("zeroDateTimeBehavior", ZERO_DATETIME_BEHAVIOR_EXCEPTION, new String[]{ZERO_DATETIME_BEHAVIOR_EXCEPTION, ZERO_DATETIME_BEHAVIOR_ROUND, ZERO_DATETIME_BEHAVIOR_CONVERT_TO_NULL}, Messages.getString("ConnectionProperties.zeroDateTimeBehavior", new Object[]{ZERO_DATETIME_BEHAVIOR_EXCEPTION, ZERO_DATETIME_BEHAVIOR_ROUND, ZERO_DATETIME_BEHAVIOR_CONVERT_TO_NULL}), "3.1.4", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useJvmCharsetConverters = new BooleanConnectionProperty("useJvmCharsetConverters", false, Messages.getString("ConnectionProperties.useJvmCharsetConverters"), "5.0.1", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty useGmtMillisForDatetimes = new BooleanConnectionProperty("useGmtMillisForDatetimes", false, Messages.getString("ConnectionProperties.useGmtMillisForDatetimes"), "3.1.12", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty dumpMetadataOnColumnNotFound = new BooleanConnectionProperty("dumpMetadataOnColumnNotFound", false, Messages.getString("ConnectionProperties.dumpMetadataOnColumnNotFound"), "3.1.13", DEBUGING_PROFILING_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty clientCertificateKeyStoreUrl = new StringConnectionProperty("clientCertificateKeyStoreUrl", null, Messages.getString("ConnectionProperties.clientCertificateKeyStoreUrl"), "5.1.0", SECURITY_CATEGORY, 5);
    private StringConnectionProperty trustCertificateKeyStoreUrl = new StringConnectionProperty("trustCertificateKeyStoreUrl", null, Messages.getString("ConnectionProperties.trustCertificateKeyStoreUrl"), "5.1.0", SECURITY_CATEGORY, 8);
    private StringConnectionProperty clientCertificateKeyStoreType = new StringConnectionProperty("clientCertificateKeyStoreType", "JKS", Messages.getString("ConnectionProperties.clientCertificateKeyStoreType"), "5.1.0", SECURITY_CATEGORY, 6);
    private StringConnectionProperty clientCertificateKeyStorePassword = new StringConnectionProperty("clientCertificateKeyStorePassword", null, Messages.getString("ConnectionProperties.clientCertificateKeyStorePassword"), "5.1.0", SECURITY_CATEGORY, 7);
    private StringConnectionProperty trustCertificateKeyStoreType = new StringConnectionProperty("trustCertificateKeyStoreType", "JKS", Messages.getString("ConnectionProperties.trustCertificateKeyStoreType"), "5.1.0", SECURITY_CATEGORY, 9);
    private StringConnectionProperty trustCertificateKeyStorePassword = new StringConnectionProperty("trustCertificateKeyStorePassword", null, Messages.getString("ConnectionProperties.trustCertificateKeyStorePassword"), "5.1.0", SECURITY_CATEGORY, 10);
    private BooleanConnectionProperty verifyServerCertificate = new BooleanConnectionProperty("verifyServerCertificate", true, Messages.getString("ConnectionProperties.verifyServerCertificate"), "5.1.6", SECURITY_CATEGORY, 4);
    private BooleanConnectionProperty useAffectedRows = new BooleanConnectionProperty("useAffectedRows", false, Messages.getString("ConnectionProperties.useAffectedRows"), "5.1.7", MISC_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty passwordCharacterEncoding = new StringConnectionProperty("passwordCharacterEncoding", null, Messages.getString("ConnectionProperties.passwordCharacterEncoding"), "5.1.7", SECURITY_CATEGORY, Integer.MIN_VALUE);
    private IntegerConnectionProperty maxAllowedPacket = new IntegerConnectionProperty("maxAllowedPacket", -1, Messages.getString("ConnectionProperties.maxAllowedPacket"), "5.1.8", NETWORK_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty authenticationPlugins = new StringConnectionProperty("authenticationPlugins", null, Messages.getString("ConnectionProperties.authenticationPlugins"), "5.1.19", CONNECTION_AND_AUTH_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty disabledAuthenticationPlugins = new StringConnectionProperty("disabledAuthenticationPlugins", null, Messages.getString("ConnectionProperties.disabledAuthenticationPlugins"), "5.1.19", CONNECTION_AND_AUTH_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty defaultAuthenticationPlugin = new StringConnectionProperty("defaultAuthenticationPlugin", "com.mysql.jdbc.authentication.MysqlNativePasswordPlugin", Messages.getString("ConnectionProperties.defaultAuthenticationPlugin"), "5.1.19", CONNECTION_AND_AUTH_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty disconnectOnExpiredPasswords = new BooleanConnectionProperty("disconnectOnExpiredPasswords", true, Messages.getString("ConnectionProperties.disconnectOnExpiredPasswords"), "5.1.23", CONNECTION_AND_AUTH_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty getProceduresReturnsFunctions = new BooleanConnectionProperty("getProceduresReturnsFunctions", true, Messages.getString("ConnectionProperties.getProceduresReturnsFunctions"), "5.1.26", MISC_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty detectCustomCollations = new BooleanConnectionProperty("detectCustomCollations", false, Messages.getString("ConnectionProperties.detectCustomCollations"), "5.1.29", MISC_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty serverRSAPublicKeyFile = new StringConnectionProperty("serverRSAPublicKeyFile", null, Messages.getString("ConnectionProperties.serverRSAPublicKeyFile"), "5.1.31", SECURITY_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty allowPublicKeyRetrieval = new BooleanConnectionProperty("allowPublicKeyRetrieval", false, Messages.getString("ConnectionProperties.allowPublicKeyRetrieval"), "5.1.31", SECURITY_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty dontCheckOnDuplicateKeyUpdateInSQL = new BooleanConnectionProperty("dontCheckOnDuplicateKeyUpdateInSQL", false, Messages.getString("ConnectionProperties.dontCheckOnDuplicateKeyUpdateInSQL"), "5.1.32", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private BooleanConnectionProperty readOnlyPropagatesToServer = new BooleanConnectionProperty("readOnlyPropagatesToServer", true, Messages.getString("ConnectionProperties.readOnlyPropagatesToServer"), "5.1.35", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);
    private StringConnectionProperty enabledSSLCipherSuites = new StringConnectionProperty("enabledSSLCipherSuites", null, Messages.getString("ConnectionProperties.enabledSSLCipherSuites"), "5.1.35", SECURITY_CATEGORY, 11);
    private BooleanConnectionProperty enableEscapeProcessing = new BooleanConnectionProperty("enableEscapeProcessing", true, Messages.getString("ConnectionProperties.enableEscapeProcessing"), "5.1.37", PERFORMANCE_CATEGORY, Integer.MIN_VALUE);

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getElideSetAutoCommits() {
        return false;
    }

    public ExceptionInterceptor getExceptionInterceptor() {
        return null;
    }

    static class BooleanConnectionProperty extends ConnectionProperty implements Serializable {
        private static final long serialVersionUID = 2540132501709159404L;

        @Override // com.mysql.jdbc.ConnectionPropertiesImpl.ConnectionProperty
        boolean hasValueConstraints() {
            return true;
        }

        @Override // com.mysql.jdbc.ConnectionPropertiesImpl.ConnectionProperty
        boolean isRangeBased() {
            return false;
        }

        BooleanConnectionProperty(String str, boolean z, String str2, String str3, String str4, int i) {
            super(str, Boolean.valueOf(z), null, 0, 0, str2, str3, str4, i);
        }

        @Override // com.mysql.jdbc.ConnectionPropertiesImpl.ConnectionProperty
        String[] getAllowableValues() {
            return new String[]{"true", "false", "yes", "no"};
        }

        boolean getValueAsBoolean() {
            return ((Boolean) this.valueAsObject).booleanValue();
        }

        @Override // com.mysql.jdbc.ConnectionPropertiesImpl.ConnectionProperty
        void initializeFrom(String str, ExceptionInterceptor exceptionInterceptor) throws SQLException {
            if (str != null) {
                validateStringValues(str, exceptionInterceptor);
                this.valueAsObject = Boolean.valueOf(str.equalsIgnoreCase("TRUE") || str.equalsIgnoreCase("YES"));
                this.wasExplicitlySet = true;
            } else {
                this.valueAsObject = this.defaultValue;
            }
            this.updateCount++;
        }

        void setValue(boolean z) {
            this.valueAsObject = Boolean.valueOf(z);
            this.wasExplicitlySet = true;
            this.updateCount++;
        }
    }

    static abstract class ConnectionProperty implements Serializable {
        static final long serialVersionUID = -6644853639584478367L;
        String[] allowableValues;
        String categoryName;
        Object defaultValue;
        String description;
        int lowerBound;
        int order;
        String propertyName;
        boolean required;
        String sinceVersion;
        int updateCount;
        int upperBound;
        Object valueAsObject;
        boolean wasExplicitlySet;

        abstract boolean hasValueConstraints();

        abstract void initializeFrom(String str, ExceptionInterceptor exceptionInterceptor) throws SQLException;

        abstract boolean isRangeBased();

        public ConnectionProperty() {
            this.updateCount = 0;
            this.wasExplicitlySet = false;
        }

        ConnectionProperty(String str, Object obj, String[] strArr, int i, int i2, String str2, String str3, String str4, int i3) {
            this.updateCount = 0;
            this.wasExplicitlySet = false;
            this.description = str2;
            this.propertyName = str;
            this.defaultValue = obj;
            this.valueAsObject = obj;
            this.allowableValues = strArr;
            this.lowerBound = i;
            this.upperBound = i2;
            this.required = false;
            this.sinceVersion = str3;
            this.categoryName = str4;
            this.order = i3;
        }

        String[] getAllowableValues() {
            return this.allowableValues;
        }

        String getCategoryName() {
            return this.categoryName;
        }

        Object getDefaultValue() {
            return this.defaultValue;
        }

        int getLowerBound() {
            return this.lowerBound;
        }

        int getOrder() {
            return this.order;
        }

        String getPropertyName() {
            return this.propertyName;
        }

        int getUpperBound() {
            return this.upperBound;
        }

        Object getValueAsObject() {
            return this.valueAsObject;
        }

        int getUpdateCount() {
            return this.updateCount;
        }

        boolean isExplicitlySet() {
            return this.wasExplicitlySet;
        }

        void initializeFrom(Properties properties, ExceptionInterceptor exceptionInterceptor) throws SQLException {
            String property = properties.getProperty(getPropertyName());
            properties.remove(getPropertyName());
            initializeFrom(property, exceptionInterceptor);
        }

        void initializeFrom(Reference reference, ExceptionInterceptor exceptionInterceptor) throws SQLException {
            RefAddr refAddr = reference.get(getPropertyName());
            if (refAddr != null) {
                initializeFrom((String) refAddr.getContent(), exceptionInterceptor);
            }
        }

        void setCategoryName(String str) {
            this.categoryName = str;
        }

        void setOrder(int i) {
            this.order = i;
        }

        void setValueAsObject(Object obj) {
            this.valueAsObject = obj;
            this.updateCount++;
        }

        void storeTo(Reference reference) {
            if (getValueAsObject() != null) {
                reference.add(new StringRefAddr(getPropertyName(), getValueAsObject().toString()));
            }
        }

        DriverPropertyInfo getAsDriverPropertyInfo() {
            DriverPropertyInfo driverPropertyInfo = new DriverPropertyInfo(this.propertyName, null);
            driverPropertyInfo.choices = getAllowableValues();
            driverPropertyInfo.value = this.valueAsObject != null ? this.valueAsObject.toString() : null;
            driverPropertyInfo.required = this.required;
            driverPropertyInfo.description = this.description;
            return driverPropertyInfo;
        }

        void validateStringValues(String str, ExceptionInterceptor exceptionInterceptor) throws SQLException {
            String[] allowableValues = getAllowableValues();
            if (str == null || allowableValues == null || allowableValues.length == 0) {
                return;
            }
            for (int i = 0; i < allowableValues.length; i++) {
                if (allowableValues[i] != null && allowableValues[i].equalsIgnoreCase(str)) {
                    return;
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("The connection property '");
            sb.append(getPropertyName());
            sb.append("' only accepts values of the form: ");
            if (allowableValues.length != 0) {
                sb.append("'");
                sb.append(allowableValues[0]);
                sb.append("'");
                for (int i2 = 1; i2 < allowableValues.length - 1; i2++) {
                    sb.append(", ");
                    sb.append("'");
                    sb.append(allowableValues[i2]);
                    sb.append("'");
                }
                sb.append(" or '");
                sb.append(allowableValues[allowableValues.length - 1]);
                sb.append("'");
            }
            sb.append(". The value '");
            sb.append(str);
            sb.append("' is not in this set.");
            throw SQLError.createSQLException(sb.toString(), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, exceptionInterceptor);
        }
    }

    static class IntegerConnectionProperty extends ConnectionProperty implements Serializable {
        private static final long serialVersionUID = -3004305481796850832L;
        int multiplier;

        @Override // com.mysql.jdbc.ConnectionPropertiesImpl.ConnectionProperty
        String[] getAllowableValues() {
            return null;
        }

        @Override // com.mysql.jdbc.ConnectionPropertiesImpl.ConnectionProperty
        boolean hasValueConstraints() {
            return false;
        }

        public IntegerConnectionProperty(String str, Object obj, String[] strArr, int i, int i2, String str2, String str3, String str4, int i3) {
            super(str, obj, strArr, i, i2, str2, str3, str4, i3);
            this.multiplier = 1;
        }

        IntegerConnectionProperty(String str, int i, int i2, int i3, String str2, String str3, String str4, int i4) {
            super(str, Integer.valueOf(i), null, i2, i3, str2, str3, str4, i4);
            this.multiplier = 1;
        }

        IntegerConnectionProperty(String str, int i, String str2, String str3, String str4, int i2) {
            this(str, i, 0, 0, str2, str3, str4, i2);
        }

        @Override // com.mysql.jdbc.ConnectionPropertiesImpl.ConnectionProperty
        int getLowerBound() {
            return this.lowerBound;
        }

        @Override // com.mysql.jdbc.ConnectionPropertiesImpl.ConnectionProperty
        int getUpperBound() {
            return this.upperBound;
        }

        int getValueAsInt() {
            return ((Integer) this.valueAsObject).intValue();
        }

        @Override // com.mysql.jdbc.ConnectionPropertiesImpl.ConnectionProperty
        void initializeFrom(String str, ExceptionInterceptor exceptionInterceptor) throws SQLException {
            if (str != null) {
                try {
                    setValue((int) (Double.valueOf(str).doubleValue() * ((double) this.multiplier)), str, exceptionInterceptor);
                } catch (NumberFormatException unused) {
                    throw SQLError.createSQLException("The connection property '" + getPropertyName() + "' only accepts integer values. The value '" + str + "' can not be converted to an integer.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, exceptionInterceptor);
                }
            } else {
                this.valueAsObject = this.defaultValue;
            }
            this.updateCount++;
        }

        @Override // com.mysql.jdbc.ConnectionPropertiesImpl.ConnectionProperty
        boolean isRangeBased() {
            return getUpperBound() != getLowerBound();
        }

        void setValue(int i, ExceptionInterceptor exceptionInterceptor) throws SQLException {
            setValue(i, null, exceptionInterceptor);
        }

        void setValue(int i, String str, ExceptionInterceptor exceptionInterceptor) throws SQLException {
            if (isRangeBased() && (i < getLowerBound() || i > getUpperBound())) {
                StringBuilder sb = new StringBuilder();
                sb.append("The connection property '");
                sb.append(getPropertyName());
                sb.append("' only accepts integer values in the range of ");
                sb.append(getLowerBound());
                sb.append(" - ");
                sb.append(getUpperBound());
                sb.append(", the value '");
                Object objValueOf = str;
                if (str == null) {
                    objValueOf = Integer.valueOf(i);
                }
                sb.append(objValueOf);
                sb.append("' exceeds this range.");
                throw SQLError.createSQLException(sb.toString(), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, exceptionInterceptor);
            }
            this.valueAsObject = Integer.valueOf(i);
            this.wasExplicitlySet = true;
            this.updateCount++;
        }
    }

    public static class LongConnectionProperty extends IntegerConnectionProperty {
        private static final long serialVersionUID = 6068572984340480895L;

        LongConnectionProperty(String str, long j, long j2, long j3, String str2, String str3, String str4, int i) {
            super(str, Long.valueOf(j), null, (int) j2, (int) j3, str2, str3, str4, i);
        }

        LongConnectionProperty(String str, long j, String str2, String str3, String str4, int i) {
            this(str, j, 0L, 0L, str2, str3, str4, i);
        }

        void setValue(long j, ExceptionInterceptor exceptionInterceptor) throws SQLException {
            setValue(j, (String) null, exceptionInterceptor);
        }

        void setValue(long j, String str, ExceptionInterceptor exceptionInterceptor) throws SQLException {
            if (isRangeBased() && (j < getLowerBound() || j > getUpperBound())) {
                StringBuilder sb = new StringBuilder();
                sb.append("The connection property '");
                sb.append(getPropertyName());
                sb.append("' only accepts long integer values in the range of ");
                sb.append(getLowerBound());
                sb.append(" - ");
                sb.append(getUpperBound());
                sb.append(", the value '");
                Object objValueOf = str;
                if (str == null) {
                    objValueOf = Long.valueOf(j);
                }
                sb.append(objValueOf);
                sb.append("' exceeds this range.");
                throw SQLError.createSQLException(sb.toString(), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, exceptionInterceptor);
            }
            this.valueAsObject = Long.valueOf(j);
            this.wasExplicitlySet = true;
            this.updateCount++;
        }

        long getValueAsLong() {
            return ((Long) this.valueAsObject).longValue();
        }

        @Override // com.mysql.jdbc.ConnectionPropertiesImpl.IntegerConnectionProperty, com.mysql.jdbc.ConnectionPropertiesImpl.ConnectionProperty
        void initializeFrom(String str, ExceptionInterceptor exceptionInterceptor) throws SQLException {
            if (str != null) {
                try {
                    setValue(Double.valueOf(str).longValue(), str, exceptionInterceptor);
                } catch (NumberFormatException unused) {
                    throw SQLError.createSQLException("The connection property '" + getPropertyName() + "' only accepts long integer values. The value '" + str + "' can not be converted to a long integer.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, exceptionInterceptor);
                }
            } else {
                this.valueAsObject = this.defaultValue;
            }
            this.updateCount++;
        }
    }

    static class MemorySizeConnectionProperty extends IntegerConnectionProperty implements Serializable {
        private static final long serialVersionUID = 7351065128998572656L;
        private String valueAsString;

        MemorySizeConnectionProperty(String str, int i, int i2, int i3, String str2, String str3, String str4, int i4) {
            super(str, i, i2, i3, str2, str3, str4, i4);
        }

        @Override // com.mysql.jdbc.ConnectionPropertiesImpl.IntegerConnectionProperty, com.mysql.jdbc.ConnectionPropertiesImpl.ConnectionProperty
        void initializeFrom(String str, ExceptionInterceptor exceptionInterceptor) throws SQLException {
            this.valueAsString = str;
            this.multiplier = 1;
            if (str != null) {
                if (str.endsWith("k") || str.endsWith("K") || str.endsWith("kb") || str.endsWith("Kb") || str.endsWith("kB") || str.endsWith("KB")) {
                    this.multiplier = 1024;
                    str = str.substring(0, StringUtils.indexOfIgnoreCase(str, "k"));
                } else if (str.endsWith("m") || str.endsWith("M") || str.endsWith("mb") || str.endsWith("Mb") || str.endsWith("mB") || str.endsWith("MB")) {
                    this.multiplier = 1048576;
                    str = str.substring(0, StringUtils.indexOfIgnoreCase(str, "m"));
                } else if (str.endsWith("g") || str.endsWith("G") || str.endsWith("gb") || str.endsWith("Gb") || str.endsWith("gB") || str.endsWith("GB")) {
                    this.multiplier = 1073741824;
                    str = str.substring(0, StringUtils.indexOfIgnoreCase(str, "g"));
                }
            }
            super.initializeFrom(str, exceptionInterceptor);
        }

        void setValue(String str, ExceptionInterceptor exceptionInterceptor) throws SQLException {
            initializeFrom(str, exceptionInterceptor);
        }

        String getValueAsString() {
            return this.valueAsString;
        }
    }

    static class StringConnectionProperty extends ConnectionProperty implements Serializable {
        private static final long serialVersionUID = 5432127962785948272L;

        @Override // com.mysql.jdbc.ConnectionPropertiesImpl.ConnectionProperty
        boolean isRangeBased() {
            return false;
        }

        StringConnectionProperty(String str, String str2, String str3, String str4, String str5, int i) {
            this(str, str2, null, str3, str4, str5, i);
        }

        StringConnectionProperty(String str, String str2, String[] strArr, String str3, String str4, String str5, int i) {
            super(str, str2, strArr, 0, 0, str3, str4, str5, i);
        }

        String getValueAsString() {
            return (String) this.valueAsObject;
        }

        @Override // com.mysql.jdbc.ConnectionPropertiesImpl.ConnectionProperty
        boolean hasValueConstraints() {
            return this.allowableValues != null && this.allowableValues.length > 0;
        }

        @Override // com.mysql.jdbc.ConnectionPropertiesImpl.ConnectionProperty
        void initializeFrom(String str, ExceptionInterceptor exceptionInterceptor) throws SQLException {
            if (str != null) {
                validateStringValues(str, exceptionInterceptor);
                this.valueAsObject = str;
                this.wasExplicitlySet = true;
            } else {
                this.valueAsObject = this.defaultValue;
            }
            this.updateCount++;
        }

        void setValue(String str) {
            this.valueAsObject = str;
            this.wasExplicitlySet = true;
            this.updateCount++;
        }
    }

    static {
        try {
            java.lang.reflect.Field[] declaredFields = ConnectionPropertiesImpl.class.getDeclaredFields();
            for (int i = 0; i < declaredFields.length; i++) {
                if (ConnectionProperty.class.isAssignableFrom(declaredFields[i].getType())) {
                    PROPERTY_LIST.add(declaredFields[i]);
                }
            }
        } catch (Exception e) {
            RuntimeException runtimeException = new RuntimeException();
            runtimeException.initCause(e);
            throw runtimeException;
        }
    }

    protected static DriverPropertyInfo[] exposeAsDriverPropertyInfo(Properties properties, int i) throws SQLException {
        return new ConnectionPropertiesImpl() { // from class: com.mysql.jdbc.ConnectionPropertiesImpl.1
            private static final long serialVersionUID = 4257801713007640581L;
        }.exposeAsDriverPropertyInfoInternal(properties, i);
    }

    protected DriverPropertyInfo[] exposeAsDriverPropertyInfoInternal(Properties properties, int i) throws SQLException {
        initializeProperties(properties);
        int size = PROPERTY_LIST.size() + i;
        DriverPropertyInfo[] driverPropertyInfoArr = new DriverPropertyInfo[size];
        for (int i2 = i; i2 < size; i2++) {
            try {
                ConnectionProperty connectionProperty = (ConnectionProperty) PROPERTY_LIST.get(i2 - i).get(this);
                if (properties != null) {
                    connectionProperty.initializeFrom(properties, getExceptionInterceptor());
                }
                driverPropertyInfoArr[i2] = connectionProperty.getAsDriverPropertyInfo();
            } catch (IllegalAccessException unused) {
                throw SQLError.createSQLException(Messages.getString("ConnectionProperties.InternalPropertiesFailure"), SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
            }
        }
        return driverPropertyInfoArr;
    }

    protected Properties exposeAsProperties(Properties properties) throws SQLException {
        if (properties == null) {
            properties = new Properties();
        }
        int size = PROPERTY_LIST.size();
        for (int i = 0; i < size; i++) {
            try {
                ConnectionProperty connectionProperty = (ConnectionProperty) PROPERTY_LIST.get(i).get(this);
                Object valueAsObject = connectionProperty.getValueAsObject();
                if (valueAsObject != null) {
                    properties.setProperty(connectionProperty.getPropertyName(), valueAsObject.toString());
                }
            } catch (IllegalAccessException unused) {
                throw SQLError.createSQLException("Internal properties failure", SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
            }
        }
        return properties;
    }

    class XmlMap {
        protected Map<Integer, Map<String, ConnectionProperty>> ordered = new TreeMap();
        protected Map<String, ConnectionProperty> alpha = new TreeMap();

        XmlMap() {
        }
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String exposeAsXml() throws SQLException {
        StringBuilder sb = new StringBuilder();
        sb.append("<ConnectionProperties>");
        int size = PROPERTY_LIST.size();
        int length = PROPERTY_CATEGORIES.length;
        HashMap map = new HashMap();
        for (int i = 0; i < length; i++) {
            map.put(PROPERTY_CATEGORIES[i], new XmlMap());
        }
        StringConnectionProperty stringConnectionProperty = new StringConnectionProperty(NonRegisteringDriver.USER_PROPERTY_KEY, null, Messages.getString("ConnectionProperties.Username"), Messages.getString("ConnectionProperties.allVersions"), CONNECTION_AND_AUTH_CATEGORY, -2147483647);
        StringConnectionProperty stringConnectionProperty2 = new StringConnectionProperty(NonRegisteringDriver.PASSWORD_PROPERTY_KEY, null, Messages.getString("ConnectionProperties.Password"), Messages.getString("ConnectionProperties.allVersions"), CONNECTION_AND_AUTH_CATEGORY, -2147483646);
        XmlMap xmlMap = (XmlMap) map.get(CONNECTION_AND_AUTH_CATEGORY);
        TreeMap treeMap = new TreeMap();
        treeMap.put(stringConnectionProperty.getPropertyName(), stringConnectionProperty);
        xmlMap.ordered.put(Integer.valueOf(stringConnectionProperty.getOrder()), treeMap);
        TreeMap treeMap2 = new TreeMap();
        treeMap2.put(stringConnectionProperty2.getPropertyName(), stringConnectionProperty2);
        xmlMap.ordered.put(new Integer(stringConnectionProperty2.getOrder()), treeMap2);
        for (int i2 = 0; i2 < size; i2++) {
            try {
                ConnectionProperty connectionProperty = (ConnectionProperty) PROPERTY_LIST.get(i2).get(this);
                XmlMap xmlMap2 = (XmlMap) map.get(connectionProperty.getCategoryName());
                int order = connectionProperty.getOrder();
                if (order == Integer.MIN_VALUE) {
                    xmlMap2.alpha.put(connectionProperty.getPropertyName(), connectionProperty);
                } else {
                    Integer numValueOf = Integer.valueOf(order);
                    Map<String, ConnectionProperty> treeMap3 = xmlMap2.ordered.get(numValueOf);
                    if (treeMap3 == null) {
                        treeMap3 = new TreeMap<>();
                        xmlMap2.ordered.put(numValueOf, treeMap3);
                    }
                    treeMap3.put(connectionProperty.getPropertyName(), connectionProperty);
                }
            } catch (IllegalAccessException unused) {
                throw SQLError.createSQLException("Internal properties failure", SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
            }
        }
        for (int i3 = 0; i3 < length; i3++) {
            XmlMap xmlMap3 = (XmlMap) map.get(PROPERTY_CATEGORIES[i3]);
            sb.append("\n <PropertyCategory name=\"");
            sb.append(PROPERTY_CATEGORIES[i3]);
            sb.append("\">");
            Iterator<Map<String, ConnectionProperty>> it = xmlMap3.ordered.values().iterator();
            while (it.hasNext()) {
                for (ConnectionProperty connectionProperty2 : it.next().values()) {
                    sb.append("\n  <Property name=\"");
                    sb.append(connectionProperty2.getPropertyName());
                    sb.append("\" required=\"");
                    sb.append(connectionProperty2.required ? "Yes" : "No");
                    sb.append("\" default=\"");
                    if (connectionProperty2.getDefaultValue() != null) {
                        sb.append(connectionProperty2.getDefaultValue());
                    }
                    sb.append("\" sortOrder=\"");
                    sb.append(connectionProperty2.getOrder());
                    sb.append("\" since=\"");
                    sb.append(connectionProperty2.sinceVersion);
                    sb.append("\">\n");
                    sb.append("    ");
                    sb.append(connectionProperty2.description.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;"));
                    sb.append("\n  </Property>");
                }
            }
            for (ConnectionProperty connectionProperty3 : xmlMap3.alpha.values()) {
                sb.append("\n  <Property name=\"");
                sb.append(connectionProperty3.getPropertyName());
                sb.append("\" required=\"");
                sb.append(connectionProperty3.required ? "Yes" : "No");
                sb.append("\" default=\"");
                if (connectionProperty3.getDefaultValue() != null) {
                    sb.append(connectionProperty3.getDefaultValue());
                }
                sb.append("\" sortOrder=\"alpha\" since=\"");
                sb.append(connectionProperty3.sinceVersion);
                sb.append("\">\n");
                sb.append("    ");
                sb.append(connectionProperty3.description);
                sb.append("\n  </Property>");
            }
            sb.append("\n </PropertyCategory>");
        }
        sb.append("\n</ConnectionProperties>");
        return sb.toString();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAllowLoadLocalInfile() {
        return this.allowLoadLocalInfile.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAllowMultiQueries() {
        return this.allowMultiQueries.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAllowNanAndInf() {
        return this.allowNanAndInf.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAllowUrlInLocalInfile() {
        return this.allowUrlInLocalInfile.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAlwaysSendSetIsolation() {
        return this.alwaysSendSetIsolation.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAutoDeserialize() {
        return this.autoDeserialize.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAutoGenerateTestcaseScript() {
        return this.autoGenerateTestcaseScriptAsBoolean;
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAutoReconnectForPools() {
        return this.autoReconnectForPoolsAsBoolean;
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getBlobSendChunkSize() {
        return this.blobSendChunkSize.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCacheCallableStatements() {
        return this.cacheCallableStatements.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCachePreparedStatements() {
        return ((Boolean) this.cachePreparedStatements.getValueAsObject()).booleanValue();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCacheResultSetMetadata() {
        return this.cacheResultSetMetaDataAsBoolean;
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCacheServerConfiguration() {
        return this.cacheServerConfiguration.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getCallableStatementCacheSize() {
        return this.callableStatementCacheSize.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCapitalizeTypeNames() {
        return this.capitalizeTypeNames.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getCharacterSetResults() {
        return this.characterSetResults.getValueAsString();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getConnectionAttributes() {
        return this.connectionAttributes.getValueAsString();
    }

    public void setConnectionAttributes(String str) {
        this.connectionAttributes.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getClobberStreamingResults() {
        return this.clobberStreamingResults.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getClobCharacterEncoding() {
        return this.clobCharacterEncoding.getValueAsString();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getConnectionCollation() {
        return this.connectionCollation.getValueAsString();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getConnectTimeout() {
        return this.connectTimeout.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getContinueBatchOnError() {
        return this.continueBatchOnError.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCreateDatabaseIfNotExist() {
        return this.createDatabaseIfNotExist.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getDefaultFetchSize() {
        return this.defaultFetchSize.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getDontTrackOpenResources() {
        return this.dontTrackOpenResources.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getDumpQueriesOnException() {
        return this.dumpQueriesOnException.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getDynamicCalendars() {
        return this.dynamicCalendars.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getEmptyStringsConvertToZero() {
        return this.emptyStringsConvertToZero.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getEmulateLocators() {
        return this.emulateLocators.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getEmulateUnsupportedPstmts() {
        return this.emulateUnsupportedPstmts.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getEnablePacketDebug() {
        return this.enablePacketDebug.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getEncoding() {
        return this.characterEncodingAsString;
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getExplainSlowQueries() {
        return this.explainSlowQueries.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getFailOverReadOnly() {
        return this.failOverReadOnly.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getGatherPerformanceMetrics() {
        return this.gatherPerformanceMetrics.getValueAsBoolean();
    }

    protected boolean getHighAvailability() {
        return this.highAvailabilityAsBoolean;
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getHoldResultsOpenOverStatementClose() {
        return this.holdResultsOpenOverStatementClose.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getIgnoreNonTxTables() {
        return this.ignoreNonTxTables.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getInitialTimeout() {
        return this.initialTimeout.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getInteractiveClient() {
        return this.isInteractiveClient.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getIsInteractiveClient() {
        return this.isInteractiveClient.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getJdbcCompliantTruncation() {
        return this.jdbcCompliantTruncation.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getLocatorFetchBufferSize() {
        return this.locatorFetchBufferSize.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLogger() {
        return this.loggerClassName.getValueAsString();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLoggerClassName() {
        return this.loggerClassName.getValueAsString();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getLogSlowQueries() {
        return this.logSlowQueries.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getMaintainTimeStats() {
        return this.maintainTimeStatsAsBoolean;
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getMaxQuerySizeToLog() {
        return this.maxQuerySizeToLog.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getMaxReconnects() {
        return this.maxReconnects.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getMaxRows() {
        return this.maxRowsAsInt;
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getMetadataCacheSize() {
        return this.metadataCacheSize.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getNoDatetimeStringSync() {
        return this.noDatetimeStringSync.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getNullCatalogMeansCurrent() {
        return this.nullCatalogMeansCurrent.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getNullNamePatternMatchesAll() {
        return this.nullNamePatternMatchesAll.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getPacketDebugBufferSize() {
        return this.packetDebugBufferSize.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getParanoid() {
        return this.paranoid.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getPedantic() {
        return this.pedantic.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getPreparedStatementCacheSize() {
        return ((Integer) this.preparedStatementCacheSize.getValueAsObject()).intValue();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getPreparedStatementCacheSqlLimit() {
        return ((Integer) this.preparedStatementCacheSqlLimit.getValueAsObject()).intValue();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getProfileSql() {
        return this.profileSQLAsBoolean;
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getProfileSQL() {
        return this.profileSQL.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getPropertiesTransform() {
        return this.propertiesTransform.getValueAsString();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getQueriesBeforeRetryMaster() {
        return this.queriesBeforeRetryMaster.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getReconnectAtTxEnd() {
        return this.reconnectTxAtEndAsBoolean;
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getRelaxAutoCommit() {
        return this.relaxAutoCommit.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getReportMetricsIntervalMillis() {
        return this.reportMetricsIntervalMillis.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getRequireSSL() {
        return this.requireSSL.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getRetainStatementAfterResultSetClose() {
        return this.retainStatementAfterResultSetClose.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getRollbackOnPooledClose() {
        return this.rollbackOnPooledClose.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getRoundRobinLoadBalance() {
        return this.roundRobinLoadBalance.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getRunningCTS13() {
        return this.runningCTS13.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getSecondsBeforeRetryMaster() {
        return this.secondsBeforeRetryMaster.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getServerTimezone() {
        return this.serverTimezone.getValueAsString();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getSessionVariables() {
        return this.sessionVariables.getValueAsString();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getSlowQueryThresholdMillis() {
        return this.slowQueryThresholdMillis.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getSocketFactoryClassName() {
        return this.socketFactoryClassName.getValueAsString();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getSocketTimeout() {
        return this.socketTimeout.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getStrictFloatingPoint() {
        return this.strictFloatingPoint.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getStrictUpdates() {
        return this.strictUpdates.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getTinyInt1isBit() {
        return this.tinyInt1isBit.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getTraceProtocol() {
        return this.traceProtocol.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getTransformedBitIsBoolean() {
        return this.transformedBitIsBoolean.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseCompression() {
        return this.useCompression.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseFastIntParsing() {
        return this.useFastIntParsing.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseHostsInPrivileges() {
        return this.useHostsInPrivileges.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseInformationSchema() {
        return this.useInformationSchema.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseLocalSessionState() {
        return this.useLocalSessionState.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseOldUTF8Behavior() {
        return this.useOldUTF8BehaviorAsBoolean;
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseOnlyServerErrorMessages() {
        return this.useOnlyServerErrorMessages.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseReadAheadInput() {
        return this.useReadAheadInput.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseServerPreparedStmts() {
        return this.detectServerPreparedStmts.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseSqlStateCodes() {
        return this.useSqlStateCodes.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseSSL() {
        return this.useSSL.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean isUseSSLExplicit() {
        return this.useSSL.wasExplicitlySet;
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseStreamLengthsInPrepStmts() {
        return this.useStreamLengthsInPrepStmts.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseTimezone() {
        return this.useTimezone.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseUltraDevWorkAround() {
        return this.useUltraDevWorkAround.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseUnbufferedInput() {
        return this.useUnbufferedInput.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseUnicode() {
        return this.useUnicodeAsBoolean;
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseUsageAdvisor() {
        return this.useUsageAdvisorAsBoolean;
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getYearIsDateType() {
        return this.yearIsDateType.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getZeroDateTimeBehavior() {
        return this.zeroDateTimeBehavior.getValueAsString();
    }

    protected void initializeFromRef(Reference reference) throws SQLException {
        int size = PROPERTY_LIST.size();
        for (int i = 0; i < size; i++) {
            try {
                ConnectionProperty connectionProperty = (ConnectionProperty) PROPERTY_LIST.get(i).get(this);
                if (reference != null) {
                    connectionProperty.initializeFrom(reference, getExceptionInterceptor());
                }
            } catch (IllegalAccessException unused) {
                throw SQLError.createSQLException("Internal properties failure", SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
            }
        }
        postInitialization();
    }

    protected void initializeProperties(Properties properties) throws SQLException {
        if (properties != null) {
            String property = properties.getProperty("profileSql");
            if (property != null) {
                properties.put("profileSQL", property);
            }
            Properties properties2 = (Properties) properties.clone();
            properties2.remove(NonRegisteringDriver.HOST_PROPERTY_KEY);
            properties2.remove(NonRegisteringDriver.USER_PROPERTY_KEY);
            properties2.remove(NonRegisteringDriver.PASSWORD_PROPERTY_KEY);
            properties2.remove(NonRegisteringDriver.DBNAME_PROPERTY_KEY);
            properties2.remove(NonRegisteringDriver.PORT_PROPERTY_KEY);
            properties2.remove("profileSql");
            int size = PROPERTY_LIST.size();
            for (int i = 0; i < size; i++) {
                try {
                    ((ConnectionProperty) PROPERTY_LIST.get(i).get(this)).initializeFrom(properties2, getExceptionInterceptor());
                } catch (IllegalAccessException e) {
                    throw SQLError.createSQLException(Messages.getString("ConnectionProperties.unableToInitDriverProperties") + e.toString(), SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
                }
            }
            postInitialization();
        }
    }

    protected void postInitialization() throws SQLException {
        if (this.profileSql.getValueAsObject() != null) {
            this.profileSQL.initializeFrom(this.profileSql.getValueAsObject().toString(), getExceptionInterceptor());
        }
        this.reconnectTxAtEndAsBoolean = ((Boolean) this.reconnectAtTxEnd.getValueAsObject()).booleanValue();
        if (getMaxRows() == 0) {
            this.maxRows.setValueAsObject(-1);
        }
        String str = (String) this.characterEncoding.getValueAsObject();
        if (str != null) {
            try {
                StringUtils.getBytes("abc", str);
            } catch (UnsupportedEncodingException unused) {
                throw SQLError.createSQLException(Messages.getString("ConnectionProperties.unsupportedCharacterEncoding", new Object[]{str}), "0S100", getExceptionInterceptor());
            }
        }
        if (((Boolean) this.cacheResultSetMetadata.getValueAsObject()).booleanValue()) {
            try {
                Class.forName("java.util.LinkedHashMap");
            } catch (ClassNotFoundException unused2) {
                this.cacheResultSetMetadata.setValue(false);
            }
        }
        this.cacheResultSetMetaDataAsBoolean = this.cacheResultSetMetadata.getValueAsBoolean();
        this.useUnicodeAsBoolean = this.useUnicode.getValueAsBoolean();
        this.characterEncodingAsString = (String) this.characterEncoding.getValueAsObject();
        this.highAvailabilityAsBoolean = this.autoReconnect.getValueAsBoolean();
        this.autoReconnectForPoolsAsBoolean = this.autoReconnectForPools.getValueAsBoolean();
        this.maxRowsAsInt = ((Integer) this.maxRows.getValueAsObject()).intValue();
        this.profileSQLAsBoolean = this.profileSQL.getValueAsBoolean();
        this.useUsageAdvisorAsBoolean = this.useUsageAdvisor.getValueAsBoolean();
        this.useOldUTF8BehaviorAsBoolean = this.useOldUTF8Behavior.getValueAsBoolean();
        this.autoGenerateTestcaseScriptAsBoolean = this.autoGenerateTestcaseScript.getValueAsBoolean();
        this.maintainTimeStatsAsBoolean = this.maintainTimeStats.getValueAsBoolean();
        this.jdbcCompliantTruncationForReads = getJdbcCompliantTruncation();
        if (getUseCursorFetch()) {
            setDetectServerPreparedStmts(true);
        }
    }

    public void setAllowLoadLocalInfile(boolean z) {
        this.allowLoadLocalInfile.setValue(z);
    }

    public void setAllowMultiQueries(boolean z) {
        this.allowMultiQueries.setValue(z);
    }

    public void setAllowNanAndInf(boolean z) {
        this.allowNanAndInf.setValue(z);
    }

    public void setAllowUrlInLocalInfile(boolean z) {
        this.allowUrlInLocalInfile.setValue(z);
    }

    public void setAlwaysSendSetIsolation(boolean z) {
        this.alwaysSendSetIsolation.setValue(z);
    }

    public void setAutoDeserialize(boolean z) {
        this.autoDeserialize.setValue(z);
    }

    public void setAutoGenerateTestcaseScript(boolean z) {
        this.autoGenerateTestcaseScript.setValue(z);
        this.autoGenerateTestcaseScriptAsBoolean = this.autoGenerateTestcaseScript.getValueAsBoolean();
    }

    public void setAutoReconnect(boolean z) {
        this.autoReconnect.setValue(z);
    }

    public void setAutoReconnectForConnectionPools(boolean z) {
        this.autoReconnectForPools.setValue(z);
        this.autoReconnectForPoolsAsBoolean = this.autoReconnectForPools.getValueAsBoolean();
    }

    public void setAutoReconnectForPools(boolean z) {
        this.autoReconnectForPools.setValue(z);
    }

    public void setBlobSendChunkSize(String str) throws SQLException {
        this.blobSendChunkSize.setValue(str, getExceptionInterceptor());
    }

    public void setCacheCallableStatements(boolean z) {
        this.cacheCallableStatements.setValue(z);
    }

    public void setCachePreparedStatements(boolean z) {
        this.cachePreparedStatements.setValue(z);
    }

    public void setCacheResultSetMetadata(boolean z) {
        this.cacheResultSetMetadata.setValue(z);
        this.cacheResultSetMetaDataAsBoolean = this.cacheResultSetMetadata.getValueAsBoolean();
    }

    public void setCacheServerConfiguration(boolean z) {
        this.cacheServerConfiguration.setValue(z);
    }

    public void setCallableStatementCacheSize(int i) throws SQLException {
        this.callableStatementCacheSize.setValue(i, getExceptionInterceptor());
    }

    public void setCapitalizeDBMDTypes(boolean z) {
        this.capitalizeTypeNames.setValue(z);
    }

    public void setCapitalizeTypeNames(boolean z) {
        this.capitalizeTypeNames.setValue(z);
    }

    public void setCharacterEncoding(String str) {
        this.characterEncoding.setValue(str);
    }

    public void setCharacterSetResults(String str) {
        this.characterSetResults.setValue(str);
    }

    public void setClobberStreamingResults(boolean z) {
        this.clobberStreamingResults.setValue(z);
    }

    public void setClobCharacterEncoding(String str) {
        this.clobCharacterEncoding.setValue(str);
    }

    public void setConnectionCollation(String str) {
        this.connectionCollation.setValue(str);
    }

    public void setConnectTimeout(int i) throws SQLException {
        this.connectTimeout.setValue(i, getExceptionInterceptor());
    }

    public void setContinueBatchOnError(boolean z) {
        this.continueBatchOnError.setValue(z);
    }

    public void setCreateDatabaseIfNotExist(boolean z) {
        this.createDatabaseIfNotExist.setValue(z);
    }

    public void setDefaultFetchSize(int i) throws SQLException {
        this.defaultFetchSize.setValue(i, getExceptionInterceptor());
    }

    public void setDetectServerPreparedStmts(boolean z) {
        this.detectServerPreparedStmts.setValue(z);
    }

    public void setDontTrackOpenResources(boolean z) {
        this.dontTrackOpenResources.setValue(z);
    }

    public void setDumpQueriesOnException(boolean z) {
        this.dumpQueriesOnException.setValue(z);
    }

    public void setDynamicCalendars(boolean z) {
        this.dynamicCalendars.setValue(z);
    }

    public void setElideSetAutoCommits(boolean z) {
        this.elideSetAutoCommits.setValue(z);
    }

    public void setEmptyStringsConvertToZero(boolean z) {
        this.emptyStringsConvertToZero.setValue(z);
    }

    public void setEmulateLocators(boolean z) {
        this.emulateLocators.setValue(z);
    }

    public void setEmulateUnsupportedPstmts(boolean z) {
        this.emulateUnsupportedPstmts.setValue(z);
    }

    public void setEnablePacketDebug(boolean z) {
        this.enablePacketDebug.setValue(z);
    }

    public void setEncoding(String str) {
        this.characterEncoding.setValue(str);
        this.characterEncodingAsString = this.characterEncoding.getValueAsString();
    }

    public void setExplainSlowQueries(boolean z) {
        this.explainSlowQueries.setValue(z);
    }

    public void setFailOverReadOnly(boolean z) {
        this.failOverReadOnly.setValue(z);
    }

    public void setGatherPerformanceMetrics(boolean z) {
        this.gatherPerformanceMetrics.setValue(z);
    }

    protected void setHighAvailability(boolean z) {
        this.autoReconnect.setValue(z);
        this.highAvailabilityAsBoolean = this.autoReconnect.getValueAsBoolean();
    }

    public void setHoldResultsOpenOverStatementClose(boolean z) {
        this.holdResultsOpenOverStatementClose.setValue(z);
    }

    public void setIgnoreNonTxTables(boolean z) {
        this.ignoreNonTxTables.setValue(z);
    }

    public void setInitialTimeout(int i) throws SQLException {
        this.initialTimeout.setValue(i, getExceptionInterceptor());
    }

    public void setIsInteractiveClient(boolean z) {
        this.isInteractiveClient.setValue(z);
    }

    public void setJdbcCompliantTruncation(boolean z) {
        this.jdbcCompliantTruncation.setValue(z);
    }

    public void setLocatorFetchBufferSize(String str) throws SQLException {
        this.locatorFetchBufferSize.setValue(str, getExceptionInterceptor());
    }

    public void setLogger(String str) {
        this.loggerClassName.setValueAsObject(str);
    }

    public void setLoggerClassName(String str) {
        this.loggerClassName.setValue(str);
    }

    public void setLogSlowQueries(boolean z) {
        this.logSlowQueries.setValue(z);
    }

    public void setMaintainTimeStats(boolean z) {
        this.maintainTimeStats.setValue(z);
        this.maintainTimeStatsAsBoolean = this.maintainTimeStats.getValueAsBoolean();
    }

    public void setMaxQuerySizeToLog(int i) throws SQLException {
        this.maxQuerySizeToLog.setValue(i, getExceptionInterceptor());
    }

    public void setMaxReconnects(int i) throws SQLException {
        this.maxReconnects.setValue(i, getExceptionInterceptor());
    }

    public void setMaxRows(int i) throws SQLException {
        this.maxRows.setValue(i, getExceptionInterceptor());
        this.maxRowsAsInt = this.maxRows.getValueAsInt();
    }

    public void setMetadataCacheSize(int i) throws SQLException {
        this.metadataCacheSize.setValue(i, getExceptionInterceptor());
    }

    public void setNoDatetimeStringSync(boolean z) {
        this.noDatetimeStringSync.setValue(z);
    }

    public void setNullCatalogMeansCurrent(boolean z) {
        this.nullCatalogMeansCurrent.setValue(z);
    }

    public void setNullNamePatternMatchesAll(boolean z) {
        this.nullNamePatternMatchesAll.setValue(z);
    }

    public void setPacketDebugBufferSize(int i) throws SQLException {
        this.packetDebugBufferSize.setValue(i, getExceptionInterceptor());
    }

    public void setParanoid(boolean z) {
        this.paranoid.setValue(z);
    }

    public void setPedantic(boolean z) {
        this.pedantic.setValue(z);
    }

    public void setPreparedStatementCacheSize(int i) throws SQLException {
        this.preparedStatementCacheSize.setValue(i, getExceptionInterceptor());
    }

    public void setPreparedStatementCacheSqlLimit(int i) throws SQLException {
        this.preparedStatementCacheSqlLimit.setValue(i, getExceptionInterceptor());
    }

    public void setProfileSql(boolean z) {
        this.profileSQL.setValue(z);
        this.profileSQLAsBoolean = this.profileSQL.getValueAsBoolean();
    }

    public void setProfileSQL(boolean z) {
        this.profileSQL.setValue(z);
    }

    public void setPropertiesTransform(String str) {
        this.propertiesTransform.setValue(str);
    }

    public void setQueriesBeforeRetryMaster(int i) throws SQLException {
        this.queriesBeforeRetryMaster.setValue(i, getExceptionInterceptor());
    }

    public void setReconnectAtTxEnd(boolean z) {
        this.reconnectAtTxEnd.setValue(z);
        this.reconnectTxAtEndAsBoolean = this.reconnectAtTxEnd.getValueAsBoolean();
    }

    public void setRelaxAutoCommit(boolean z) {
        this.relaxAutoCommit.setValue(z);
    }

    public void setReportMetricsIntervalMillis(int i) throws SQLException {
        this.reportMetricsIntervalMillis.setValue(i, getExceptionInterceptor());
    }

    public void setRequireSSL(boolean z) {
        this.requireSSL.setValue(z);
    }

    public void setRetainStatementAfterResultSetClose(boolean z) {
        this.retainStatementAfterResultSetClose.setValue(z);
    }

    public void setRollbackOnPooledClose(boolean z) {
        this.rollbackOnPooledClose.setValue(z);
    }

    public void setRoundRobinLoadBalance(boolean z) {
        this.roundRobinLoadBalance.setValue(z);
    }

    public void setRunningCTS13(boolean z) {
        this.runningCTS13.setValue(z);
    }

    public void setSecondsBeforeRetryMaster(int i) throws SQLException {
        this.secondsBeforeRetryMaster.setValue(i, getExceptionInterceptor());
    }

    public void setServerTimezone(String str) {
        this.serverTimezone.setValue(str);
    }

    public void setSessionVariables(String str) {
        this.sessionVariables.setValue(str);
    }

    public void setSlowQueryThresholdMillis(int i) throws SQLException {
        this.slowQueryThresholdMillis.setValue(i, getExceptionInterceptor());
    }

    public void setSocketFactoryClassName(String str) {
        this.socketFactoryClassName.setValue(str);
    }

    public void setSocketTimeout(int i) throws SQLException {
        this.socketTimeout.setValue(i, getExceptionInterceptor());
    }

    public void setStrictFloatingPoint(boolean z) {
        this.strictFloatingPoint.setValue(z);
    }

    public void setStrictUpdates(boolean z) {
        this.strictUpdates.setValue(z);
    }

    public void setTinyInt1isBit(boolean z) {
        this.tinyInt1isBit.setValue(z);
    }

    public void setTraceProtocol(boolean z) {
        this.traceProtocol.setValue(z);
    }

    public void setTransformedBitIsBoolean(boolean z) {
        this.transformedBitIsBoolean.setValue(z);
    }

    public void setUseCompression(boolean z) {
        this.useCompression.setValue(z);
    }

    public void setUseFastIntParsing(boolean z) {
        this.useFastIntParsing.setValue(z);
    }

    public void setUseHostsInPrivileges(boolean z) {
        this.useHostsInPrivileges.setValue(z);
    }

    public void setUseInformationSchema(boolean z) {
        this.useInformationSchema.setValue(z);
    }

    public void setUseLocalSessionState(boolean z) {
        this.useLocalSessionState.setValue(z);
    }

    public void setUseOldUTF8Behavior(boolean z) {
        this.useOldUTF8Behavior.setValue(z);
        this.useOldUTF8BehaviorAsBoolean = this.useOldUTF8Behavior.getValueAsBoolean();
    }

    public void setUseOnlyServerErrorMessages(boolean z) {
        this.useOnlyServerErrorMessages.setValue(z);
    }

    public void setUseReadAheadInput(boolean z) {
        this.useReadAheadInput.setValue(z);
    }

    public void setUseServerPreparedStmts(boolean z) {
        this.detectServerPreparedStmts.setValue(z);
    }

    public void setUseSqlStateCodes(boolean z) {
        this.useSqlStateCodes.setValue(z);
    }

    public void setUseSSL(boolean z) {
        this.useSSL.setValue(z);
    }

    public void setUseStreamLengthsInPrepStmts(boolean z) {
        this.useStreamLengthsInPrepStmts.setValue(z);
    }

    public void setUseTimezone(boolean z) {
        this.useTimezone.setValue(z);
    }

    public void setUseUltraDevWorkAround(boolean z) {
        this.useUltraDevWorkAround.setValue(z);
    }

    public void setUseUnbufferedInput(boolean z) {
        this.useUnbufferedInput.setValue(z);
    }

    public void setUseUnicode(boolean z) {
        this.useUnicode.setValue(z);
        this.useUnicodeAsBoolean = this.useUnicode.getValueAsBoolean();
    }

    public void setUseUsageAdvisor(boolean z) {
        this.useUsageAdvisor.setValue(z);
        this.useUsageAdvisorAsBoolean = this.useUsageAdvisor.getValueAsBoolean();
    }

    public void setYearIsDateType(boolean z) {
        this.yearIsDateType.setValue(z);
    }

    public void setZeroDateTimeBehavior(String str) {
        this.zeroDateTimeBehavior.setValue(str);
    }

    protected void storeToRef(Reference reference) throws SQLException {
        int size = PROPERTY_LIST.size();
        for (int i = 0; i < size; i++) {
            try {
                ConnectionProperty connectionProperty = (ConnectionProperty) PROPERTY_LIST.get(i).get(this);
                if (reference != null) {
                    connectionProperty.storeTo(reference);
                }
            } catch (IllegalAccessException unused) {
                throw SQLError.createSQLException(Messages.getString("ConnectionProperties.errorNotExpected"), getExceptionInterceptor());
            }
        }
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean useUnbufferedInput() {
        return this.useUnbufferedInput.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseCursorFetch() {
        return this.useCursorFetch.getValueAsBoolean();
    }

    public void setUseCursorFetch(boolean z) {
        this.useCursorFetch.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getOverrideSupportsIntegrityEnhancementFacility() {
        return this.overrideSupportsIntegrityEnhancementFacility.getValueAsBoolean();
    }

    public void setOverrideSupportsIntegrityEnhancementFacility(boolean z) {
        this.overrideSupportsIntegrityEnhancementFacility.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getNoTimezoneConversionForTimeType() {
        return this.noTimezoneConversionForTimeType.getValueAsBoolean();
    }

    public void setNoTimezoneConversionForTimeType(boolean z) {
        this.noTimezoneConversionForTimeType.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getNoTimezoneConversionForDateType() {
        return this.noTimezoneConversionForDateType.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setNoTimezoneConversionForDateType(boolean z) {
        this.noTimezoneConversionForDateType.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCacheDefaultTimezone() {
        return this.cacheDefaultTimezone.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setCacheDefaultTimezone(boolean z) {
        this.cacheDefaultTimezone.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseJDBCCompliantTimezoneShift() {
        return this.useJDBCCompliantTimezoneShift.getValueAsBoolean();
    }

    public void setUseJDBCCompliantTimezoneShift(boolean z) {
        this.useJDBCCompliantTimezoneShift.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAutoClosePStmtStreams() {
        return this.autoClosePStmtStreams.getValueAsBoolean();
    }

    public void setAutoClosePStmtStreams(boolean z) {
        this.autoClosePStmtStreams.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getProcessEscapeCodesForPrepStmts() {
        return this.processEscapeCodesForPrepStmts.getValueAsBoolean();
    }

    public void setProcessEscapeCodesForPrepStmts(boolean z) {
        this.processEscapeCodesForPrepStmts.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseGmtMillisForDatetimes() {
        return this.useGmtMillisForDatetimes.getValueAsBoolean();
    }

    public void setUseGmtMillisForDatetimes(boolean z) {
        this.useGmtMillisForDatetimes.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getDumpMetadataOnColumnNotFound() {
        return this.dumpMetadataOnColumnNotFound.getValueAsBoolean();
    }

    public void setDumpMetadataOnColumnNotFound(boolean z) {
        this.dumpMetadataOnColumnNotFound.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getResourceId() {
        return this.resourceId.getValueAsString();
    }

    public void setResourceId(String str) {
        this.resourceId.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getRewriteBatchedStatements() {
        return this.rewriteBatchedStatements.getValueAsBoolean();
    }

    public void setRewriteBatchedStatements(boolean z) {
        this.rewriteBatchedStatements.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getJdbcCompliantTruncationForReads() {
        return this.jdbcCompliantTruncationForReads;
    }

    public void setJdbcCompliantTruncationForReads(boolean z) {
        this.jdbcCompliantTruncationForReads = z;
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseJvmCharsetConverters() {
        return this.useJvmCharsetConverters.getValueAsBoolean();
    }

    public void setUseJvmCharsetConverters(boolean z) {
        this.useJvmCharsetConverters.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getPinGlobalTxToPhysicalConnection() {
        return this.pinGlobalTxToPhysicalConnection.getValueAsBoolean();
    }

    public void setPinGlobalTxToPhysicalConnection(boolean z) {
        this.pinGlobalTxToPhysicalConnection.setValue(z);
    }

    public void setGatherPerfMetrics(boolean z) {
        setGatherPerformanceMetrics(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getGatherPerfMetrics() {
        return getGatherPerformanceMetrics();
    }

    public void setUltraDevHack(boolean z) {
        setUseUltraDevWorkAround(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUltraDevHack() {
        return getUseUltraDevWorkAround();
    }

    public void setInteractiveClient(boolean z) {
        setIsInteractiveClient(z);
    }

    public void setSocketFactory(String str) {
        setSocketFactoryClassName(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getSocketFactory() {
        return getSocketFactoryClassName();
    }

    public void setUseServerPrepStmts(boolean z) {
        setUseServerPreparedStmts(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseServerPrepStmts() {
        return getUseServerPreparedStmts();
    }

    public void setCacheCallableStmts(boolean z) {
        setCacheCallableStatements(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCacheCallableStmts() {
        return getCacheCallableStatements();
    }

    public void setCachePrepStmts(boolean z) {
        setCachePreparedStatements(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCachePrepStmts() {
        return getCachePreparedStatements();
    }

    public void setCallableStmtCacheSize(int i) throws SQLException {
        setCallableStatementCacheSize(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getCallableStmtCacheSize() {
        return getCallableStatementCacheSize();
    }

    public void setPrepStmtCacheSize(int i) throws SQLException {
        setPreparedStatementCacheSize(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getPrepStmtCacheSize() {
        return getPreparedStatementCacheSize();
    }

    public void setPrepStmtCacheSqlLimit(int i) throws SQLException {
        setPreparedStatementCacheSqlLimit(i);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getPrepStmtCacheSqlLimit() {
        return getPreparedStatementCacheSqlLimit();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getNoAccessToProcedureBodies() {
        return this.noAccessToProcedureBodies.getValueAsBoolean();
    }

    public void setNoAccessToProcedureBodies(boolean z) {
        this.noAccessToProcedureBodies.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseOldAliasMetadataBehavior() {
        return this.useOldAliasMetadataBehavior.getValueAsBoolean();
    }

    public void setUseOldAliasMetadataBehavior(boolean z) {
        this.useOldAliasMetadataBehavior.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getClientCertificateKeyStorePassword() {
        return this.clientCertificateKeyStorePassword.getValueAsString();
    }

    public void setClientCertificateKeyStorePassword(String str) {
        this.clientCertificateKeyStorePassword.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getClientCertificateKeyStoreType() {
        return this.clientCertificateKeyStoreType.getValueAsString();
    }

    public void setClientCertificateKeyStoreType(String str) {
        this.clientCertificateKeyStoreType.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getClientCertificateKeyStoreUrl() {
        return this.clientCertificateKeyStoreUrl.getValueAsString();
    }

    public void setClientCertificateKeyStoreUrl(String str) {
        this.clientCertificateKeyStoreUrl.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getTrustCertificateKeyStorePassword() {
        return this.trustCertificateKeyStorePassword.getValueAsString();
    }

    public void setTrustCertificateKeyStorePassword(String str) {
        this.trustCertificateKeyStorePassword.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getTrustCertificateKeyStoreType() {
        return this.trustCertificateKeyStoreType.getValueAsString();
    }

    public void setTrustCertificateKeyStoreType(String str) {
        this.trustCertificateKeyStoreType.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getTrustCertificateKeyStoreUrl() {
        return this.trustCertificateKeyStoreUrl.getValueAsString();
    }

    public void setTrustCertificateKeyStoreUrl(String str) {
        this.trustCertificateKeyStoreUrl.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseSSPSCompatibleTimezoneShift() {
        return this.useSSPSCompatibleTimezoneShift.getValueAsBoolean();
    }

    public void setUseSSPSCompatibleTimezoneShift(boolean z) {
        this.useSSPSCompatibleTimezoneShift.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getTreatUtilDateAsTimestamp() {
        return this.treatUtilDateAsTimestamp.getValueAsBoolean();
    }

    public void setTreatUtilDateAsTimestamp(boolean z) {
        this.treatUtilDateAsTimestamp.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseFastDateParsing() {
        return this.useFastDateParsing.getValueAsBoolean();
    }

    public void setUseFastDateParsing(boolean z) {
        this.useFastDateParsing.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLocalSocketAddress() {
        return this.localSocketAddress.getValueAsString();
    }

    public void setLocalSocketAddress(String str) {
        this.localSocketAddress.setValue(str);
    }

    public void setUseConfigs(String str) {
        this.useConfigs.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getUseConfigs() {
        return this.useConfigs.getValueAsString();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getGenerateSimpleParameterMetadata() {
        return this.generateSimpleParameterMetadata.getValueAsBoolean();
    }

    public void setGenerateSimpleParameterMetadata(boolean z) {
        this.generateSimpleParameterMetadata.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getLogXaCommands() {
        return this.logXaCommands.getValueAsBoolean();
    }

    public void setLogXaCommands(boolean z) {
        this.logXaCommands.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getResultSetSizeThreshold() {
        return this.resultSetSizeThreshold.getValueAsInt();
    }

    public void setResultSetSizeThreshold(int i) throws SQLException {
        this.resultSetSizeThreshold.setValue(i, getExceptionInterceptor());
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getNetTimeoutForStreamingResults() {
        return this.netTimeoutForStreamingResults.getValueAsInt();
    }

    public void setNetTimeoutForStreamingResults(int i) throws SQLException {
        this.netTimeoutForStreamingResults.setValue(i, getExceptionInterceptor());
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getEnableQueryTimeouts() {
        return this.enableQueryTimeouts.getValueAsBoolean();
    }

    public void setEnableQueryTimeouts(boolean z) {
        this.enableQueryTimeouts.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getPadCharsWithSpace() {
        return this.padCharsWithSpace.getValueAsBoolean();
    }

    public void setPadCharsWithSpace(boolean z) {
        this.padCharsWithSpace.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseDynamicCharsetInfo() {
        return this.useDynamicCharsetInfo.getValueAsBoolean();
    }

    public void setUseDynamicCharsetInfo(boolean z) {
        this.useDynamicCharsetInfo.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getClientInfoProvider() {
        return this.clientInfoProvider.getValueAsString();
    }

    public void setClientInfoProvider(String str) {
        this.clientInfoProvider.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getPopulateInsertRowWithDefaultValues() {
        return this.populateInsertRowWithDefaultValues.getValueAsBoolean();
    }

    public void setPopulateInsertRowWithDefaultValues(boolean z) {
        this.populateInsertRowWithDefaultValues.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLoadBalanceStrategy() {
        return this.loadBalanceStrategy.getValueAsString();
    }

    public void setLoadBalanceStrategy(String str) {
        this.loadBalanceStrategy.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getServerAffinityOrder() {
        return this.serverAffinityOrder.getValueAsString();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setServerAffinityOrder(String str) {
        this.serverAffinityOrder.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getTcpNoDelay() {
        return this.tcpNoDelay.getValueAsBoolean();
    }

    public void setTcpNoDelay(boolean z) {
        this.tcpNoDelay.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getTcpKeepAlive() {
        return this.tcpKeepAlive.getValueAsBoolean();
    }

    public void setTcpKeepAlive(boolean z) {
        this.tcpKeepAlive.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getTcpRcvBuf() {
        return this.tcpRcvBuf.getValueAsInt();
    }

    public void setTcpRcvBuf(int i) throws SQLException {
        this.tcpRcvBuf.setValue(i, getExceptionInterceptor());
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getTcpSndBuf() {
        return this.tcpSndBuf.getValueAsInt();
    }

    public void setTcpSndBuf(int i) throws SQLException {
        this.tcpSndBuf.setValue(i, getExceptionInterceptor());
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getTcpTrafficClass() {
        return this.tcpTrafficClass.getValueAsInt();
    }

    public void setTcpTrafficClass(int i) throws SQLException {
        this.tcpTrafficClass.setValue(i, getExceptionInterceptor());
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseNanosForElapsedTime() {
        return this.useNanosForElapsedTime.getValueAsBoolean();
    }

    public void setUseNanosForElapsedTime(boolean z) {
        this.useNanosForElapsedTime.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public long getSlowQueryThresholdNanos() {
        return this.slowQueryThresholdNanos.getValueAsLong();
    }

    public void setSlowQueryThresholdNanos(long j) throws SQLException {
        this.slowQueryThresholdNanos.setValue(j, getExceptionInterceptor());
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getStatementInterceptors() {
        return this.statementInterceptors.getValueAsString();
    }

    public void setStatementInterceptors(String str) {
        this.statementInterceptors.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseDirectRowUnpack() {
        return this.useDirectRowUnpack.getValueAsBoolean();
    }

    public void setUseDirectRowUnpack(boolean z) {
        this.useDirectRowUnpack.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLargeRowSizeThreshold() {
        return this.largeRowSizeThreshold.getValueAsString();
    }

    public void setLargeRowSizeThreshold(String str) throws SQLException {
        this.largeRowSizeThreshold.setValue(str, getExceptionInterceptor());
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseBlobToStoreUTF8OutsideBMP() {
        return this.useBlobToStoreUTF8OutsideBMP.getValueAsBoolean();
    }

    public void setUseBlobToStoreUTF8OutsideBMP(boolean z) {
        this.useBlobToStoreUTF8OutsideBMP.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getUtf8OutsideBmpExcludedColumnNamePattern() {
        return this.utf8OutsideBmpExcludedColumnNamePattern.getValueAsString();
    }

    public void setUtf8OutsideBmpExcludedColumnNamePattern(String str) {
        this.utf8OutsideBmpExcludedColumnNamePattern.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getUtf8OutsideBmpIncludedColumnNamePattern() {
        return this.utf8OutsideBmpIncludedColumnNamePattern.getValueAsString();
    }

    public void setUtf8OutsideBmpIncludedColumnNamePattern(String str) {
        this.utf8OutsideBmpIncludedColumnNamePattern.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getIncludeInnodbStatusInDeadlockExceptions() {
        return this.includeInnodbStatusInDeadlockExceptions.getValueAsBoolean();
    }

    public void setIncludeInnodbStatusInDeadlockExceptions(boolean z) {
        this.includeInnodbStatusInDeadlockExceptions.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getBlobsAreStrings() {
        return this.blobsAreStrings.getValueAsBoolean();
    }

    public void setBlobsAreStrings(boolean z) {
        this.blobsAreStrings.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getFunctionsNeverReturnBlobs() {
        return this.functionsNeverReturnBlobs.getValueAsBoolean();
    }

    public void setFunctionsNeverReturnBlobs(boolean z) {
        this.functionsNeverReturnBlobs.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAutoSlowLog() {
        return this.autoSlowLog.getValueAsBoolean();
    }

    public void setAutoSlowLog(boolean z) {
        this.autoSlowLog.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getConnectionLifecycleInterceptors() {
        return this.connectionLifecycleInterceptors.getValueAsString();
    }

    public void setConnectionLifecycleInterceptors(String str) {
        this.connectionLifecycleInterceptors.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getProfilerEventHandler() {
        return this.profilerEventHandler.getValueAsString();
    }

    public void setProfilerEventHandler(String str) {
        this.profilerEventHandler.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getVerifyServerCertificate() {
        return this.verifyServerCertificate.getValueAsBoolean();
    }

    public void setVerifyServerCertificate(boolean z) {
        this.verifyServerCertificate.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseLegacyDatetimeCode() {
        return this.useLegacyDatetimeCode.getValueAsBoolean();
    }

    public void setUseLegacyDatetimeCode(boolean z) {
        this.useLegacyDatetimeCode.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getSendFractionalSeconds() {
        return this.sendFractionalSeconds.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setSendFractionalSeconds(boolean z) {
        this.sendFractionalSeconds.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getSelfDestructOnPingSecondsLifetime() {
        return this.selfDestructOnPingSecondsLifetime.getValueAsInt();
    }

    public void setSelfDestructOnPingSecondsLifetime(int i) throws SQLException {
        this.selfDestructOnPingSecondsLifetime.setValue(i, getExceptionInterceptor());
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getSelfDestructOnPingMaxOperations() {
        return this.selfDestructOnPingMaxOperations.getValueAsInt();
    }

    public void setSelfDestructOnPingMaxOperations(int i) throws SQLException {
        this.selfDestructOnPingMaxOperations.setValue(i, getExceptionInterceptor());
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseColumnNamesInFindColumn() {
        return this.useColumnNamesInFindColumn.getValueAsBoolean();
    }

    public void setUseColumnNamesInFindColumn(boolean z) {
        this.useColumnNamesInFindColumn.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseLocalTransactionState() {
        return this.useLocalTransactionState.getValueAsBoolean();
    }

    public void setUseLocalTransactionState(boolean z) {
        this.useLocalTransactionState.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getCompensateOnDuplicateKeyUpdateCounts() {
        return this.compensateOnDuplicateKeyUpdateCounts.getValueAsBoolean();
    }

    public void setCompensateOnDuplicateKeyUpdateCounts(boolean z) {
        this.compensateOnDuplicateKeyUpdateCounts.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getLoadBalanceBlacklistTimeout() {
        return this.loadBalanceBlacklistTimeout.getValueAsInt();
    }

    public void setLoadBalanceBlacklistTimeout(int i) throws SQLException {
        this.loadBalanceBlacklistTimeout.setValue(i, getExceptionInterceptor());
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getLoadBalancePingTimeout() {
        return this.loadBalancePingTimeout.getValueAsInt();
    }

    public void setLoadBalancePingTimeout(int i) throws SQLException {
        this.loadBalancePingTimeout.setValue(i, getExceptionInterceptor());
    }

    public void setRetriesAllDown(int i) throws SQLException {
        this.retriesAllDown.setValue(i, getExceptionInterceptor());
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getRetriesAllDown() {
        return this.retriesAllDown.getValueAsInt();
    }

    public void setUseAffectedRows(boolean z) {
        this.useAffectedRows.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getUseAffectedRows() {
        return this.useAffectedRows.getValueAsBoolean();
    }

    public void setPasswordCharacterEncoding(String str) {
        this.passwordCharacterEncoding.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getPasswordCharacterEncoding() {
        String encoding;
        String valueAsString = this.passwordCharacterEncoding.getValueAsString();
        if (valueAsString != null) {
            return valueAsString;
        }
        return (!getUseUnicode() || (encoding = getEncoding()) == null) ? "UTF-8" : encoding;
    }

    public void setExceptionInterceptors(String str) {
        this.exceptionInterceptors.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getExceptionInterceptors() {
        return this.exceptionInterceptors.getValueAsString();
    }

    public void setMaxAllowedPacket(int i) throws SQLException {
        this.maxAllowedPacket.setValue(i, getExceptionInterceptor());
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getMaxAllowedPacket() {
        return this.maxAllowedPacket.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getQueryTimeoutKillsConnection() {
        return this.queryTimeoutKillsConnection.getValueAsBoolean();
    }

    public void setQueryTimeoutKillsConnection(boolean z) {
        this.queryTimeoutKillsConnection.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getLoadBalanceValidateConnectionOnSwapServer() {
        return this.loadBalanceValidateConnectionOnSwapServer.getValueAsBoolean();
    }

    public void setLoadBalanceValidateConnectionOnSwapServer(boolean z) {
        this.loadBalanceValidateConnectionOnSwapServer.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLoadBalanceConnectionGroup() {
        return this.loadBalanceConnectionGroup.getValueAsString();
    }

    public void setLoadBalanceConnectionGroup(String str) {
        this.loadBalanceConnectionGroup.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLoadBalanceExceptionChecker() {
        return this.loadBalanceExceptionChecker.getValueAsString();
    }

    public void setLoadBalanceExceptionChecker(String str) {
        this.loadBalanceExceptionChecker.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLoadBalanceSQLStateFailover() {
        return this.loadBalanceSQLStateFailover.getValueAsString();
    }

    public void setLoadBalanceSQLStateFailover(String str) {
        this.loadBalanceSQLStateFailover.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLoadBalanceSQLExceptionSubclassFailover() {
        return this.loadBalanceSQLExceptionSubclassFailover.getValueAsString();
    }

    public void setLoadBalanceSQLExceptionSubclassFailover(String str) {
        this.loadBalanceSQLExceptionSubclassFailover.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getLoadBalanceEnableJMX() {
        return this.loadBalanceEnableJMX.getValueAsBoolean();
    }

    public void setLoadBalanceEnableJMX(boolean z) {
        this.loadBalanceEnableJMX.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setLoadBalanceHostRemovalGracePeriod(int i) throws SQLException {
        this.loadBalanceHostRemovalGracePeriod.setValue(i, getExceptionInterceptor());
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getLoadBalanceHostRemovalGracePeriod() {
        return this.loadBalanceHostRemovalGracePeriod.getValueAsInt();
    }

    public void setLoadBalanceAutoCommitStatementThreshold(int i) throws SQLException {
        this.loadBalanceAutoCommitStatementThreshold.setValue(i, getExceptionInterceptor());
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getLoadBalanceAutoCommitStatementThreshold() {
        return this.loadBalanceAutoCommitStatementThreshold.getValueAsInt();
    }

    public void setLoadBalanceAutoCommitStatementRegex(String str) {
        this.loadBalanceAutoCommitStatementRegex.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getLoadBalanceAutoCommitStatementRegex() {
        return this.loadBalanceAutoCommitStatementRegex.getValueAsString();
    }

    public void setIncludeThreadDumpInDeadlockExceptions(boolean z) {
        this.includeThreadDumpInDeadlockExceptions.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getIncludeThreadDumpInDeadlockExceptions() {
        return this.includeThreadDumpInDeadlockExceptions.getValueAsBoolean();
    }

    public void setIncludeThreadNamesAsStatementComment(boolean z) {
        this.includeThreadNamesAsStatementComment.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getIncludeThreadNamesAsStatementComment() {
        return this.includeThreadNamesAsStatementComment.getValueAsBoolean();
    }

    public void setAuthenticationPlugins(String str) {
        this.authenticationPlugins.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getAuthenticationPlugins() {
        return this.authenticationPlugins.getValueAsString();
    }

    public void setDisabledAuthenticationPlugins(String str) {
        this.disabledAuthenticationPlugins.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getDisabledAuthenticationPlugins() {
        return this.disabledAuthenticationPlugins.getValueAsString();
    }

    public void setDefaultAuthenticationPlugin(String str) {
        this.defaultAuthenticationPlugin.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getDefaultAuthenticationPlugin() {
        return this.defaultAuthenticationPlugin.getValueAsString();
    }

    public void setParseInfoCacheFactory(String str) {
        this.parseInfoCacheFactory.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getParseInfoCacheFactory() {
        return this.parseInfoCacheFactory.getValueAsString();
    }

    public void setServerConfigCacheFactory(String str) {
        this.serverConfigCacheFactory.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getServerConfigCacheFactory() {
        return this.serverConfigCacheFactory.getValueAsString();
    }

    public void setDisconnectOnExpiredPasswords(boolean z) {
        this.disconnectOnExpiredPasswords.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getDisconnectOnExpiredPasswords() {
        return this.disconnectOnExpiredPasswords.getValueAsBoolean();
    }

    public String getReplicationConnectionGroup() {
        return this.replicationConnectionGroup.getValueAsString();
    }

    public void setReplicationConnectionGroup(String str) {
        this.replicationConnectionGroup.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAllowMasterDownConnections() {
        return this.allowMasterDownConnections.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAllowMasterDownConnections(boolean z) {
        this.allowMasterDownConnections.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAllowSlaveDownConnections() {
        return this.allowSlaveDownConnections.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAllowSlaveDownConnections(boolean z) {
        this.allowSlaveDownConnections.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getReadFromMasterWhenNoSlaves() {
        return this.readFromMasterWhenNoSlaves.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setReadFromMasterWhenNoSlaves(boolean z) {
        this.readFromMasterWhenNoSlaves.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getReplicationEnableJMX() {
        return this.replicationEnableJMX.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setReplicationEnableJMX(boolean z) {
        this.replicationEnableJMX.setValue(z);
    }

    public void setGetProceduresReturnsFunctions(boolean z) {
        this.getProceduresReturnsFunctions.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getGetProceduresReturnsFunctions() {
        return this.getProceduresReturnsFunctions.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setDetectCustomCollations(boolean z) {
        this.detectCustomCollations.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getDetectCustomCollations() {
        return this.detectCustomCollations.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getServerRSAPublicKeyFile() {
        return this.serverRSAPublicKeyFile.getValueAsString();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setServerRSAPublicKeyFile(String str) throws SQLException {
        if (this.serverRSAPublicKeyFile.getUpdateCount() > 0) {
            throw SQLError.createSQLException(Messages.getString("ConnectionProperties.dynamicChangeIsNotAllowed", new Object[]{"'serverRSAPublicKeyFile'"}), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (ExceptionInterceptor) null);
        }
        this.serverRSAPublicKeyFile.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getAllowPublicKeyRetrieval() {
        return this.allowPublicKeyRetrieval.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setAllowPublicKeyRetrieval(boolean z) throws SQLException {
        if (this.allowPublicKeyRetrieval.getUpdateCount() > 0) {
            throw SQLError.createSQLException(Messages.getString("ConnectionProperties.dynamicChangeIsNotAllowed", new Object[]{"'allowPublicKeyRetrieval'"}), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (ExceptionInterceptor) null);
        }
        this.allowPublicKeyRetrieval.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setDontCheckOnDuplicateKeyUpdateInSQL(boolean z) {
        this.dontCheckOnDuplicateKeyUpdateInSQL.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getDontCheckOnDuplicateKeyUpdateInSQL() {
        return this.dontCheckOnDuplicateKeyUpdateInSQL.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setSocksProxyHost(String str) {
        this.socksProxyHost.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getSocksProxyHost() {
        return this.socksProxyHost.getValueAsString();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setSocksProxyPort(int i) throws SQLException {
        this.socksProxyPort.setValue(i, null);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public int getSocksProxyPort() {
        return this.socksProxyPort.getValueAsInt();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getReadOnlyPropagatesToServer() {
        return this.readOnlyPropagatesToServer.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setReadOnlyPropagatesToServer(boolean z) {
        this.readOnlyPropagatesToServer.setValue(z);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public String getEnabledSSLCipherSuites() {
        return this.enabledSSLCipherSuites.getValueAsString();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setEnabledSSLCipherSuites(String str) {
        this.enabledSSLCipherSuites.setValue(str);
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public boolean getEnableEscapeProcessing() {
        return this.enableEscapeProcessing.getValueAsBoolean();
    }

    @Override // com.mysql.jdbc.ConnectionProperties
    public void setEnableEscapeProcessing(boolean z) {
        this.enableEscapeProcessing.setValue(z);
    }
}
