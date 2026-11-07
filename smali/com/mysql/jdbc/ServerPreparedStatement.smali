.class public Lcom/mysql/jdbc/ServerPreparedStatement;
.super Lcom/mysql/jdbc/PreparedStatement;
.source "ServerPreparedStatement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;,
        Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;
    }
.end annotation


# static fields
.field protected static final BLOB_STREAM_READ_BUF_SIZE:I = 0x2000

.field private static final JDBC_4_SPS_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private canRewrite:Z

.field private defaultTzCalendar:Ljava/util/Calendar;

.field private detectedLongParameterSwitch:Z

.field private fieldCount:I

.field private hasCheckedRewrite:Z

.field private hasOnDuplicateKeyUpdate:Z

.field private invalid:Z

.field private invalidationException:Ljava/sql/SQLException;

.field protected isCached:Z

.field private locationOfOnDuplicateKeyUpdate:I

.field private outByteBuffer:Lcom/mysql/jdbc/Buffer;

.field private parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

.field private parameterFields:[Lcom/mysql/jdbc/Field;

.field private resultFields:[Lcom/mysql/jdbc/Field;

.field private sendTypesToServer:Z

.field private serverNeedsResetBeforeEachExecution:Z

.field private serverStatementId:J

.field private serverTzCalendar:Ljava/util/Calendar;

.field private stringTypeCode:I

.field private useAutoSlowLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 62
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mysql.jdbc.JDBC42ServerPreparedStatement"

    goto :goto_0

    :cond_0
    const-string v0, "com.mysql.jdbc.JDBC4ServerPreparedStatement"

    .line 65
    :goto_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ServerPreparedStatement;->JDBC_4_SPS_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    .line 75
    sput-object v0, Lcom/mysql/jdbc/ServerPreparedStatement;->JDBC_4_SPS_CTOR:Ljava/lang/reflect/Constructor;

    :goto_1
    return-void
.end method

.method protected constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 365
    invoke-direct {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 251
    iput-boolean p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasOnDuplicateKeyUpdate:Z

    .line 282
    iput-boolean p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->detectedLongParameterSwitch:Z

    .line 291
    iput-boolean p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalid:Z

    .line 308
    iput-boolean p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    const/16 p3, 0xfe

    .line 314
    iput p3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->stringTypeCode:I

    .line 543
    iput-boolean p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    .line 2572
    iput-boolean p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasCheckedRewrite:Z

    .line 2573
    iput-boolean p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->canRewrite:Z

    const/4 v0, -0x2

    .line 2625
    iput v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->locationOfOnDuplicateKeyUpdate:I

    .line 367
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkNullOrEmptyQuery(Ljava/lang/String;)V

    .line 369
    invoke-static {p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->findStartOfStatement(Ljava/lang/String;)I

    move-result v0

    .line 371
    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->firstAlphaCharUc(Ljava/lang/String;I)C

    move-result v0

    iput-char v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->firstCharOfStmt:C

    .line 373
    iget-char v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->firstCharOfStmt:C

    const/4 v1, 0x1

    const/16 v2, 0x49

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasOnDuplicateKeyUpdate:Z

    .line 375
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x5

    invoke-interface {v0, v2, p1, p1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v2, p1, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverNeedsResetBeforeEachExecution:Z

    goto :goto_1

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/16 v2, 0xa

    invoke-interface {v0, v3, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverNeedsResetBeforeEachExecution:Z

    .line 381
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoSlowLog()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useAutoSlowLog:Z

    .line 382
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/16 v2, 0x15

    const/16 v5, 0x17

    invoke-interface {v0, v4, v2, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useTrueBoolean:Z

    .line 384
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getStatementComment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, p2

    goto :goto_2

    .line 386
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/* "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " */ "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x2

    invoke-interface {v0, v3, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p3, 0xfd

    .line 389
    iput p3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->stringTypeCode:I

    goto :goto_3

    .line 391
    :cond_3
    iput p3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->stringTypeCode:I

    .line 395
    :goto_3
    :try_start_0
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverPrepare(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    invoke-virtual {p0, p4}, Lcom/mysql/jdbc/ServerPreparedStatement;->setResultSetType(I)V

    .line 410
    invoke-virtual {p0, p5}, Lcom/mysql/jdbc/ServerPreparedStatement;->setResultSetConcurrency(I)V

    .line 412
    iget p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterTypes:[I

    return-void

    :catch_0
    move-exception p2

    .line 401
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->realClose(ZZ)V

    .line 403
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p3

    const-string p4, "S1000"

    invoke-static {p1, p4, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    .line 404
    invoke-virtual {p1, p2}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 406
    throw p1

    :catch_1
    move-exception p2

    .line 397
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->realClose(ZZ)V

    .line 399
    throw p2
.end method

.method private clearParametersInternal(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 527
    :goto_0
    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v0, v3, :cond_2

    .line 528
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 532
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    .line 537
    invoke-direct {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverResetStatement()V

    .line 539
    iput-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->detectedLongParameterSwitch:Z

    :cond_3
    return-void
.end method

.method private dumpCloseForTestcase()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 579
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 580
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v2, "DEALLOCATE PREPARE debug_stmt_"

    .line 582
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";\n"

    .line 584
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/MySQLConnection;->dumpTestcaseQuery(Ljava/lang/String;)V

    .line 587
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpExecuteForTestcase()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 591
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 592
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 594
    :goto_0
    iget v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v3, v4, :cond_1

    .line 595
    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4, v1}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v4, "SET @debug_stmt_param"

    .line 597
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    iget v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_"

    .line 599
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "="

    .line 601
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v4, v4, v3

    iget-boolean v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-eqz v4, :cond_0

    const-string v4, "NULL"

    .line 604
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 606
    :cond_0
    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v4, ";\n"

    .line 609
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 612
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v1}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v3, "EXECUTE debug_stmt_"

    .line 614
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-lez v3, :cond_3

    const-string v3, " USING "

    .line 618
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :goto_2
    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v2, v3, :cond_3

    if-lez v2, :cond_2

    const-string v3, ", "

    .line 621
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v3, "@debug_stmt_param"

    .line 624
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    .line 626
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const-string v2, ";\n"

    .line 632
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/MySQLConnection;->dumpTestcaseQuery(Ljava/lang/String;)V

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

.method private dumpPrepareForTestcase()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 639
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 640
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 642
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v2, "PREPARE debug_stmt_"

    .line 644
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    iget v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " FROM \""

    .line 646
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\";\n"

    .line 648
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/MySQLConnection;->dumpTestcaseQuery(Ljava/lang/String;)V

    .line 651
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDefaultTzCalendar()Ljava/util/Calendar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2380
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2381
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->defaultTzCalendar:Ljava/util/Calendar;

    if-nez v1, :cond_0

    .line 2382
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->defaultTzCalendar:Ljava/util/Calendar;

    .line 2385
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->defaultTzCalendar:Ljava/util/Calendar;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2386
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)Lcom/mysql/jdbc/ServerPreparedStatement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 327
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Lcom/mysql/jdbc/ServerPreparedStatement;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/ServerPreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0

    .line 332
    :cond_0
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/ServerPreparedStatement;->JDBC_4_SPS_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/ServerPreparedStatement;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 341
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    .line 343
    instance-of p1, p0, Ljava/sql/SQLException;

    if-eqz p1, :cond_1

    .line 344
    check-cast p0, Ljava/sql/SQLException;

    throw p0

    .line 347
    :cond_1
    new-instance p1, Ljava/sql/SQLException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "S1000"

    invoke-direct {p1, p0, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    .line 339
    new-instance p1, Ljava/sql/SQLException;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "S1000"

    invoke-direct {p1, p0, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p0

    .line 337
    new-instance p1, Ljava/sql/SQLException;

    invoke-virtual {p0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "S1000"

    invoke-direct {p1, p0, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p0

    .line 335
    new-instance p1, Ljava/sql/SQLException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "S1000"

    invoke-direct {p1, p0, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private getServerTzCalendar()Ljava/util/Calendar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2370
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2371
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverTzCalendar:Ljava/util/Calendar;

    if-nez v1, :cond_0

    .line 2372
    new-instance v1, Ljava/util/GregorianCalendar;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverTzCalendar:Ljava/util/Calendar;

    .line 2375
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverTzCalendar:Ljava/util/Calendar;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2376
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private serverExecute(IZ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v13, p0

    .line 1132
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 1133
    :try_start_0
    iget-object v0, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v15

    .line 1135
    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->shouldIntercept()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v15, v0, v13, v8}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPre(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1139
    monitor-exit v14

    return-object v0

    .line 1143
    :cond_0
    iget-boolean v0, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->detectedLongParameterSwitch:Z

    const/4 v12, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 1148
    :goto_0
    iget v4, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    sub-int/2addr v4, v8

    if-ge v0, v4, :cond_4

    .line 1149
    iget-object v4, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    .line 1150
    iget-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->boundBeforeExecutionNum:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    goto :goto_1

    .line 1151
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerPreparedStatement.11"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ServerPreparedStatement.12"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1C00"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1156
    :cond_2
    :goto_1
    iget-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v1, v1, v0

    iget-wide v1, v1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->boundBeforeExecutionNum:J

    move-wide v2, v1

    const/4 v1, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1162
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverResetStatement()V

    :cond_5
    const/4 v0, 0x0

    .line 1166
    :goto_2
    iget v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v0, v1, :cond_7

    .line 1167
    iget-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1168
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerPreparedStatement.13"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ServerPreparedStatement.14"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_7
    const/4 v0, 0x0

    .line 1177
    :goto_3
    iget v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v0, v1, :cond_9

    .line 1178
    iget-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v1, :cond_8

    .line 1179
    iget-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v1, v1, v0

    invoke-direct {v13, v0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverLongData(ILcom/mysql/jdbc/ServerPreparedStatement$BindValue;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1183
    :cond_9
    iget-object v0, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoGenerateTestcaseScript()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1184
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->dumpExecuteForTestcase()V

    .line 1191
    :cond_a
    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v4

    .line 1193
    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->clear()V

    const/16 v0, 0x17

    .line 1194
    invoke-virtual {v4, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1195
    iget-wide v0, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v4, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1197
    iget-object v0, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-interface {v0, v1, v8, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1198
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->isCursorRequired()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1199
    invoke-virtual {v4, v8}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    goto :goto_4

    .line 1201
    :cond_b
    invoke-virtual {v4, v12}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    :goto_4
    const-wide/16 v0, 0x1

    .line 1204
    invoke-virtual {v4, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1208
    :cond_c
    iget v0, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 1213
    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_d

    .line 1216
    invoke-virtual {v4, v12}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1219
    :cond_d
    new-array v0, v0, [B

    .line 1222
    iget-boolean v2, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    invoke-virtual {v4, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1224
    iget-boolean v2, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    .line 1228
    :goto_6
    iget v3, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v2, v3, :cond_e

    .line 1229
    iget-object v3, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    invoke-virtual {v4, v3}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    .line 1236
    :goto_7
    iget v3, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v2, v3, :cond_11

    .line 1237
    iget-object v3, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-nez v3, :cond_10

    .line 1238
    iget-object v3, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-nez v3, :cond_f

    .line 1239
    iget-object v3, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v3, v3, v2

    invoke-direct {v13, v4, v3, v15}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeBinding(Lcom/mysql/jdbc/Buffer;Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;Lcom/mysql/jdbc/MysqlIO;)V

    goto :goto_8

    .line 1241
    :cond_f
    div-int/lit8 v3, v2, 0x8

    aget-byte v5, v0, v3

    and-int/lit8 v6, v2, 0x7

    shl-int v6, v8, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    :cond_10
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1249
    :cond_11
    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    .line 1250
    invoke-virtual {v4, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 1251
    invoke-virtual {v4, v0}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 1252
    invoke-virtual {v4, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 1256
    iget-object v0, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLogSlowQueries()Z

    move-result v0

    .line 1257
    iget-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getGatherPerformanceMetrics()Z

    move-result v11

    .line 1259
    iget-boolean v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->profileSQL:Z

    if-nez v1, :cond_13

    if-nez v0, :cond_13

    if-eqz v11, :cond_12

    goto :goto_9

    :cond_12
    const-wide/16 v16, 0x0

    goto :goto_a

    .line 1260
    :cond_13
    :goto_9
    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v1

    move-wide/from16 v16, v1

    .line 1263
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetCancelledState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/16 v18, 0x0

    :try_start_1
    const-string v1, ""

    .line 1270
    iget-boolean v2, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->profileSQL:Z

    if-nez v2, :cond_15

    if-nez v0, :cond_15

    if-eqz v11, :cond_14

    goto :goto_c

    :cond_14
    :goto_b
    move-object v7, v1

    goto :goto_d

    .line 1271
    :cond_15
    :goto_c
    invoke-virtual {v13, v8}, Lcom/mysql/jdbc/ServerPreparedStatement;->asSql(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 1274
    :goto_d
    iget-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->timeoutInMillis:I

    if-eqz v1, :cond_16

    iget-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x5

    invoke-interface {v1, v2, v12, v12}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1275
    new-instance v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v1, v13, v13}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 1276
    :try_start_2
    iget-object v2, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    iget v3, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->timeoutInMillis:I

    int-to-long v5, v3

    invoke-virtual {v2, v1, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v1

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_1b

    :catch_0
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_1c

    :cond_16
    move-object/from16 v6, v18

    .line 1279
    :goto_e
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->statementBegins()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v1, v15

    move-object v8, v6

    move-object/from16 v6, v19

    move-object v9, v7

    move/from16 v7, v20

    .line 1281
    :try_start_4
    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    move-result-object v10
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v0, :cond_18

    if-nez v11, :cond_18

    .line 1285
    :try_start_5
    iget-boolean v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->profileSQL:Z
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_17

    goto :goto_f

    :cond_17
    const-wide/16 v22, 0x0

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object/from16 v18, v8

    goto/16 :goto_1b

    :catch_1
    move-exception v0

    move-object/from16 v18, v8

    goto/16 :goto_1c

    .line 1286
    :cond_18
    :goto_f
    :try_start_6
    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v1
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-wide/from16 v22, v1

    :goto_10
    if-eqz v8, :cond_1a

    .line 1290
    :try_start_7
    invoke-virtual {v8}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1292
    iget-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 1294
    iget-object v1, v8, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-nez v1, :cond_19

    goto :goto_11

    .line 1295
    :cond_19
    iget-object v0, v8, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    throw v0
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_1a
    move-object/from16 v18, v8

    .line 1301
    :goto_11
    :try_start_8
    iget-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 1302
    :try_start_9
    iget-boolean v2, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->wasCancelled:Z

    if-eqz v2, :cond_1c

    .line 1305
    iget-boolean v0, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->wasCancelledByTimeout:Z

    if-eqz v0, :cond_1b

    .line 1306
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v0}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    goto :goto_12

    .line 1308
    :cond_1b
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v0}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    .line 1311
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetCancelledState()V

    .line 1313
    throw v0

    .line 1315
    :cond_1c
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-nez v0, :cond_1e

    if-eqz v11, :cond_1d

    goto :goto_13

    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_16

    :cond_1e
    :goto_13
    const/4 v1, 0x0

    sub-long v1, v22, v16

    if-eqz v0, :cond_21

    .line 1323
    :try_start_a
    iget-boolean v0, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->useAutoSlowLog:Z

    if-eqz v0, :cond_20

    .line 1324
    iget-object v0, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSlowQueryThresholdMillis()I

    move-result v0

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-lez v0, :cond_1f

    const/16 v21, 0x1

    goto :goto_14

    :cond_1f
    const/16 v21, 0x0

    :goto_14
    move/from16 v0, v21

    goto :goto_15

    .line 1326
    :cond_20
    iget-object v0, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->isAbonormallyLongQuery(J)Z

    move-result v0

    .line 1328
    iget-object v3, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->reportQueryTime(J)V

    goto :goto_15

    :cond_21
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_22

    .line 1334
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ServerPreparedStatement.15"

    .line 1335
    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->getSlowQueryThreshold()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ServerPreparedStatement.15a"

    .line 1337
    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ServerPreparedStatement.16"

    .line 1339
    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "as prepared: "

    .line 1341
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    iget-object v4, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n with parameters bound:\n\n"

    .line 1343
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    iget-object v4, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    new-instance v5, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/16 v25, 0x6

    const-string v26, ""

    iget-object v6, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-object v7, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v28

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getId()I

    move-result v30

    const/16 v31, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->getQueryTimingUnits()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v7}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v24, v5

    move-object/from16 v27, v6

    move-wide/from16 v34, v1

    invoke-direct/range {v24 .. v39}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    :cond_22
    if-eqz v11, :cond_23

    .line 1352
    iget-object v3, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->registerQueryExecutionTime(J)V

    .line 1356
    :cond_23
    :goto_16
    iget-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->incrementNumberOfPreparedExecutes()V

    .line 1358
    iget-boolean v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->profileSQL:Z

    if-eqz v1, :cond_24

    .line 1359
    iget-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v1}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v1

    iput-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    .line 1361
    iget-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    new-instance v2, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/16 v25, 0x4

    const-string v26, ""

    iget-object v3, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-wide v4, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connectionId:J

    iget v6, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    const/16 v31, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v7

    const/4 v11, 0x0

    sub-long v34, v7, v16

    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->getQueryTimingUnits()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v7}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v38

    invoke-direct {v13, v9}, Lcom/mysql/jdbc/ServerPreparedStatement;->truncateQueryToLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v24, v2

    move-object/from16 v27, v3

    move-wide/from16 v28, v4

    move/from16 v30, v6

    invoke-direct/range {v24 .. v39}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 1366
    :cond_24
    iget v4, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->resultSetType:I

    iget v5, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->resultSetConcurrency:I

    iget-object v7, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    const/4 v11, 0x1

    iget v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->fieldCount:I

    int-to-long v2, v1

    move-object v1, v15

    move-wide/from16 v16, v2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v6, p2

    move-object v8, v10

    move-object v10, v9

    move v9, v11

    move-object/from16 v40, v10

    move-wide/from16 v10, v16

    move-object/from16 v12, p3

    invoke-virtual/range {v1 .. v12}, Lcom/mysql/jdbc/MysqlIO;->readAllResults(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v7

    .line 1369
    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->shouldIntercept()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1370
    iget-object v2, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v15

    move-object/from16 v3, p0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPost(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;ZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    if-eqz v1, :cond_25

    goto :goto_17

    :cond_25
    move-object v1, v7

    .line 1377
    :goto_17
    iget-boolean v2, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->profileSQL:Z

    if-eqz v2, :cond_26

    .line 1378
    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v2

    .line 1380
    iget-object v4, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    new-instance v5, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/16 v25, 0x5

    const-string v26, ""

    iget-object v6, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-object v7, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v28

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getId()I

    move-result v30

    const/16 v31, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const/4 v7, 0x0

    sub-long v34, v2, v22

    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->getQueryTimingUnits()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v24, v5

    move-object/from16 v27, v6

    invoke-direct/range {v24 .. v39}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    :cond_26
    if-eqz v0, :cond_27

    .line 1389
    iget-object v0, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getExplainSlowQueries()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1390
    invoke-static/range {v40 .. v40}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    move-object/from16 v2, v40

    invoke-virtual {v15, v0, v2}, Lcom/mysql/jdbc/MysqlIO;->explainSlowQuery([BLjava/lang/String;)V

    :cond_27
    if-nez p2, :cond_28

    .line 1393
    iget-boolean v0, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->serverNeedsResetBeforeEachExecution:Z

    if-eqz v0, :cond_28

    .line 1394
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverResetStatement()V
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :cond_28
    const/4 v7, 0x0

    .line 1397
    :try_start_b
    iput-boolean v7, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    .line 1398
    iput-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1400
    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->hadWarnings()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1401
    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->scanForAndThrowDataTruncation()V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 1419
    :cond_29
    :try_start_c
    iget-object v0, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v18, :cond_2a

    .line 1415
    invoke-virtual/range {v18 .. v18}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1416
    iget-object v0, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1404
    :cond_2a
    monitor-exit v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    return-object v1

    :catchall_2
    move-exception v0

    const/4 v7, 0x0

    .line 1315
    :goto_18
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catch_2
    move-exception v0

    goto :goto_1d

    :catchall_3
    move-exception v0

    goto :goto_18

    :catchall_4
    move-exception v0

    goto :goto_19

    :catch_3
    move-exception v0

    goto :goto_1a

    :catchall_5
    move-exception v0

    move-object v8, v6

    :goto_19
    const/4 v7, 0x0

    move-object/from16 v18, v8

    goto :goto_1e

    :catch_4
    move-exception v0

    move-object v8, v6

    :goto_1a
    const/4 v7, 0x0

    move-object/from16 v18, v8

    goto :goto_1d

    :catchall_6
    move-exception v0

    :goto_1b
    const/4 v7, 0x0

    goto :goto_1e

    :catch_5
    move-exception v0

    :goto_1c
    const/4 v7, 0x0

    .line 1406
    :goto_1d
    :try_start_f
    invoke-virtual {v15}, Lcom/mysql/jdbc/MysqlIO;->shouldIntercept()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1407
    iget-object v2, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, v15

    move-object/from16 v3, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPost(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;ZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 1410
    :cond_2b
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catchall_7
    move-exception v0

    .line 1416
    :goto_1e
    :try_start_10
    iget-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v18, :cond_2c

    .line 1415
    invoke-virtual/range {v18 .. v18}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1416
    iget-object v1, v13, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 1412
    :cond_2c
    throw v0

    :catchall_8
    move-exception v0

    .line 1419
    monitor-exit v14
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    throw v0
.end method

.method private serverLongData(ILcom/mysql/jdbc/ServerPreparedStatement$BindValue;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1448
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1449
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    .line 1451
    invoke-virtual {v2}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v5

    .line 1453
    iget-object v1, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1455
    instance-of v3, v1, [B

    if-eqz v3, :cond_0

    .line 1456
    invoke-virtual {v5}, Lcom/mysql/jdbc/Buffer;->clear()V

    const/16 v1, 0x18

    .line 1457
    invoke-virtual {v5, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1458
    iget-wide v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v5, v3, v4}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1459
    invoke-virtual {v5, p1}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 1461
    iget-object p1, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {v5, p1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1463
    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    goto :goto_0

    .line 1464
    :cond_0
    instance-of p2, v1, Ljava/io/InputStream;

    if-eqz p2, :cond_1

    .line 1465
    check-cast v1, Ljava/io/InputStream;

    invoke-direct {p0, v2, p1, v5, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeStream(Lcom/mysql/jdbc/MysqlIO;ILcom/mysql/jdbc/Buffer;Ljava/io/InputStream;)V

    goto :goto_0

    .line 1466
    :cond_1
    instance-of p2, v1, Ljava/sql/Blob;

    if-eqz p2, :cond_2

    .line 1467
    check-cast v1, Ljava/sql/Blob;

    invoke-interface {v1}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p0, v2, p1, v5, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeStream(Lcom/mysql/jdbc/MysqlIO;ILcom/mysql/jdbc/Buffer;Ljava/io/InputStream;)V

    goto :goto_0

    .line 1468
    :cond_2
    instance-of p2, v1, Ljava/io/Reader;

    if-eqz p2, :cond_3

    .line 1469
    check-cast v1, Ljava/io/Reader;

    invoke-direct {p0, v2, p1, v5, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeReader(Lcom/mysql/jdbc/MysqlIO;ILcom/mysql/jdbc/Buffer;Ljava/io/Reader;)V

    .line 1474
    :goto_0
    monitor-exit v0

    return-void

    .line 1471
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ServerPreparedStatement.18"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 1474
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private serverPrepare(Ljava/lang/String;)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1478
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1479
    :try_start_0
    iget-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    .line 1481
    iget-object v3, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getAutoGenerateTestcaseScript()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1482
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->dumpPrepareForTestcase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    const-wide/16 v3, 0x0

    :try_start_1
    const-string v5, "LOAD DATA"

    move-object/from16 v10, p1

    .line 1488
    invoke-static {v10, v5}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v5, :cond_1

    .line 1489
    iput-boolean v12, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->isLoadDataQuery:Z

    goto :goto_0

    .line 1491
    :cond_1
    iput-boolean v11, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->isLoadDataQuery:Z

    .line 1494
    :goto_0
    iget-object v5, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getProfileSql()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_2
    move-wide v13, v3

    const/4 v3, 0x0

    .line 1499
    iget-object v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v4

    .line 1501
    iget-boolean v5, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->isLoadDataQuery:Z

    if-nez v5, :cond_3

    iget-object v5, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    move-object v8, v4

    goto :goto_1

    :cond_3
    move-object v8, v3

    :goto_1
    const/16 v4, 0x16

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    move-object/from16 v5, p1

    .line 1505
    invoke-virtual/range {v3 .. v9}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    .line 1507
    iget-object v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x4

    invoke-interface {v4, v5, v12, v12}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1509
    invoke-virtual {v3, v12}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_2

    .line 1512
    :cond_4
    invoke-virtual {v3, v11}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 1515
    :goto_2
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    .line 1516
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v4

    iput v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->fieldCount:I

    .line 1517
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v3

    iput v3, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    .line 1518
    iget v3, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    new-array v3, v3, [Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    iput-object v3, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    const/4 v3, 0x0

    .line 1520
    :goto_3
    iget v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v3, v4, :cond_5

    .line 1521
    iget-object v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    new-instance v6, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    invoke-direct {v6}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;-><init>()V

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1524
    :cond_5
    iget-object v3, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->incrementNumberOfPrepares()V

    .line 1526
    iget-boolean v3, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->profileSQL:Z

    if-eqz v3, :cond_6

    .line 1527
    iget-object v3, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    new-instance v4, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/16 v16, 0x2

    const-string v17, ""

    iget-object v6, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-wide v7, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connectionId:J

    iget v9, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->statementId:I

    const/16 v22, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v18

    const/4 v15, 0x0

    sub-long v25, v18, v13

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->getQueryTimingUnits()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    new-instance v13, Ljava/lang/Throwable;

    invoke-direct {v13}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v13}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {p0 .. p1}, Lcom/mysql/jdbc/ServerPreparedStatement;->truncateQueryToLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object v15, v4

    move-object/from16 v18, v6

    move-wide/from16 v19, v7

    move/from16 v21, v9

    invoke-direct/range {v15 .. v30}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 1532
    :cond_6
    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v3

    xor-int/2addr v3, v12

    .line 1534
    iget v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-lez v4, :cond_8

    iget-object v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v6, 0x2

    invoke-interface {v4, v5, v12, v6}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v11, v11}, Lcom/mysql/jdbc/MysqlIO;->isVersion(III)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1535
    iget v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    new-array v4, v4, [Lcom/mysql/jdbc/Field;

    iput-object v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterFields:[Lcom/mysql/jdbc/Field;

    const/4 v4, 0x0

    .line 1538
    :goto_4
    iget v5, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    if-ge v4, v5, :cond_7

    .line 1539
    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v5

    .line 1540
    iget-object v6, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterFields:[Lcom/mysql/jdbc/Field;

    invoke-virtual {v0, v5, v11}, Lcom/mysql/jdbc/MysqlIO;->unpackField(Lcom/mysql/jdbc/Buffer;Z)Lcom/mysql/jdbc/Field;

    move-result-object v5

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_8

    .line 1543
    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    .line 1548
    :cond_8
    iget v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->fieldCount:I

    if-lez v4, :cond_a

    .line 1549
    iget v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->fieldCount:I

    new-array v4, v4, [Lcom/mysql/jdbc/Field;

    iput-object v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    const/4 v4, 0x0

    .line 1552
    :goto_5
    iget v5, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->fieldCount:I

    if-ge v4, v5, :cond_9

    .line 1553
    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v5

    .line 1554
    iget-object v6, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    invoke-virtual {v0, v5, v11}, Lcom/mysql/jdbc/MysqlIO;->unpackField(Lcom/mysql/jdbc/Buffer;Z)Lcom/mysql/jdbc/Field;

    move-result-object v5

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    if-eqz v3, :cond_a

    .line 1557
    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1575
    :cond_a
    :try_start_2
    iget-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 1574
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1561
    :try_start_3
    iget-object v3, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getDumpQueriesOnException()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1562
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "\n\nQuery being prepared when exception was thrown:\n\n"

    .line 1563
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    iget-object v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/mysql/jdbc/ConnectionImpl;->appendMessageToException(Ljava/sql/SQLException;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 1569
    :cond_b
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1575
    :goto_6
    :try_start_4
    iget-object v3, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 1572
    throw v0

    :catchall_1
    move-exception v0

    .line 1574
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private serverResetStatement()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1596
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1598
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v1

    .line 1600
    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v5

    .line 1602
    invoke-virtual {v5}, Lcom/mysql/jdbc/Buffer;->clear()V

    const/16 v2, 0x1a

    .line 1603
    invoke-virtual {v5, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1604
    iget-wide v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v5, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x1a

    const/4 v4, 0x0

    .line 1607
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-interface {v2, v6, v8, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    xor-int/lit8 v6, v2, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1619
    :try_start_2
    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 1618
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1611
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    .line 1612
    invoke-virtual {v3, v2}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1614
    throw v3

    :catch_1
    move-exception v2

    .line 1609
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1619
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 1616
    throw v2

    :catchall_1
    move-exception v1

    .line 1618
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private setTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/16 p2, 0x5c

    .line 2038
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2040
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/16 v0, 0xb

    .line 2041
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 2043
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_1

    .line 2044
    iput-object p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    goto :goto_0

    .line 2046
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v2

    .line 2048
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v6

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object p2

    iput-object p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/16 p2, 0x5d

    .line 2096
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2098
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/16 v0, 0xc

    .line 2099
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 2101
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->sendFractionalSeconds:Z

    if-nez v0, :cond_1

    .line 2102
    invoke-static {p2}, Lcom/mysql/jdbc/TimeUtil;->truncateFractionalSeconds(Ljava/sql/Timestamp;)Ljava/sql/Timestamp;

    move-result-object p2

    :cond_1
    move-object v3, p2

    .line 2105
    iget-boolean p2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useLegacyDatetimeCode:Z

    if-nez p2, :cond_2

    .line 2106
    iput-object v3, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    goto :goto_2

    .line 2108
    :cond_2
    iget-object p2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object p2

    :goto_0
    move-object v1, p2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object p2

    goto :goto_0

    .line 2111
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object p2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v5

    move-object v2, p3

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object p2

    iput-object p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private storeBinding(Lcom/mysql/jdbc/Buffer;Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;Lcom/mysql/jdbc/MysqlIO;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2177
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2179
    :try_start_0
    iget-object v1, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 2184
    iget v2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0xf

    if-eq v2, v3, :cond_0

    const/16 v3, 0xf6

    if-eq v2, v3, :cond_0

    const/16 v3, 0x8

    const/4 v4, 0x4

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    .line 2238
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 2210
    :pswitch_0
    :try_start_2
    check-cast v1, Ljava/sql/Time;

    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeTime(Lcom/mysql/jdbc/Buffer;Ljava/sql/Time;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2211
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 2198
    :pswitch_1
    :try_start_4
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2199
    iget-wide p2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    invoke-virtual {p1, p2, p3}, Lcom/mysql/jdbc/Buffer;->writeLongLong(J)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2200
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    .line 2215
    :pswitch_2
    :try_start_6
    check-cast v1, Ljava/util/Date;

    iget p2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    invoke-direct {p0, p1, v1, p3, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeDateTime(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;Lcom/mysql/jdbc/MysqlIO;I)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2216
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void

    .line 2206
    :pswitch_3
    :try_start_8
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2207
    iget-wide p2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    invoke-virtual {p1, p2, p3}, Lcom/mysql/jdbc/Buffer;->writeDouble(D)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2208
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-void

    .line 2202
    :pswitch_4
    :try_start_a
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2203
    iget p2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeFloat(F)V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2204
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    return-void

    .line 2194
    :pswitch_5
    :try_start_c
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2195
    iget-wide p2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int p2, p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2196
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    return-void

    :pswitch_6
    const/4 p3, 0x2

    .line 2190
    :try_start_e
    invoke-virtual {p1, p3}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2191
    iget-wide p2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 2192
    :try_start_f
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    return-void

    .line 2187
    :pswitch_7
    :try_start_10
    iget-wide p2, p2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int p2, p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2188
    :try_start_11
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    return-void

    .line 2222
    :cond_0
    :pswitch_8
    :try_start_12
    instance-of p2, v1, [B

    if-eqz p2, :cond_1

    .line 2223
    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->writeLenBytes([B)V

    goto :goto_0

    .line 2224
    :cond_1
    iget-boolean p2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isLoadDataQuery:Z

    if-nez p2, :cond_2

    .line 2225
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object p2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object p2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v7

    iget-object v8, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/Buffer;->writeLenString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;ZLcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_0

    .line 2228
    :cond_2
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeLenBytes([B)V
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 2231
    :goto_0
    :try_start_13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2235
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ServerPreparedStatement.22"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 2238
    :goto_1
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xfd
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private storeDateTime(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;Lcom/mysql/jdbc/MysqlIO;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2295
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object p3

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 2296
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2297
    invoke-direct {p0, p1, p2, p4}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeDateTime413AndNewer(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;I)V

    goto :goto_0

    .line 2299
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeDateTime412AndOlder(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;I)V

    .line 2301
    :goto_0
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private storeDateTime412AndOlder(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2242
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2245
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_1

    const/16 v1, 0xa

    if-ne p3, v1, :cond_0

    .line 2247
    invoke-direct {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getDefaultTzCalendar()Ljava/util/Calendar;

    move-result-object p3

    goto :goto_0

    .line 2249
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getServerTzCalendar()Ljava/util/Calendar;

    move-result-object p3

    goto :goto_0

    .line 2252
    :cond_1
    instance-of p3, p2, Ljava/sql/Timestamp;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object p3

    .line 2256
    :goto_0
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x8

    .line 2259
    :try_start_1
    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    const/4 v2, 0x7

    .line 2260
    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2262
    invoke-virtual {p3, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x1

    .line 2264
    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 2265
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    const/4 v2, 0x5

    .line 2266
    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2268
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    int-to-byte v3, v4

    .line 2269
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    int-to-byte v2, v2

    .line 2270
    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2272
    instance-of p2, p2, Ljava/sql/Date;

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 2273
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2274
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2275
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    goto :goto_1

    :cond_3
    const/16 p2, 0xb

    .line 2277
    invoke-virtual {p3, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    const/16 p2, 0xc

    .line 2278
    invoke-virtual {p3, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    const/16 p2, 0xd

    .line 2279
    invoke-virtual {p3, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2285
    :goto_1
    :try_start_2
    invoke-virtual {p3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2284
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 2285
    invoke-virtual {p3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2282
    throw p1

    :catchall_1
    move-exception p1

    .line 2284
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private storeDateTime413AndNewer(Lcom/mysql/jdbc/Buffer;Ljava/util/Date;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2305
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2308
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_1

    const/16 v1, 0xa

    if-ne p3, v1, :cond_0

    .line 2310
    invoke-direct {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getDefaultTzCalendar()Ljava/util/Calendar;

    move-result-object p3

    goto :goto_0

    .line 2312
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getServerTzCalendar()Ljava/util/Calendar;

    move-result-object p3

    goto :goto_0

    .line 2315
    :cond_1
    instance-of p3, p2, Ljava/sql/Timestamp;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object p3

    .line 2319
    :goto_0
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2322
    :try_start_1
    invoke-virtual {p3, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2324
    instance-of v2, p2, Ljava/sql/Date;

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/16 v5, 0xb

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    .line 2325
    invoke-virtual {p3, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 2326
    invoke-virtual {p3, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 2327
    invoke-virtual {p3, v3, v6}, Ljava/util/Calendar;->set(II)V

    :cond_3
    const/4 v2, 0x7

    .line 2332
    instance-of v7, p2, Ljava/sql/Timestamp;

    if-eqz v7, :cond_4

    const/16 v2, 0xb

    .line 2336
    :cond_4
    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 2338
    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    const/4 v7, 0x1

    .line 2340
    invoke-virtual {p3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    .line 2341
    invoke-virtual {p3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v7

    const/4 v7, 0x5

    .line 2342
    invoke-virtual {p3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 2344
    invoke-virtual {p1, v8}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    int-to-byte v8, v9

    .line 2345
    invoke-virtual {p1, v8}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    int-to-byte v7, v7

    .line 2346
    invoke-virtual {p1, v7}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2348
    instance-of v7, p2, Ljava/sql/Date;

    if-eqz v7, :cond_5

    .line 2349
    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2350
    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2351
    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    goto :goto_1

    .line 2353
    :cond_5
    invoke-virtual {p3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {p1, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2354
    invoke-virtual {p3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2355
    invoke-virtual {p3, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    :goto_1
    if-ne v2, v5, :cond_6

    .line 2360
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p2}, Ljava/sql/Timestamp;->getNanos()I

    move-result p2

    div-int/lit16 p2, p2, 0x3e8

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2367
    :cond_6
    :try_start_2
    invoke-virtual {p3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2366
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 2367
    invoke-virtual {p3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2364
    throw p1

    :catchall_1
    move-exception p1

    .line 2366
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private storeReader(Lcom/mysql/jdbc/MysqlIO;ILcom/mysql/jdbc/Buffer;Ljava/io/Reader;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 2393
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 2394
    :try_start_0
    iget-object v2, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getClobCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2396
    iget-object v2, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v2

    :cond_0
    move-object v8, v2

    const/4 v7, 0x1

    const/4 v2, 0x2

    if-eqz v8, :cond_3

    const-string v3, "UTF-16"

    .line 2401
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2402
    iget-object v3, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v8}, Lcom/mysql/jdbc/MySQLConnection;->getMaxBytesPerChar(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    :cond_3
    :goto_0
    const/16 v3, 0x2000

    .line 2412
    div-int/2addr v3, v2

    new-array v6, v3, [C

    .line 2419
    iget-object v2, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getBlobSendChunkSize()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2422
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/mysql/jdbc/Buffer;->clear()V

    const/16 v4, 0x18

    .line 2423
    invoke-virtual {v9, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2424
    iget-wide v2, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v9, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 2425
    invoke-virtual {v9, v0}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    .line 2429
    :goto_1
    invoke-virtual {v10, v6}, Ljava/io/Reader;->read([C)I

    move-result v14

    const/4 v13, -0x1

    if-eq v14, v13, :cond_5

    const/4 v13, 0x0

    .line 2432
    iget-object v12, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    iget-object v12, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v19

    move-object v12, v6

    move/from16 v21, v14

    move-object v14, v8

    move v4, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v21

    invoke-static/range {v12 .. v19}, Lcom/mysql/jdbc/StringUtils;->getBytes([CLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v12

    .line 2435
    array-length v13, v12

    invoke-virtual {v9, v12, v3, v13}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 2437
    array-length v13, v12

    add-int v13, v20, v13

    .line 2438
    array-length v12, v12

    add-int/2addr v12, v2

    if-lt v13, v5, :cond_4

    const/16 v4, 0x18

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p1

    const/16 v17, 0x0

    move v3, v4

    move-object v4, v13

    move/from16 v18, v5

    move-object/from16 v5, p3

    move-object/from16 v19, v6

    move v6, v14

    const/4 v14, 0x1

    move-object v7, v15

    move-object v15, v8

    move/from16 v8, v16

    .line 2443
    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 2446
    invoke-virtual/range {p3 .. p3}, Lcom/mysql/jdbc/Buffer;->clear()V

    const/16 v2, 0x18

    .line 2447
    invoke-virtual {v9, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2448
    iget-wide v3, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v9, v3, v4}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 2449
    invoke-virtual {v9, v0}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    move v4, v12

    const/16 v20, 0x0

    goto :goto_2

    :cond_4
    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object v15, v8

    const/16 v2, 0x18

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v20, v13

    :goto_2
    move v2, v12

    move-object v8, v15

    move/from16 v5, v18

    move-object/from16 v6, v19

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v12, 0x1

    move v15, v4

    const/16 v4, 0x18

    goto :goto_1

    :cond_5
    move v4, v15

    if-eq v2, v4, :cond_6

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    .line 2454
    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    :cond_6
    if-nez v12, :cond_7

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    .line 2458
    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2478
    :cond_7
    :try_start_2
    iget-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_8

    if-eqz v10, :cond_8

    .line 2470
    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2477
    :catch_0
    :cond_8
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 2461
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerPreparedStatement.24"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2463
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2465
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2473
    :goto_3
    :try_start_6
    iget-object v2, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_9

    if-eqz v10, :cond_9

    .line 2470
    :try_start_7
    invoke-virtual/range {p4 .. p4}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2467
    :catch_2
    :cond_9
    :try_start_8
    throw v0

    :catchall_1
    move-exception v0

    .line 2477
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method

.method private storeStream(Lcom/mysql/jdbc/MysqlIO;ILcom/mysql/jdbc/Buffer;Ljava/io/InputStream;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 2481
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    const/16 v2, 0x2000

    .line 2482
    :try_start_0
    new-array v12, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2490
    :try_start_1
    iget-object v2, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getBlobSendChunkSize()I

    move-result v13

    .line 2492
    invoke-virtual/range {p3 .. p3}, Lcom/mysql/jdbc/Buffer;->clear()V

    const/16 v14, 0x18

    .line 2493
    invoke-virtual {v9, v14}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2494
    iget-wide v2, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v9, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 2495
    invoke-virtual {v9, v0}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    .line 2499
    :goto_0
    invoke-virtual {v10, v12}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/16 v16, 0x1

    .line 2503
    invoke-virtual {v9, v12, v15, v5}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    add-int/2addr v4, v5

    add-int v17, v2, v5

    if-lt v4, v13, :cond_0

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    .line 2510
    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    .line 2513
    invoke-virtual/range {p3 .. p3}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 2514
    invoke-virtual {v9, v14}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2515
    iget-wide v2, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v9, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 2516
    invoke-virtual {v9, v0}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    move/from16 v2, v17

    move v3, v2

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move/from16 v2, v17

    goto :goto_0

    :cond_1
    if-eq v2, v3, :cond_2

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    .line 2521
    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    :cond_2
    if-nez v16, :cond_3

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    .line 2525
    invoke-virtual/range {v2 .. v8}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2545
    :cond_3
    :try_start_2
    iget-object v0, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_4

    if-eqz v10, :cond_4

    .line 2537
    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2544
    :catch_0
    :cond_4
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2528
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerPreparedStatement.25"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1000"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 2530
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2532
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2540
    :goto_1
    :try_start_6
    iget-object v2, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_5

    if-eqz v10, :cond_5

    .line 2537
    :try_start_7
    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2534
    :catch_2
    :cond_5
    :try_start_8
    throw v0

    :catchall_1
    move-exception v0

    .line 2544
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method

.method private storeTime(Lcom/mysql/jdbc/Buffer;Ljava/sql/Time;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 255
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    const/16 v0, 0x8

    .line 256
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    const-wide/16 v0, 0x0

    .line 258
    invoke-virtual {p1, v0, v1}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 260
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v0

    .line 262
    monitor-enter v0

    .line 263
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 265
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p2, 0xb

    .line 266
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    const/16 p2, 0xc

    .line 267
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    const/16 p2, 0xd

    .line 268
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 274
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 275
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 272
    throw p1

    :catchall_1
    move-exception p1

    .line 274
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private truncateQueryToLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1578
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1581
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMaxQuerySizeToLog()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 1582
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMaxQuerySizeToLog()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 1583
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getMaxQuerySizeToLog()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MysqlIO.25"

    .line 1584
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1591
    :cond_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1592
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addBatch()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 425
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    if-nez v1, :cond_0

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    new-instance v2, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    invoke-direct {v2, v3}, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;-><init>([Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public asSql(Z)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 438
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 443
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 445
    :try_start_1
    iget v1, v2, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    .line 446
    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    if-ge v5, v3, :cond_3

    .line 449
    iget-object v6, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v6, v6, v5

    if-eqz v6, :cond_2

    .line 450
    iget-object v6, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v6, v6, v5

    iget-boolean v6, v6, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-eqz v6, :cond_0

    add-int/lit8 v6, v5, 0x1

    .line 451
    invoke-virtual {v2, v6, v4}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_1

    .line 453
    :cond_0
    iget-object v6, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v6, v6, v5

    .line 458
    iget v7, v6, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    packed-switch v7, :pswitch_data_0

    add-int/lit8 v6, v5, 0x1

    .line 479
    iget-object v7, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    add-int/lit8 v7, v5, 0x1

    .line 476
    iget-wide v8, v6, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    invoke-virtual {v2, v7, v8, v9}, Lcom/mysql/jdbc/PreparedStatement;->setDouble(ID)V

    goto :goto_1

    :pswitch_1
    add-int/lit8 v7, v5, 0x1

    .line 473
    iget v6, v6, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    invoke-virtual {v2, v7, v6}, Lcom/mysql/jdbc/PreparedStatement;->setFloat(IF)V

    goto :goto_1

    :pswitch_2
    add-int/lit8 v7, v5, 0x1

    .line 467
    iget-wide v8, v6, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v6, v8

    invoke-virtual {v2, v7, v6}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    goto :goto_1

    :pswitch_3
    add-int/lit8 v7, v5, 0x1

    .line 464
    iget-wide v8, v6, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v6, v8

    int-to-short v6, v6

    invoke-virtual {v2, v7, v6}, Lcom/mysql/jdbc/PreparedStatement;->setShort(IS)V

    goto :goto_1

    :pswitch_4
    add-int/lit8 v7, v5, 0x1

    .line 461
    iget-wide v8, v6, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v6, v8

    int-to-byte v6, v6

    invoke-virtual {v2, v7, v6}, Lcom/mysql/jdbc/PreparedStatement;->setByte(IB)V

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, 0x1

    .line 470
    iget-wide v8, v6, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    invoke-virtual {v2, v7, v8, v9}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 486
    :cond_3
    invoke-virtual {v2, p1}, Lcom/mysql/jdbc/PreparedStatement;->asSql(Z)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    .line 490
    :try_start_2
    invoke-virtual {v2}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 486
    :catch_0
    :cond_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_5

    .line 490
    :try_start_4
    invoke-virtual {v2}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_4

    .line 488
    :catch_1
    :cond_5
    :goto_3
    :try_start_5
    throw p1

    .line 496
    :goto_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public canRewriteAsMultiValueInsertAtSqlLevel()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2577
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2578
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasCheckedRewrite:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2579
    iput-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasCheckedRewrite:Z

    .line 2580
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->isOnDuplicateKeyUpdate()Z

    move-result v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getLocationOfOnDuplicateKeyUpdate()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->canRewrite(Ljava/lang/String;ZII)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->canRewrite:Z

    .line 2582
    new-instance v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v5

    iget-object v6, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v7, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 2585
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->canRewrite:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2586
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canRewriteAsMultivalueInsertStatement()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2590
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2591
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->canRewriteAsMultiValueInsertAtSqlLevel()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2592
    monitor-exit v0

    return v2

    .line 2598
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2603
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2605
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_1

    .line 2607
    check-cast v3, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;

    iget-object v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;->batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2621
    :cond_2
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 2622
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected checkClosed()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 506
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalid:Z

    if-nez v0, :cond_0

    .line 510
    invoke-super {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    return-object v0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;

    throw v0
.end method

.method public clearParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 518
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 519
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearParametersInternal(Z)V

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v0, :cond_0

    return-void

    .line 566
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 567
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->isPoolable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isClosed:Z

    if-nez v1, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearParameters()V

    .line 569
    iput-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isClosed:Z

    .line 570
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1, p0}, Lcom/mysql/jdbc/MySQLConnection;->recachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V

    .line 571
    monitor-exit v0

    return-void

    .line 574
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->realClose(ZZ)V

    .line 575
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected computeMaxParameterSetSizeAndBatchSize(I)[J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2653
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const-wide/16 v3, 0xa

    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    move-wide v9, v3

    move-wide v7, v5

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    move/from16 v11, p1

    if-ge v3, v11, :cond_4

    .line 2658
    :try_start_0
    iget-object v12, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;

    iget-object v12, v12, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;->batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 2662
    iget v13, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    add-int/lit8 v13, v13, 0x7

    div-int/lit8 v13, v13, 0x8

    int-to-long v13, v13

    add-long/2addr v13, v5

    .line 2664
    iget v15, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    mul-int/lit8 v15, v15, 0x2

    int-to-long v5, v15

    add-long/2addr v13, v5

    const/4 v4, 0x0

    .line 2666
    :goto_1
    iget-object v5, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 2667
    aget-object v5, v12, v4

    iget-boolean v5, v5, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-nez v5, :cond_1

    .line 2669
    aget-object v5, v12, v4

    invoke-virtual {v5}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->getBoundLength()J

    move-result-wide v5

    .line 2671
    aget-object v15, v12, v4

    iget-boolean v15, v15, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v15, :cond_0

    const-wide/16 v16, -0x1

    cmp-long v15, v5, v16

    if-eqz v15, :cond_1

    add-long/2addr v13, v5

    goto :goto_2

    :cond_0
    const/4 v15, 0x0

    add-long/2addr v13, v5

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    add-long/2addr v9, v13

    cmp-long v4, v13, v7

    if-lez v4, :cond_3

    move-wide v7, v13

    :cond_3
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v5, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2688
    :cond_4
    new-array v3, v4, [J

    aput-wide v7, v3, v0

    const/4 v0, 0x1

    aput-wide v9, v3, v0

    monitor-exit v2

    return-object v3

    .line 2689
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected containsOnDuplicateKeyUpdateInSQL()Z
    .locals 1

    .line 2776
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->hasOnDuplicateKeyUpdate:Z

    return v0
.end method

.method protected executeBatchSerially(I)[J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 657
    :try_start_0
    iget-object v3, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 659
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_e

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearWarnings()V

    .line 668
    iget-object v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v5, 0x1

    .line 673
    :try_start_1
    iget-object v6, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_c

    .line 674
    iget-object v6, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 675
    new-array v9, v6, [J

    .line 677
    iget-boolean v10, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v10, :cond_0

    .line 678
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const-wide/16 v11, -0x3

    if-ge v10, v6, :cond_1

    .line 682
    aput-wide v11, v9, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 694
    :cond_1
    :try_start_2
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v0, :cond_2

    const/4 v10, 0x5

    invoke-interface {v3, v10, v8, v8}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 695
    new-instance v10, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v10, v1, v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 696
    :try_start_3
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v13

    int-to-long v14, v0

    invoke-virtual {v13, v10, v14, v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    :cond_2
    move-object v10, v7

    :goto_1
    move-object v0, v7

    move-object v13, v0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_8

    .line 700
    iget-object v14, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 703
    :try_start_4
    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_4

    .line 704
    move-object v15, v14

    check-cast v15, Ljava/lang/String;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-boolean v11, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->retrieveGeneratedKeys:Z

    invoke-virtual {v1, v15, v5, v11}, Lcom/mysql/jdbc/ServerPreparedStatement;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v11

    aput-wide v11, v9, v7

    .line 707
    iget-object v11, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v11}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getFirstCharOfQuery()C

    move-result v11

    const/16 v12, 0x49

    if-ne v11, v12, :cond_3

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Lcom/mysql/jdbc/ServerPreparedStatement;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v1, v11}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBatchedGeneratedKeys(I)V

    move-object v11, v13

    goto :goto_6

    .line 709
    :cond_4
    check-cast v14, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;

    iget-object v11, v14, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;->batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    iput-object v11, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    if-eqz v13, :cond_6

    const/4 v11, 0x0

    .line 714
    :goto_4
    iget-object v12, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    array-length v12, v12

    if-ge v11, v12, :cond_6

    .line 715
    iget-object v12, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v12, v12, v11

    iget v12, v12, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    aget-object v14, v13, v11

    iget v14, v14, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    if-eq v12, v14, :cond_5

    .line 716
    iput-boolean v5, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 724
    :cond_6
    :goto_5
    :try_start_6
    invoke-virtual {v1, v8, v5}, Lcom/mysql/jdbc/ServerPreparedStatement;->executeUpdateInternal(ZZ)J

    move-result-wide v11

    aput-wide v11, v9, v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 768
    :try_start_7
    iget-object v11, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 730
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->containsOnDuplicateKeyUpdateInSQL()Z

    move-result v12

    invoke-virtual {v1, v12}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBatchedGeneratedKeys(I)V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_6
    move-object v13, v11

    const-wide/16 v11, -0x3

    goto :goto_9

    :catchall_0
    move-exception v0

    .line 768
    :try_start_9
    iget-object v11, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 726
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_0
    move-exception v0

    move-object v13, v11

    goto :goto_7

    :catch_1
    move-exception v0

    :goto_7
    const-wide/16 v11, -0x3

    goto :goto_8

    :catch_2
    move-exception v0

    .line 733
    :goto_8
    :try_start_b
    aput-wide v11, v9, v7

    .line 735
    iget-boolean v14, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->continueBatchOnError:Z

    if-eqz v14, :cond_7

    instance-of v14, v0, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    if-nez v14, :cond_7

    instance-of v14, v0, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    if-nez v14, :cond_7

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z

    move-result v14

    if-nez v14, :cond_7

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 739
    :cond_7
    new-array v6, v7, [J

    .line 740
    invoke-static {v9, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_8
    if-eqz v10, :cond_9

    .line 748
    :try_start_c
    invoke-virtual {v10}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 750
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 753
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetCancelledState()V

    if-nez v0, :cond_a

    move-object v7, v9

    goto :goto_b

    .line 757
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v9, v3}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :catchall_2
    move-exception v0

    move-object v10, v7

    :goto_a
    if-eqz v10, :cond_b

    .line 748
    invoke-virtual {v10}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 750
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 753
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetCancelledState()V

    .line 747
    throw v0

    :cond_c
    :goto_b
    if-eqz v7, :cond_d

    goto :goto_c

    .line 761
    :cond_d
    new-array v7, v8, [J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 753
    :goto_c
    :try_start_d
    iput-object v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 764
    iput-boolean v5, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearBatch()V

    .line 761
    monitor-exit v2

    return-object v7

    :catchall_3
    move-exception v0

    .line 766
    iput-object v4, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 764
    iput-boolean v5, v1, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearBatch()V

    .line 763
    throw v0

    .line 660
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerPreparedStatement.2"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ServerPreparedStatement.3"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :catchall_4
    move-exception v0

    .line 768
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0
.end method

.method protected executeInternal(ILcom/mysql/jdbc/Buffer;ZZ[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 777
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object p2

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 778
    :try_start_0
    iget p4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->numberOfExecutions:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->numberOfExecutions:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    :try_start_1
    invoke-direct {p0, p1, p3, p5}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverExecute(IZ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object p1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p2

    return-object p1

    :catch_0
    move-exception p1

    .line 801
    iget-object p3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getEnablePacketDebug()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 802
    iget-object p3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mysql/jdbc/MysqlIO;->dumpPacketRingBuffer()V

    .line 805
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p5

    invoke-static {p3, p4, p5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p3

    .line 807
    iget-object p4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getDumpQueriesOnException()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 808
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->toString()Ljava/lang/String;

    move-result-object p4

    .line 809
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p6

    add-int/lit8 p6, p6, 0x20

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p6, "\n\nQuery being executed when exception was thrown:\n"

    .line 810
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n\n"

    .line 812
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p5

    invoke-static {p3, p4, p5}, Lcom/mysql/jdbc/ConnectionImpl;->appendMessageToException(Ljava/sql/SQLException;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p3

    .line 817
    :cond_1
    invoke-virtual {p3, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 819
    throw p3

    :catch_1
    move-exception p1

    .line 785
    iget-object p3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getEnablePacketDebug()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 786
    iget-object p3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mysql/jdbc/MysqlIO;->dumpPacketRingBuffer()V

    .line 789
    :cond_2
    iget-object p3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getDumpQueriesOnException()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 790
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->toString()Ljava/lang/String;

    move-result-object p3

    .line 791
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p5

    add-int/lit8 p5, p5, 0x20

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p5, "\n\nQuery being executed when exception was thrown:\n"

    .line 792
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n\n"

    .line 794
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p4

    invoke-static {p1, p3, p4}, Lcom/mysql/jdbc/ConnectionImpl;->appendMessageToException(Ljava/sql/SQLException;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    .line 799
    :cond_3
    throw p1

    :catchall_0
    move-exception p1

    .line 821
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected fillSendPacket()Lcom/mysql/jdbc/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected fillSendPacket([[B[Ljava/io/InputStream;[Z[I)Lcom/mysql/jdbc/Buffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 852
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 854
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    array-length v1, v1

    if-eqz v1, :cond_3

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x1

    if-ltz p1, :cond_2

    .line 861
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    array-length v2, v2

    if-ge p1, v2, :cond_2

    .line 867
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    .line 868
    iget-object p2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    new-instance v1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    invoke-direct {v1}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;-><init>()V

    aput-object v1, p2, p1

    goto :goto_0

    .line 870
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    .line 871
    iput-boolean v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->detectedLongParameterSwitch:Z

    .line 875
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    aget-object p1, p2, p1

    monitor-exit v0

    return-object p1

    .line 862
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerPreparedStatement.9"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ServerPreparedStatement.10"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_3
    const-string p1, "ServerPreparedStatement.8"

    .line 855
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 876
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getBytes(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 894
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 895
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    .line 897
    iget-boolean v2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 898
    monitor-exit v0

    return-object p1

    .line 899
    :cond_0
    iget-boolean v2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-nez v2, :cond_2

    .line 902
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    if-nez v2, :cond_1

    .line 903
    new-instance v2, Lcom/mysql/jdbc/Buffer;

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getNetBufferLength()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    .line 906
    :cond_1
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 908
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    .line 910
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v4

    invoke-direct {p0, v3, p1, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->storeBinding(Lcom/mysql/jdbc/Buffer;Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;Lcom/mysql/jdbc/MysqlIO;)V

    .line 912
    iget-object p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p1

    sub-int/2addr p1, v2

    .line 916
    new-array v3, p1, [B

    .line 918
    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->outByteBuffer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v4

    invoke-static {v4, v2, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    monitor-exit v0

    return-object v3

    .line 900
    :cond_2
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 922
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getLocationOfOnDuplicateKeyUpdate()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2629
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2630
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->locationOfOnDuplicateKeyUpdate:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 2631
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getDontCheckOnDuplicateKeyUpdateInSQL()Z

    move-result v2

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v3

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/mysql/jdbc/ServerPreparedStatement;->getOnDuplicateKeyLocation(Ljava/lang/String;ZZZ)I

    move-result v1

    iput v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->locationOfOnDuplicateKeyUpdate:I

    .line 2635
    :cond_0
    iget v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->locationOfOnDuplicateKeyUpdate:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2636
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 930
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 932
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 933
    monitor-exit v0

    return-object v1

    .line 936
    :cond_0
    new-instance v1, Lcom/mysql/jdbc/ResultSetMetaData;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseOldAliasMetadataBehavior()Z

    move-result v3

    iget-object v4, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/ResultSetMetaData;-><init>([Lcom/mysql/jdbc/Field;ZZLcom/mysql/jdbc/ExceptionInterceptor;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 938
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getParameterBindValues()[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    return-object v0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 946
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 948
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    if-nez v1, :cond_0

    .line 949
    new-instance v1, Lcom/mysql/jdbc/MysqlParameterMetadata;

    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterFields:[Lcom/mysql/jdbc/Field;

    iget v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterCount:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mysql/jdbc/MysqlParameterMetadata;-><init>([Lcom/mysql/jdbc/Field;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    .line 952
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 953
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getServerStatementId()J
    .locals 2

    .line 2569
    iget-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    return-wide v0
.end method

.method isCursorRequired()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1097
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isCursorFetchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getResultSetType()I

    move-result v0

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getResultSetConcurrency()I

    move-result v0

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getFetchSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNull(I)Z
    .locals 1

    .line 961
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ServerPreparedStatement.7"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected isOnDuplicateKeyUpdate()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2640
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2641
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getLocationOfOnDuplicateKeyUpdate()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2642
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected prepareBatchedInsertSQL(Lcom/mysql/jdbc/MySQLConnection;I)Lcom/mysql/jdbc/PreparedStatement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2781
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2783
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-virtual {v1, p2}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->getSqlForBatch(I)Ljava/lang/String;

    move-result-object p2

    iget v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultSetType:I

    iget v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultSetConcurrency:I

    invoke-interface {p1, p2, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/Wrapper;

    const-class p2, Lcom/mysql/jdbc/PreparedStatement;

    invoke-interface {p1, p2}, Lcom/mysql/jdbc/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/PreparedStatement;

    .line 2785
    iget-boolean p2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->retrieveGeneratedKeys:Z

    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2787
    :try_start_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Unable to prepare batch statement"

    const-string v1, "S1000"

    .line 2789
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p2

    .line 2791
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2793
    throw p2

    .line 2795
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected rePrepare()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1041
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1042
    :try_start_0
    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->originalSql:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->serverPrepare(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1050
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v3

    iput-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;

    .line 1051
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;

    invoke-virtual {v3, v2}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    :catch_1
    move-exception v2

    .line 1048
    iput-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;

    .line 1054
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalidationException:Ljava/sql/SQLException;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 1055
    iput-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->invalid:Z

    .line 1057
    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 1059
    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterFields:[Lcom/mysql/jdbc/Field;

    .line 1060
    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    .line 1062
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 1064
    :try_start_3
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1069
    :catch_2
    :cond_0
    :try_start_4
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    .line 1071
    :try_start_5
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->generatedKeysResults:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1077
    :catch_3
    :cond_1
    :try_start_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->closeAllOpenResults()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1081
    :catch_4
    :try_start_7
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_2

    .line 1082
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDontTrackOpenResources()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1083
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1, p0}, Lcom/mysql/jdbc/MySQLConnection;->unregisterStatement(Lcom/mysql/jdbc/Statement;)V

    .line 1087
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1
.end method

.method protected realClose(ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 975
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v0, :cond_0

    return-void

    .line 981
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 983
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_5

    .line 984
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoGenerateTestcaseScript()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 985
    invoke-direct {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->dumpCloseForTestcase()V

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 997
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 998
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1001
    :try_start_1
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v4

    .line 1003
    invoke-virtual {v4}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v7

    const/16 v3, 0x19

    .line 1005
    invoke-virtual {v7, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1006
    iget-wide v5, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v7, v5, v6}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    const/16 v5, 0x19

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1008
    invoke-virtual/range {v4 .. v10}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1012
    :goto_0
    :try_start_2
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    :cond_2
    move-object v3, v1

    .line 1015
    :goto_2
    iget-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    if-eqz v2, :cond_3

    .line 1016
    iget-object v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2, p0}, Lcom/mysql/jdbc/MySQLConnection;->decachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V

    .line 1018
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->realClose(ZZ)V

    const/4 p1, 0x0

    .line 1020
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/ServerPreparedStatement;->clearParametersInternal(Z)V

    .line 1021
    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterBindings:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    .line 1023
    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->parameterFields:[Lcom/mysql/jdbc/Field;

    .line 1024
    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->resultFields:[Lcom/mysql/jdbc/Field;

    if-nez v3, :cond_4

    goto :goto_3

    .line 1027
    :cond_4
    throw v3

    .line 1030
    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method protected resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2121
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2123
    :try_start_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->reset()V

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    .line 2125
    iget v1, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2127
    :cond_0
    iget v1, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    if-eq v1, p2, :cond_1

    .line 2128
    iput-boolean v2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->sendTypesToServer:Z

    .line 2129
    iput p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    .line 2133
    :cond_1
    :goto_0
    iput-boolean v2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    .line 2134
    iget p2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->numberOfExecutions:I

    int-to-long v1, p2

    iput-wide v1, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->boundBeforeExecutionNum:J

    .line 2135
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setArray(ILjava/sql/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1626
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1634
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p2, :cond_0

    const/4 p2, -0x2

    .line 1636
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 1638
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/16 v2, 0xfc

    .line 1639
    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1641
    iput-object p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1642
    iput-boolean v1, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 1644
    iget-object p2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result p2

    if-eqz p2, :cond_1

    int-to-long p2, p3

    .line 1645
    iput-wide p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    :cond_1
    const-wide/16 p2, -0x1

    .line 1647
    iput-wide p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    .line 1650
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1658
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x3

    if-nez p2, :cond_0

    .line 1661
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 1664
    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    .line 1666
    iget-object v3, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v2, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xf6

    .line 1667
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    goto :goto_0

    .line 1669
    :cond_1
    iget v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->stringTypeCode:I

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1672
    :goto_0
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->consistentToString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1674
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBinaryStream(ILjava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1682
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p2, :cond_0

    const/4 p2, -0x2

    .line 1685
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 1687
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/16 v2, 0xfc

    .line 1688
    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1690
    iput-object p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1691
    iput-boolean v1, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 1693
    iget-object p2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result p2

    if-eqz p2, :cond_1

    int-to-long p2, p3

    .line 1694
    iput-wide p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    :cond_1
    const-wide/16 p2, -0x1

    .line 1696
    iput-wide p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    .line 1699
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1707
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p2, :cond_0

    const/4 p2, -0x2

    .line 1710
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 1712
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/16 v2, 0xfc

    .line 1713
    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1715
    iput-object p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1716
    iput-boolean v1, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 1718
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1719
    invoke-interface {p2}, Ljava/sql/Blob;->length()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x1

    .line 1721
    iput-wide v1, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    .line 1724
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBoolean(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1732
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->setByte(IB)V

    return-void
.end method

.method public setByte(IB)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1740
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    const/4 v0, 0x0

    .line 1742
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/4 v0, 0x1

    .line 1743
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    int-to-long v0, p2

    .line 1745
    iput-wide v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    return-void
.end method

.method public setBytes(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1753
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    if-nez p2, :cond_0

    const/4 p2, -0x2

    .line 1756
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1758
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/16 v0, 0xfd

    .line 1759
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1761
    iput-object p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1770
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p2, :cond_0

    const/4 p2, -0x2

    .line 1773
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 1775
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/16 v2, 0xfc

    .line 1776
    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1778
    iput-object p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1779
    iput-boolean v1, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 1781
    iget-object p2, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result p2

    if-eqz p2, :cond_1

    int-to-long p2, p3

    .line 1782
    iput-wide p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    :cond_1
    const-wide/16 p2, -0x1

    .line 1784
    iput-wide p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    .line 1787
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setClob(ILjava/sql/Clob;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1795
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p2, :cond_0

    const/4 p2, -0x2

    .line 1798
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 1800
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/16 v2, 0xfc

    .line 1801
    invoke-virtual {p0, p1, v2}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1803
    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    iput-object v2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 1804
    iput-boolean v1, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 1806
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1807
    invoke-interface {p2}, Ljava/sql/Clob;->length()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x1

    .line 1809
    iput-wide v1, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    .line 1812
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected setClosed(Z)V
    .locals 0

    .line 552
    iput-boolean p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->isClosed:Z

    return-void
.end method

.method public setDate(ILjava/sql/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1829
    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    return-void
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/16 p2, 0x5b

    .line 1849
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1851
    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/16 p3, 0xa

    .line 1852
    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1854
    iput-object p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setDouble(ID)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1863
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1865
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getAllowNanAndInf()Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v1, p2, v1

    if-eqz v1, :cond_0

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v1, p2, v1

    if-eqz v1, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1866
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, "\' is not a valid numeric or approximate numeric value"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 1871
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/4 v1, 0x5

    .line 1872
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1874
    iput-wide p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    .line 1875
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFloat(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1883
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    const/4 v0, 0x0

    .line 1885
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/4 v0, 0x4

    .line 1886
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1888
    iput p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    return-void
.end method

.method public setInt(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1896
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    const/4 v0, 0x0

    .line 1898
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/4 v0, 0x3

    .line 1899
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    int-to-long v0, p2

    .line 1901
    iput-wide v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    return-void
.end method

.method public setLong(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1909
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    const/4 v0, 0x0

    .line 1911
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/16 v0, 0x8

    .line 1912
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1914
    iput-wide p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    return-void
.end method

.method public setNull(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1922
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    const/4 p2, 0x0

    .line 1924
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/4 p2, 0x6

    .line 1925
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    const/4 p2, 0x1

    .line 1927
    iput-boolean p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    return-void
.end method

.method public setNull(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1935
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    const/4 p2, 0x0

    .line 1937
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/4 p2, 0x6

    .line 1938
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    const/4 p2, 0x1

    .line 1940
    iput-boolean p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    return-void
.end method

.method protected setOneBatchedParameterSet(Ljava/sql/PreparedStatement;ILjava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2694
    check-cast p3, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;

    iget-object p3, p3, Lcom/mysql/jdbc/ServerPreparedStatement$BatchedBindValues;->batchedParameterValues:[Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    const/4 v0, 0x0

    move v1, p2

    const/4 p2, 0x0

    .line 2696
    :goto_0
    array-length v2, p3

    if-ge p2, v2, :cond_6

    .line 2697
    aget-object v2, p3, p2

    iget-boolean v2, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 2698
    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_1
    move v1, v2

    goto/16 :goto_4

    .line 2700
    :cond_0
    aget-object v2, p3, p2

    iget-boolean v2, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v2, :cond_2

    .line 2701
    aget-object v2, p3, p2

    iget-object v2, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 2703
    instance-of v3, v2, Ljava/io/InputStream;

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 2704
    check-cast v2, Ljava/io/InputStream;

    aget-object v4, p3, p2

    iget-wide v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    long-to-int v4, v4

    invoke-interface {p1, v1, v2, v4}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 2706
    check-cast v2, Ljava/io/Reader;

    aget-object v4, p3, p2

    iget-wide v4, v4, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    long-to-int v4, v4

    invoke-interface {p1, v1, v2, v4}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    :goto_2
    move v1, v3

    goto/16 :goto_4

    .line 2710
    :cond_2
    aget-object v2, p3, p2

    iget v2, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    const/16 v3, 0xf

    if-eq v2, v3, :cond_3

    const/16 v3, 0xf6

    if-eq v2, v3, :cond_3

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    .line 2764
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown type when re-binding parameter into batched statement for parameter index "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    add-int/lit8 v2, v1, 0x1

    .line 2731
    aget-object v3, p3, p2

    iget-object v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    check-cast v3, Ljava/sql/Time;

    invoke-interface {p1, v1, v3}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    goto :goto_1

    :pswitch_1
    add-int/lit8 v2, v1, 0x1

    .line 2734
    aget-object v3, p3, p2

    iget-object v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    check-cast v3, Ljava/sql/Date;

    invoke-interface {p1, v1, v3}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;)V

    goto :goto_1

    :pswitch_2
    add-int/lit8 v2, v1, 0x1

    .line 2722
    aget-object v3, p3, p2

    iget-wide v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    invoke-interface {p1, v1, v3, v4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    goto :goto_1

    :pswitch_3
    add-int/lit8 v2, v1, 0x1

    .line 2738
    aget-object v3, p3, p2

    iget-object v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    check-cast v3, Ljava/sql/Timestamp;

    invoke-interface {p1, v1, v3}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto/16 :goto_1

    :pswitch_4
    add-int/lit8 v2, v1, 0x1

    .line 2728
    aget-object v3, p3, p2

    iget-wide v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    invoke-interface {p1, v1, v3, v4}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    goto/16 :goto_1

    :pswitch_5
    add-int/lit8 v2, v1, 0x1

    .line 2725
    aget-object v3, p3, p2

    iget v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    invoke-interface {p1, v1, v3}, Ljava/sql/PreparedStatement;->setFloat(IF)V

    goto/16 :goto_1

    :pswitch_6
    add-int/lit8 v2, v1, 0x1

    .line 2719
    aget-object v3, p3, p2

    iget-wide v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v3, v3

    invoke-interface {p1, v1, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    goto/16 :goto_1

    :pswitch_7
    add-int/lit8 v2, v1, 0x1

    .line 2716
    aget-object v3, p3, p2

    iget-wide v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-interface {p1, v1, v3}, Ljava/sql/PreparedStatement;->setShort(IS)V

    goto/16 :goto_1

    :pswitch_8
    add-int/lit8 v2, v1, 0x1

    .line 2713
    aget-object v3, p3, p2

    iget-wide v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    long-to-int v3, v3

    int-to-byte v3, v3

    invoke-interface {p1, v1, v3}, Ljava/sql/PreparedStatement;->setByte(IB)V

    goto/16 :goto_1

    .line 2745
    :cond_3
    :pswitch_9
    aget-object v2, p3, p2

    iget-object v2, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 2747
    instance-of v3, v2, [B

    if-eqz v3, :cond_4

    .line 2748
    check-cast v2, [B

    invoke-interface {p1, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    goto :goto_3

    .line 2750
    :cond_4
    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2755
    :goto_3
    instance-of v2, p1, Lcom/mysql/jdbc/ServerPreparedStatement;

    if-eqz v2, :cond_5

    .line 2756
    move-object v2, p1

    check-cast v2, Lcom/mysql/jdbc/ServerPreparedStatement;

    invoke-virtual {v2, v1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object v2

    .line 2757
    aget-object v3, p3, p2

    iget v3, v3, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    iput v3, v2, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xfd
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public setPoolable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2801
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, p0}, Lcom/mysql/jdbc/MySQLConnection;->decachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V

    .line 2803
    :cond_0
    invoke-super {p0, p1}, Lcom/mysql/jdbc/PreparedStatement;->setPoolable(Z)V

    return-void
.end method

.method public setRef(ILjava/sql/Ref;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1948
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setShort(IS)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1956
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    const/4 v0, 0x0

    .line 1958
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/4 v0, 0x2

    .line 1959
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    int-to-long v0, p2

    .line 1961
    iput-wide v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1969
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 1972
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->setNull(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1974
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    .line 1975
    iget v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->stringTypeCode:I

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 1977
    iput-object p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setTime(ILjava/sql/Time;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1994
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v4, 0x0

    .line 1995
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/ServerPreparedStatement;->setTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 1996
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTime(ILjava/sql/Time;Ljava/util/Calendar;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2016
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2017
    :try_start_0
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/ServerPreparedStatement;->setTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 2018
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTimestamp(ILjava/sql/Timestamp;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2068
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v4, 0x0

    .line 2069
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/ServerPreparedStatement;->setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 2070
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2089
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2090
    :try_start_0
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/ServerPreparedStatement;->setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 2091
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setURL(ILjava/net/URL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2162
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 2164
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ServerPreparedStatement;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public setUnicodeStream(ILjava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2152
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 2154
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.mysql.jdbc.ServerPreparedStatement["

    .line 2554
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2555
    iget-wide v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement;->serverStatementId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] - "

    .line 2556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2559
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ServerPreparedStatement;->asSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ServerPreparedStatement.6"

    .line 2561
    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2565
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
