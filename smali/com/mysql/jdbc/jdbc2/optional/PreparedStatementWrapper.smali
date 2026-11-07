.class public Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;
.source "PreparedStatementWrapper.java"

# interfaces
.implements Ljava/sql/PreparedStatement;


# static fields
.field private static final JDBC_4_PREPARED_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC42PreparedStatementWrapper"

    goto :goto_0

    :cond_0
    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC4PreparedStatementWrapper"

    .line 59
    :goto_0
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

    const-class v3, Ljava/sql/PreparedStatement;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->JDBC_4_PREPARED_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->JDBC_4_PREPARED_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    :goto_1
    return-void
.end method

.method constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)V

    return-void
.end method

.method protected static getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V

    return-object v0

    .line 78
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->JDBC_4_PREPARED_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

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

    check-cast p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;

    return-object p0
.end method


# virtual methods
.method public addBatch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->addBatch()V

    goto :goto_0

    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    .line 490
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 493
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public clearParameters()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->clearParameters()V

    goto :goto_0

    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    .line 502
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 505
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public execute()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    .line 515
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 517
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public executeLargeUpdate()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    .line 918
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 920
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public executeQuery()Ljava/sql/ResultSet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 527
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v1, Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 531
    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v0, p0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setWrapperStatement(Ljava/sql/Statement;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v1, "No operations allowed after statement closed"

    const-string v2, "S1000"

    .line 528
    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    .line 534
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_1
    return-object v0
.end method

.method public executeUpdate()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    .line 546
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 548
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    .line 284
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 286
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getParameterMetaData()Ljava/sql/ParameterMetaData;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    .line 358
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setArray(ILjava/sql/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setArray(ILjava/sql/Array;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 91
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 103
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 115
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 127
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBlob(ILjava/sql/Blob;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 139
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBoolean(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 151
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 154
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setByte(IB)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setByte(IB)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 163
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBytes(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 175
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 187
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 190
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setClob(ILjava/sql/Clob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setClob(ILjava/sql/Clob;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 199
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 202
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setDate(ILjava/sql/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 211
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 214
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 223
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 226
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setDouble(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 235
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 238
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setFloat(IF)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 247
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 250
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setInt(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 259
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 262
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setLong(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 271
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 274
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNull(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNull(II)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 297
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 300
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNull(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setNull(IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 309
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 312
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 321
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 324
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setObject(ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 333
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 336
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setObject(ILjava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 345
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 348
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setRef(ILjava/sql/Ref;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setRef(ILjava/sql/Ref;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 371
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 374
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setShort(IS)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setShort(IS)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 383
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 386
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 395
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 398
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setTime(ILjava/sql/Time;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 407
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 410
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setTime(ILjava/sql/Time;Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setTime(ILjava/sql/Time;Ljava/util/Calendar;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 419
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 422
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setTimestamp(ILjava/sql/Timestamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 431
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 434
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 443
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 446
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setURL(ILjava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setURL(ILjava/net/URL;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 455
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 458
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setUnicodeStream(ILjava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setUnicodeStream(ILjava/io/InputStream;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 478
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 481
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v1, :cond_0

    const-string v1, ": "

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->asSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXCEPTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
