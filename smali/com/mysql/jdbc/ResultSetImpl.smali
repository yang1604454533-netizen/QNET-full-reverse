.class public Lcom/mysql/jdbc/ResultSetImpl;
.super Ljava/lang/Object;
.source "ResultSetImpl.java"

# interfaces
.implements Lcom/mysql/jdbc/ResultSetInternalMethods;


# static fields
.field static final EMPTY_SPACE:[C

.field private static final JDBC_4_RS_4_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final JDBC_4_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final JDBC_4_UPD_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field protected static final MAX_DIFF_PREC:D

.field protected static final MIN_DIFF_PREC:D

.field static resultCounter:I


# instance fields
.field protected catalog:Ljava/lang/String;

.field protected columnLabelToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected columnNameToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected columnToIndexCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected columnUsed:[Z

.field protected volatile connection:Lcom/mysql/jdbc/MySQLConnection;

.field protected connectionId:J

.field protected currentRow:I

.field protected doingUpdates:Z

.field protected eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field fastClientCal:Ljava/util/Calendar;

.field fastDefaultCal:Ljava/util/Calendar;

.field protected fetchDirection:I

.field protected fetchSize:I

.field protected fields:[Lcom/mysql/jdbc/Field;

.field protected firstCharOfQuery:C

.field protected fullColumnNameToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected gmtCalendar:Ljava/util/Calendar;

.field protected hasBuiltIndexMapping:Z

.field private invalidRowReason:Ljava/lang/String;

.field protected isBinaryEncoded:Z

.field protected isClosed:Z

.field private jdbcCompliantTruncationForReads:Z

.field protected nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

.field protected onInsertRow:Z

.field private onValidRow:Z

.field protected owningStatement:Lcom/mysql/jdbc/StatementImpl;

.field private padCharsWithSpace:Z

.field protected pointOfOrigin:Ljava/lang/String;

.field protected profileSql:Z

.field protected reallyResult:Z

.field protected resultId:I

.field protected resultSetConcurrency:I

.field protected resultSetType:I

.field protected retainOwningStatement:Z

.field protected rowData:Lcom/mysql/jdbc/RowData;

.field protected serverInfo:Ljava/lang/String;

.field private serverTimeZoneTz:Ljava/util/TimeZone;

.field statementUsedForFetchingRows:Lcom/mysql/jdbc/PreparedStatement;

.field protected thisRow:Lcom/mysql/jdbc/ResultSetRow;

.field protected updateCount:J

.field protected updateId:J

.field private useColumnNamesInFindColumn:Z

.field protected useFastDateParsing:Z

.field private useFastIntParsing:Z

.field protected useLegacyDatetimeCode:Z

.field private useStrictFloatingPoint:Z

.field protected useUsageAdvisor:Z

.field protected warningChain:Ljava/sql/SQLWarning;

.field protected wasNullFlag:Z

.field protected wrapperStatement:Ljava/sql/Statement;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 106
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 108
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mysql.jdbc.JDBC42ResultSet"

    goto :goto_0

    :cond_0
    const-string v0, "com.mysql.jdbc.JDBC4ResultSet"

    .line 109
    :goto_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    const-class v6, Lcom/mysql/jdbc/MySQLConnection;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-class v6, Lcom/mysql/jdbc/StatementImpl;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_4_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 111
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x5

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, [Lcom/mysql/jdbc/Field;

    aput-object v6, v5, v2

    const-class v6, Lcom/mysql/jdbc/RowData;

    aput-object v6, v5, v7

    const-class v6, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v6, v5, v8

    const-class v6, Lcom/mysql/jdbc/StatementImpl;

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 114
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.mysql.jdbc.JDBC42UpdatableResultSet"

    goto :goto_1

    :cond_1
    const-string v0, "com.mysql.jdbc.JDBC4UpdatableResultSet"

    .line 115
    :goto_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v1

    const-class v5, [Lcom/mysql/jdbc/Field;

    aput-object v5, v3, v2

    const-class v5, Lcom/mysql/jdbc/RowData;

    aput-object v5, v3, v7

    const-class v5, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v5, v3, v8

    const-class v5, Lcom/mysql/jdbc/StatementImpl;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_UPD_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const/4 v0, 0x0

    .line 125
    sput-object v0, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_4_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 126
    sput-object v0, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 127
    sput-object v0, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_UPD_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;

    :goto_2
    const/4 v0, 0x1

    .line 134
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    sub-double/2addr v3, v5

    sput-wide v3, Lcom/mysql/jdbc/ResultSetImpl;->MIN_DIFF_PREC:D

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 139
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    sub-double/2addr v3, v5

    sput-wide v3, Lcom/mysql/jdbc/ResultSetImpl;->MAX_DIFF_PREC:D

    .line 142
    sput v2, Lcom/mysql/jdbc/ResultSetImpl;->resultCounter:I

    const/16 v0, 0xff

    .line 306
    new-array v0, v0, [C

    sput-object v0, Lcom/mysql/jdbc/ResultSetImpl;->EMPTY_SPACE:[C

    .line 309
    :goto_3
    sget-object v0, Lcom/mysql/jdbc/ResultSetImpl;->EMPTY_SPACE:[C

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 310
    sget-object v0, Lcom/mysql/jdbc/ResultSetImpl;->EMPTY_SPACE:[C

    const/16 v2, 0x20

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public constructor <init>(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 4

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 171
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    .line 174
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    const-wide/16 v1, 0x0

    .line 179
    iput-wide v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    const/4 v1, -0x1

    .line 182
    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->currentRow:I

    const/4 v1, 0x0

    .line 185
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 187
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 189
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    .line 190
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    const/16 v2, 0x3e8

    .line 193
    iput v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchDirection:I

    .line 196
    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchSize:I

    .line 208
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 210
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnNameToIndex:Ljava/util/Map;

    .line 212
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->hasBuiltIndexMapping:Z

    .line 217
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    .line 220
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    .line 222
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 225
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 236
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->profileSql:Z

    .line 241
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    .line 247
    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetConcurrency:I

    .line 250
    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetType:I

    .line 258
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    .line 263
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    const-wide/16 v2, -0x1

    .line 277
    iput-wide v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateId:J

    .line 279
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useStrictFloatingPoint:Z

    .line 281
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    .line 284
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 287
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 293
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->gmtCalendar:Ljava/util/Calendar;

    .line 295
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    .line 297
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->padCharsWithSpace:Z

    const/4 v2, 0x1

    .line 301
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    .line 794
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    .line 795
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    .line 361
    iput-wide p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    .line 362
    iput-wide p3, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateId:J

    .line 363
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    .line 364
    new-array p1, v1, [Lcom/mysql/jdbc/Field;

    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 366
    iput-object p5, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 367
    iput-object p6, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    .line 369
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    .line 371
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz p1, :cond_0

    .line 372
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 374
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getRetainStatementAfterResultSetClose()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    .line 376
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    .line 377
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverTimeZoneTz:Ljava/util/TimeZone;

    .line 378
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getPadCharsWithSpace()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->padCharsWithSpace:Z

    .line 380
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getUseLegacyDatetimeCode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 171
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    .line 174
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    const-wide/16 v1, 0x0

    .line 179
    iput-wide v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    const/4 v1, -0x1

    .line 182
    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->currentRow:I

    const/4 v1, 0x0

    .line 185
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 187
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 189
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    .line 190
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    const/16 v2, 0x3e8

    .line 193
    iput v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchDirection:I

    .line 196
    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchSize:I

    .line 208
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 210
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnNameToIndex:Ljava/util/Map;

    .line 212
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->hasBuiltIndexMapping:Z

    .line 217
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    .line 220
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    .line 222
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 225
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 236
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->profileSql:Z

    .line 241
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    .line 247
    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetConcurrency:I

    .line 250
    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetType:I

    .line 258
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    .line 263
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    const-wide/16 v2, -0x1

    .line 277
    iput-wide v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateId:J

    .line 279
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useStrictFloatingPoint:Z

    .line 281
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    .line 284
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 287
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 293
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->gmtCalendar:Ljava/util/Calendar;

    .line 295
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    .line 297
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->padCharsWithSpace:Z

    const/4 v4, 0x1

    .line 301
    iput-boolean v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    .line 794
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    .line 795
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    .line 401
    iput-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 403
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    .line 405
    iget-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz p4, :cond_0

    .line 406
    iget-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p4

    iput-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 407
    iget-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getStrictFloatingPoint()Z

    move-result p4

    iput-boolean p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->useStrictFloatingPoint:Z

    .line 408
    iget-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    .line 409
    iget-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getUseFastDateParsing()Z

    move-result p4

    iput-boolean p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    .line 410
    iget-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getProfileSql()Z

    move-result p4

    iput-boolean p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->profileSql:Z

    .line 411
    iget-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getRetainStatementAfterResultSetClose()Z

    move-result p4

    iput-boolean p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    .line 412
    iget-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getJdbcCompliantTruncationForReads()Z

    move-result p4

    iput-boolean p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    .line 413
    iget-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getUseFastIntParsing()Z

    move-result p4

    iput-boolean p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    .line 414
    iget-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object p4

    iput-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverTimeZoneTz:Ljava/util/TimeZone;

    .line 415
    iget-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getPadCharsWithSpace()Z

    move-result p4

    iput-boolean p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->padCharsWithSpace:Z

    .line 418
    :cond_0
    iput-object p5, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    .line 420
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    .line 422
    iput-object p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 423
    iput-object p3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    .line 424
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {p1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    .line 430
    iput-boolean v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    .line 433
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {p1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 434
    iget-wide p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    const-wide/16 p3, 0x1

    cmp-long p1, p1, p3

    if-nez p1, :cond_2

    .line 435
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-nez p1, :cond_2

    .line 436
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {p1}, Lcom/mysql/jdbc/RowData;->close()V

    .line 437
    iput-wide v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    goto :goto_0

    .line 441
    :cond_1
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 444
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {p1, p0}, Lcom/mysql/jdbc/RowData;->setOwner(Lcom/mysql/jdbc/ResultSetImpl;)V

    .line 446
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    if-eqz p1, :cond_3

    .line 447
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->initializeWithMetadata()V

    .line 449
    :cond_3
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getUseLegacyDatetimeCode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    .line 451
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getUseColumnNamesInFindColumn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useColumnNamesInFindColumn:Z

    .line 453
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    return-void
.end method

.method public static arraysEqual([B[B)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 3001
    :cond_2
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x0

    .line 3004
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 3005
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method private byteArrayToBoolean(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1600
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1603
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return v1

    .line 1608
    :cond_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1610
    check-cast p1, [B

    array-length v2, p1

    if-nez v2, :cond_1

    return v1

    .line 1614
    :cond_1
    aget-byte p1, p1, v1

    const/16 v2, 0x31

    if-ne p1, v2, :cond_2

    return v0

    :cond_2
    const/16 v2, 0x30

    if-ne p1, v2, :cond_3

    return v1

    :cond_3
    const/4 v2, -0x1

    if-eq p1, v2, :cond_5

    if-lez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0
.end method

.method private checkForIntegerTruncation(I[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6352
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v0, :cond_5

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_0

    const v0, 0x7fffffff

    if-ne p3, v0, :cond_5

    :cond_0
    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 6357
    iget-object p3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p3, p1, v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    if-nez p3, :cond_2

    .line 6360
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p3

    :goto_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    :cond_3
    if-nez p3, :cond_4

    .line 6363
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object p3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    const/4 p2, 0x4

    invoke-direct {p0, p3, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_5
    return-void
.end method

.method private checkForLongTruncation(I[BJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p3, p3, v0

    if-nez p3, :cond_5

    :cond_0
    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 6431
    iget-object p3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object p4, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object p4, p4, p1

    invoke-virtual {p4}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p3, p1, p4, v0}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    if-nez p3, :cond_2

    .line 6434
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_2
    move-object p4, p3

    :goto_0
    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double p4, v0, v2

    if-ltz p4, :cond_3

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double p4, v0, v2

    if-lez p4, :cond_5

    :cond_3
    if-nez p3, :cond_4

    .line 6437
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object p3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    const/4 p2, -0x5

    invoke-direct {p0, p3, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_5
    return-void
.end method

.method protected static convertLongToUlong(J)Ljava/math/BigInteger;
    .locals 4

    const/16 v0, 0x8

    .line 148
    new-array v1, v0, [B

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x7

    aput-byte v2, v1, v3

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    const/16 v0, 0x10

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x5

    aput-byte v0, v1, v2

    const/16 v0, 0x18

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x4

    aput-byte v0, v1, v2

    const/16 v0, 0x20

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, v1, v2

    const/16 v0, 0x28

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, v1, v2

    const/16 v0, 0x30

    ushr-long v2, p0, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, v1, v2

    const/16 v0, 0x38

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    const/4 p1, 0x0

    aput-byte p0, v1, p1

    .line 158
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method private convertToZeroLiteralStringWithEmptyCheck()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 865
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEmptyStringsConvertToZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    return-object v0

    .line 869
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Can\'t convert empty string (\'\') to numeric"

    const-string v2, "22018"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private convertToZeroWithEmptyCheck()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEmptyStringsConvertToZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 859
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Can\'t convert empty string (\'\') to numeric"

    const-string v2, "22018"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private extractStringFromNativeColumn(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    const/4 v0, 0x0

    .line 929
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 931
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 932
    iput-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    const/4 p1, 0x0

    return-object p1

    .line 937
    :cond_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 939
    iget-object p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object p2

    .line 941
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0, p1, p2, v1}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getBigDecimalFromString(Ljava/lang/String;II)Ljava/math/BigDecimal;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1346
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 1347
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroLiteralStringWithEmptyCheck()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1350
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 1353
    :catch_0
    :try_start_1
    invoke-virtual {v0, p3, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p3

    .line 1355
    :catch_1
    new-instance p3, Ljava/sql/SQLException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "ResultSet.Bad_format_for_BigDecimal"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-direct {p3, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p3

    .line 1364
    :cond_0
    :try_start_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    nop

    goto :goto_0

    .line 1367
    :catch_3
    :try_start_3
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    .line 1369
    :catch_4
    :try_start_4
    new-instance v0, Ljava/sql/SQLException;

    const-string v5, "ResultSet.Bad_format_for_BigDecimal"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "S1009"

    invoke-direct {v0, v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1375
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v5, p2, -0x1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v6, 0x10

    if-ne v0, v6, :cond_1

    .line 1376
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v5

    .line 1379
    :try_start_5
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v5, v6}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {v0, p3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_5

    return-object v0

    .line 1382
    :catch_5
    :try_start_6
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v5, v6}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {v0, p3, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p3
    :try_end_6
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_6

    return-object p3

    .line 1384
    :catch_6
    new-instance p3, Ljava/sql/SQLException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "ResultSet.Bad_format_for_BigDecimal"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-direct {p3, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p3

    .line 1391
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getTinyInt1isBit()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getLength()J

    move-result-wide v0

    const-wide/16 v5, 0x1

    cmp-long v0, v0, v5

    if-nez v0, :cond_2

    .line 1393
    new-instance p2, Ljava/math/BigDecimal;

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p2, p1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 1396
    :cond_2
    new-instance p3, Ljava/sql/SQLException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "ResultSet.Bad_format_for_BigDecimal"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-direct {p3, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p3

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getBooleanFromString(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1635
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1636
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    const/16 v2, 0x74

    if-eq v1, v2, :cond_0

    const/16 v2, 0x79

    if-eq v1, v2, :cond_0

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    const-string v1, "-1"

    .line 1638
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method private final getByteFromString(Ljava/lang/String;I)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1680
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1681
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result p1

    int-to-byte p1, p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1695
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v0, "."

    .line 1698
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, -0x6

    if-eq v0, v1, :cond_4

    .line 1701
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1703
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_3

    const-wide/high16 v3, -0x3fa0000000000000L    # -128.0

    cmpg-double v3, v0, v3

    if-ltz v3, :cond_2

    const-wide v3, 0x405fc00000000000L    # 127.0

    cmpl-double v3, v0, v3

    if-lez v3, :cond_3

    .line 1705
    :cond_2
    invoke-direct {p0, p1, p2, v2}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_3
    double-to-int p1, v0

    int-to-byte p1, p1

    return p1

    .line 1712
    :cond_4
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1714
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_6

    const-wide/16 v3, -0x80

    cmp-long v3, v0, v3

    if-ltz v3, :cond_5

    const-wide/16 v3, 0x7f

    cmp-long v3, v0, v3

    if-lez v3, :cond_6

    .line 1716
    :cond_5
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2, v2}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    long-to-int p1, v0

    int-to-byte p1, p1

    return p1

    .line 1722
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ResultSet.Value____173"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ResultSet.___is_out_of_range_[-127,127]_174"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private final getBytesFromString(Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v4

    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getCharacterStreamFromString(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1880
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getClobFromString(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1927
    new-instance v0, Lcom/mysql/jdbc/Clob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/mysql/jdbc/Clob;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method private final getDateFromString(Ljava/lang/String;ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2066
    :try_start_0
    iput-boolean v3, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    const/4 v5, 0x0

    if-nez p1, :cond_0

    .line 2069
    iput-boolean v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object v5

    .line 2081
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v6, "."

    .line 2084
    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v8, -0x1

    if-le v6, v8, :cond_1

    .line 2086
    invoke-virtual {v7, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_1
    move-object v6, v7

    :goto_0
    :try_start_2
    const-string v7, "0"

    .line 2089
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string v7, "0000-00-00"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string v7, "0000-00-00 00:00:00"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string v7, "00000000000000"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_5

    .line 2104
    :cond_2
    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v7, p2, -0x1

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v5

    const/4 v9, 0x5

    const/4 v10, 0x7

    const/16 v11, 0x45

    const/16 v12, 0xa

    const/16 v13, 0x8

    const/4 v14, 0x4

    if-ne v5, v10, :cond_c

    .line 2106
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v2, :cond_a

    if-eq v5, v14, :cond_8

    const/4 v7, 0x6

    if-eq v5, v7, :cond_6

    if-eq v5, v13, :cond_5

    if-eq v5, v12, :cond_6

    const/16 v15, 0xc

    if-eq v5, v15, :cond_6

    const/16 v11, 0xe

    if-eq v5, v11, :cond_5

    const/16 v7, 0x13

    if-eq v5, v7, :cond_4

    const/16 v7, 0x15

    if-ne v5, v7, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "ResultSet.Bad_format_for_Date"

    .line 2163
    new-array v5, v2, [Ljava/lang/Object;

    aput-object v6, v5, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v0, v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static {v0, v5, v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2109
    :cond_4
    :goto_1
    invoke-virtual {v6, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2110
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2111
    invoke-virtual {v6, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2113
    invoke-virtual {v1, v0, v5, v7, v9}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2118
    :cond_5
    invoke-virtual {v6, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2119
    invoke-virtual {v6, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2120
    invoke-virtual {v6, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2122
    invoke-virtual {v1, v0, v5, v9, v7}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2128
    :cond_6
    invoke-virtual {v6, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gt v5, v11, :cond_7

    add-int/lit8 v5, v5, 0x64

    .line 2134
    :cond_7
    invoke-virtual {v6, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2135
    invoke-virtual {v6, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit16 v5, v5, 0x76c

    .line 2137
    invoke-virtual {v1, v0, v5, v9, v7}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2141
    :cond_8
    invoke-virtual {v6, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gt v5, v11, :cond_9

    add-int/lit8 v5, v5, 0x64

    .line 2147
    :cond_9
    invoke-virtual {v6, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit16 v5, v5, 0x76c

    .line 2149
    invoke-virtual {v1, v0, v5, v7, v4}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2153
    :cond_a
    invoke-virtual {v6, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gt v5, v11, :cond_b

    add-int/lit8 v5, v5, 0x64

    :cond_b
    add-int/lit16 v5, v5, 0x76c

    .line 2159
    invoke-virtual {v1, v0, v5, v4, v4}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2167
    :cond_c
    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v5

    const/16 v15, 0xd

    if-ne v5, v15, :cond_10

    .line 2169
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v2, :cond_e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_d

    goto :goto_2

    .line 2178
    :cond_d
    invoke-virtual {v6, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    .line 2170
    :cond_e
    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gt v5, v11, :cond_f

    add-int/lit8 v5, v5, 0x64

    :cond_f
    add-int/lit16 v5, v5, 0x76c

    .line 2181
    :goto_3
    invoke-virtual {v1, v0, v5, v4, v4}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2182
    :cond_10
    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v5

    const/16 v7, 0xb

    const/16 v11, 0x7b2

    if-ne v5, v7, :cond_11

    .line 2183
    invoke-virtual {v1, v0, v11, v4, v4}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2185
    :cond_11
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v12, :cond_13

    .line 2186
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v13, :cond_12

    .line 2187
    invoke-virtual {v1, v0, v11, v4, v4}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    :cond_12
    const-string v0, "ResultSet.Bad_format_for_Date"

    .line 2190
    new-array v5, v2, [Ljava/lang/Object;

    aput-object v6, v5, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v0, v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static {v0, v5, v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2195
    :cond_13
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x12

    if-eq v5, v7, :cond_14

    .line 2196
    invoke-virtual {v6, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2197
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2198
    invoke-virtual {v6, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_4

    .line 2201
    :cond_14
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, "- "

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2204
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2205
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v16, v9

    move v9, v5

    move v5, v7

    move/from16 v7, v16

    .line 2209
    :goto_4
    invoke-virtual {v1, v0, v5, v7, v9}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    :cond_15
    :goto_5
    const-string v7, "convertToNull"

    .line 2092
    iget-object v9, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v9}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 2093
    iput-boolean v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object v5

    :cond_16
    const-string v5, "exception"

    .line 2096
    iget-object v7, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 2102
    invoke-virtual {v1, v0, v4, v4, v4}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 2097
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' can not be represented as java.sql.Date"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static {v0, v5, v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v6, v7

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v6, p1

    .line 2213
    :goto_6
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "ResultSet.Bad_format_for_Date"

    invoke-static {v3, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    const-string v4, "S1009"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2217
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2219
    throw v2

    :catch_3
    move-exception v0

    .line 2211
    throw v0
.end method

.method private getDefaultTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 2224
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverTimeZoneTz:Ljava/util/TimeZone;

    :goto_0
    return-object v0
.end method

.method private final getDoubleFromString(Ljava/lang/String;I)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2256
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getDoubleInternal(Ljava/lang/String;I)D

    move-result-wide p1

    return-wide p1
.end method

.method private declared-synchronized getFastClientCalendar()Ljava/util/Calendar;
    .locals 2

    monitor-enter p0

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 507
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getFastDefaultCalendar()Ljava/util/Calendar;
    .locals 2

    monitor-enter p0

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    .line 502
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 499
    monitor-exit p0

    throw v0
.end method

.method private final getFloatFromString(Ljava/lang/String;I)F
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_7

    const/4 v0, 0x6

    .line 2416
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2417
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v1

    int-to-float p1, v1

    return p1

    .line 2420
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 2422
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v1, v2

    if-nez v2, :cond_3

    .line 2424
    :cond_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x36a0000000000000L    # 1.401298464324817E-45

    .line 2428
    sget-wide v6, Lcom/mysql/jdbc/ResultSetImpl;->MIN_DIFF_PREC:D

    const/4 v8, 0x0

    sub-double/2addr v4, v6

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_2

    const-wide v4, 0x47efffffe0000000L    # 3.4028234663852886E38

    sget-wide v6, Lcom/mysql/jdbc/ResultSetImpl;->MAX_DIFF_PREC:D

    const/4 v8, 0x0

    sub-double/2addr v4, v6

    cmpl-double v4, v2, v4

    if-lez v4, :cond_3

    .line 2429
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2, v0}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v1

    .line 2440
    :catch_0
    :try_start_1
    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 2441
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v2

    .line 2443
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_6

    .line 2445
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v3, :cond_4

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_5

    :cond_4
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v3, v2, v3

    if-nez v3, :cond_6

    .line 2446
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    return v2

    .line 2455
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Invalid_value_for_getFloat()_-____200"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ResultSet.___in_column__201"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method protected static getInstance(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 315
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/mysql/jdbc/ResultSetImpl;

    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/mysql/jdbc/ResultSetImpl;-><init>(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    return-object v0

    .line 319
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_4_ARG_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p4, v1, p0

    const/4 p0, 0x3

    aput-object p5, v1, p0

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/ResultSetImpl;

    return-object p0
.end method

.method protected static getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 333
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p5, :cond_0

    .line 335
    new-instance p5, Lcom/mysql/jdbc/ResultSetImpl;

    move-object v1, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/ResultSetImpl;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    return-object p5

    .line 338
    :cond_0
    new-instance p5, Lcom/mysql/jdbc/UpdatableResultSet;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/UpdatableResultSet;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    return-object p5

    :cond_1
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-nez p5, :cond_2

    .line 342
    sget-object p5, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    aput-object p1, v5, v3

    aput-object p2, v5, v2

    aput-object p3, v5, v1

    aput-object p4, v5, v0

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {p5, v5, p0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/ResultSetImpl;

    return-object p0

    .line 346
    :cond_2
    sget-object p5, Lcom/mysql/jdbc/ResultSetImpl;->JDBC_4_UPD_RS_5_ARG_CTOR:Ljava/lang/reflect/Constructor;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    aput-object p1, v5, v3

    aput-object p2, v5, v2

    aput-object p3, v5, v1

    aput-object p4, v5, v0

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {p5, v5, p0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/ResultSetImpl;

    return-object p0
.end method

.method private final getIntFromString(Ljava/lang/String;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_9

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    const/4 v4, 0x4

    .line 2574
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 2575
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v5

    return v5

    :cond_0
    const-string v5, "e"

    .line 2578
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    const-string v5, "E"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_4

    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 2586
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2588
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2590
    iget-boolean v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v6, :cond_3

    const/high16 v6, -0x80000000

    if-eq p1, v6, :cond_1

    const v6, 0x7fffffff

    if-ne p1, v6, :cond_3

    .line 2592
    :cond_1
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/32 v8, -0x80000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_2

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v6, v8

    if-lez v8, :cond_3

    .line 2595
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2, v4}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return p1

    :catch_0
    move-object p1, v5

    goto :goto_0

    .line 2605
    :cond_4
    :try_start_2
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 2607
    iget-boolean v7, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v7, :cond_6

    cmpg-double v7, v5, v2

    if-ltz v7, :cond_5

    cmpl-double v7, v5, v0

    if-lez v7, :cond_6

    .line 2609
    :cond_5
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p2, v4}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    double-to-int p1, v5

    return p1

    .line 2619
    :catch_1
    :goto_0
    :try_start_3
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 2621
    iget-boolean v7, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v7, :cond_8

    cmpg-double v2, v5, v2

    if-ltz v2, :cond_7

    cmpl-double v0, v5, v0

    if-lez v0, :cond_8

    .line 2623
    :cond_7
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, v4}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_8
    double-to-int p1, v5

    return p1

    .line 2632
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Invalid_value_for_getInt()_-____206"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ResultSet.___in_column__207"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method private getIntWithOverflowCheck(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6344
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetRow;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    .line 6346
    invoke-direct {p0, p1, v1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->checkForIntegerTruncation(I[BI)V

    return v0
.end method

.method private getLong(IZ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2654
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 2655
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2657
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_7

    add-int/lit8 v0, p1, -0x1

    .line 2660
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 2661
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-wide v3

    :cond_0
    const/4 v1, 0x0

    .line 2664
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2666
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 2667
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide p1

    return-wide p1

    .line 2670
    :cond_1
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    if-eqz v1, :cond_3

    .line 2671
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->length(I)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 2672
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 2675
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isFloatingPointNumber(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2679
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getLongWithOverflowCheck(IZ)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    .line 2682
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p1, v0, p2, v1}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongAsDouble(ILjava/lang/String;)J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide p1

    .line 2688
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ResultSet.Invalid_value_for_getLong()_-____79"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p2, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_3
    const/4 v1, 0x0

    .line 2698
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez p1, :cond_4

    return-wide v3

    .line 2703
    :cond_4
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 2704
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result p2

    int-to-long p1, p2

    return-wide p1

    :cond_5
    const-string v2, "e"

    .line 2707
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    const-string v2, "E"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 2708
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongWithOverflowCheck(I[BLjava/lang/String;Z)J

    move-result-wide v1

    return-wide v1

    .line 2712
    :cond_6
    invoke-direct {p0, v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongAsDouble(ILjava/lang/String;)J

    move-result-wide v1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return-wide v1

    :catch_2
    move-object p1, v1

    .line 2716
    :catch_3
    :try_start_4
    invoke-direct {p0, v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongAsDouble(ILjava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    return-wide v0

    .line 2721
    :catch_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ResultSet.Invalid_value_for_getLong()_-____79"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 2726
    :cond_7
    invoke-virtual {p0, p1, p2, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final getLongFromString(Ljava/lang/String;I)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 2742
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2743
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v1

    int-to-long p1, v1

    return-wide p1

    :cond_0
    const-string v1, "e"

    .line 2746
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v1, "E"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 2747
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongWithOverflowCheck(I[BLjava/lang/String;Z)J

    move-result-wide v1

    return-wide v1

    .line 2751
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongAsDouble(ILjava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 2758
    :catch_0
    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseLongAsDouble(ILjava/lang/String;)J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v1

    .line 2763
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Invalid_value_for_getLong()_-____211"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ResultSet.___in_column__212"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p2, v0

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_2
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private getLongWithOverflowCheck(IZ)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6386
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetRow;->getLong(I)J

    move-result-wide v0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 6389
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->checkForLongTruncation(I[BJ)V

    :cond_0
    return-wide v0
.end method

.method private getNativeConvertToString(ILcom/mysql/jdbc/Field;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3273
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3275
    :try_start_0
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v1

    .line 3276
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    const/16 v3, 0xc

    if-eq v1, v3, :cond_26

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-eq v1, v3, :cond_24

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/4 v7, 0x3

    packed-switch v1, :pswitch_data_2

    .line 3557
    invoke-direct {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3516
    :pswitch_0
    iget-object p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNoDatetimeStringSync()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3517
    invoke-virtual {p0, p1, v5}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object p2

    if-nez p2, :cond_0

    .line 3520
    monitor-exit v0

    return-object v4

    .line 3523
    :cond_0
    array-length v1, p2

    if-nez v1, :cond_1

    const-string p1, "0000-00-00 00:00:00"

    .line 3527
    monitor-exit v0

    return-object p1

    .line 3530
    :cond_1
    aget-byte v1, p2, v6

    and-int/lit16 v1, v1, 0xff

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v1, v5

    .line 3531
    aget-byte v5, p2, v3

    .line 3532
    aget-byte p2, p2, v7

    if-nez v1, :cond_2

    if-nez v5, :cond_2

    if-nez p2, :cond_2

    const-string p1, "0000-00-00 00:00:00"

    .line 3535
    monitor-exit v0

    return-object p1

    .line 3539
    :cond_2
    iget-object p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-direct {p0, p1, v4, p2, v6}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object p2

    if-nez p2, :cond_3

    .line 3542
    monitor-exit v0

    return-object v4

    .line 3545
    :cond_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3547
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNoDatetimeStringSync()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3548
    monitor-exit v0

    return-object p2

    :cond_4
    const-string v1, ".0"

    .line 3551
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3552
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {p2, v6, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3554
    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3507
    :pswitch_1
    iget-object p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-direct {p0, p1, v4, p2, v6}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object p1

    if-nez p1, :cond_6

    .line 3510
    monitor-exit v0

    return-object v4

    .line 3513
    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :pswitch_2
    const/16 v1, 0xd

    if-ne v2, v1, :cond_b

    .line 3451
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result p1

    .line 3453
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v1

    if-nez v1, :cond_8

    .line 3455
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz p2, :cond_7

    .line 3456
    monitor-exit v0

    return-object v4

    .line 3459
    :cond_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3462
    :cond_8
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->getLength()J

    move-result-wide v1

    const-wide/16 v6, 0x2

    cmp-long p2, v1, v6

    if-nez p2, :cond_a

    const/16 p2, 0x45

    if-gt p1, p2, :cond_9

    add-int/lit8 p1, p1, 0x64

    int-to-short p1, p1

    :cond_9
    add-int/lit16 p1, p1, 0x76c

    int-to-short p1, p1

    .line 3471
    :cond_a
    invoke-virtual {p0, v4, p1, v5, v5}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3475
    :cond_b
    iget-object p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNoDatetimeStringSync()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 3476
    invoke-virtual {p0, p1, v5}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object p2

    if-nez p2, :cond_c

    .line 3479
    monitor-exit v0

    return-object v4

    .line 3482
    :cond_c
    array-length v1, p2

    if-nez v1, :cond_d

    const-string p1, "0000-00-00"

    .line 3486
    monitor-exit v0

    return-object p1

    .line 3489
    :cond_d
    aget-byte v1, p2, v6

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p2, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 3490
    aget-byte v2, p2, v3

    .line 3491
    aget-byte p2, p2, v7

    if-nez v1, :cond_e

    if-nez v2, :cond_e

    if-nez p2, :cond_e

    const-string p1, "0000-00-00"

    .line 3494
    monitor-exit v0

    return-object p1

    .line 3498
    :cond_e
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDate(I)Ljava/sql/Date;

    move-result-object p1

    if-nez p1, :cond_f

    .line 3501
    monitor-exit v0

    return-object v4

    .line 3504
    :cond_f
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3357
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result p1

    .line 3359
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz p2, :cond_10

    .line 3360
    monitor-exit v0

    return-object v4

    .line 3363
    :cond_10
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3367
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide p1

    .line 3369
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v1, :cond_11

    .line 3370
    monitor-exit v0

    return-object v4

    .line 3373
    :cond_11
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3307
    :pswitch_5
    invoke-virtual {p0, p1, v6}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result p1

    .line 3309
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v1, :cond_12

    .line 3310
    monitor-exit v0

    return-object v4

    .line 3313
    :cond_12
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p2

    if-eqz p2, :cond_14

    if-ltz p1, :cond_13

    goto :goto_0

    :cond_13
    const p2, 0xffff

    and-int/2addr p1, p2

    .line 3319
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3314
    :cond_14
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3322
    :pswitch_6
    invoke-virtual {p0, p1, v6}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result p1

    .line 3324
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v1, :cond_15

    .line 3325
    monitor-exit v0

    return-object v4

    .line 3328
    :cond_15
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_17

    if-gez p1, :cond_17

    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result p2

    const/16 v1, 0x9

    if-ne p2, v1, :cond_16

    goto :goto_1

    :cond_16
    int-to-long p1, p1

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    .line 3335
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3330
    :cond_17
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3377
    :pswitch_7
    iget-object p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p2, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object p2

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 3382
    iput-boolean v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3384
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_18

    .line 3385
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v6}, Ljava/math/BigDecimal;-><init>(I)V

    .line 3387
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 3391
    :cond_18
    :try_start_1
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3398
    :try_start_2
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catch_0
    const-string v1, "ResultSet.Bad_format_for_BigDecimal"

    .line 3393
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 3401
    :cond_19
    iput-boolean v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3403
    monitor-exit v0

    return-object v4

    .line 3414
    :pswitch_8
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->isBlob()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 3415
    invoke-direct {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3416
    :cond_1a
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result p2

    if-nez p2, :cond_1b

    .line 3417
    invoke-direct {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3419
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object p2

    .line 3422
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoDeserialize()Z

    move-result v1

    if-eqz v1, :cond_1d

    if-eqz p2, :cond_1d

    .line 3423
    array-length v1, p2

    if-lt v1, v3, :cond_1d

    .line 3424
    aget-byte p1, p2, v6

    const/16 v1, -0x54

    if-ne p1, v1, :cond_1c

    aget-byte p1, p2, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v1, -0x13

    if-ne p1, v1, :cond_1c

    .line 3427
    :try_start_3
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3428
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3429
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 3430
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 3431
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object p2, v2

    goto :goto_2

    :catch_1
    move-exception p1

    .line 3433
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Class_not_found___91"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ResultSet._while_reading_serialized_object_92"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 3440
    :catch_2
    :cond_1c
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3444
    :cond_1d
    invoke-direct {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3339
    :pswitch_9
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p2

    if-nez p2, :cond_1f

    .line 3340
    invoke-virtual {p0, p1, v6, v5}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide p1

    .line 3342
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v1, :cond_1e

    .line 3343
    monitor-exit v0

    return-object v4

    .line 3346
    :cond_1e
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3349
    :cond_1f
    invoke-virtual {p0, p1, v6, v6}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide p1

    .line 3351
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v1, :cond_20

    .line 3352
    monitor-exit v0

    return-object v4

    .line 3355
    :cond_20
    invoke-static {p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3291
    :pswitch_a
    invoke-virtual {p0, p1, v6}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(IZ)B

    move-result p1

    .line 3293
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v1, :cond_21

    .line 3294
    monitor-exit v0

    return-object v4

    .line 3297
    :cond_21
    invoke-virtual {p2}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p2

    if-eqz p2, :cond_23

    if-ltz p1, :cond_22

    goto :goto_3

    :cond_22
    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    .line 3303
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3298
    :cond_23
    :goto_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3280
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3282
    :cond_24
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result p1

    .line 3284
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz p2, :cond_25

    .line 3285
    monitor-exit v0

    return-object v4

    .line 3288
    :cond_25
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3409
    :cond_26
    :pswitch_c
    invoke-direct {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->extractStringFromNativeColumn(II)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3559
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4251
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4252
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    const/4 v0, 0x1

    add-int/lit8 v2, p1, -0x1

    .line 4256
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v5

    const/16 p1, 0xb

    if-ne v5, p1, :cond_0

    .line 4261
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/ResultSetRow;->getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object p1

    goto :goto_0

    .line 4264
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    const/4 v3, 0x0

    const/16 v4, 0x5c

    iget-object v8, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v6, p3

    move v7, p4

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/mysql/jdbc/ResultSetRow;->getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/sql/Time;

    :goto_0
    if-nez p1, :cond_1

    .line 4274
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 p2, 0x0

    .line 4279
    iput-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object p1
.end method

.method private getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4296
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4297
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    const/4 v0, 0x1

    add-int/lit8 v2, p1, -0x1

    .line 4303
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v5

    const/4 p1, 0x7

    if-eq v5, p1, :cond_0

    const/16 p1, 0xc

    if-eq v5, p1, :cond_0

    .line 4313
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    const/4 v3, 0x0

    const/16 v4, 0x5d

    iget-object v8, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v6, p3

    move v7, p4

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/mysql/jdbc/ResultSetRow;->getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/sql/Timestamp;

    goto :goto_0

    .line 4308
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/ResultSetRow;->getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 4324
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 p2, 0x0

    .line 4329
    iput-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object p1
.end method

.method private getNumericRepresentationOfSQLBitType(I)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4925
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 4927
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object p1, v2, p1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isSingleBit()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    move-object p1, v0

    check-cast p1, [B

    array-length v3, p1

    if-ne v3, v1, :cond_0

    goto :goto_2

    .line 4935
    :cond_0
    array-length v0, p1

    new-array v0, v0, [J

    .line 4937
    array-length v3, p1

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    :goto_0
    if-ltz v3, :cond_1

    .line 4938
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v1

    aput-wide v4, v0, v3

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    .line 4944
    :goto_1
    array-length v1, p1

    if-ge v2, v1, :cond_2

    .line 4945
    aget-wide v5, v0, v2

    or-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-wide v3

    .line 4928
    :cond_3
    :goto_2
    check-cast v0, [B

    aget-byte p1, v0, v2

    int-to-long v0, p1

    return-wide v0
.end method

.method private getObjectDeserializingIfNeeded(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4557
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    .line 4559
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isBlob()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4591
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object p1

    return-object p1

    .line 4560
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object v0

    .line 4562
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoDeserialize()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 4565
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    const/4 v1, 0x0

    .line 4566
    aget-byte v1, v0, v1

    const/16 v2, -0x54

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    const/16 v2, -0x13

    if-ne v1, v2, :cond_2

    .line 4569
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4570
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4571
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 4572
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 4573
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Class_not_found___91"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ResultSet._while_reading_serialized_object_92"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4581
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1
    :cond_3
    :goto_1
    return-object v0

    :cond_4
    return-object v0
.end method

.method private final getShortFromString(Ljava/lang/String;I)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 5063
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 5064
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    int-to-short p1, v0

    return p1

    :cond_0
    const-string v0, "e"

    .line 5067
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "E"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5068
    invoke-direct {p0, p2, v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortWithOverflowCheck(I[BLjava/lang/String;)S

    move-result v0

    return v0

    .line 5072
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortAsDouble(ILjava/lang/String;)S

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5078
    :catch_0
    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortAsDouble(ILjava/lang/String;)S

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 5083
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Invalid_value_for_getShort()_-____217"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ResultSet.___in_column__218"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private getStringForClob(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5180
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClobCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5183
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_0

    .line 5184
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 5186
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 5192
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v1, :cond_2

    .line 5193
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 5195
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 5199
    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1

    .line 5202
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported character encoding "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private getTimeFromString(Ljava/lang/String;Ljava/util/Calendar;ILjava/util/TimeZone;Z)Ljava/sql/Time;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p3

    .line 5397
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v3

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    .line 5405
    :try_start_0
    iput-boolean v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5407
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 5417
    :cond_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    .line 5420
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-le v6, v7, :cond_1

    .line 5422
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_1
    const-string v6, "0"

    .line 5425
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "0000-00-00"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "0000-00-00 00:00:00"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "00000000000000"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_3

    .line 5440
    :cond_2
    iput-boolean v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5442
    iget-object v3, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    .line 5444
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v6

    const/4 v7, 0x7

    const/16 v10, 0x13

    const/16 v11, 0xe

    const/16 v12, 0xc

    const/16 v13, 0xa

    const/16 v14, 0x8

    const/4 v15, 0x6

    if-ne v6, v7, :cond_7

    .line 5446
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v13, :cond_5

    if-eq v3, v12, :cond_4

    if-eq v3, v11, :cond_4

    if-ne v3, v10, :cond_3

    add-int/lit8 v6, v3, -0x8

    add-int/lit8 v7, v3, -0x6

    .line 5451
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v7, v3, -0x5

    add-int/lit8 v8, v3, -0x3

    .line 5452
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v8, v3, -0x2

    .line 5453
    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 5475
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultSet.Timestamp_too_small_to_convert_to_Time_value_in_column__257"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_4
    add-int/lit8 v6, v3, -0x6

    add-int/lit8 v7, v3, -0x4

    .line 5459
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v8, v3, -0x2

    .line 5460
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 5461
    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 5467
    :cond_5
    invoke-virtual {v5, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 5468
    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 5479
    :goto_0
    new-instance v3, Ljava/sql/SQLWarning;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ResultSet.Precision_lost_converting_TIMESTAMP_to_Time_with_getTime()_on_column__261"

    invoke-static {v10}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v4

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;)V

    .line 5483
    iget-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    if-nez v2, :cond_6

    .line 5484
    iput-object v3, v1, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    goto/16 :goto_2

    .line 5486
    :cond_6
    iget-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    invoke-virtual {v2, v3}, Ljava/sql/SQLWarning;->setNextWarning(Ljava/sql/SQLWarning;)V

    goto/16 :goto_2

    .line 5488
    :cond_7
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v6

    if-ne v6, v12, :cond_9

    const/16 v3, 0xb

    const/16 v6, 0xd

    .line 5489
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v3, 0x10

    .line 5490
    invoke-virtual {v5, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v3, 0x11

    .line 5491
    invoke-virtual {v5, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 5493
    new-instance v3, Ljava/sql/SQLWarning;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ResultSet.Precision_lost_converting_DATETIME_to_Time_with_getTime()_on_column__264"

    invoke-static {v10}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v4

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;)V

    .line 5497
    iget-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    if-nez v2, :cond_8

    .line 5498
    iput-object v3, v1, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    goto :goto_2

    .line 5500
    :cond_8
    iget-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    invoke-virtual {v2, v3}, Ljava/sql/SQLWarning;->setNextWarning(Ljava/sql/SQLWarning;)V

    goto :goto_2

    .line 5502
    :cond_9
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v3

    if-ne v3, v13, :cond_a

    .line 5503
    invoke-virtual {v1, v0, v8, v8, v8}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    .line 5507
    :cond_a
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v14, :cond_b

    goto :goto_1

    .line 5508
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultSet.Bad_format_for_Time____267"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ResultSet.___in_column__268"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_c
    :goto_1
    const/4 v2, 0x2

    .line 5515
    invoke-virtual {v5, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v2, 0x3

    .line 5516
    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 5517
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_d

    goto :goto_2

    :cond_d
    invoke-virtual {v5, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 5520
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v3

    .line 5522
    iget-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v3, v6, v7, v8}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v5

    iget-object v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v6

    move-object/from16 v4, p2

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v2 .. v8}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v0

    :cond_e
    :goto_3
    :try_start_6
    const-string v2, "convertToNull"

    .line 5427
    iget-object v6, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 5428
    iput-boolean v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 5430
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-object v3

    :cond_f
    :try_start_8
    const-string v2, "exception"

    .line 5431
    iget-object v3, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 5437
    invoke-virtual {v1, v0, v8, v8, v8}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-object v0

    .line 5432
    :cond_10
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' can not be represented as java.sql.Time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 5525
    :goto_4
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 5526
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5528
    throw v2

    .line 5530
    :goto_5
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0
.end method

.method private getTimeInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5548
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 5550
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-eqz v0, :cond_0

    .line 5551
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object p1

    return-object p1

    .line 5554
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5555
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringInternal(IZ)Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p1

    move-object v6, p3

    move v7, p4

    .line 5557
    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/ResultSetImpl;->getTimeFromString(Ljava/lang/String;Ljava/util/Calendar;ILjava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object p1

    return-object p1

    .line 5560
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    const/4 v0, 0x1

    add-int/lit8 v3, p1, -0x1

    .line 5564
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5565
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    const/4 p1, 0x0

    return-object p1

    .line 5570
    :cond_2
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5572
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v7, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/ResultSetRow;->getTimeFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method private getTimestampFromString(ILjava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    const/4 v0, 0x0

    .line 5643
    :try_start_0
    iput-boolean v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_0

    .line 5646
    iput-boolean v2, v10, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object v1

    .line 5658
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5660
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    .line 5662
    iget-object v4, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v4

    :goto_0
    move-object v14, v4

    if-lez v3, :cond_5

    .line 5665
    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_5

    const-string v4, "0000-00-00"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "0000-00-00 00:00:00"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "00000000000000"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "0"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    const-string v0, "convertToNull"

    .line 5668
    iget-object v3, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5669
    iput-boolean v2, v10, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object v1

    :cond_3
    const-string v0, "exception"

    .line 5672
    iget-object v1, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    .line 5678
    invoke-virtual/range {v1 .. v9}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 5673
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' can not be represented as java.sql.Timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 5680
    :cond_5
    iget-object v1, v10, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v4, v11, -0x1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v5, 0xd

    const/4 v6, 0x4

    if-ne v1, v5, :cond_7

    .line 5682
    iget-boolean v1, v10, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_6

    .line 5683
    invoke-virtual {v12, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p4

    invoke-static/range {v1 .. v8}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 5686
    :cond_6
    iget-object v13, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v12, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-virtual/range {v1 .. v9}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v16

    iget-object v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v17

    move-object/from16 v15, p2

    move-object/from16 v18, p4

    move/from16 v19, p5

    invoke-static/range {v13 .. v19}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v1, "."

    .line 5702
    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v5, v3, -0x1

    const/4 v7, -0x1

    if-ne v1, v5, :cond_9

    add-int/lit8 v3, v3, -0x1

    :cond_8
    const/16 v28, 0x0

    goto :goto_2

    :cond_9
    if-eq v1, v7, :cond_8

    add-int/lit8 v5, v1, 0x2

    if-gt v5, v3, :cond_b

    add-int/lit8 v5, v1, 0x1

    .line 5711
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sub-int/2addr v3, v5

    const/16 v5, 0x9

    if-ge v3, v5, :cond_a

    move/from16 v20, v1

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    rsub-int/lit8 v3, v3, 0x9

    int-to-double v2, v3

    .line 5716
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int v8, v8, v0

    goto :goto_1

    :cond_a
    move/from16 v20, v1

    :goto_1
    move/from16 v28, v8

    move/from16 v3, v20

    goto :goto_2

    .line 5722
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :goto_2
    const/16 v0, 0x45

    const/4 v1, 0x2

    if-eq v3, v1, :cond_19

    if-eq v3, v6, :cond_17

    const/4 v2, 0x6

    if-eq v3, v2, :cond_15

    const/4 v5, 0x5

    const/16 v8, 0x8

    if-eq v3, v8, :cond_13

    const/16 v9, 0xa

    if-eq v3, v9, :cond_f

    const/16 v4, 0xc

    if-eq v3, v4, :cond_d

    const/16 v0, 0xe

    if-eq v3, v0, :cond_c

    packed-switch v3, :pswitch_data_0

    .line 5866
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad format for Timestamp \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' in column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-direct {v0, v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v1, 0x0

    .line 5735
    invoke-virtual {v12, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    .line 5736
    invoke-virtual {v12, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5737
    invoke-virtual {v12, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0xd

    .line 5738
    invoke-virtual {v12, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x10

    .line 5739
    invoke-virtual {v12, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x11

    const/16 v6, 0x13

    .line 5740
    invoke-virtual {v12, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v26, v0

    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v27, v5

    goto/16 :goto_8

    :cond_c
    const/4 v1, 0x0

    .line 5746
    invoke-virtual {v12, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5747
    invoke-virtual {v12, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5748
    invoke-virtual {v12, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5749
    invoke-virtual {v12, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5750
    invoke-virtual {v12, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 5751
    invoke-virtual {v12, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v27, v0

    move/from16 v22, v1

    move/from16 v24, v2

    move/from16 v23, v3

    move/from16 v25, v5

    move/from16 v26, v6

    goto/16 :goto_8

    :cond_d
    const/4 v3, 0x0

    .line 5757
    invoke-virtual {v12, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v0, :cond_e

    add-int/lit8 v3, v3, 0x64

    :cond_e
    add-int/lit16 v3, v3, 0x76c

    .line 5765
    invoke-virtual {v12, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5766
    invoke-virtual {v12, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5767
    invoke-virtual {v12, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5768
    invoke-virtual {v12, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5769
    invoke-virtual {v12, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v23, v0

    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v22, v3

    move/from16 v27, v4

    move/from16 v26, v5

    goto/16 :goto_8

    .line 5775
    :cond_f
    iget-object v3, v10, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v3

    if-eq v3, v9, :cond_12

    const-string v3, "-"

    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v7, :cond_10

    goto :goto_3

    :cond_10
    const/4 v3, 0x0

    .line 5782
    invoke-virtual {v12, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v0, :cond_11

    add-int/lit8 v3, v3, 0x64

    .line 5788
    :cond_11
    invoke-virtual {v12, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5789
    invoke-virtual {v12, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5790
    invoke-virtual {v12, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5791
    invoke-virtual {v12, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit16 v3, v3, 0x76c

    move/from16 v23, v0

    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v22, v3

    move/from16 v26, v4

    goto/16 :goto_7

    :cond_12
    :goto_3
    const/4 v0, 0x0

    .line 5776
    invoke-virtual {v12, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    .line 5777
    invoke-virtual {v12, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5778
    invoke-virtual {v12, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    :cond_13
    const-string v0, ":"

    .line 5800
    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_14

    const/4 v0, 0x0

    .line 5801
    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    .line 5802
    invoke-virtual {v12, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5803
    invoke-virtual {v12, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x7b2

    move/from16 v25, v0

    move/from16 v26, v1

    move/from16 v27, v2

    const/16 v22, 0x7b2

    const/16 v23, 0x1

    const/16 v24, 0x1

    goto/16 :goto_8

    :cond_14
    const/4 v0, 0x0

    .line 5810
    invoke-virtual {v12, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5811
    invoke-virtual {v12, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 5812
    invoke-virtual {v12, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit16 v0, v0, -0x76c

    add-int/2addr v1, v7

    :goto_4
    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    goto :goto_6

    :cond_15
    const/4 v3, 0x0

    .line 5821
    invoke-virtual {v12, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v0, :cond_16

    add-int/lit8 v3, v3, 0x64

    :cond_16
    add-int/lit16 v3, v3, 0x76c

    .line 5829
    invoke-virtual {v12, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5830
    invoke-virtual {v12, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v0

    move/from16 v24, v1

    move/from16 v22, v3

    goto :goto_6

    :cond_17
    const/4 v2, 0x0

    .line 5836
    invoke-virtual {v12, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v0, :cond_18

    add-int/lit8 v2, v2, 0x64

    :cond_18
    add-int/lit16 v2, v2, 0x76c

    .line 5844
    invoke-virtual {v12, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    move/from16 v22, v2

    goto :goto_5

    :cond_19
    const/4 v2, 0x0

    .line 5852
    invoke-virtual {v12, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v0, :cond_1a

    add-int/lit8 v1, v1, 0x64

    :cond_1a
    add-int/lit16 v1, v1, 0x76c

    move/from16 v22, v1

    const/16 v23, 0x1

    :goto_5
    const/16 v24, 0x1

    :goto_6
    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_7
    const/16 v27, 0x0

    .line 5870
    :goto_8
    iget-boolean v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_1b

    move-object/from16 v21, p4

    .line 5871
    invoke-static/range {v21 .. v28}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 5874
    :cond_1b
    iget-object v13, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v1, p0

    move-object v2, v14

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v24

    move/from16 v6, v25

    move/from16 v7, v26

    move/from16 v8, v27

    move/from16 v9, v28

    invoke-virtual/range {v1 .. v9}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v16

    iget-object v0, v10, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v17

    move-object/from16 v15, p2

    move-object/from16 v18, p4

    move/from16 v19, p5

    invoke-static/range {v13 .. v19}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v12, p3

    .line 5879
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' from column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to TIMESTAMP."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1009"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 5881
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5883
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getTimestampInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5903
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-eqz v0, :cond_0

    .line 5904
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1

    .line 5909
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 5910
    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getStringInternal(IZ)Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v7, p3

    move v8, p4

    .line 5912
    invoke-direct/range {v3 .. v8}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestampFromString(ILjava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object p1

    goto :goto_0

    .line 5914
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 5915
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 5916
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 5918
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v4, p1, -0x1

    iget-object v8, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v9, p0

    invoke-virtual/range {v3 .. v9}, Lcom/mysql/jdbc/ResultSetRow;->getTimestampFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    .line 5922
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_1

    .line 5924
    :cond_2
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    :goto_1
    return-object p1
.end method

.method private issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    .line 6152
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 6153
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6155
    iget-object v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    instance-of v4, v4, Lcom/mysql/jdbc/PreparedStatement;

    if-eqz v4, :cond_0

    const-string v4, "ResultSet.CostlyConversionCreatedFromQuery"

    .line 6156
    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6157
    iget-object v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    check-cast v4, Lcom/mysql/jdbc/PreparedStatement;

    iget-object v4, v4, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    .line 6158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v4, "."

    .line 6160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6163
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6165
    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_1

    .line 6166
    aget v7, v0, v6

    invoke-static {v7}, Lcom/mysql/jdbc/MysqlDefs;->typeToName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    .line 6167
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "ResultSet.CostlyConversion"

    const/16 v6, 0x8

    .line 6170
    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    const/4 v7, 0x1

    add-int/lit8 v8, p2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v8, 0x2

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x3

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    const/4 v3, 0x5

    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v9

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->isBlob()Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    const/4 v5, 0x1

    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->isOpaqueBinary()Z

    move-result v11

    iget-object v7, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v12

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v5

    invoke-static/range {v7 .. v12}, Lcom/mysql/jdbc/ResultSetMetaData;->getClassNameForJavaType(IZIZZZ)Ljava/lang/String;

    move-result-object v5

    :goto_2
    aput-object v5, v6, v3

    const/4 v3, 0x6

    invoke-virtual/range {p4 .. p4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v5

    invoke-static {v5}, Lcom/mysql/jdbc/MysqlDefs;->typeToName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    const/4 v3, 0x7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v0, v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 6178
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    new-instance v3, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v8, 0x0

    const-string v9, ""

    iget-object v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v4, :cond_5

    const-string v4, "N/A"

    :goto_3
    move-object v10, v4

    goto :goto_4

    :cond_5
    iget-object v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    iget-object v4, v4, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    goto :goto_3

    :goto_4
    iget-wide v11, v1, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    iget-object v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v4, :cond_6

    const/4 v4, -0x1

    const/4 v13, -0x1

    goto :goto_5

    :cond_6
    iget-object v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v4}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v4

    move v13, v4

    :goto_5
    iget v14, v1, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    sget-object v19, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/16 v20, 0x0

    iget-object v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->pointOfOrigin:Ljava/lang/String;

    move-object v7, v3

    move-object/from16 v21, v4

    invoke-direct/range {v7 .. v22}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 6182
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private parseIntAsDouble(ILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6332
    :cond_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 6334
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p2, :cond_2

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double p2, v0, v2

    if-ltz p2, :cond_1

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double p2, v0, v2

    if-lez p2, :cond_2

    .line 6336
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x4

    invoke-direct {p0, p2, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_2
    double-to-int p1, v0

    return p1
.end method

.method private parseLongAsDouble(ILjava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 6374
    :cond_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 6376
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_2

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    const/4 v2, -0x5

    .line 6378
    invoke-direct {p0, p2, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_2
    double-to-long p1, v0

    return-wide p1
.end method

.method private parseLongWithOverflowCheck(I[BLjava/lang/String;Z)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    if-eqz p2, :cond_1

    .line 6405
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->getLong([B)J

    move-result-wide v0

    goto :goto_0

    .line 6414
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 6416
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    if-eqz p4, :cond_2

    .line 6419
    iget-boolean p3, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p3, :cond_2

    .line 6420
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->checkForLongTruncation(I[BJ)V

    :cond_2
    return-wide v0
.end method

.method private parseShortAsDouble(ILjava/lang/String;)S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6447
    :cond_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 6449
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p2, :cond_2

    const-wide/high16 v2, -0x3f20000000000000L    # -32768.0

    cmpg-double p2, v0, v2

    if-ltz p2, :cond_1

    const-wide v2, 0x40dfffc000000000L    # 32767.0

    cmpl-double p2, v0, v2

    if-lez p2, :cond_2

    .line 6451
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x5

    invoke-direct {p0, p2, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_2
    double-to-int p1, v0

    int-to-short p1, p1

    return p1
.end method

.method private parseShortWithOverflowCheck(I[BLjava/lang/String;)S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    .line 6467
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->getShort([B)S

    move-result v0

    goto :goto_0

    .line 6476
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 6478
    invoke-static {p3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    .line 6481
    :goto_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_6

    const/16 v1, -0x8000

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7fff

    if-ne v0, v1, :cond_6

    :cond_2
    if-nez p3, :cond_3

    .line 6483
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, p3

    :goto_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, -0x8000

    cmp-long v3, v1, v3

    if-ltz v3, :cond_4

    const-wide/16 v3, 0x7fff

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    :cond_4
    if-nez p3, :cond_5

    .line 6486
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object p3

    :cond_5
    const/4 p2, 0x5

    invoke-direct {p0, p3, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_6
    return v0
.end method

.method private setRowPositionValidity()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 800
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->isDynamic()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ResultSet.Illegal_operation_on_empty_result_set"

    .line 801
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    .line 802
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    goto :goto_0

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ResultSet.Before_start_of_result_set_146"

    .line 804
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    .line 805
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    goto :goto_0

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ResultSet.After_end_of_result_set_148"

    .line 807
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    .line 808
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 810
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    const/4 v0, 0x0

    .line 811
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private throwRangeException(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    packed-switch p3, :pswitch_data_0

    packed-switch p3, :pswitch_data_1

    .line 7055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (JDBC type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\')"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :pswitch_0
    const-string p3, "DOUBLE"

    goto :goto_0

    :pswitch_1
    const-string p3, "REAL"

    goto :goto_0

    :pswitch_2
    const-string p3, "FLOAT"

    goto :goto_0

    :pswitch_3
    const-string p3, "SMALLINT"

    goto :goto_0

    :pswitch_4
    const-string p3, "INTEGER"

    goto :goto_0

    :pswitch_5
    const-string p3, "DECIMAL"

    goto :goto_0

    :pswitch_6
    const-string p3, "BIGINT"

    goto :goto_0

    :pswitch_7
    const-string p3, "TINYINT"

    .line 7058
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in column \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' is outside valid range for the datatype "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string p3, "22003"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public absolute(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 555
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    if-eqz v1, :cond_1

    .line 556
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 559
    :cond_1
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v1, :cond_2

    .line 560
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 563
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v1, :cond_3

    .line 564
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    :cond_3
    if-nez p1, :cond_4

    .line 568
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->beforeFirst()V

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_5

    .line 571
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->first()Z

    move-result v2

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    .line 573
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->last()Z

    move-result v2

    goto :goto_1

    .line 574
    :cond_6
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v4}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v4

    if-le p1, v4, :cond_7

    .line 575
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->afterLast()V

    goto :goto_0

    :cond_7
    if-gez p1, :cond_9

    .line 580
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    add-int/2addr v1, p1

    add-int/2addr v1, v2

    if-gtz v1, :cond_8

    .line 583
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->beforeFirst()V

    goto :goto_0

    .line 586
    :cond_8
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->absolute(I)Z

    move-result p1

    move v2, p1

    goto :goto_1

    :cond_9
    add-int/2addr p1, v1

    .line 590
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/RowData;->setCurrentRow(I)V

    .line 591
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/RowData;->getAt(I)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 597
    :goto_1
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 599
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 600
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public afterLast()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 615
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 617
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 618
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 621
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v1, :cond_1

    .line 622
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 625
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v1, :cond_2

    .line 626
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 629
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 630
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->afterLast()V

    const/4 v1, 0x0

    .line 631
    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 634
    :cond_3
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 635
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public beforeFirst()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 650
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 652
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 653
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 656
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v1, :cond_1

    .line 657
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 661
    monitor-exit v0

    return-void

    .line 664
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v1, :cond_3

    .line 665
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 668
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->beforeFirst()V

    const/4 v1, 0x0

    .line 669
    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 671
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 672
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public buildIndexMapping()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    .line 684
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 685
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 686
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnNameToIndex:Ljava/util/Map;

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 696
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 697
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v3

    .line 698
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 699
    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/mysql/jdbc/Field;->getFullName()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_0

    .line 702
    iget-object v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    invoke-interface {v6, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v5, :cond_1

    .line 706
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v3, :cond_2

    .line 710
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnNameToIndex:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 715
    :cond_3
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->hasBuiltIndexMapping:Z

    return-void
.end method

.method public cancelRowUpdates()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 730
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method protected final checkClosed()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ResultSet.Operation_not_allowed_after_ResultSet_closed_144"

    .line 743
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1000"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected final checkColumnBounds(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 760
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt p1, v3, :cond_3

    .line 766
    :try_start_0
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v4, v4

    if-gt p1, v4, :cond_2

    .line 773
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->profileSql:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v1, :cond_1

    .line 774
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    sub-int/2addr p1, v3

    aput-boolean v3, v1, p1

    .line 776
    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    const-string v4, "ResultSet.Column_Index_out_of_range_high"

    .line 767
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v4, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_3
    const-string v4, "ResultSet.Column_Index_out_of_range_low"

    .line 762
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v4, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 776
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected checkRowPos()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 787
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 789
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->onValidRow:Z

    if-eqz v0, :cond_0

    return-void

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->invalidRowReason:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1000"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized clearNextResult()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 820
    :try_start_0
    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 819
    monitor-exit p0

    throw v0
.end method

.method public clearWarnings()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 831
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 832
    :try_start_0
    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 833
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

    .line 851
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->realClose(Z)V

    return-void
.end method

.method public copy()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 877
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 878
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v1

    .line 880
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 881
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 917
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method protected fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 945
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_1

    .line 949
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNoTimezoneConversionForDateType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getFastClientCalendar()Ljava/util/Calendar;

    move-result-object v1

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 952
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getFastDefaultCalendar()Ljava/util/Calendar;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    move-object v3, p1

    .line 956
    :goto_1
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_2

    .line 957
    invoke-static {p2, p3, p4, v3}, Lcom/mysql/jdbc/TimeUtil;->fastDateCreate(IIILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2
    if-nez p1, :cond_3

    .line 960
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getNoTimezoneConversionForDateType()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getUseGmtMillisForDatetimes()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 962
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getGmtCalendar()Ljava/util/Calendar;

    move-result-object p1

    move-object v2, p1

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/TimeUtil;->fastDateCreate(ZLjava/util/Calendar;Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 963
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 967
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 968
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_0

    .line 969
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p2, p3, p4, p1, v1}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(IIILjava/util/Calendar;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 973
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getFastDefaultCalendar()Ljava/util/Calendar;

    move-result-object p1

    .line 976
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, p3, p4, v1}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(Ljava/util/Calendar;IIILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 977
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v1, p0

    .line 982
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 983
    :try_start_0
    iget-boolean v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_0

    .line 984
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v3 .. v10}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v0

    monitor-exit v2

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    .line 988
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getFastDefaultCalendar()Ljava/util/Calendar;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v5, p1

    .line 991
    :goto_0
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseGmtMillisForDatetimes()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 993
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getGmtCalendar()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move-object v4, v0

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v3 .. v12}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(ZLjava/util/Calendar;Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    .line 995
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public findColumn(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1038
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1041
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->hasBuiltIndexMapping:Z

    if-nez v1, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->buildIndexMapping()V

    .line 1045
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1048
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    monitor-exit v0

    return p1

    .line 1051
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 1053
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->useColumnNamesInFindColumn:Z

    if-eqz v2, :cond_2

    .line 1054
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnNameToIndex:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :cond_2
    if-nez v1, :cond_3

    .line 1058
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :cond_3
    if-eqz v1, :cond_4

    .line 1062
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    monitor-exit v0

    return p1

    :cond_4
    const/4 v1, 0x0

    .line 1069
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 1070
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 1071
    monitor-exit v0

    return v1

    .line 1072
    :cond_5
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 1073
    monitor-exit v0

    return v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1077
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultSet.Column____112"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ResultSet.___not_found._113"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "S0022"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 1079
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public first()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1096
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1100
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1104
    :cond_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    if-eqz v2, :cond_1

    .line 1105
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 1108
    :cond_1
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v2, :cond_2

    .line 1109
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 1112
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->beforeFirst()V

    .line 1113
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->next()Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 1116
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 1118
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getArray(I)Ljava/sql/Array;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1135
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 1137
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1153
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getArray(I)Ljava/sql/Array;

    move-result-object p1

    return-object p1
.end method

.method public getAsciiStream(I)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1180
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 1182
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_0

    .line 1183
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 1186
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBinaryStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getAsciiStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1195
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getAsciiStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1212
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_2

    .line 1213
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1217
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1219
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroLiteralStringWithEmptyCheck()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 1225
    :cond_0
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v1, 0x2

    .line 1229
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "ResultSet.Bad_format_for_BigDecimal"

    invoke-static {p1, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 1238
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getBigDecimal(II)Ljava/math/BigDecimal;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1259
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_3

    .line 1260
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1264
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v1, :cond_0

    .line 1265
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroLiteralStringWithEmptyCheck()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1268
    :try_start_0
    invoke-virtual {v1, p2}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 1271
    :catch_0
    :try_start_1
    invoke-virtual {v1, p2, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    .line 1273
    :catch_1
    new-array p2, v4, [Ljava/lang/Object;

    aput-object v0, p2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v5

    const-string p1, "ResultSet.Bad_format_for_BigDecimal"

    invoke-static {p1, p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 1281
    :cond_0
    :try_start_2
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1283
    :catch_2
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v6, p1, -0x1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v6, 0x10

    if-ne v1, v6, :cond_1

    .line 1284
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v6

    .line 1286
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v6, v7}, Ljava/math/BigDecimal;-><init>(J)V

    .line 1295
    :goto_0
    :try_start_3
    invoke-virtual {v1, p2}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v6

    .line 1298
    :catch_3
    :try_start_4
    invoke-virtual {v1, p2, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2
    :try_end_4
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_4

    return-object p2

    .line 1300
    :catch_4
    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    aput-object v0, p2, v5

    const-string p1, "ResultSet.Bad_format_for_BigDecimal"

    invoke-static {p1, p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 1288
    :cond_1
    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    aput-object v0, p2, v5

    const-string p1, "ResultSet.Bad_format_for_BigDecimal"

    invoke-static {p1, p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 1310
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1326
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getBigDecimal(Ljava/lang/String;I)Ljava/math/BigDecimal;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1339
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getBinaryStream(I)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1422
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 1424
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_1

    .line 1425
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 1429
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1430
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1435
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1437
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetRow;->getBinaryInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 1440
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBinaryStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getBinaryStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1449
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1464
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_3

    .line 1465
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 1467
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    add-int/lit8 v0, p1, -0x1

    .line 1471
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1472
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1474
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1477
    :goto_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1481
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEmulateLocators()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1482
    new-instance p1, Lcom/mysql/jdbc/Blob;

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/mysql/jdbc/Blob;-><init>([BLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object p1

    .line 1485
    :cond_2
    new-instance v0, Lcom/mysql/jdbc/BlobFromLocator;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/mysql/jdbc/BlobFromLocator;-><init>(Lcom/mysql/jdbc/ResultSetImpl;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0

    .line 1488
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBlob(I)Ljava/sql/Blob;

    move-result-object p1

    return-object p1
.end method

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1503
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBlob(I)Ljava/sql/Blob;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1519
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    add-int/lit8 v0, p1, -0x1

    .line 1527
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    .line 1529
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 1530
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->byteArrayToBoolean(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 v2, 0x0

    .line 1533
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1535
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v4

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x1

    if-eq v4, v3, :cond_8

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 1562
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x46

    if-eq v4, v1, :cond_1

    const/16 v1, 0x7d0

    if-eq v4, v1, :cond_1

    packed-switch v4, :pswitch_data_2

    packed-switch v4, :pswitch_data_3

    packed-switch v4, :pswitch_data_4

    goto :goto_0

    .line 1578
    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string v0, "Required type conversion not allowed"

    const-string v1, "22018"

    invoke-static {v0, v1, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    const/4 v1, -0x2

    if-eq v4, v1, :cond_5

    const/4 v1, -0x3

    if-eq v4, v1, :cond_5

    const/4 v1, -0x4

    if-eq v4, v1, :cond_5

    const/16 v1, 0x7d4

    if-ne v4, v1, :cond_3

    goto :goto_1

    .line 1587
    :cond_3
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v1, :cond_4

    const-string v3, "getBoolean()"

    .line 1588
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v5

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v0, p1

    const/4 v0, 0x7

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 1593
    :cond_4
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1595
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBooleanFromString(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1584
    :cond_5
    :goto_1
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->byteArrayToBoolean(I)Z

    move-result p1

    return p1

    .line 1558
    :pswitch_1
    invoke-direct {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(IZ)J

    move-result-wide v0

    cmp-long p1, v0, v7

    if-eqz p1, :cond_6

    cmp-long p1, v0, v5

    if-lez p1, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    return v2

    .line 1539
    :cond_8
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 1540
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1542
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBooleanFromString(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1545
    :cond_9
    invoke-direct {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(IZ)J

    move-result-wide v0

    cmp-long p1, v0, v7

    if-eqz p1, :cond_a

    cmp-long p1, v0, v5

    if-lez p1, :cond_b

    :cond_a
    const/4 v2, 0x1

    :cond_b
    return v2

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7d2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x10
        0x5
        0x1
        0x2
        0x3
        0x8
        0x4
    .end array-data
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1631
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public getByte(I)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1656
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_2

    .line 1657
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1659
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1663
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getByteFromString(Ljava/lang/String;I)B

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 1666
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(I)B

    move-result p1

    return p1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1675
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getByte(I)B

    move-result p1

    return p1
.end method

.method public getBytes(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1744
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(IZ)[B

    move-result-object p1

    return-object p1
.end method

.method protected getBytes(IZ)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1748
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_2

    .line 1749
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 1751
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    .line 1755
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1756
    iput-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1758
    iput-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1761
    :goto_0
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1765
    :cond_1
    iget-object p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {p2, p1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object p1

    return-object p1

    .line 1768
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object p1

    return-object p1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1777
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getBytesSize()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1790
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    .line 1792
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1794
    instance-of v1, v0, Lcom/mysql/jdbc/RowDataStatic;

    if-eqz v1, :cond_1

    .line 1797
    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1800
    invoke-interface {v0, v2}, Lcom/mysql/jdbc/RowData;->getAt(I)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mysql/jdbc/ResultSetRow;->getBytesSize()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method protected getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1814
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1815
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_0

    .line 1816
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1820
    :cond_0
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1821
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1840
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_1

    .line 1841
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 1845
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1846
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1851
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 1853
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetRow;->getReader(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1

    .line 1856
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1875
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getClob(I)Ljava/sql/Clob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1898
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_1

    .line 1899
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringForClob(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1905
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/Clob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/mysql/jdbc/Clob;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0

    .line 1908
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeClob(I)Ljava/sql/Clob;

    move-result-object p1

    return-object p1
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1923
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getClob(I)Ljava/sql/Clob;

    move-result-object p1

    return-object p1
.end method

.method public getConcurrency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3ef

    return v0
.end method

.method public getCursorName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "ResultSet.Positioned_Update_not_supported"

    .line 1966
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1C00"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1982
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2002
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-eqz v0, :cond_0

    .line 2003
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1

    .line 2006
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastDateParsing:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2007
    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 2013
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getDateFromString(Ljava/lang/String;ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1

    .line 2016
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 2019
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v3, p1, v4, p0, p2}, Lcom/mysql/jdbc/ResultSetRow;->getDateFast(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object p2

    .line 2020
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v3, p1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result p1

    if-nez p1, :cond_4

    if-nez p2, :cond_3

    goto :goto_0

    .line 2027
    :cond_3
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object p2

    .line 2022
    :cond_4
    :goto_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object v1
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2038
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(I)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2057
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2239
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_0

    .line 2240
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDoubleInternal(I)D

    move-result-wide v0

    return-wide v0

    .line 2243
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2252
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method protected getDoubleInternal(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2272
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDoubleInternal(Ljava/lang/String;I)D

    move-result-wide v0

    return-wide v0
.end method

.method protected getDoubleInternal(Ljava/lang/String;I)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 2295
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2296
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    int-to-double p1, v0

    return-wide p1

    .line 2299
    :cond_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 2301
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->useStrictFloatingPoint:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide p1, 0x47b99999843e2660L    # 3.4028235E37

    const-wide v3, 0x369ff868bf4d956aL    # 1.4E-45

    if-eqz v2, :cond_9

    const-wide/high16 v5, 0x41e0000000000000L    # 2.147483648E9

    cmpl-double v2, v0, v5

    if-nez v2, :cond_2

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    goto :goto_2

    :cond_2
    const-wide v5, 0x3cd203afa0000020L    # 1.0000000036275E-15

    cmpl-double v2, v0, v5

    if-nez v2, :cond_3

    const-wide v0, 0x3cd203af9ee75616L    # 1.0E-15

    goto :goto_2

    :cond_3
    const-wide v5, 0x430c6bf51fffffe0L    # 9.999999869911E14

    cmpl-double v2, v0, v5

    if-nez v2, :cond_4

    const-wide v0, 0x430c6bf52633fff8L    # 9.99999999999999E14

    goto :goto_2

    :cond_4
    const-wide v5, 0x369fffffffffff92L    # 1.4012984643248E-45

    cmpl-double v2, v0, v5

    if-nez v2, :cond_5

    :goto_0
    move-wide v0, v3

    goto :goto_2

    :cond_5
    const-wide v5, 0x36a00001262d4ab6L    # 1.4013E-45

    cmpl-double v2, v0, v5

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const-wide v2, 0x47b9999980000018L    # 3.4028234663853E37

    cmpl-double v2, v0, v2

    if-nez v2, :cond_7

    :goto_1
    move-wide v0, p1

    goto :goto_2

    :cond_7
    const-wide v2, -0x3e20000390000000L    # -2.14748E9

    cmpl-double v2, v0, v2

    if-nez v2, :cond_8

    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    goto :goto_2

    :cond_8
    const-wide v2, 0x47b99997ca7b0cf0L    # 3.40282E37

    cmpl-double v2, v0, v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    :goto_2
    return-wide v0

    :catch_0
    nop

    .line 2326
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    .line 2327
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide p1

    long-to-double p1, p1

    return-wide p1

    :cond_a
    const/4 v0, 0x2

    .line 2332
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "ResultSet.Bad_format_for_number"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .line 7891
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method public getFetchDirection()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2346
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2347
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchDirection:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2348
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFetchSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2360
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2361
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchSize:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2362
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFirstCharOfQuery()C
    .locals 2

    .line 2373
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2374
    :try_start_1
    iget-char v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->firstCharOfQuery:C

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2375
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 2377
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFloat(I)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2393
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_0

    .line 2396
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2398
    invoke-direct {p0, v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloatFromString(Ljava/lang/String;I)F

    move-result p1

    return p1

    .line 2401
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2410
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result p1

    return p1
.end method

.method protected getGmtCalendar()Ljava/util/Calendar;
    .locals 1

    .line 7883
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->gmtCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const-string v0, "GMT"

    .line 7884
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->gmtCalendar:Ljava/util/Calendar;

    .line 7887
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->gmtCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getInt(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2472
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 2473
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2475
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_9

    add-int/lit8 v0, p1, -0x1

    .line 2478
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 2479
    iput-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return v2

    .line 2482
    :cond_0
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2484
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    .line 2485
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    .line 2487
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_2

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 2488
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, v2, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_2
    long-to-int p1, v0

    return p1

    .line 2494
    :cond_3
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    if-eqz v1, :cond_5

    .line 2495
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->length(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    .line 2496
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result p1

    return p1

    .line 2499
    :cond_4
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isFloatingPointNumber(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2503
    :try_start_0
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getIntWithOverflowCheck(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2506
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->parseIntAsDouble(ILjava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    .line 2512
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Invalid_value_for_getInt()_-____74"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v0, v2, v3}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_5
    const/4 v1, 0x0

    .line 2522
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v3, :cond_6

    return v2

    .line 2527
    :cond_6
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 2528
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    return v0

    :cond_7
    const-string v2, "e"

    .line 2531
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_8

    const-string v2, "E"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_8

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_8

    .line 2532
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2534
    invoke-direct {p0, v0, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->checkForIntegerTruncation(I[BI)V

    return v2

    .line 2540
    :cond_8
    invoke-direct {p0, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->parseIntAsDouble(ILjava/lang/String;)I

    move-result v0

    .line 2542
    invoke-direct {p0, p1, v1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->checkForIntegerTruncation(I[BI)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return v0

    :catch_2
    move-object v3, v1

    .line 2548
    :catch_3
    :try_start_4
    invoke-direct {p0, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->parseIntAsDouble(ILjava/lang/String;)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    return p1

    .line 2553
    :catch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ResultSet.Invalid_value_for_getInt()_-____74"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 2558
    :cond_9
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2567
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2650
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2735
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2779
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 2781
    new-instance v0, Lcom/mysql/jdbc/ResultSetMetaData;

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseOldAliasMetadataBehavior()Z

    move-result v2

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mysql/jdbc/ResultSetMetaData;-><init>([Lcom/mysql/jdbc/Field;ZZLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method protected getNativeArray(I)Ljava/sql/Array;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2798
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected getNativeAsciiStream(I)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2825
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 2827
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBinaryStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method protected getNativeBigDecimal(I)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2845
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2847
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getDecimals()I

    move-result v0

    .line 2849
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method protected getNativeBigDecimal(II)Ljava/math/BigDecimal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2867
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2871
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    .line 2873
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    .line 2876
    iput-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    .line 2881
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2883
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2889
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2886
    :pswitch_0
    check-cast v1, [B

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v0

    .line 2892
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimalFromString(Ljava/lang/String;II)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getNativeBinaryStream(I)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2913
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    add-int/lit8 v0, p1, -0x1

    .line 2917
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 2918
    iput-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object v2

    :cond_0
    const/4 v1, 0x0

    .line 2923
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2925
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v3

    const/4 v4, -0x7

    if-eq v3, v4, :cond_2

    const/16 v4, 0x7d4

    if-eq v3, v4, :cond_2

    packed-switch v3, :pswitch_data_0

    .line 2934
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2937
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_1
    return-object v2

    .line 2931
    :cond_2
    :pswitch_0
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/ResultSetRow;->getBinaryInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getNativeBlob(I)Ljava/sql/Blob;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2955
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 2957
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 2959
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    .line 2962
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0

    .line 2964
    :cond_0
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 2967
    :goto_0
    iget-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v3, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 2971
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2984
    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBytes(IZ)[B

    move-result-object v0

    goto :goto_1

    .line 2980
    :pswitch_0
    check-cast v0, [B

    .line 2987
    :goto_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEmulateLocators()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2988
    new-instance p1, Lcom/mysql/jdbc/Blob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/mysql/jdbc/Blob;-><init>([BLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object p1

    .line 2991
    :cond_2
    new-instance v0, Lcom/mysql/jdbc/BlobFromLocator;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/mysql/jdbc/BlobFromLocator;-><init>(Lcom/mysql/jdbc/ResultSetImpl;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xf9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getNativeByte(I)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3024
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(IZ)B

    move-result p1

    return p1
.end method

.method protected getNativeByte(IZ)B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3028
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3030
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 3032
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 3035
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return v1

    .line 3040
    :cond_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    add-int/lit8 p1, p1, -0x1

    .line 3044
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, p1

    .line 3046
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    const/16 v5, 0xd

    const/16 v6, -0x80

    const/16 v7, 0x7f

    const/4 v8, -0x6

    if-eq v4, v5, :cond_10

    const/16 v5, 0x10

    const-wide/16 v9, 0x7f

    const-wide/16 v11, -0x80

    if-eq v4, v5, :cond_d

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 3130
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz p2, :cond_1

    const-string v4, "getByte()"

    .line 3131
    iget-object p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p2, v0}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v6

    iget-object p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v7, p2, p1

    const/4 p2, 0x6

    new-array v8, p2, [I

    fill-array-data v8, :array_0

    move-object v3, p0

    move v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    :cond_1
    add-int/2addr p1, v2

    .line 3136
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getByteFromString(Ljava/lang/String;I)B

    move-result p1

    return p1

    :pswitch_0
    add-int/2addr p1, v2

    .line 3119
    invoke-virtual {p0, p1, v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v0

    if-eqz p2, :cond_3

    .line 3121
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p2, :cond_3

    cmp-long p2, v0, v11

    if-ltz p2, :cond_2

    cmp-long p2, v0, v9

    if-lez p2, :cond_3

    .line 3123
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1, v8}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_3
    long-to-int p1, v0

    int-to-byte p1, p1

    return p1

    :pswitch_1
    add-int/2addr p1, v2

    .line 3108
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v0

    if-eqz p2, :cond_5

    .line 3110
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p2, :cond_5

    const-wide/high16 v2, -0x3fa0000000000000L    # -128.0

    cmpg-double p2, v0, v2

    if-ltz p2, :cond_4

    const-wide v2, 0x405fc00000000000L    # 127.0

    cmpl-double p2, v0, v2

    if-lez p2, :cond_5

    .line 3112
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1, v8}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_5
    double-to-int p1, v0

    int-to-byte p1, p1

    return p1

    :pswitch_2
    add-int/2addr p1, v2

    .line 3096
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result v0

    if-eqz p2, :cond_7

    .line 3098
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p2, :cond_7

    const/high16 p2, -0x3d000000    # -128.0f

    cmpg-float p2, v0, p2

    if-ltz p2, :cond_6

    const/high16 p2, 0x42fe0000    # 127.0f

    cmpl-float p2, v0, p2

    if-lez p2, :cond_7

    .line 3101
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1, v8}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_7
    float-to-int p1, v0

    int-to-byte p1, p1

    return p1

    :pswitch_3
    add-int/2addr p1, v2

    .line 3085
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result v0

    if-eqz p2, :cond_9

    .line 3087
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p2, :cond_9

    if-lt v0, v6, :cond_8

    if-le v0, v7, :cond_9

    .line 3089
    :cond_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1, v8}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_9
    int-to-byte p1, v0

    return p1

    .line 3056
    :pswitch_4
    check-cast v0, [B

    aget-byte v0, v0, v1

    .line 3058
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    :cond_a
    if-ltz v0, :cond_b

    :goto_0
    int-to-short v0, v0

    goto :goto_1

    :cond_b
    add-int/lit16 v0, v0, 0x100

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_c

    .line 3064
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p2, :cond_c

    if-le v0, v7, :cond_c

    .line 3066
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    add-int/2addr p1, v2

    invoke-direct {p0, p2, p1, v8}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_c
    int-to-byte p1, v0

    return p1

    :cond_d
    add-int/2addr p1, v2

    .line 3048
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    if-eqz p2, :cond_f

    .line 3050
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p2, :cond_f

    cmp-long p2, v0, v11

    if-ltz p2, :cond_e

    cmp-long p2, v0, v9

    if-lez p2, :cond_f

    .line 3051
    :cond_e
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1, v8}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_f
    long-to-int p1, v0

    int-to-byte p1, p1

    return p1

    :cond_10
    :pswitch_5
    add-int/2addr p1, v2

    .line 3074
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result v0

    if-eqz p2, :cond_12

    .line 3076
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p2, :cond_12

    if-lt v0, v6, :cond_11

    if-le v0, v7, :cond_12

    .line 3078
    :cond_11
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1, v8}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_12
    int-to-byte p1, v0

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0x5
        0x1
        0x2
        0x3
        0x8
        0x4
    .end array-data
.end method

.method protected getNativeBytes(IZ)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3156
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3158
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 3160
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    .line 3163
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3165
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3168
    :goto_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 3172
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v2, v1

    .line 3174
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    if-eqz p2, :cond_2

    const/16 v2, 0xfc

    :cond_2
    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 3187
    :pswitch_0
    check-cast v0, [B

    return-object v0

    .line 3192
    :pswitch_1
    instance-of p2, v0, [B

    if-eqz p2, :cond_3

    .line 3193
    check-cast v0, [B

    return-object v0

    .line 3199
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result p2

    const/4 v1, -0x3

    if-eq p2, v1, :cond_5

    const/4 v1, -0x2

    if-ne p2, v1, :cond_4

    goto :goto_2

    .line 3205
    :cond_4
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 3202
    :cond_5
    :goto_2
    check-cast v0, [B

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected getNativeCharacterStream(I)Ljava/io/Reader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    .line 3226
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    if-eq v1, v4, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d5

    if-eq v1, v2, :cond_1

    .line 3242
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringForClob(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v3

    .line 3248
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getCharacterStreamFromString(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    return-object p1

    .line 3231
    :cond_1
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3232
    iput-boolean v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object v3

    :cond_2
    const/4 p1, 0x0

    .line 3237
    iput-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3239
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/ResultSetRow;->getReader(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method protected getNativeClob(I)Ljava/sql/Clob;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3263
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringForClob(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3269
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getClobFromString(Ljava/lang/String;)Ljava/sql/Clob;

    move-result-object p1

    return-object p1
.end method

.method protected getNativeDate(I)Ljava/sql/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3574
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method protected getNativeDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3594
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3595
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    const/4 v0, 0x1

    add-int/lit8 v2, p1, -0x1

    .line 3599
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v5

    const/4 p1, 0x0

    const/16 v1, 0xa

    if-ne v5, v1, :cond_0

    .line 3605
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v2, v3, p0, p2}, Lcom/mysql/jdbc/ResultSetRow;->getNativeDate(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object p2

    goto :goto_3

    :cond_0
    if-eqz p2, :cond_1

    .line 3607
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    :goto_0
    move-object v6, p2

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    goto :goto_0

    :goto_1
    if-eqz v6, :cond_2

    .line 3609
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 3611
    :goto_2
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    const/4 v3, 0x0

    const/16 v4, 0x5b

    iget-object v8, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/mysql/jdbc/ResultSetRow;->getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/sql/Date;

    :goto_3
    if-nez p2, :cond_3

    .line 3621
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    const/4 p1, 0x0

    return-object p1

    .line 3626
    :cond_3
    iput-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object p2
.end method

.method getNativeDateViaParseConversion(I)Ljava/sql/Date;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3632
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_0

    const-string v2, "getDate()"

    .line 3633
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v4

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v5, v0, v1

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/16 v1, 0xa

    aput v1, v6, v0

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 3637
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3639
    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getDateFromString(Ljava/lang/String;ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method protected getNativeDouble(I)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3654
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3655
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    add-int/lit8 v2, p1, -0x1

    .line 3659
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3660
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/4 p1, 0x0

    .line 3665
    iput-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3667
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object p1, p1, v2

    .line 3669
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_6

    const/16 v3, 0x10

    if-eq v1, v3, :cond_5

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    add-int/lit8 p1, v2, 0x1

    .line 3709
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v6

    .line 3711
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_1

    const-string v1, "getDouble()"

    .line 3712
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v2

    const/4 v0, 0x6

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 3717
    :cond_1
    invoke-direct {p0, v6, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDoubleFromString(Ljava/lang/String;I)D

    move-result-wide v0

    return-wide v0

    :pswitch_0
    add-int/2addr v2, v0

    .line 3693
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(I)J

    move-result-wide v0

    .line 3695
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-nez p1, :cond_2

    long-to-double v0, v0

    return-wide v0

    .line 3699
    :cond_2
    invoke-static {v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object p1

    .line 3703
    invoke-virtual {p1}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 3671
    :pswitch_1
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/ResultSetRow;->getNativeDouble(I)D

    move-result-wide v0

    return-wide v0

    :pswitch_2
    add-int/2addr v2, v0

    .line 3705
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result p1

    float-to-double v0, p1

    return-wide v0

    .line 3687
    :pswitch_3
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-nez p1, :cond_3

    add-int/2addr v2, v0

    .line 3688
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result p1

    int-to-double v0, p1

    return-wide v0

    :cond_3
    add-int/2addr v2, v0

    .line 3691
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 3673
    :pswitch_4
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-nez p1, :cond_4

    add-int/2addr v2, v0

    .line 3674
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(I)B

    move-result p1

    int-to-double v0, p1

    return-wide v0

    :cond_4
    add-int/2addr v2, v0

    .line 3677
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result p1

    int-to-double v0, p1

    return-wide v0

    :cond_5
    add-int/2addr v2, v0

    .line 3707
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 3680
    :cond_6
    :pswitch_5
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-nez p1, :cond_7

    add-int/2addr v2, v0

    .line 3681
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result p1

    int-to-double v0, p1

    return-wide v0

    :cond_7
    add-int/2addr v2, v0

    .line 3684
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result p1

    int-to-double v0, p1

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0x5
        0x1
        0x2
        0x3
        0x8
        0x4
    .end array-data
.end method

.method protected getNativeFloat(I)F
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3733
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3734
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    add-int/lit8 v2, p1, -0x1

    .line 3738
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3739
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3744
    iput-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3746
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object p1, p1, v2

    .line 3748
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_9

    const/16 v3, 0x10

    if-eq v1, v3, :cond_8

    const/4 v3, 0x6

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    add-int/lit8 p1, v2, 0x1

    .line 3803
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v6

    .line 3805
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_1

    const-string v1, "getFloat()"

    .line 3806
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v2

    new-array v5, v3, [I

    fill-array-data v5, :array_0

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 3811
    :cond_1
    invoke-direct {p0, v6, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloatFromString(Ljava/lang/String;I)F

    move-result p1

    return p1

    :pswitch_0
    add-int/2addr v2, v0

    .line 3787
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(I)J

    move-result-wide v0

    .line 3789
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-nez p1, :cond_2

    long-to-float p1, v0

    return p1

    .line 3793
    :cond_2
    invoke-static {v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object p1

    .line 3797
    invoke-virtual {p1}, Ljava/math/BigInteger;->floatValue()F

    move-result p1

    return p1

    .line 3757
    :pswitch_1
    new-instance p1, Ljava/lang/Double;

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    .line 3759
    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 3761
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v1, :cond_3

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    :cond_3
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 3762
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v3}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 3765
    :cond_5
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    .line 3800
    :pswitch_2
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/ResultSetRow;->getNativeFloat(I)F

    move-result p1

    return p1

    .line 3781
    :pswitch_3
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-nez p1, :cond_6

    add-int/2addr v2, v0

    .line 3782
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result p1

    int-to-float p1, p1

    return p1

    :cond_6
    add-int/2addr v2, v0

    .line 3785
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(I)J

    move-result-wide v0

    long-to-float p1, v0

    return p1

    .line 3767
    :pswitch_4
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-nez p1, :cond_7

    add-int/2addr v2, v0

    .line 3768
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(I)B

    move-result p1

    int-to-float p1, p1

    return p1

    :cond_7
    add-int/2addr v2, v0

    .line 3771
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result p1

    int-to-float p1, p1

    return p1

    :cond_8
    add-int/2addr v2, v0

    .line 3750
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    long-to-float p1, v0

    return p1

    .line 3774
    :cond_9
    :pswitch_5
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-nez p1, :cond_a

    add-int/2addr v2, v0

    .line 3775
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result p1

    int-to-float p1, p1

    return p1

    :cond_a
    add-int/2addr v2, v0

    .line 3778
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result p1

    int-to-float p1, p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0x5
        0x1
        0x2
        0x3
        0x8
        0x4
    .end array-data
.end method

.method protected getNativeInt(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3827
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result p1

    return p1
.end method

.method protected getNativeInt(IZ)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 3831
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3832
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    add-int/lit8 v2, p1, -0x1

    .line 3836
    iget-object v1, v6, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 3837
    iput-boolean v4, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return v3

    .line 3842
    :cond_0
    iput-boolean v3, v6, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3844
    iget-object v1, v6, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v2

    .line 3846
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v5

    const/16 v7, 0xd

    if-eq v5, v7, :cond_10

    const/16 v7, 0x10

    const-wide/32 v8, -0x80000000

    const-wide/32 v10, 0x7fffffff

    const/4 v12, 0x4

    if-eq v5, v7, :cond_d

    const-wide v13, 0x41dfffffffc00000L    # 2.147483647E9

    const-wide/high16 v15, -0x3e20000000000000L    # -2.147483648E9

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    add-int/lit8 v7, v2, 0x1

    .line 3920
    invoke-virtual {v6, v7}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v8

    .line 3922
    iget-boolean v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_1

    const-string v1, "getInt()"

    .line 3923
    iget-object v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v2

    const/4 v0, 0x6

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    move-object/from16 v0, p0

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 3928
    :cond_1
    invoke-direct {v6, v8, v7}, Lcom/mysql/jdbc/ResultSetImpl;->getIntFromString(Ljava/lang/String;I)I

    move-result v0

    return v0

    :pswitch_0
    add-int/2addr v2, v4

    .line 3889
    invoke-virtual {v6, v2, v3, v4}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v3

    if-eqz p2, :cond_3

    .line 3891
    iget-boolean v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v0, :cond_3

    cmp-long v0, v3, v8

    if-ltz v0, :cond_2

    cmp-long v0, v3, v10

    if-lez v0, :cond_3

    .line 3893
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v2, v12}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_3
    long-to-int v0, v3

    return v0

    :pswitch_1
    add-int/2addr v2, v4

    .line 3899
    invoke-virtual {v6, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v3

    if-eqz p2, :cond_5

    .line 3901
    iget-boolean v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v0, :cond_5

    cmpg-double v0, v3, v15

    if-ltz v0, :cond_4

    cmpl-double v0, v3, v13

    if-lez v0, :cond_5

    .line 3903
    :cond_4
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v2, v12}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_5
    double-to-int v0, v3

    return v0

    :pswitch_2
    add-int/2addr v2, v4

    .line 3909
    invoke-virtual {v6, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result v1

    float-to-double v3, v1

    if-eqz p2, :cond_7

    .line 3911
    iget-boolean v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v0, :cond_7

    cmpg-double v0, v3, v15

    if-ltz v0, :cond_6

    cmpl-double v0, v3, v13

    if-lez v0, :cond_7

    .line 3913
    :cond_6
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v2, v12}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_7
    double-to-int v0, v3

    return v0

    .line 3875
    :pswitch_3
    iget-object v3, v6, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v3, v2}, Lcom/mysql/jdbc/ResultSetRow;->getNativeInt(I)I

    move-result v3

    .line 3877
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    if-ltz v3, :cond_9

    int-to-long v7, v3

    goto :goto_0

    :cond_9
    int-to-long v7, v3

    const-wide v13, 0x100000000L

    add-long/2addr v7, v13

    :goto_0
    if-eqz p2, :cond_a

    .line 3883
    iget-boolean v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v0, :cond_a

    cmp-long v0, v7, v10

    if-lez v0, :cond_a

    .line 3884
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v4

    invoke-direct {v6, v0, v2, v12}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_a
    long-to-int v0, v7

    return v0

    :pswitch_4
    add-int/2addr v2, v4

    .line 3856
    invoke-virtual {v6, v2, v3}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(IZ)B

    move-result v0

    .line 3858
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_c

    if-ltz v0, :cond_b

    goto :goto_1

    :cond_b
    add-int/lit16 v0, v0, 0x100

    return v0

    :cond_c
    :goto_1
    return v0

    :cond_d
    add-int/2addr v2, v4

    .line 3848
    invoke-direct {v6, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v3

    if-eqz p2, :cond_f

    .line 3850
    iget-boolean v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v0, :cond_f

    cmp-long v0, v3, v8

    if-ltz v0, :cond_e

    cmp-long v0, v3, v10

    if-lez v0, :cond_f

    .line 3851
    :cond_e
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v2, v12}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_f
    long-to-int v0, v3

    return v0

    :cond_10
    :pswitch_5
    add-int/2addr v2, v4

    .line 3865
    invoke-virtual {v6, v2, v3}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(IZ)S

    move-result v0

    .line 3867
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_12

    if-ltz v0, :cond_11

    goto :goto_2

    :cond_11
    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    return v0

    :cond_12
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0x5
        0x1
        0x2
        0x3
        0x8
        0x4
    .end array-data
.end method

.method protected getNativeLong(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3944
    invoke-virtual {p0, p1, v0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getNativeLong(IZZ)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3948
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 3949
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    add-int/lit8 v2, p1, -0x1

    .line 3953
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3954
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    const/4 p1, 0x0

    .line 3959
    iput-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 3961
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v2

    .line 3963
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_f

    const/16 v4, 0x10

    if-eq v3, v4, :cond_e

    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    const-wide/high16 v6, -0x3c20000000000000L    # -9.223372036854776E18

    const/4 v8, -0x5

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    add-int/lit8 p1, v2, 0x1

    .line 4027
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object p2

    .line 4029
    iget-boolean p3, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz p3, :cond_1

    const-string v1, "getLong()"

    .line 4030
    iget-object p3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, p3, v2

    const/4 p3, 0x6

    new-array v5, p3, [I

    fill-array-data v5, :array_0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 4035
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLongFromString(Ljava/lang/String;I)J

    move-result-wide p1

    return-wide p1

    .line 3991
    :pswitch_0
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/ResultSetRow;->getNativeLong(I)J

    move-result-wide v3

    .line 3993
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p3, :cond_2

    goto :goto_0

    .line 3997
    :cond_2
    invoke-static {v3, v4}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 3999
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p2, :cond_4

    new-instance p2, Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-gtz p2, :cond_3

    new-instance p2, Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-gez p2, :cond_4

    .line 4001
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p3, v2, 0x1

    invoke-direct {p0, p2, p3, v8}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4004
    :cond_4
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getLongFromString(Ljava/lang/String;I)J

    move-result-wide p1

    return-wide p1

    :cond_5
    :goto_0
    return-wide v3

    :pswitch_1
    add-int/2addr v2, v0

    .line 4007
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v0

    if-eqz p2, :cond_7

    .line 4009
    iget-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p1, :cond_7

    cmpg-double p1, v0, v6

    if-ltz p1, :cond_6

    cmpl-double p1, v0, v4

    if-lez p1, :cond_7

    .line 4011
    :cond_6
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v8}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_7
    double-to-long p1, v0

    return-wide p1

    :pswitch_2
    add-int/2addr v2, v0

    .line 4017
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result p1

    float-to-double v0, p1

    if-eqz p2, :cond_9

    .line 4019
    iget-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p1, :cond_9

    cmpg-double p1, v0, v6

    if-ltz p1, :cond_8

    cmpl-double p1, v0, v4

    if-lez p1, :cond_9

    .line 4021
    :cond_8
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v8}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_9
    double-to-long p1, v0

    return-wide p1

    :pswitch_3
    add-int/2addr v2, v0

    .line 3983
    invoke-virtual {p0, v2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result p1

    .line 3985
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p2

    if-eqz p2, :cond_b

    if-ltz p1, :cond_a

    goto :goto_1

    :cond_a
    int-to-long p1, p1

    const-wide v0, 0x100000000L

    add-long/2addr p1, v0

    return-wide p1

    :cond_b
    :goto_1
    int-to-long p1, p1

    return-wide p1

    .line 3973
    :pswitch_4
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p2

    if-nez p2, :cond_c

    add-int/2addr v2, v0

    .line 3974
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_c
    add-int/2addr v2, v0

    .line 3977
    invoke-virtual {p0, v2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 3967
    :pswitch_5
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-nez p1, :cond_d

    add-int/2addr v2, v0

    .line 3968
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(I)B

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_d
    add-int/2addr v2, v0

    .line 3971
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_e
    add-int/2addr v2, v0

    .line 3965
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide p1

    return-wide p1

    :cond_f
    add-int/2addr v2, v0

    .line 3980
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result p1

    int-to-long p1, p1

    return-wide p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0x5
        0x1
        0x2
        0x3
        0x8
        0x4
    .end array-data
.end method

.method protected getNativeRef(I)Ljava/sql/Ref;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4052
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected getNativeShort(I)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 4067
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(IZ)S

    move-result p1

    return p1
.end method

.method protected getNativeShort(IZ)S
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4071
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4072
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    add-int/lit8 v2, p1, -0x1

    .line 4076
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 4077
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return v0

    .line 4082
    :cond_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4084
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object p1, p1, v2

    .line 4086
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v3

    const/16 v4, 0xd

    const/16 v5, 0x7fff

    const/4 v6, 0x5

    if-eq v3, v4, :cond_15

    const/16 v4, 0x10

    const-wide/16 v7, -0x8000

    const-wide/16 v9, 0x7fff

    if-eq v3, v4, :cond_12

    const/16 v4, -0x8000

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    add-int/lit8 p1, v2, 0x1

    .line 4183
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object p2

    .line 4185
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_1

    const-string v1, "getShort()"

    .line 4186
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v2

    const/4 v0, 0x6

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 4191
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getShortFromString(Ljava/lang/String;I)S

    move-result p1

    return p1

    :pswitch_0
    add-int/2addr v2, v1

    .line 4141
    invoke-virtual {p0, v2, v0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v0

    .line 4143
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    .line 4144
    iget-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p1, :cond_3

    cmp-long p1, v0, v7

    if-ltz p1, :cond_2

    cmp-long p1, v0, v9

    if-lez p1, :cond_3

    .line 4146
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v6}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_3
    long-to-int p1, v0

    int-to-short p1, p1

    return p1

    .line 4153
    :cond_4
    invoke-static {v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p2, :cond_6

    .line 4155
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p2, :cond_6

    new-instance p2, Ljava/math/BigInteger;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-gtz p2, :cond_5

    new-instance p2, Ljava/math/BigInteger;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-gez p2, :cond_6

    .line 4157
    :cond_5
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v2, v6}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    .line 4160
    :cond_6
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getIntFromString(Ljava/lang/String;I)I

    move-result p1

    int-to-short p1, p1

    return p1

    :pswitch_1
    add-int/2addr v2, v1

    .line 4163
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDouble(I)D

    move-result-wide v0

    if-eqz p2, :cond_8

    .line 4165
    iget-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p1, :cond_8

    const-wide/high16 p1, -0x3f20000000000000L    # -32768.0

    cmpg-double p1, v0, p1

    if-ltz p1, :cond_7

    const-wide p1, 0x40dfffc000000000L    # 32767.0

    cmpl-double p1, v0, p1

    if-lez p1, :cond_8

    .line 4167
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v6}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_8
    double-to-int p1, v0

    int-to-short p1, p1

    return p1

    :pswitch_2
    add-int/2addr v2, v1

    .line 4173
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeFloat(I)F

    move-result p1

    if-eqz p2, :cond_a

    .line 4175
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p2, :cond_a

    const/high16 p2, -0x39000000    # -32768.0f

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_9

    const p2, 0x46fffe00    # 32767.0f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_a

    .line 4177
    :cond_9
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v2, v6}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_a
    float-to-int p1, p1

    int-to-short p1, p1

    return p1

    .line 4122
    :pswitch_3
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-nez p1, :cond_e

    add-int/2addr v2, v1

    .line 4123
    invoke-virtual {p0, v2, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeInt(IZ)I

    move-result p1

    if-eqz p2, :cond_b

    .line 4125
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p2, :cond_b

    if-gt p1, v5, :cond_c

    :cond_b
    if-ge p1, v4, :cond_d

    .line 4126
    :cond_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v2, v6}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_d
    int-to-short p1, p1

    return p1

    :cond_e
    add-int/2addr v2, v1

    .line 4132
    invoke-virtual {p0, v2, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeLong(IZZ)J

    move-result-wide v0

    if-eqz p2, :cond_f

    .line 4134
    iget-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p1, :cond_f

    cmp-long p1, v0, v9

    if-lez p1, :cond_f

    .line 4135
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v6}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_f
    long-to-int p1, v0

    int-to-short p1, p1

    return p1

    :pswitch_4
    add-int/2addr v2, v1

    .line 4097
    invoke-virtual {p0, v2, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeByte(IZ)B

    move-result p2

    .line 4099
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-eqz p1, :cond_11

    if-ltz p2, :cond_10

    goto :goto_0

    :cond_10
    add-int/lit16 p2, p2, 0x100

    int-to-short p1, p2

    return p1

    :cond_11
    :goto_0
    int-to-short p1, p2

    return p1

    :cond_12
    add-int/2addr v2, v1

    .line 4088
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    if-eqz p2, :cond_14

    .line 4090
    iget-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p1, :cond_14

    cmp-long p1, v0, v7

    if-ltz p1, :cond_13

    cmp-long p1, v0, v9

    if-lez p1, :cond_14

    .line 4091
    :cond_13
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2, v6}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_14
    long-to-int p1, v0

    int-to-short p1, p1

    return p1

    .line 4107
    :cond_15
    :pswitch_5
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->getNativeShort(I)S

    move-result v0

    .line 4109
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-nez p1, :cond_16

    return v0

    :cond_16
    const p1, 0xffff

    and-int/2addr p1, v0

    if-eqz p2, :cond_17

    .line 4115
    iget-boolean p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz p2, :cond_17

    if-le p1, v5, :cond_17

    .line 4116
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    add-int/2addr v2, v1

    invoke-direct {p0, p2, v2, v6}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_17
    int-to-short p1, p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0x5
        0x1
        0x2
        0x3
        0x8
        0x4
    .end array-data
.end method

.method protected getNativeString(I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4207
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4208
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4210
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    if-eqz v0, :cond_3

    .line 4215
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 4216
    iput-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 4221
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4225
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v1

    .line 4228
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeConvertToString(ILcom/mysql/jdbc/Field;)Ljava/lang/String;

    move-result-object p1

    .line 4229
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 4231
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isZeroFill()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 4232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 4234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4236
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getLength()J

    move-result-wide v3

    int-to-long v0, v1

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    const/16 v5, 0x30

    .line 4239
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    goto :goto_0

    .line 4242
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4244
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1

    :cond_3
    const-string p1, "ResultSet.Query_generated_no_fields_for_ResultSet_133"

    .line 4211
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1002"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method getNativeTimeViaParseConversion(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4285
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_0

    const-string v1, "getTime()"

    .line 4286
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v2

    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0xb

    aput v2, v5, v0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 4290
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p1

    move-object v4, p3

    move v5, p4

    .line 4292
    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getTimeFromString(Ljava/lang/String;Ljava/util/Calendar;ILjava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method getNativeTimestampViaParseConversion(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4335
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_0

    const-string v1, "getTimestamp()"

    .line 4336
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v0, v2

    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->issueConversionViaParsingWarning(Ljava/lang/String;ILjava/lang/Object;Lcom/mysql/jdbc/Field;[I)V

    .line 4340
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 4342
    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestampFromString(ILjava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7
        0xc
    .end array-data
.end method

.method protected getNativeURL(I)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4376
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4383
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4385
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Malformed_URL____141"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected getNativeUnicodeStream(I)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4367
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4369
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getNextResultSet()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 1

    monitor-enter p0

    .line 4394
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4418
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4419
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    add-int/lit8 v0, p1, -0x1

    .line 4423
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 4424
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object v2

    :cond_0
    const/4 v1, 0x0

    .line 4429
    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4432
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v4, v0

    .line 4434
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_d

    const/16 v5, 0x10

    if-eq v4, v5, :cond_c

    const/4 v6, 0x2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    .line 4552
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4549
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1

    .line 4546
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(I)Ljava/sql/Time;

    move-result-object p1

    return-object p1

    .line 4539
    :pswitch_2
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4540
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getShort(I)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 4543
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(I)Ljava/sql/Date;

    move-result-object p1

    return-object p1

    .line 4510
    :pswitch_3
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object v0

    .line 4514
    :pswitch_4
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDouble(I)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    .line 4453
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4457
    :pswitch_6
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 4461
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 4458
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4485
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4490
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 4491
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(I)V

    return-object p1

    .line 4497
    :cond_4
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 4499
    :catch_0
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "ResultSet.Bad_format_for_BigDecimal"

    invoke-static {p1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_5
    return-object v2

    .line 4524
    :pswitch_8
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isOpaqueBinary()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4525
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringForClob(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4528
    :cond_6
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object p1

    return-object p1

    .line 4533
    :pswitch_9
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_7

    .line 4534
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object p1

    return-object p1

    .line 4536
    :cond_7
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getObjectDeserializingIfNeeded(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4465
    :pswitch_a
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4466
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 4469
    :cond_8
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    return-object v2

    .line 4476
    :cond_9
    :try_start_1
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 4478
    :catch_1
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    aput-object v0, v2, v3

    const-string p1, "ResultSet.Bad_format_for_BigInteger"

    invoke-static {p1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4445
    :pswitch_b
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4446
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getByte(I)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4449
    :cond_a
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4436
    :pswitch_c
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    if-ne v1, v5, :cond_b

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isSingleBit()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4437
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getObjectDeserializingIfNeeded(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4439
    :cond_b
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4442
    :cond_c
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4518
    :cond_d
    :pswitch_d
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isOpaqueBinary()Z

    move-result v0

    if-nez v0, :cond_e

    .line 4519
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4522
    :cond_e
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p2, :cond_16

    .line 4600
    const-class v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4601
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4602
    :cond_0
    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4603
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 4604
    :cond_1
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 4606
    :cond_2
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 4608
    :cond_3
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    .line 4610
    :cond_4
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_1

    .line 4612
    :cond_5
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_0

    .line 4614
    :cond_6
    const-class v0, [B

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4615
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object p1

    return-object p1

    .line 4616
    :cond_7
    const-class v0, Ljava/sql/Date;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4617
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(I)Ljava/sql/Date;

    move-result-object p1

    return-object p1

    .line 4618
    :cond_8
    const-class v0, Ljava/sql/Time;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4619
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(I)Ljava/sql/Time;

    move-result-object p1

    return-object p1

    .line 4620
    :cond_9
    const-class v0, Ljava/sql/Timestamp;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4621
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1

    .line 4622
    :cond_a
    const-class v0, Lcom/mysql/jdbc/Clob;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4623
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getClob(I)Ljava/sql/Clob;

    move-result-object p1

    return-object p1

    .line 4624
    :cond_b
    const-class v0, Lcom/mysql/jdbc/Blob;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4625
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBlob(I)Ljava/sql/Blob;

    move-result-object p1

    return-object p1

    .line 4626
    :cond_c
    const-class v0, Ljava/sql/Array;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4627
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getArray(I)Ljava/sql/Array;

    move-result-object p1

    return-object p1

    .line 4628
    :cond_d
    const-class v0, Ljava/sql/Ref;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4629
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getRef(I)Ljava/sql/Ref;

    move-result-object p1

    return-object p1

    .line 4630
    :cond_e
    const-class v0, Ljava/net/URL;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4631
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getURL(I)Ljava/net/URL;

    move-result-object p1

    return-object p1

    .line 4633
    :cond_f
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoDeserialize()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4635
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conversion not supported for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p2, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p2

    .line 4639
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4641
    throw p2

    .line 4645
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Conversion not supported for type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4613
    :cond_11
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDouble(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 4611
    :cond_12
    :goto_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 4609
    :cond_13
    :goto_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 4607
    :cond_14
    :goto_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4605
    :cond_15
    :goto_4
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4597
    :cond_16
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Type parameter can not be null"

    const-string v0, "S1009"

    invoke-static {p2, v0, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4671
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4695
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4652
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4714
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(ILjava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObjectStoredProc(II)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4718
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4719
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4721
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 4724
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object v2

    :cond_0
    const/4 v0, 0x0

    .line 4729
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4732
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v4, v1

    const/16 v4, 0xc

    if-eq p2, v4, :cond_9

    const/16 v4, 0x10

    if-eq p2, v4, :cond_8

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    .line 4826
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4823
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1

    .line 4820
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(I)Ljava/sql/Time;

    move-result-object p1

    return-object p1

    .line 4813
    :pswitch_2
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result p2

    const/16 v0, 0xd

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result p2

    if-nez p2, :cond_1

    .line 4814
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getShort(I)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 4817
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(I)Ljava/sql/Date;

    move-result-object p1

    return-object p1

    .line 4800
    :pswitch_3
    new-instance p2, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDouble(I)D

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p2

    .line 4789
    :pswitch_4
    new-instance p2, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result p1

    invoke-direct {p2, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p2

    .line 4793
    :pswitch_5
    iget-object p2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getRunningCTS13()Z

    move-result p2

    if-nez p2, :cond_2

    .line 4794
    new-instance p2, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result p1

    float-to-double v0, p1

    invoke-direct {p2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p2

    .line 4796
    :cond_2
    new-instance p2, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result p1

    invoke-direct {p2, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p2

    .line 4744
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4748
    :pswitch_7
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result p2

    const/16 v0, 0x9

    if-ne p2, v0, :cond_3

    goto :goto_0

    .line 4752
    :cond_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 4749
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4765
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 4769
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 4770
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(I)V

    return-object p1

    .line 4776
    :cond_5
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v1, 0x2

    .line 4778
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "ResultSet.Bad_format_for_BigDecimal"

    invoke-static {p1, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_6
    return-object v2

    .line 4806
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStringForClob(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4810
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object p1

    return-object p1

    .line 4756
    :pswitch_b
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 4757
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 4760
    :cond_7
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 4741
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4738
    :cond_8
    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4804
    :cond_9
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getObjectStoredProc(ILjava/util/Map;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4831
    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/ResultSetImpl;->getObjectStoredProc(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObjectStoredProc(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4835
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getObjectStoredProc(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObjectStoredProc(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4839
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->getObjectStoredProc(ILjava/util/Map;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4855
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4856
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4872
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getRef(I)Ljava/sql/Ref;

    move-result-object p1

    return-object p1
.end method

.method public getRow()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4888
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 4890
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->getCurrentRowNumber()I

    move-result v0

    .line 4894
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isDynamic()Z

    move-result v1

    if-nez v1, :cond_2

    if-ltz v0, :cond_1

    .line 4895
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :goto_1
    return v0
.end method

.method public getServerInfo()Ljava/lang/String;
    .locals 2

    .line 4915
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4916
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4917
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 4919
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getShort(I)S
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4963
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 4964
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 4966
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_c

    .line 4967
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4968
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return v3

    .line 4971
    :cond_0
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 4973
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v4, 0x10

    if-ne v0, v4, :cond_3

    .line 4974
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    .line 4976
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->jdbcCompliantTruncationForReads:Z

    if-eqz v2, :cond_2

    const-wide/16 v2, -0x8000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x7fff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 4977
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {p0, v2, p1, v3}, Lcom/mysql/jdbc/ResultSetImpl;->throwRangeException(Ljava/lang/String;II)V

    :cond_2
    long-to-int p1, v0

    int-to-short p1, p1

    return p1

    .line 4983
    :cond_3
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->useFastIntParsing:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    .line 4984
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 4986
    array-length v1, v0

    if-nez v1, :cond_4

    .line 4987
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result p1

    int-to-short p1, p1

    return p1

    :cond_4
    const/4 v1, 0x0

    .line 4992
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_6

    .line 4993
    aget-byte v5, v0, v1

    int-to-char v5, v5

    const/16 v6, 0x65

    if-eq v5, v6, :cond_7

    aget-byte v5, v0, v1

    int-to-char v5, v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_1
    if-nez v2, :cond_8

    .line 5002
    :try_start_0
    invoke-direct {p0, p1, v0, v4}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortWithOverflowCheck(I[BLjava/lang/String;)S

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 5005
    :catch_0
    :try_start_1
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortAsDouble(ILjava/lang/String;)S

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    .line 5010
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Invalid_value_for_getShort()_-____96"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 5019
    :cond_8
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_9

    return v3

    .line 5024
    :cond_9
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 5025
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v1

    int-to-short p1, v1

    return p1

    :cond_a
    const-string v1, "e"

    .line 5028
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_b

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_b

    .line 5029
    invoke-direct {p0, p1, v4, v0}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortWithOverflowCheck(I[BLjava/lang/String;)S

    move-result v1

    return v1

    .line 5033
    :cond_b
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortAsDouble(ILjava/lang/String;)S

    move-result v1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return v1

    :catch_2
    move-object v0, v4

    .line 5037
    :catch_3
    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->parseShortAsDouble(ILjava/lang/String;)S

    move-result p1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    return p1

    .line 5042
    :catch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Invalid_value_for_getShort()_-____96"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 5047
    :cond_c
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeShort(I)S

    move-result p1

    return p1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5056
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getStatement()Ljava/sql/Statement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5099
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5100
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wrapperStatement:Ljava/sql/Statement;

    if-eqz v1, :cond_0

    .line 5101
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wrapperStatement:Ljava/sql/Statement;

    monitor-exit v0

    return-object v1

    .line 5104
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5105
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    nop

    .line 5108
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    if-eqz v0, :cond_2

    .line 5114
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wrapperStatement:Ljava/sql/Statement;

    if-eqz v0, :cond_1

    .line 5115
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wrapperStatement:Ljava/sql/Statement;

    return-object v0

    .line 5118
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    return-object v0

    .line 5109
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Operation not allowed on closed ResultSet. Statements can be retained over result set closure by setting the connection property \"retainStatementAfterResultSetClose\" to \"true\"."

    const-string v2, "S1000"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 5135
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getStringInternal(IZ)Ljava/lang/String;

    move-result-object v1

    .line 5137
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->padCharsWithSpace:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 5138
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    sub-int/2addr p1, v0

    aget-object p1, v2, p1

    .line 5140
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_0

    .line 5141
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getLength()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getMaxBytesPerCharacter()I

    move-result p1

    div-int/2addr v0, p1

    .line 5143
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v0, :cond_0

    .line 5146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5147
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p1

    .line 5151
    sget-object p1, Lcom/mysql/jdbc/ResultSetImpl;->EMPTY_SPACE:[C

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 5153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5174
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getStringInternal(IZ)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5211
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_c

    .line 5212
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 5213
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->checkColumnBounds(I)V

    .line 5215
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    if-eqz v0, :cond_b

    add-int/lit8 v0, p1, -0x1

    .line 5224
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->isNull(I)Z

    move-result v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 5225
    iput-boolean v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object v7

    :cond_0
    const/4 v8, 0x0

    .line 5230
    iput-boolean v8, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5232
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    .line 5236
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    const/16 v4, 0x10

    if-ne v2, v4, :cond_3

    .line 5237
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->isSingleBit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5238
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    .line 5240
    array-length v1, v0

    if-nez v1, :cond_1

    .line 5241
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->convertToZeroWithEmptyCheck()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5244
    :cond_1
    aget-byte v0, v0, v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5247
    :cond_2
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNumericRepresentationOfSQLBitType(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5250
    :cond_3
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 5252
    iget-object v4, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v5, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v4, v0, v2, v5}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v4

    .line 5258
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_6

    .line 5259
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v0

    if-nez v0, :cond_4

    return-object v4

    .line 5263
    :cond_4
    invoke-direct {p0, v4, p1, v7}, Lcom/mysql/jdbc/ResultSetImpl;->getDateFromString(Ljava/lang/String;ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    if-nez v0, :cond_5

    .line 5266
    iput-boolean v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object v7

    .line 5271
    :cond_5
    iput-boolean v8, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5273
    invoke-virtual {v0}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    if-eqz p2, :cond_a

    .line 5278
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNoDatetimeStringSync()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5279
    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x0

    .line 5306
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v4

    move-object v4, v5

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestampFromString(ILjava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    if-nez v0, :cond_7

    .line 5309
    iput-boolean v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object v7

    .line 5314
    :cond_7
    iput-boolean v8, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5316
    invoke-virtual {v0}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const/4 v2, 0x0

    .line 5281
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, v4

    move v3, p1

    move-object v4, v5

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getTimeFromString(Ljava/lang/String;Ljava/util/Calendar;ILjava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0

    if-nez v0, :cond_8

    .line 5284
    iput-boolean v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object v7

    .line 5289
    :cond_8
    iput-boolean v8, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5291
    invoke-virtual {v0}, Ljava/sql/Time;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5294
    :pswitch_2
    invoke-direct {p0, v4, p1, v7}, Lcom/mysql/jdbc/ResultSetImpl;->getDateFromString(Ljava/lang/String;ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v0

    if-nez v0, :cond_9

    .line 5297
    iput-boolean v6, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return-object v7

    .line 5302
    :cond_9
    iput-boolean v8, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    .line 5304
    invoke-virtual {v0}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    :goto_0
    return-object v4

    :cond_b
    const-string v0, "ResultSet.Query_generated_no_fields_for_ResultSet_99"

    .line 5216
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1002"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 5325
    :cond_c
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5340
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getTimeInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 5359
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimeInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5374
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(I)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5393
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5588
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestampInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 5608
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestampInternal(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5617
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5637
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public getType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5941
    iget v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetType:I

    return v0
.end method

.method public getURL(I)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5997
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6004
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6006
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Malformed_URL____104"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6015
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6022
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6024
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultSet.Malformed_URL____107"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getUnicodeStream(I)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5964
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    if-nez v0, :cond_0

    .line 5965
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 5967
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 5970
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeBinaryStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getUnicodeStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5982
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getUnicodeStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getUpdateCount()J
    .locals 2

    .line 5986
    iget-wide v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    return-wide v0
.end method

.method public getUpdateID()J
    .locals 2

    .line 5990
    iget-wide v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateId:J

    return-wide v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6049
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6050
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6051
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initializeFromCachedMetaData(Lcom/mysql/jdbc/CachedResultSetMetaData;)V
    .locals 1

    .line 901
    iget-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 902
    iget-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->columnNameToIndex:Ljava/util/Map;

    iput-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 903
    iget-object p1, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fullColumnNameToIndex:Ljava/util/Map;

    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    const/4 p1, 0x1

    .line 904
    iput-boolean p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->hasBuiltIndexMapping:Z

    return-void
.end method

.method public initializeWithMetadata()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 457
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/RowData;->setMetadata([Lcom/mysql/jdbc/Field;)V

    .line 460
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    .line 462
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->profileSql:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseUsageAdvisor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    .line 464
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->pointOfOrigin:Ljava/lang/String;

    .line 465
    sget v1, Lcom/mysql/jdbc/ResultSetImpl;->resultCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/mysql/jdbc/ResultSetImpl;->resultCounter:I

    iput v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    .line 466
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseUsageAdvisor()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    .line 467
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v1}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getGatherPerformanceMetrics()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 471
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->incrementNumberOfResultSetsCreated()V

    .line 473
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 475
    :goto_0
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 476
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v2

    .line 478
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 481
    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_4

    .line 485
    iget-object v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 486
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 490
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    :cond_5
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/MySQLConnection;->reportNumberOfTablesAccessed(I)V

    .line 496
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public insertRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6065
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public isAfterLast()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6082
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6083
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isAfterLast()Z

    move-result v1

    .line 6085
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6086
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBeforeFirst()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6103
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6104
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isBeforeFirst()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6726
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    return v0
.end method

.method public isFirst()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6121
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6122
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isFirst()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLast()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6140
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6141
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->isLast()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public last()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6199
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 6203
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 6207
    :cond_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    if-eqz v2, :cond_1

    .line 6208
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 6211
    :cond_1
    iget-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v2, :cond_2

    .line 6212
    iput-boolean v3, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 6215
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v2, :cond_3

    .line 6216
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 6219
    :cond_3
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->beforeLast()V

    .line 6220
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->next()Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v2

    iput-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6223
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 6225
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6226
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public moveToCurrentRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6247
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public moveToInsertRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6267
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public next()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6285
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6287
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6288
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 6291
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v1, :cond_1

    .line 6292
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 6297
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6302
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v1, :cond_2

    .line 6303
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 6306
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 6309
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->next()Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6311
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-nez v1, :cond_4

    goto :goto_0

    .line 6314
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->clearWarnings()V

    const/4 v2, 0x1

    .line 6321
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 6323
    monitor-exit v0

    return v2

    :cond_5
    const-string v1, "ResultSet.ResultSet_is_from_UPDATE._No_Data_115"

    .line 6298
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    :catchall_0
    move-exception v1

    .line 6324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public populateCachedMetaData(Lcom/mysql/jdbc/CachedResultSetMetaData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    iput-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    .line 895
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    iput-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->columnNameToIndex:Ljava/util/Map;

    .line 896
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    iput-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->fullColumnNameToIndex:Ljava/util/Map;

    .line 897
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    iput-object v0, p1, Lcom/mysql/jdbc/CachedResultSetMetaData;->metadata:Ljava/sql/ResultSetMetaData;

    return-void
.end method

.method public prev()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6514
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6516
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->getCurrentRowNumber()I

    move-result v1

    .line 6518
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v2, :cond_0

    .line 6519
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v2}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    :cond_0
    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ltz v2, :cond_1

    add-int/2addr v1, v4

    .line 6526
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/RowData;->setCurrentRow(I)V

    .line 6527
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/RowData;->getAt(I)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v4, :cond_2

    add-int/2addr v1, v4

    .line 6532
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/RowData;->setCurrentRow(I)V

    const/4 v1, 0x0

    .line 6533
    iput-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6540
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 6542
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    .line 6543
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public previous()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6564
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6565
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6566
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->onInsertRow:Z

    .line 6569
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    if-eqz v1, :cond_1

    .line 6570
    iput-boolean v2, p0, Lcom/mysql/jdbc/ResultSetImpl;->doingUpdates:Z

    .line 6573
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->prev()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6574
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public realClose(Z)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 6588
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v0, :cond_0

    return-void

    .line 6594
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 6598
    :try_start_0
    iget-boolean v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    if-eqz v0, :cond_1

    .line 6599
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_1
    const/4 v4, 0x0

    .line 6603
    :try_start_1
    iget-boolean v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->useUsageAdvisor:Z

    if-eqz v0, :cond_10

    if-nez p1, :cond_4

    .line 6608
    iget-object v7, v1, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    new-instance v15, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v9, 0x0

    const-string v10, ""

    iget-object v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v8, :cond_2

    const-string v8, "N/A"

    :goto_0
    move-object v11, v8

    goto :goto_1

    :cond_2
    iget-object v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    iget-object v8, v8, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    goto :goto_0

    :goto_1
    iget-wide v12, v1, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    iget-object v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v8, :cond_3

    const/4 v14, -0x1

    goto :goto_2

    :cond_3
    iget-object v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v8}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v8

    move v14, v8

    :goto_2
    iget v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    sget-object v20, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/16 v21, 0x0

    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->pointOfOrigin:Ljava/lang/String;

    const-string v22, "ResultSet.ResultSet_implicitly_closed_by_driver"

    invoke-static/range {v22 .. v22}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move/from16 v22, v8

    move-object v8, v15

    move-object v6, v15

    move/from16 v15, v22

    move-object/from16 v22, v0

    invoke-direct/range {v8 .. v23}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v6}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 6614
    :cond_4
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    instance-of v0, v0, Lcom/mysql/jdbc/RowDataStatic;

    if-eqz v0, :cond_a

    .line 6618
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v0

    iget-object v6, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getResultSetSizeThreshold()I

    move-result v6

    const/4 v7, 0x2

    if-le v0, v6, :cond_7

    .line 6619
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    new-instance v6, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const-string v10, ""

    iget-object v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v8, :cond_5

    const-string v8, "ResultSet.N/A_159"

    invoke-static {v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_5
    iget-object v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    iget-object v8, v8, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    :goto_3
    move-object v11, v8

    iget-wide v12, v1, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    iget-object v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v8, :cond_6

    const/4 v14, -0x1

    goto :goto_4

    :cond_6
    iget-object v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v8}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v8

    move v14, v8

    :goto_4
    iget v15, v1, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    sget-object v20, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/16 v21, 0x0

    iget-object v8, v1, Lcom/mysql/jdbc/ResultSetImpl;->pointOfOrigin:Ljava/lang/String;

    const-string v9, "ResultSet.Too_Large_Result_Set"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v7}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    iget-object v7, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getResultSetSizeThreshold()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v22, 0x1

    aput-object v7, v5, v22

    invoke-static {v9, v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object v5, v8

    move-object v8, v6

    const/4 v7, 0x0

    move v9, v7

    move-object/from16 v22, v5

    invoke-direct/range {v8 .. v23}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 6627
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->isLast()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v0

    if-eqz v0, :cond_a

    .line 6629
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    new-instance v15, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const-string v7, ""

    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v5, :cond_8

    const-string v5, "ResultSet.N/A_159"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_8
    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    iget-object v5, v5, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    :goto_5
    move-object v8, v5

    iget-wide v9, v1, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v5, :cond_9

    const/4 v11, -0x1

    goto :goto_6

    :cond_9
    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v5}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v5

    move v11, v5

    :goto_6
    iget v12, v1, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v16, 0x0

    sget-object v18, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/16 v19, 0x0

    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->pointOfOrigin:Ljava/lang/String;

    const-string v6, "ResultSet.Possible_incomplete_traversal_of_result_set"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ResultSetImpl;->getRow()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v4, v21

    move-object/from16 v24, v5

    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v5}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v20, 0x1

    aput-object v5, v4, v20

    invoke-static {v6, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v4, v24

    move-object v5, v15

    const/4 v6, 0x0

    move-object/from16 v25, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v4

    invoke-direct/range {v5 .. v20}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v25

    invoke-interface {v0, v4}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 6642
    :cond_a
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    array-length v0, v0

    if-lez v0, :cond_10

    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->wasEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 6643
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "ResultSet.The_following_columns_were_never_referenced"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 6647
    :goto_7
    iget-object v6, v1, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    array-length v6, v6

    if-ge v4, v6, :cond_d

    .line 6648
    iget-object v6, v1, Lcom/mysql/jdbc/ResultSetImpl;->columnUsed:[Z

    aget-boolean v6, v6, v4

    if-nez v6, :cond_c

    if-nez v5, :cond_b

    const/4 v5, 0x1

    goto :goto_8

    :cond_b
    const-string v6, ", "

    .line 6652
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6655
    :goto_8
    iget-object v6, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    if-eqz v5, :cond_10

    .line 6660
    iget-object v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    new-instance v15, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v6, 0x0

    const-string v7, ""

    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v5, :cond_e

    const-string v5, "N/A"

    :goto_9
    move-object v8, v5

    goto :goto_a

    :cond_e
    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    iget-object v5, v5, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    goto :goto_9

    :goto_a
    iget-wide v9, v1, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v5, :cond_f

    const/4 v11, -0x1

    goto :goto_b

    :cond_f
    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v5}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v5

    move v11, v5

    :goto_b
    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v16, 0x0

    sget-object v18, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/16 v19, 0x0

    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->pointOfOrigin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v5

    move-object v5, v15

    move-object/from16 v26, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v0

    invoke-direct/range {v5 .. v20}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-interface {v4, v0}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6720
    :cond_10
    :try_start_2
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 6669
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/StatementImpl;->removeOpenResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 6674
    :cond_11
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_12

    .line 6676
    :try_start_3
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v6, v0

    goto :goto_d

    :cond_12
    :goto_c
    const/4 v6, 0x0

    .line 6682
    :goto_d
    :try_start_4
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->statementUsedForFetchingRows:Lcom/mysql/jdbc/PreparedStatement;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_13

    .line 6684
    :try_start_5
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->statementUsedForFetchingRows:Lcom/mysql/jdbc/PreparedStatement;

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/mysql/jdbc/PreparedStatement;->realClose(ZZ)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_e

    :catch_1
    move-exception v0

    if-eqz v6, :cond_14

    .line 6687
    :try_start_6
    invoke-virtual {v6, v0}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    :cond_13
    :goto_e
    move-object v0, v6

    :cond_14
    const/4 v2, 0x0

    .line 6694
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    .line 6695
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 6696
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 6697
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 6698
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    .line 6699
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 6700
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 6702
    iget-boolean v4, v1, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    if-nez v4, :cond_15

    .line 6703
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    .line 6706
    :cond_15
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    .line 6707
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    .line 6708
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6709
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    .line 6710
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    .line 6711
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x1

    .line 6713
    iput-boolean v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    if-nez v0, :cond_16

    .line 6719
    monitor-exit v3

    return-void

    .line 6716
    :cond_16
    throw v0

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 6718
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    .line 6669
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/StatementImpl;->removeOpenResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 6674
    :cond_17
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_18

    .line 6676
    :try_start_7
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_f

    :catch_2
    move-exception v0

    move-object v6, v0

    goto :goto_10

    :cond_18
    :goto_f
    const/4 v6, 0x0

    .line 6682
    :goto_10
    :try_start_8
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->statementUsedForFetchingRows:Lcom/mysql/jdbc/PreparedStatement;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_19

    .line 6684
    :try_start_9
    iget-object v0, v1, Lcom/mysql/jdbc/ResultSetImpl;->statementUsedForFetchingRows:Lcom/mysql/jdbc/PreparedStatement;

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lcom/mysql/jdbc/PreparedStatement;->realClose(ZZ)V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_11

    :catch_3
    move-exception v0

    if-eqz v6, :cond_1a

    .line 6687
    :try_start_a
    invoke-virtual {v6, v0}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    :cond_19
    :goto_11
    move-object v0, v6

    :cond_1a
    const/4 v2, 0x0

    .line 6694
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    .line 6695
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    .line 6696
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->columnLabelToIndex:Ljava/util/Map;

    .line 6697
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->fullColumnNameToIndex:Ljava/util/Map;

    .line 6698
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->columnToIndexCache:Ljava/util/Map;

    .line 6699
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 6700
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->warningChain:Ljava/sql/SQLWarning;

    .line 6702
    iget-boolean v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->retainOwningStatement:Z

    if-nez v5, :cond_1b

    .line 6703
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    .line 6706
    :cond_1b
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->catalog:Ljava/lang/String;

    .line 6707
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    .line 6708
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6709
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->fastDefaultCal:Ljava/util/Calendar;

    .line 6710
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->fastClientCal:Ljava/util/Calendar;

    .line 6711
    iput-object v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x1

    .line 6713
    iput-boolean v2, v1, Lcom/mysql/jdbc/ResultSetImpl;->isClosed:Z

    if-eqz v0, :cond_1c

    .line 6716
    throw v0

    .line 6668
    :cond_1c
    throw v4

    :catchall_1
    move-exception v0

    .line 6719
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0
.end method

.method public reallyResult()Z
    .locals 1

    .line 6730
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 6734
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    return v0
.end method

.method public redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    .locals 2

    .line 885
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    const/4 p1, 0x0

    .line 887
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Field;->setUseOldNameMetadata(Z)V

    .line 889
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Field;->setConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6757
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public relative(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6783
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6785
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 6786
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 6788
    monitor-exit v0

    return v2

    .line 6791
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v1, :cond_1

    .line 6792
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ResultSetRow;->closeOpenStreams()V

    .line 6795
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/RowData;->moveRowRelative(I)V

    .line 6796
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->getCurrentRowNumber()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/mysql/jdbc/RowData;->getAt(I)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 6798
    invoke-direct {p0}, Lcom/mysql/jdbc/ResultSetImpl;->setRowPositionValidity()V

    .line 6800
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {p1}, Lcom/mysql/jdbc/RowData;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {p1}, Lcom/mysql/jdbc/RowData;->isBeforeFirst()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 6801
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public rowDeleted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6819
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowInserted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6836
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowUpdated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6853
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected setBinaryEncoded()V
    .locals 1

    const/4 v0, 0x1

    .line 6861
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    return-void
.end method

.method public setFetchDirection(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6880
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3e9

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p1, "ResultSet.Illegal_value_for_fetch_direction_64"

    .line 6882
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 6886
    :cond_1
    :goto_0
    iput p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchDirection:I

    .line 6887
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFetchSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6907
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-ltz p1, :cond_0

    .line 6913
    :try_start_0
    iput p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->fetchSize:I

    .line 6914
    monitor-exit v0

    return-void

    :cond_0
    const-string p1, "ResultSet.Value_must_be_between_0_and_getMaxRows()_66"

    .line 6909
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 6914
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFirstCharOfQuery(C)V
    .locals 1

    .line 6926
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6927
    :try_start_1
    iput-char p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->firstCharOfQuery:C

    .line 6928
    monitor-exit v0

    return-void

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
    move-exception p1

    .line 6930
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected declared-synchronized setNextResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V
    .locals 0

    monitor-enter p0

    .line 6940
    :try_start_0
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->nextResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6941
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 6939
    monitor-exit p0

    throw p1
.end method

.method public setOwningStatement(Lcom/mysql/jdbc/StatementImpl;)V
    .locals 1

    .line 6945
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6946
    :try_start_1
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    .line 6947
    monitor-exit v0

    return-void

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
    move-exception p1

    .line 6949
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected declared-synchronized setResultSetConcurrency(I)V
    .locals 1

    monitor-enter p0

    .line 6961
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6962
    :try_start_1
    iput p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetConcurrency:I

    .line 6963
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6967
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 6963
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6965
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6960
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setResultSetType(I)V
    .locals 1

    monitor-enter p0

    .line 6978
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6979
    :try_start_1
    iput p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->resultSetType:I

    .line 6980
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6984
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 6980
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6982
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6977
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method protected setServerInfo(Ljava/lang/String;)V
    .locals 1

    .line 6994
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6995
    :try_start_1
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->serverInfo:Ljava/lang/String;

    .line 6996
    monitor-exit v0

    return-void

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
    move-exception p1

    .line 6998
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public declared-synchronized setStatementUsedForFetchingRows(Lcom/mysql/jdbc/PreparedStatement;)V
    .locals 1

    monitor-enter p0

    .line 7004
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7005
    :try_start_1
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->statementUsedForFetchingRows:Lcom/mysql/jdbc/PreparedStatement;

    .line 7006
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7010
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 7006
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7008
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 7003
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setWrapperStatement(Ljava/sql/Statement;)V
    .locals 1

    monitor-enter p0

    .line 7018
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7019
    :try_start_1
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetImpl;->wrapperStatement:Ljava/sql/Statement;

    .line 7020
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7024
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 7020
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7022
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 7017
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 7064
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult:Z

    if-eqz v0, :cond_0

    .line 7065
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7068
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result set representing update count of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mysql/jdbc/ResultSetImpl;->updateCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateArray(ILjava/sql/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7075
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateArray(Ljava/lang/String;Ljava/sql/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7082
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateAsciiStream(ILjava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7104
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7125
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->updateAsciiStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public updateBigDecimal(ILjava/math/BigDecimal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7144
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7162
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateBigDecimal(ILjava/math/BigDecimal;)V

    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7184
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7205
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->updateBinaryStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public updateBlob(ILjava/sql/Blob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7212
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7219
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateBoolean(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7238
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateBoolean(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7256
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateBoolean(IZ)V

    return-void
.end method

.method public updateByte(IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7275
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateByte(Ljava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7293
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateByte(IB)V

    return-void
.end method

.method public updateBytes(I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7312
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateBytes(Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7330
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateBytes(I[B)V

    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7352
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7373
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->updateCharacterStream(ILjava/io/Reader;I)V

    return-void
.end method

.method public updateClob(ILjava/sql/Clob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7380
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateClob(Ljava/lang/String;Ljava/sql/Clob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7387
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateClob(ILjava/sql/Clob;)V

    return-void
.end method

.method public updateDate(ILjava/sql/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7406
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7424
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateDate(ILjava/sql/Date;)V

    return-void
.end method

.method public updateDouble(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7443
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateDouble(Ljava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7461
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->updateDouble(ID)V

    return-void
.end method

.method public updateFloat(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7480
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateFloat(Ljava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7498
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateFloat(IF)V

    return-void
.end method

.method public updateInt(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7517
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateInt(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7535
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateInt(II)V

    return-void
.end method

.method public updateLong(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7554
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateLong(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7572
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/ResultSetImpl;->updateLong(IJ)V

    return-void
.end method

.method public updateNull(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7589
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateNull(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7605
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->updateNull(I)V

    return-void
.end method

.method public updateObject(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7624
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateObject(ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7647
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7665
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateObject(ILjava/lang/Object;)V

    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7687
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateObject(ILjava/lang/Object;)V

    return-void
.end method

.method public updateRef(ILjava/sql/Ref;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7694
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateRef(Ljava/lang/String;Ljava/sql/Ref;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7701
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateRow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7714
    new-instance v0, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v0
.end method

.method public updateShort(IS)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7733
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateShort(Ljava/lang/String;S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7751
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateShort(IS)V

    return-void
.end method

.method public updateString(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7770
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7788
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateString(ILjava/lang/String;)V

    return-void
.end method

.method public updateTime(ILjava/sql/Time;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7807
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7825
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateTime(ILjava/sql/Time;)V

    return-void
.end method

.method public updateTimestamp(ILjava/sql/Timestamp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7844
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7862
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->updateTimestamp(ILjava/sql/Timestamp;)V

    return-void
.end method

.method public wasNull()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7877
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetImpl;->wasNullFlag:Z

    return v0
.end method
