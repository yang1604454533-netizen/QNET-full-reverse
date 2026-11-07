.class public Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;
.source "JDBC4PreparedStatementWrapper.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_0

    .line 64
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->pooledConnection:Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v1, 0x0

    .line 70
    :try_start_2
    invoke-super {p0}, Lcom/mysql/jdbc/jdbc2/optional/PreparedStatementWrapper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    :try_start_3
    new-instance v2, Ljavax/sql/StatementEvent;

    invoke-direct {v2, v0, p0}, Ljavax/sql/StatementEvent;-><init>(Ljavax/sql/PooledConnection;Ljava/sql/PreparedStatement;)V

    .line 75
    instance-of v3, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;

    if-eqz v3, :cond_1

    .line 76
    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V

    goto :goto_0

    .line 77
    :cond_1
    instance-of v3, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;

    if-eqz v3, :cond_2

    .line 78
    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V

    goto :goto_0

    .line 79
    :cond_2
    instance-of v3, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;

    if-eqz v3, :cond_3

    .line 80
    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    :cond_3
    :goto_0
    :try_start_4
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 83
    :try_start_5
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_1
    move-exception v2

    .line 73
    :try_start_6
    new-instance v3, Ljavax/sql/StatementEvent;

    invoke-direct {v3, v0, p0}, Ljavax/sql/StatementEvent;-><init>(Ljavax/sql/PooledConnection;Ljava/sql/PreparedStatement;)V

    .line 75
    instance-of v4, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;

    if-nez v4, :cond_5

    .line 77
    instance-of v4, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;

    if-nez v4, :cond_4

    .line 79
    instance-of v4, v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;

    if-eqz v4, :cond_6

    .line 80
    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4SuspendableXAConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V

    goto :goto_1

    .line 78
    :cond_4
    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlXAConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V

    goto :goto_1

    .line 76
    :cond_5
    check-cast v0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;

    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4MysqlPooledConnection;->fireStatementEvent(Ljavax/sql/StatementEvent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 83
    :cond_6
    :goto_1
    :try_start_7
    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    throw v2

    :catchall_2
    move-exception v0

    iput-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    .line 61
    monitor-exit p0

    throw v0
.end method

.method public isClosed()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isClosed()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 93
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isPoolable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isPoolable()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 119
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 2
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

    .line 369
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 375
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.mysql.jdbc.Statement"

    .line 377
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "java.sql.Statement"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "java.sql.PreparedStatement"

    .line 378
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "java.sql.Wrapper"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public setAsciiStream(ILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 265
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 268
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 229
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 277
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 280
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 241
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBlob(ILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBlob(ILjava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 328
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 331
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBlob(ILjava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setBlob(ILjava/io/InputStream;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 205
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 208
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 289
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 292
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 253
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 256
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setClob(ILjava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setClob(ILjava/io/Reader;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 315
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 318
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setClob(ILjava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setClob(ILjava/io/Reader;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 193
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 196
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 302
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 305
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 181
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 184
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNClob(ILjava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNClob(ILjava/io/Reader;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 340
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 343
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNClob(ILjava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setNClob(ILjava/io/Reader;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 217
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNClob(ILjava/sql/NClob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNClob(ILjava/sql/NClob;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 145
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNString(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 169
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setPoolable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setPoolable(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "Statement already closed"

    const-string v0, "S1009"

    .line 107
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setRowId(ILjava/sql/RowId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setRowId(ILjava/sql/RowId;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 133
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setSQLXML(ILjava/sql/SQLXML;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setSQLXML(ILjava/sql/SQLXML;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 157
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
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

    monitor-enter p0

    :try_start_0
    const-string v0, "java.sql.Statement"

    .line 402
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "java.sql.PreparedStatement"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "java.sql.Wrapper.class"

    .line 403
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    if-nez v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;

    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-direct {v2, p0, v3}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;-><init>(Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 404
    :cond_4
    :goto_0
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 424
    :catch_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unwrap to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "S1009"

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    :goto_1
    monitor-exit p0

    throw p1
.end method
