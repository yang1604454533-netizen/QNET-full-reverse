.class public Lcom/mysql/jdbc/CallableStatement;
.super Lcom/mysql/jdbc/PreparedStatement;
.source "CallableStatement.java"

# interfaces
.implements Ljava/sql/CallableStatement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;,
        Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    }
.end annotation


# static fields
.field protected static final JDBC_4_CSTMT_2_ARGS_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field protected static final JDBC_4_CSTMT_4_ARGS_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final NOT_OUTPUT_PARAMETER_INDICATOR:I = -0x80000000

.field private static final PARAMETER_NAMESPACE_PREFIX:Ljava/lang/String; = "@com_mysql_jdbc_outparam_"


# instance fields
.field private callingStoredFunction:Z

.field private functionReturnValueResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

.field private hasOutputParams:Z

.field protected outputParamWasNull:Z

.field private outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

.field protected paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

.field private parameterIndexToRsIndex:[I

.field private placeholderToParameterIndexMap:[I

.field private returnValueParam:Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 59
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mysql.jdbc.JDBC42CallableStatement"

    goto :goto_0

    :cond_0
    const-string v0, "com.mysql.jdbc.JDBC4CallableStatement"

    .line 62
    :goto_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/CallableStatement;->JDBC_4_CSTMT_2_ARGS_CTOR:Ljava/lang/reflect/Constructor;

    .line 64
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v3, v1, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v6

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/CallableStatement;->JDBC_4_CSTMT_4_ARGS_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    .line 74
    sput-object v0, Lcom/mysql/jdbc/CallableStatement;->JDBC_4_CSTMT_4_ARGS_CTOR:Ljava/lang/reflect/Constructor;

    .line 75
    sput-object v0, Lcom/mysql/jdbc/CallableStatement;->JDBC_4_CSTMT_2_ARGS_CTOR:Ljava/lang/reflect/Constructor;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 447
    iget-object v0, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->nativeSql:Ljava/lang/String;

    iget-object v1, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->catalogInUse:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 417
    iput-boolean p1, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    .line 421
    iput-boolean p1, p0, Lcom/mysql/jdbc/CallableStatement;->hasOutputParams:Z

    .line 427
    iput-boolean p1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 449
    iput-object p2, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    .line 450
    iget-object p1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iget-boolean p1, p1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    iput-boolean p1, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    .line 452
    iget-boolean p1, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 453
    iget p1, p0, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    .line 456
    :cond_0
    iput-boolean p2, p0, Lcom/mysql/jdbc/CallableStatement;->retrieveGeneratedKeys:Z

    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 560
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 417
    iput-boolean p1, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    .line 421
    iput-boolean p1, p0, Lcom/mysql/jdbc/CallableStatement;->hasOutputParams:Z

    .line 427
    iput-boolean p1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 562
    iput-boolean p4, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    .line 564
    iget-boolean p3, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    const/4 p4, 0x1

    if-nez p3, :cond_1

    const-string p3, "CALL"

    .line 565
    invoke-static {p2, p3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 567
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fakeParameterTypes(Z)V

    goto :goto_0

    .line 569
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->determineParameterTypes()V

    .line 572
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->generateParameterMap()V

    goto :goto_1

    .line 574
    :cond_1
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->determineParameterTypes()V

    .line 575
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->generateParameterMap()V

    .line 577
    iget p1, p0, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    .line 580
    :goto_1
    iput-boolean p4, p0, Lcom/mysql/jdbc/CallableStatement;->retrieveGeneratedKeys:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mysql/jdbc/CallableStatement;)[I
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    return-object p0
.end method

.method static synthetic access$100(Lcom/mysql/jdbc/CallableStatement;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    return p0
.end method

.method private checkIsOutputParam(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 597
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 598
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne p1, v2, :cond_1

    .line 601
    iget-object p1, p0, Lcom/mysql/jdbc/CallableStatement;->returnValueParam:Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    if-nez p1, :cond_0

    .line 602
    new-instance p1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xc

    const-string v7, "VARCHAR"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x5

    move-object v1, p1

    invoke-direct/range {v1 .. v11}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;-><init>(Ljava/lang/String;IZZILjava/lang/String;IISI)V

    iput-object p1, p0, Lcom/mysql/jdbc/CallableStatement;->returnValueParam:Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    .line 606
    :cond_0
    iget-object p1, p0, Lcom/mysql/jdbc/CallableStatement;->returnValueParam:Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    monitor-exit v0

    return-object p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 613
    :cond_2
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->checkParameterIndexBounds(I)V

    add-int/lit8 v1, p1, -0x1

    .line 617
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    if-eqz v3, :cond_3

    .line 618
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    aget v1, v3, v1

    .line 621
    :cond_3
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-virtual {v3, v1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v1

    .line 625
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getNoAccessToProcedureBodies()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 626
    iput-boolean v2, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isOut:Z

    .line 627
    iput-boolean v2, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isIn:Z

    const/4 p1, 0x2

    .line 628
    iput p1, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->inOutModifier:I

    goto :goto_0

    .line 629
    :cond_4
    iget-boolean v3, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isOut:Z

    if-eqz v3, :cond_5

    .line 634
    :goto_0
    iput-boolean v2, p0, Lcom/mysql/jdbc/CallableStatement;->hasOutputParams:Z

    .line 636
    monitor-exit v0

    return-object v1

    .line 630
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallableStatement.9"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "CallableStatement.10"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 637
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private checkParameterIndexBounds(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 646
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    .line 648
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private checkReadOnlyProcedure()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2317
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2318
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNoAccessToProcedureBodies()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2319
    monitor-exit v0

    return v2

    .line 2322
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iget-boolean v1, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    if-eqz v1, :cond_1

    .line 2323
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iget-boolean v1, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    return v1

    :cond_1
    const/4 v1, 0x0

    .line 2330
    :try_start_1
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->extractProcedureName()Ljava/lang/String;

    move-result-object v3

    .line 2332
    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement;->currentCatalog:Ljava/lang/String;

    const-string v5, "."

    .line 2334
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3

    const-string v4, "."

    .line 2335
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "`"

    .line 2337
    invoke-static {v4, v5}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "`"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2338
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v5, "."

    .line 2341
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2342
    invoke-static {v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v5, "`"

    const-string v6, "`"

    invoke-static {v3, v5, v6}, Lcom/mysql/jdbc/StringUtils;->stripEnclosure([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v3

    .line 2344
    :cond_3
    iget-object v5, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-string v6, "SELECT SQL_DATA_ACCESS FROM information_schema.routines WHERE routine_schema = ? AND routine_name = ?"

    invoke-interface {v5, v6}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2345
    :try_start_2
    invoke-interface {v5, v2}, Ljava/sql/PreparedStatement;->setMaxRows(I)V

    .line 2346
    invoke-interface {v5, v2}, Ljava/sql/PreparedStatement;->setFetchSize(I)V

    .line 2348
    invoke-interface {v5, v7, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v4, 0x2

    .line 2349
    invoke-interface {v5, v4, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2350
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2351
    :try_start_3
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2352
    invoke-interface {v3, v7}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "READS SQL DATA"

    .line 2353
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "NO SQL"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2354
    :cond_4
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    monitor-enter v1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2355
    :try_start_4
    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iput-boolean v7, v4, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    .line 2356
    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iput-boolean v7, v4, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    .line 2357
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_5

    .line 2365
    :try_start_5
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    :cond_5
    if-eqz v5, :cond_6

    .line 2368
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->close()V

    .line 2358
    :cond_6
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    return v7

    :catchall_0
    move-exception v4

    .line 2357
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_7
    if-eqz v3, :cond_8

    .line 2365
    :try_start_8
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    :cond_8
    if-eqz v5, :cond_c

    .line 2368
    :goto_0
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->close()V

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v1, v3

    goto :goto_1

    :catch_0
    move-object v1, v3

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_1

    :catchall_3
    move-exception v2

    move-object v5, v1

    :goto_1
    if-eqz v1, :cond_9

    .line 2365
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    :cond_9
    if-eqz v5, :cond_a

    .line 2368
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->close()V

    .line 2364
    :cond_a
    throw v2

    :catch_1
    move-object v5, v1

    :catch_2
    :goto_2
    if-eqz v1, :cond_b

    .line 2365
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    :cond_b
    if-eqz v5, :cond_c

    goto :goto_0

    .line 2372
    :cond_c
    :goto_3
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iput-boolean v2, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    .line 2373
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iput-boolean v2, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    .line 2374
    monitor-exit v0

    return v2

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1
.end method

.method private checkStreamability()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 659
    iget-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement;->hasOutputParams:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->createStreamingResultSet()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CallableStatement.14"

    .line 660
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1C00"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private convertGetProcedureColumnsToInternalDescriptors(Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 817
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 818
    :try_start_0
    new-instance v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-direct {v1, p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;-><init>(Lcom/mysql/jdbc/CallableStatement;Ljava/sql/ResultSet;)V

    iput-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    .line 819
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private determineParameterTypes()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 746
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 751
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->extractProcedureName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 754
    :try_start_1
    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->supportsQuotedIdentifiers()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v4

    invoke-interface {v4}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    move-object v3, v4

    goto :goto_1

    :catch_0
    move-exception v4

    .line 758
    :try_start_2
    invoke-static {v4}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    :goto_1
    const-string v4, ""

    .line 761
    iget-object v5, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v5

    invoke-static {v2, v4, v3, v5}, Lcom/mysql/jdbc/StringUtils;->splitDBdotName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    const-string v4, ""

    .line 764
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_1

    .line 765
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 766
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 771
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v3

    .line 775
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 779
    :goto_2
    iget-object v9, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v10, 0x5

    invoke-interface {v9, v10, v8, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement;->currentCatalog:Ljava/lang/String;

    :cond_3
    const-string v5, "%"

    invoke-interface {v3, v4, v1, v2, v5}, Ljava/sql/DatabaseMetaData;->getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 784
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 785
    invoke-interface {v2}, Ljava/sql/ResultSet;->previous()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v8, 0x1

    goto :goto_3

    :catchall_0
    move-exception v3

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_6

    :catch_1
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 792
    :try_start_4
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/CallableStatement;->convertGetProcedureColumnsToInternalDescriptors(Ljava/sql/ResultSet;)V

    goto :goto_4

    .line 794
    :cond_5
    invoke-direct {p0, v7}, Lcom/mysql/jdbc/CallableStatement;->fakeParameterTypes(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    if-eqz v2, :cond_6

    .line 801
    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catch_2
    move-exception v1

    :cond_6
    :goto_5
    if-nez v1, :cond_7

    .line 813
    :try_start_6
    monitor-exit v0

    return-void

    .line 810
    :cond_7
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v2

    move-object v3, v1

    :goto_6
    if-eqz v3, :cond_8

    .line 801
    :try_start_7
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    :cond_8
    :goto_7
    if-eqz v1, :cond_9

    .line 810
    :try_start_8
    throw v1

    .line 797
    :cond_9
    throw v2

    .line 813
    :goto_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method private extractProcedureName()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    const-string v1, "`\"\'"

    const-string v2, "`\"\'"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/StringUtils;->stripComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CALL "

    .line 894
    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "SELECT "

    .line 898
    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x7

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    :goto_0
    if-eq v1, v2, :cond_3

    .line 903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v1, v3

    .line 905
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 910
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 912
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x28

    if-eq v4, v5, :cond_2

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 915
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 919
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "CallableStatement.1"

    .line 922
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1000"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private fakeParameterTypes(Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/16 v0, 0xd

    .line 688
    :try_start_0
    new-array v3, v0, [Lcom/mysql/jdbc/Field;

    .line 690
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "PROCEDURE_CAT"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v3, v8

    .line 691
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "PROCEDURE_SCHEM"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v3, v7

    .line 692
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "PROCEDURE_NAME"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 693
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v9, "COLUMN_NAME"

    invoke-direct {v4, v6, v9, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x3

    aput-object v4, v3, v6

    .line 694
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v9, ""

    const-string v10, "COLUMN_TYPE"

    invoke-direct {v4, v9, v10, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v9, 0x4

    aput-object v4, v3, v9

    .line 695
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v10, ""

    const-string v11, "DATA_TYPE"

    const/4 v12, 0x5

    invoke-direct {v4, v10, v11, v12, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v3, v12

    .line 696
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v10, ""

    const-string v11, "TYPE_NAME"

    invoke-direct {v4, v10, v11, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v10, 0x6

    aput-object v4, v3, v10

    .line 697
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v11, ""

    const-string v13, "PRECISION"

    invoke-direct {v4, v11, v13, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v11, 0x7

    aput-object v4, v3, v11

    .line 698
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v13, ""

    const-string v14, "LENGTH"

    invoke-direct {v4, v13, v14, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v13, 0x8

    aput-object v4, v3, v13

    .line 699
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v14, ""

    const-string v15, "SCALE"

    invoke-direct {v4, v14, v15, v12, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v14, 0x9

    aput-object v4, v3, v14

    .line 700
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v15, ""

    const-string v14, "RADIX"

    invoke-direct {v4, v15, v14, v12, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v14, 0xa

    aput-object v4, v3, v14

    .line 701
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v15, ""

    const-string v14, "NULLABLE"

    invoke-direct {v4, v15, v14, v12, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v14, 0xb

    aput-object v4, v3, v14

    .line 702
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v15, ""

    const-string v14, "REMARKS"

    invoke-direct {v4, v15, v14, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v14, 0xc

    aput-object v4, v3, v14

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 704
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/CallableStatement;->extractProcedureName()Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v15, v4

    :goto_0
    if-nez v15, :cond_1

    move-object v13, v4

    goto :goto_1

    :cond_1
    :try_start_1
    const-string v13, "UTF-8"

    .line 709
    invoke-static {v15, v13}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v13
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 711
    :catch_0
    :try_start_2
    iget-object v13, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v15, v13}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v13

    .line 714
    :goto_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 716
    :goto_2
    iget v10, v1, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    if-ge v11, v10, :cond_2

    .line 717
    new-array v10, v0, [[B

    aput-object v4, v10, v8

    aput-object v4, v10, v7

    aput-object v13, v10, v5

    .line 721
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v0, v4}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v0

    aput-object v0, v10, v6

    .line 723
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v0, v4}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v0

    aput-object v0, v10, v9

    .line 725
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v0, v4}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v0

    aput-object v0, v10, v12

    const-string v0, "VARCHAR"

    .line 726
    iget-object v4, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v0, v4}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v0

    const/4 v4, 0x6

    aput-object v0, v10, v4

    const v0, 0xffff

    .line 727
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v0, v4}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v0

    const/4 v4, 0x7

    aput-object v0, v10, v4

    const v0, 0xffff

    .line 728
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v0, v4}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v0

    const/16 v4, 0x8

    aput-object v0, v10, v4

    .line 729
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v0, v4}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v0

    const/16 v4, 0x9

    aput-object v0, v10, v4

    const/16 v0, 0xa

    .line 730
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v4, v6}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v4

    aput-object v4, v10, v0

    .line 732
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v4, v6}, Lcom/mysql/jdbc/StringUtils;->s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B

    move-result-object v4

    const/16 v6, 0xb

    aput-object v4, v10, v6

    const/4 v4, 0x0

    aput-object v4, v10, v14

    .line 736
    new-instance v0, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v0, v10, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    const/16 v0, 0xd

    const/4 v4, 0x0

    const/4 v6, 0x3

    goto/16 :goto_2

    .line 739
    :cond_2
    iget-object v0, v1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v3, v15, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;Lcom/mysql/jdbc/MySQLConnection;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 741
    invoke-direct {v1, v0}, Lcom/mysql/jdbc/CallableStatement;->convertGetProcedureColumnsToInternalDescriptors(Ljava/sql/ResultSet;)V

    .line 742
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private generateParameterMap()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 494
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    if-nez v1, :cond_0

    .line 496
    monitor-exit v0

    return-void

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-virtual {v1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameterCount()I

    move-result v1

    .line 505
    iget-boolean v2, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 509
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    if-eq v2, v1, :cond_4

    .line 510
    iget v1, p0, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    .line 512
    iget-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    const-string v2, "SELECT"

    :goto_0
    invoke-static {v1, v2}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    const-string v2, "CALL"

    goto :goto_0

    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 516
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    const/16 v4, 0x28

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 519
    iget-object v6, p0, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    const-string v7, ")"

    const-string v8, "\'"

    const-string v9, "\'"

    sget-object v10, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    move v5, v1

    invoke-static/range {v5 .. v10}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 522
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    const/4 v4, 0x1

    add-int/2addr v1, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, "\'\""

    const-string v5, "\'\""

    invoke-static {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 524
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 528
    iget v3, p0, Lcom/mysql/jdbc/CallableStatement;->parameterCount:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    .line 535
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 536
    iget-object v5, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    add-int/lit8 v6, v4, 0x1

    aput v3, v5, v4

    move v4, v6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 543
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)Lcom/mysql/jdbc/CallableStatement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 483
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Lcom/mysql/jdbc/CallableStatement;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/CallableStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V

    return-object v0

    .line 487
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/CallableStatement;->JDBC_4_CSTMT_2_ARGS_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/CallableStatement;

    return-object p0
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mysql/jdbc/CallableStatement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 467
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Lcom/mysql/jdbc/CallableStatement;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mysql/jdbc/CallableStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 471
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/CallableStatement;->JDBC_4_CSTMT_4_ARGS_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/CallableStatement;

    return-object p0
.end method

.method private hasParametersView()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2385
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 2387
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x5

    invoke-interface {v2, v3, v3, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2388
    new-instance v2, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;

    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 2389
    check-cast v2, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->gethasParametersView()Z

    move-result v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v2

    .line 2392
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2394
    :catch_0
    monitor-exit v0

    return v1

    .line 2396
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static mangleParameterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 406
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x40

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    .line 410
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@com_mysql_jdbc_outparam_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "@com_mysql_jdbc_outparam_"

    .line 411
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private retrieveOutParams()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1855
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1856
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-virtual {v1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numberOfParameters()I

    move-result v1

    .line 1858
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->parameterIndexToRsIndex:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1861
    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement;->parameterIndexToRsIndex:[I

    const/high16 v5, -0x80000000

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    if-lez v1, :cond_9

    .line 1867
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "SELECT "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1872
    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-virtual {v4}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1873
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    .line 1875
    iget-boolean v10, v9, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isOut:Z

    if-eqz v10, :cond_1

    .line 1878
    iget-object v6, p0, Lcom/mysql/jdbc/CallableStatement;->parameterIndexToRsIndex:[I

    iget v10, v9, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    add-int/lit8 v11, v7, 0x1

    aput v7, v6, v10

    .line 1880
    iget-object v6, v9, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    if-nez v6, :cond_2

    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->hasParametersView()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1881
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nullnp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v9, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    .line 1884
    :cond_2
    iget-object v6, v9, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    invoke-static {v6}, Lcom/mysql/jdbc/CallableStatement;->mangleParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v8, :cond_3

    const-string v7, ","

    .line 1887
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    const-string v7, "@"

    .line 1892
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0x40

    .line 1893
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1896
    :cond_4
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v7, v11

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_8

    .line 1906
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1907
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 1908
    check-cast v1, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->copy()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1910
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->next()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1911
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V

    .line 1912
    iput-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    if-eqz v2, :cond_a

    .line 1916
    :try_start_3
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 1915
    :cond_7
    throw v1

    .line 1920
    :cond_8
    iput-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    goto :goto_4

    .line 1923
    :cond_9
    iput-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1925
    :cond_a
    :goto_4
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method private setInOutParamsOnServer()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2006
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2007
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iget v1, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    if-lez v1, :cond_7

    .line 2008
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-virtual {v1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2010
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    .line 2013
    iget-boolean v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isOut:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isIn:Z

    if-eqz v3, :cond_0

    .line 2014
    iget-object v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->hasParametersView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2015
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nullnp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    .line 2018
    :cond_1
    iget-object v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    invoke-static {v3}, Lcom/mysql/jdbc/CallableStatement;->mangleParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2019
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    add-int/2addr v5, v6

    const/4 v7, 0x1

    add-int/2addr v5, v7

    add-int/2addr v5, v7

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "SET "

    .line 2020
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=?"

    .line 2022
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    .line 2027
    :try_start_1
    iget-object v5, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/Wrapper;

    const-class v5, Lcom/mysql/jdbc/PreparedStatement;

    invoke-interface {v4, v5}, Lcom/mysql/jdbc/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/PreparedStatement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2029
    :try_start_2
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->isNull:[Z

    iget v5, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_2

    const-string v2, "NULL"

    .line 2030
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v4, v7, v2}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    goto :goto_1

    .line 2033
    :cond_2
    iget v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    invoke-virtual {p0, v3}, Lcom/mysql/jdbc/CallableStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 2036
    array-length v8, v3

    const/16 v9, 0x8

    if-le v8, v9, :cond_3

    aget-byte v5, v3, v5

    const/16 v8, 0x5f

    if-ne v5, v8, :cond_3

    aget-byte v5, v3, v7

    const/16 v8, 0x62

    if-ne v5, v8, :cond_3

    const/4 v5, 0x2

    aget-byte v5, v3, v5

    const/16 v8, 0x69

    if-ne v5, v8, :cond_3

    const/4 v5, 0x3

    aget-byte v5, v3, v5

    const/16 v8, 0x6e

    if-ne v5, v8, :cond_3

    aget-byte v5, v3, v6

    const/16 v6, 0x61

    if-ne v5, v6, :cond_3

    const/4 v5, 0x5

    aget-byte v5, v3, v5

    const/16 v6, 0x72

    if-ne v5, v6, :cond_3

    const/4 v5, 0x6

    aget-byte v5, v3, v5

    const/16 v6, 0x79

    if-ne v5, v6, :cond_3

    const/4 v5, 0x7

    aget-byte v5, v3, v5

    const/16 v6, 0x27

    if-ne v5, v6, :cond_3

    .line 2039
    invoke-virtual {v4, v7, v3}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    goto :goto_1

    .line 2041
    :cond_3
    iget v2, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->desiredJdbcType:I

    const/4 v5, -0x7

    if-eq v2, v5, :cond_4

    const/16 v5, 0x7d0

    if-eq v2, v5, :cond_4

    const/16 v5, 0x7d4

    if-eq v2, v5, :cond_4

    packed-switch v2, :pswitch_data_0

    .line 2054
    invoke-virtual {v4, v7, v3}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscape(I[B)V

    goto :goto_1

    .line 2050
    :cond_4
    :pswitch_0
    invoke-virtual {v4, v7, v3}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    goto :goto_1

    .line 2058
    :cond_5
    invoke-virtual {v4, v7, v5}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 2062
    :goto_1
    invoke-virtual {v4}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdate()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    .line 2065
    :try_start_3
    invoke-virtual {v4}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    .line 2064
    :cond_6
    throw v1

    .line 2071
    :cond_7
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setOutParams()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2123
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2124
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iget v1, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    if-lez v1, :cond_6

    .line 2125
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-virtual {v1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    .line 2128
    iget-boolean v3, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isOut:Z

    if-eqz v3, :cond_0

    .line 2130
    iget-object v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->hasParametersView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nullnp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    .line 2134
    :cond_1
    iget-object v3, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    invoke-static {v3}, Lcom/mysql/jdbc/CallableStatement;->mangleParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2138
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 2139
    iget v2, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    add-int/2addr v2, v5

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 2144
    :goto_1
    iget-object v7, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    array-length v7, v7

    if-ge v6, v7, :cond_4

    .line 2145
    iget-object v7, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    aget v7, v7, v6

    iget v8, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    if-ne v7, v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v3, :cond_5

    move v2, v6

    .line 2159
    :goto_3
    iget-object v5, p0, Lcom/mysql/jdbc/CallableStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v6, p0, Lcom/mysql/jdbc/CallableStatement;->charEncoding:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v8

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/mysql/jdbc/CallableStatement;->setBytesNoEscapeNoQuotes(I[B)V

    goto :goto_0

    .line 2153
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallableStatement.21"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CallableStatement.22"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 2164
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


# virtual methods
.method public addBatch()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 590
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->setOutParams()V

    .line 592
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->addBatch()V

    return-void
.end method

.method protected checkReadOnlySafeStatement()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2381
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkReadOnlySafeStatement()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->checkReadOnlyProcedure()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public clearParameters()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 666
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 667
    :try_start_0
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 670
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v2, :cond_0

    .line 671
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    :cond_0
    :try_start_2
    iput-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 676
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    .line 677
    iput-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 674
    throw v2

    :catchall_1
    move-exception v1

    .line 676
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public execute()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 829
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 832
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->checkStreamability()V

    .line 834
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->setInOutParamsOnServer()V

    .line 835
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->setOutParams()V

    .line 837
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->execute()Z

    move-result v1

    .line 839
    iget-boolean v2, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-eqz v2, :cond_0

    .line 840
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    iput-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->functionReturnValueResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 841
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->functionReturnValueResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->next()Z

    const/4 v2, 0x0

    .line 842
    iput-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 845
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->retrieveOutParams()V

    .line 847
    iget-boolean v2, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-nez v2, :cond_1

    .line 848
    monitor-exit v0

    return v1

    :cond_1
    const/4 v1, 0x0

    .line 852
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 853
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executeBatch()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2227
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->executeLargeBatch()[J

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt([J)[I

    move-result-object v0

    return-object v0
.end method

.method public executeLargeBatch()[J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2428
    iget-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement;->hasOutputParams:Z

    if-nez v0, :cond_0

    .line 2433
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeBatch()[J

    move-result-object v0

    return-object v0

    .line 2429
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Can\'t call executeBatch() on CallableStatement with OUTPUT parameters"

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public executeLargeUpdate()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2404
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2407
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->checkStreamability()V

    .line 2409
    iget-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-eqz v1, :cond_0

    .line 2410
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->execute()Z

    const-wide/16 v1, -0x1

    .line 2412
    monitor-exit v0

    return-wide v1

    .line 2415
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->setInOutParamsOnServer()V

    .line 2416
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->setOutParams()V

    .line 2418
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J

    move-result-wide v1

    .line 2420
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->retrieveOutParams()V

    .line 2422
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 2423
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executeQuery()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 863
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 865
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->checkStreamability()V

    .line 869
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->setInOutParamsOnServer()V

    .line 870
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->setOutParams()V

    .line 872
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1

    .line 874
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->retrieveOutParams()V

    .line 876
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 877
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executeUpdate()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 887
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->executeLargeUpdate()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result v0

    return v0
.end method

.method protected fixParameterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 937
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 939
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->hasParametersView()Z

    move-result v1

    if-nez v1, :cond_2

    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallableStatement.0"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "CallableStatement.15"

    :goto_1
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    const-string p1, "CallableStatement.16"

    goto :goto_1

    :goto_2
    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_2
    if-nez p1, :cond_3

    .line 945
    invoke-direct {p0}, Lcom/mysql/jdbc/CallableStatement;->hasParametersView()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "nullpn"

    .line 949
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNoAccessToProcedureBodies()Z

    move-result v1

    if-nez v1, :cond_4

    .line 954
    invoke-static {p1}, Lcom/mysql/jdbc/CallableStatement;->mangleParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_4
    const-string p1, "No access to parameters by name when connection has been configured not to access procedure bodies"

    const-string v1, "S1009"

    .line 950
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 955
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getArray(I)Ljava/sql/Array;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 962
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 963
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 965
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getArray(I)Ljava/sql/Array;

    move-result-object p1

    .line 967
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 969
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 970
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 977
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 978
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 980
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getArray(Ljava/lang/String;)Ljava/sql/Array;

    move-result-object p1

    .line 982
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 984
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 985
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 992
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 993
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 995
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 997
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 999
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1000
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBigDecimal(II)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1014
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1015
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1017
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object p1

    .line 1019
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1021
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1022
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1029
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1030
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1032
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 1034
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1036
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1037
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1044
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1045
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1047
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBlob(I)Ljava/sql/Blob;

    move-result-object p1

    .line 1049
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1051
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1052
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1059
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1060
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1062
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBlob(Ljava/lang/String;)Ljava/sql/Blob;

    move-result-object p1

    .line 1064
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1066
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1067
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBoolean(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1074
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1075
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1077
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBoolean(I)Z

    move-result p1

    .line 1079
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1081
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1082
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1089
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1090
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1092
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1094
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1096
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1097
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getByte(I)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1104
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1105
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1107
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getByte(I)B

    move-result p1

    .line 1109
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1111
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1119
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1120
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1122
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getByte(Ljava/lang/String;)B

    move-result p1

    .line 1124
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1126
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBytes(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1134
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1135
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1137
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBytes(I)[B

    move-result-object p1

    .line 1139
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1141
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1149
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1150
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1152
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1154
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1156
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1157
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getClob(I)Ljava/sql/Clob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1164
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1165
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1167
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getClob(I)Ljava/sql/Clob;

    move-result-object p1

    .line 1169
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1171
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1172
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1179
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1180
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1182
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getClob(Ljava/lang/String;)Ljava/sql/Clob;

    move-result-object p1

    .line 1184
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1186
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1187
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1194
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1195
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1197
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getDate(I)Ljava/sql/Date;

    move-result-object p1

    .line 1199
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1201
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1202
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1209
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1210
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1212
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    .line 1214
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1216
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1224
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1225
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1227
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getDate(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object p1

    .line 1229
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1231
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1232
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1239
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1240
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1242
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    .line 1244
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1246
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1247
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDouble(I)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1254
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1255
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1257
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getDouble(I)D

    move-result-wide v2

    .line 1259
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1261
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception p1

    .line 1262
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1269
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1270
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1272
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1274
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1276
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception p1

    .line 1277
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getFloat(I)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1284
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1285
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1287
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getFloat(I)F

    move-result p1

    .line 1289
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1291
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1292
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1299
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1300
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1302
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getFloat(Ljava/lang/String;)F

    move-result p1

    .line 1304
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1306
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1307
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getInt(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1314
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1315
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1317
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getInt(I)I

    move-result p1

    .line 1319
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1321
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1322
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1329
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1330
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1332
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1334
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1336
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1337
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLong(I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1344
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1345
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1347
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getLong(I)J

    move-result-wide v2

    .line 1349
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1351
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception p1

    .line 1352
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1359
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1360
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1362
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1364
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1366
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception p1

    .line 1367
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getNamedParamIndex(Ljava/lang/String;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1371
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1372
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNoAccessToProcedureBodies()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p1, :cond_6

    .line 1378
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1383
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(Ljava/lang/String;)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_1

    .line 1388
    iget-boolean p2, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->isOut:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1389
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallableStatement.5"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CallableStatement.6"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 1393
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    if-nez p2, :cond_2

    .line 1394
    iget p1, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    add-int/lit8 p1, p1, 0x1

    monitor-exit v0

    return p1

    :cond_2
    const/4 p2, 0x0

    .line 1397
    :goto_1
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    array-length v2, v2

    if-ge p2, v2, :cond_4

    .line 1398
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    aget v2, v2, p2

    iget v3, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->index:I

    if-ne v2, v3, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 1399
    monitor-exit v0

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1403
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find local placeholder mapping for parameter named \""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 1384
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallableStatement.3"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CallableStatement.4"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_6
    const-string p1, "CallableStatement.2"

    .line 1379
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_7
    const-string p1, "No access to parameters by name when connection has been configured not to access procedure bodies"

    const-string p2, "S1009"

    .line 1373
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 1405
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1412
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1413
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->checkIsOutputParam(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object v1

    .line 1415
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v2

    .line 1417
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    iget v1, v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->desiredJdbcType:I

    invoke-interface {v2, p1, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getObjectStoredProc(II)Ljava/lang/Object;

    move-result-object p1

    .line 1419
    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1421
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1422
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 3
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

    .line 1472
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1473
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1476
    move-object v2, v1

    check-cast v2, Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-virtual {v2, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 1478
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1480
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1481
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .locals 2
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

    .line 1429
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1430
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1432
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getObject(ILjava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 1434
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1436
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1437
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1444
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1445
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1447
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1449
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1451
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1452
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
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

    .line 1485
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1486
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1488
    move-object v2, v1

    check-cast v2, Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 1490
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1492
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1493
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
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

    .line 1459
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1460
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1462
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 1464
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1466
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1467
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1507
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1508
    :try_start_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1510
    iget-boolean p1, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mysql/jdbc/CallableStatement;->returnValueParam:Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    if-eqz p1, :cond_0

    .line 1511
    iget-object p1, p0, Lcom/mysql/jdbc/CallableStatement;->functionReturnValueResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v0

    return-object p1

    .line 1514
    :cond_0
    iget-object p1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-nez p1, :cond_2

    .line 1515
    iget-object p1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-virtual {p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numberOfParameters()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "CallableStatement.7"

    .line 1516
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "CallableStatement.8"

    .line 1519
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 1522
    :cond_2
    iget-object p1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParameterResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1523
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getParameterIndexOffset()I
    .locals 1

    .line 2233
    iget-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement;->callingStoredFunction:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2237
    :cond_0
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v0

    return v0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1528
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1529
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    if-nez v1, :cond_0

    .line 1530
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    monitor-exit v0

    return-object v1

    .line 1533
    :cond_0
    new-instance v1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement;->paramInfo:Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;

    invoke-direct {v1, p0, v2}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;-><init>(Lcom/mysql/jdbc/CallableStatement;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1534
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1541
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1542
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1544
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getRef(I)Ljava/sql/Ref;

    move-result-object p1

    .line 1546
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1548
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1549
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1556
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1557
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1559
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getRef(Ljava/lang/String;)Ljava/sql/Ref;

    move-result-object p1

    .line 1561
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1563
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1564
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getShort(I)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1571
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1572
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1574
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getShort(I)S

    move-result p1

    .line 1576
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1578
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1579
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1586
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1587
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1589
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getShort(Ljava/lang/String;)S

    move-result p1

    .line 1591
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1593
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1594
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1601
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1602
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1604
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1606
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1608
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1609
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1616
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1617
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1619
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1621
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1623
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1624
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1631
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1632
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1634
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getTime(I)Ljava/sql/Time;

    move-result-object p1

    .line 1636
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1638
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1639
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1646
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1647
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1649
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object p1

    .line 1651
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1653
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1654
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1661
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1662
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1664
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getTime(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object p1

    .line 1666
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1668
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1669
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1676
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1677
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1679
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;

    move-result-object p1

    .line 1681
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1683
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1684
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1691
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1692
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1694
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p1

    .line 1696
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1698
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1699
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1706
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1707
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1709
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object p1

    .line 1711
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1713
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1714
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1721
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1722
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1724
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    .line 1726
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1728
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1729
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1736
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1737
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1739
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object p1

    .line 1741
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1743
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1744
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getURL(I)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1751
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1752
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1754
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getURL(I)Ljava/net/URL;

    move-result-object p1

    .line 1756
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1758
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1759
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1766
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1767
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    .line 1769
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    .line 1771
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    .line 1773
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1774
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected mapOutputParameterIndexToRsIndex(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1779
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1780
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/CallableStatement;->returnValueParam:Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-ne p1, v2, :cond_0

    .line 1781
    monitor-exit v0

    return v2

    .line 1784
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->checkParameterIndexBounds(I)V

    add-int/lit8 v1, p1, -0x1

    .line 1788
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    if-eqz v3, :cond_1

    .line 1789
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->placeholderToParameterIndexMap:[I

    aget v1, v3, v1

    .line 1792
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/CallableStatement;->parameterIndexToRsIndex:[I

    aget v1, v3, v1

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_2

    add-int/2addr v1, v2

    .line 1799
    monitor-exit v0

    return v1

    .line 1795
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallableStatement.21"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "CallableStatement.22"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 1800
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerOutParameter(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1807
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->checkIsOutputParam(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object p1

    .line 1808
    iput p2, p1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->desiredJdbcType:I

    return-void
.end method

.method public registerOutParameter(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1815
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->registerOutParameter(II)V

    return-void
.end method

.method public registerOutParameter(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1822
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/CallableStatement;->checkIsOutputParam(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1829
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1830
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->registerOutParameter(II)V

    .line 1831
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerOutParameter(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p3, 0x1

    .line 1838
    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->registerOutParameter(II)V

    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1845
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->registerOutParameter(IILjava/lang/String;)V

    return-void
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2241
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setAsciiStream(ILjava/io/InputStream;)V

    return-void
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1932
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2246
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/CallableStatement;->setAsciiStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public setBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1939
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    return-void
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2251
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setBinaryStream(ILjava/io/InputStream;)V

    return-void
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1946
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2256
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/CallableStatement;->setBinaryStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public setBlob(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2266
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setBlob(ILjava/io/InputStream;)V

    return-void
.end method

.method public setBlob(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2271
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/CallableStatement;->setBlob(ILjava/io/InputStream;J)V

    return-void
.end method

.method public setBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2261
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setBlob(ILjava/sql/Blob;)V

    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1953
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setBoolean(IZ)V

    return-void
.end method

.method public setByte(Ljava/lang/String;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1960
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setByte(IB)V

    return-void
.end method

.method public setBytes(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1967
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setBytes(I[B)V

    return-void
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2276
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setCharacterStream(ILjava/io/Reader;)V

    return-void
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1974
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setCharacterStream(ILjava/io/Reader;I)V

    return-void
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2281
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/CallableStatement;->setCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public setClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2291
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setClob(ILjava/io/Reader;)V

    return-void
.end method

.method public setClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2296
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/CallableStatement;->setClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public setClob(Ljava/lang/String;Ljava/sql/Clob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2286
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setClob(ILjava/sql/Clob;)V

    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1981
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setDate(ILjava/sql/Date;)V

    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/sql/Date;Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1988
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1995
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setDouble(ID)V

    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2002
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setFloat(IF)V

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2078
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setInt(II)V

    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2085
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setLong(IJ)V

    return-void
.end method

.method public setNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2301
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setNCharacterStream(ILjava/io/Reader;)V

    return-void
.end method

.method public setNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2306
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/CallableStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public setNull(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2092
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setNull(II)V

    return-void
.end method

.method public setNull(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2099
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setNull(IILjava/lang/String;)V

    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2106
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2113
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setObject(ILjava/lang/Object;I)V

    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public setShort(Ljava/lang/String;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2171
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setShort(IS)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2178
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public setTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2185
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setTime(ILjava/sql/Time;)V

    return-void
.end method

.method public setTime(Ljava/lang/String;Ljava/sql/Time;Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2192
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setTime(ILjava/sql/Time;Ljava/util/Calendar;)V

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2199
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2206
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/CallableStatement;->setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V

    return-void
.end method

.method public setURL(Ljava/lang/String;Ljava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2213
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;->setURL(ILjava/net/URL;)V

    return-void
.end method

.method public wasNull()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2220
    invoke-virtual {p0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2221
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement;->outputParamWasNull:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2222
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
