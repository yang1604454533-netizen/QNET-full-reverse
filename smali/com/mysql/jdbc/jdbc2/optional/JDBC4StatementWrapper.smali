.class public Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;
.source "JDBC4StatementWrapper.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/Statement;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    :try_start_0
    invoke-super {p0}, Lcom/mysql/jdbc/jdbc2/optional/StatementWrapper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    throw v1
.end method

.method public isClosed()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isClosed()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 71
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

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

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isPoolable()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 97
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

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

    .line 128
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 134
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.mysql.jdbc.Statement"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "java.sql.Statement"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "java.sql.Wrapper"

    .line 137
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

.method public setPoolable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setPoolable(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "Statement already closed"

    const-string v0, "S1009"

    .line 85
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

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

    .line 161
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "java.sql.Wrapper.class"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;

    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-direct {v2, p0, v3}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;-><init>(Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 162
    :cond_3
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

    .line 179
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

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4StatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    :goto_1
    monitor-exit p0

    throw p1
.end method
