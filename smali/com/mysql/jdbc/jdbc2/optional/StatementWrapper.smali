.class public Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;
.source "StatementWrapper.java"

# interfaces
.implements Ljava/sql/Statement;


# static fields
.field private static final JDBC_4_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field protected wrappedConn:Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

.field protected wrappedStmt:Ljava/sql/Statement;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC4StatementWrapper"

    .line 46
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/sql/Statement;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->JDBC_4_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->JDBC_4_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)V
    .locals 0

    .line 73
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;-><init>(Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;)V

    .line 74
    iput-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    .line 75
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedConn:Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    return-void
.end method

.method protected static getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)V

    return-object v0

    .line 65
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->JDBC_4_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-virtual {p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;

    return-object p0
.end method


# virtual methods
.method public addBatch(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->addBatch(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 383
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->cancel()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 393
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public clearBatch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->clearBatch()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 403
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public clearWarnings()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->clearWarnings()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 413
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_0
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    .line 426
    :goto_0
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 423
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    .line 425
    throw v1
.end method

.method public enableStreamingResults()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/Statement;

    invoke-interface {v0}, Lcom/mysql/jdbc/Statement;->enableStreamingResults()V

    goto :goto_0

    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    .line 577
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 580
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "Statement already closed"

    const-string v0, "S1009"

    .line 478
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 480
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public execute(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "Statement already closed"

    const-string p2, "S1009"

    .line 436
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 438
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public execute(Ljava/lang/String;[I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;[I)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "Statement already closed"

    const-string p2, "S1009"

    .line 450
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 452
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "Statement already closed"

    const-string p2, "S1009"

    .line 464
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 466
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public executeBatch()[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->executeBatch()[I

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 492
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 494
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public executeLargeBatch()[J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/StatementImpl;->executeLargeBatch()[J

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 594
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 596
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p1, "Statement already closed"

    const-string v0, "S1009"

    .line 612
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 614
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;I)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;I)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-string p1, "Statement already closed"

    const-string p2, "S1009"

    .line 630
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 632
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public executeLargeUpdate(Ljava/lang/String;[I)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;[I)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-string p1, "Statement already closed"

    const-string p2, "S1009"

    .line 648
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 650
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public executeLargeUpdate(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->executeLargeUpdate(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-string p1, "Statement already closed"

    const-string p2, "S1009"

    .line 666
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 668
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v1, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 507
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0, p0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setWrapperStatement(Ljava/sql/Statement;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_0

    :cond_0
    :try_start_2
    const-string p1, "Statement already closed"

    const-string v1, "S1009"

    .line 504
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 510
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "Statement already closed"

    const-string v0, "S1009"

    .line 564
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 566
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, -0x1

    return p1
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "Statement already closed"

    const-string p2, "S1009"

    .line 522
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 524
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, -0x1

    return p1
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;[I)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "Statement already closed"

    const-string p2, "S1009"

    .line 536
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 538
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, -0x1

    return p1
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1, p2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "Statement already closed"

    const-string p2, "S1009"

    .line 550
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 552
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, -0x1

    return p1
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedConn:Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;

    return-object v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 84
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFetchDirection()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getFetchDirection()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 134
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/16 v0, 0x3e8

    return v0
.end method

.method public getFetchSize()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getFetchSize()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 160
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 174
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLargeMaxRows()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/StatementImpl;->getLargeMaxRows()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 684
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 686
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLargeUpdateCount()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/StatementImpl;->getLargeUpdateCount()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 702
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 704
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getMaxFieldSize()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getMaxFieldSize()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 200
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRows()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getMaxRows()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 226
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMoreResults()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getMoreResults()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 240
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMoreResults(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->getMoreResults(I)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "Statement already closed"

    const-string v0, "S1009"

    .line 254
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 256
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getQueryTimeout()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getQueryTimeout()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 280
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 282
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1, p0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setWrapperStatement(Ljava/sql/Statement;)V

    :cond_0
    return-object v0

    :cond_1
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 299
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 301
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResultSetConcurrency()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetConcurrency()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 313
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getResultSetHoldability()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetHoldability()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 327
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 329
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getResultSetType()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetType()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 341
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 343
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/16 v0, 0x3eb

    return v0
.end method

.method public getUpdateCount()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getUpdateCount()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 355
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 357
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 369
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 371
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setCursorName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setCursorName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Statement already closed"

    const-string v0, "S1009"

    .line 97
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setEscapeProcessing(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setEscapeProcessing(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "Statement already closed"

    const-string v0, "S1009"

    .line 109
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setFetchDirection(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setFetchDirection(I)V

    goto :goto_0

    :cond_0
    const-string p1, "Statement already closed"

    const-string v0, "S1009"

    .line 121
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setFetchSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setFetchSize(I)V

    goto :goto_0

    :cond_0
    const-string p1, "Statement already closed"

    const-string v0, "S1009"

    .line 147
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setLargeMaxRows(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;->setLargeMaxRows(J)V

    goto :goto_0

    :cond_0
    const-string p1, "Statement already closed"

    const-string p2, "S1009"

    .line 719
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 722
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setMaxFieldSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setMaxFieldSize(I)V

    goto :goto_0

    :cond_0
    const-string p1, "Statement already closed"

    const-string v0, "S1009"

    .line 187
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 190
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setMaxRows(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setMaxRows(I)V

    goto :goto_0

    :cond_0
    const-string p1, "Statement already closed"

    const-string v0, "S1009"

    .line 213
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 216
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setQueryTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setQueryTimeout(I)V

    goto :goto_0

    :cond_0
    const-string p1, "Statement already closed"

    const-string v0, "S1009"

    .line 267
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method
