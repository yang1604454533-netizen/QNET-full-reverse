.class public Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;
.source "CallableStatementWrapper.java"

# interfaces
.implements Ljava/sql/CallableStatement;


# static fields
.field private static final JDBC_4_CALLABLE_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
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

    .line 54
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC42CallableStatementWrapper"

    goto :goto_0

    :cond_0
    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC4CallableStatementWrapper"

    .line 58
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

    const-class v3, Ljava/sql/CallableStatement;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->JDBC_4_CALLABLE_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    .line 68
    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->JDBC_4_CALLABLE_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V

    return-void
.end method

.method protected static getInstance(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)V

    return-object v0

    .line 77
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->JDBC_4_CALLABLE_STATEMENT_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

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

    check-cast p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;

    return-object p0
.end method


# virtual methods
.method public getArray(I)Ljava/sql/Array;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getArray(I)Ljava/sql/Array;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 497
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 500
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getArray(Ljava/lang/String;)Ljava/sql/Array;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1418
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getArray(Ljava/lang/String;)Ljava/sql/Array;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1421
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1424
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 404
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 407
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBigDecimal(II)Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 295
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 298
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1325
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1328
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1331
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBlob(I)Ljava/sql/Blob;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 460
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 463
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBlob(Ljava/lang/String;)Ljava/sql/Blob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1381
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBlob(Ljava/lang/String;)Ljava/sql/Blob;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1384
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1387
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBoolean(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBoolean(I)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 171
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 174
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1097
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1100
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1103
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getByte(I)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getByte(I)B

    move-result p1

    return p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 190
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 193
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1116
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getByte(Ljava/lang/String;)B

    move-result p1

    return p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1119
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1122
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getBytes(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBytes(I)[B

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 314
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 317
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1230
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1233
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1236
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getClob(I)Ljava/sql/Clob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getClob(I)Ljava/sql/Clob;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 479
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 482
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getClob(Ljava/lang/String;)Ljava/sql/Clob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1400
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getClob(Ljava/lang/String;)Ljava/sql/Clob;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1403
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1406
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getDate(I)Ljava/sql/Date;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 328
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 331
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 515
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 518
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1249
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getDate(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1252
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1255
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1436
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 1439
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1442
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDouble(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 280
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 283
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1211
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1214
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1217
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getFloat(I)F

    move-result p1

    return p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 266
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 269
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getFloat(Ljava/lang/String;)F

    move-result p1

    return p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1195
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1198
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getInt(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getInt(I)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 228
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1154
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1157
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1160
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getLong(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 247
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 250
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1173
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1176
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1179
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 385
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 388
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getObject(ILjava/util/Map;)Ljava/lang/Object;
    .locals 1
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

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getObject(ILjava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 423
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 426
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1306
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1309
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1312
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
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

    .line 1344
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getObject(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 1347
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1350
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getRef(I)Ljava/sql/Ref;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 441
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 444
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRef(Ljava/lang/String;)Ljava/sql/Ref;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1362
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getRef(Ljava/lang/String;)Ljava/sql/Ref;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1365
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1368
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getShort(I)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getShort(I)S

    move-result p1

    return p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 209
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 212
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1135
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getShort(Ljava/lang/String;)S

    move-result p1

    return p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1138
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1141
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 153
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1079
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1082
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1085
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getTime(I)Ljava/sql/Time;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 347
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 350
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 533
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 536
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1268
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getTime(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1271
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1274
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1454
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 1457
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1460
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 366
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 369
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 551
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 554
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1287
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1290
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1293
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1472
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 1475
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1478
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getURL(I)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getURL(I)Ljava/net/URL;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 637
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 640
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1490
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 1493
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1496
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerOutParameter(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->registerOutParameter(II)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 100
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public registerOutParameter(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(III)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 117
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public registerOutParameter(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 569
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 572
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 586
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 589
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 603
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 606
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 620
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 623
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 908
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 911
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 914
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 809
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 812
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 926
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 929
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 932
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 690
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 693
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setByte(Ljava/lang/String;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setByte(Ljava/lang/String;B)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 707
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 710
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBytes(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 840
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setBytes(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 843
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 846
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 994
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 997
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1000
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setDate(Ljava/lang/String;Ljava/sql/Date;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 860
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 863
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/sql/Date;Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setDate(Ljava/lang/String;Ljava/sql/Date;Ljava/util/Calendar;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 1014
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1017
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setDouble(Ljava/lang/String;D)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 792
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 795
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setFloat(Ljava/lang/String;F)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 775
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 778
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 738
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 741
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 744
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 758
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 761
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNull(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setNull(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 673
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 676
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNull(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1062
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setNull(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 1065
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1068
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 977
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 980
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 983
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 960
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 963
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 966
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 943
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 946
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 949
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setShort(Ljava/lang/String;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setShort(Ljava/lang/String;S)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 724
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 727
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 826
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 829
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setTime(Ljava/lang/String;Ljava/sql/Time;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 877
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 880
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setTime(Ljava/lang/String;Ljava/sql/Time;Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1028
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setTime(Ljava/lang/String;Ljava/sql/Time;Ljava/util/Calendar;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 1031
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1034
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 894
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 897
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1045
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;Ljava/util/Calendar;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 1048
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1051
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setURL(Ljava/lang/String;Ljava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setURL(Ljava/lang/String;Ljava/net/URL;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 656
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 659
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public wasNull()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0}, Ljava/sql/CallableStatement;->wasNull()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "No operations allowed after statement closed"

    const-string v1, "S1000"

    .line 134
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return v0
.end method
