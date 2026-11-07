.class public Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;
.source "JDBC4ConnectionWrapper.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Lcom/mysql/jdbc/Connection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Lcom/mysql/jdbc/Connection;Z)V

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

    .line 69
    :try_start_0
    invoke-super {p0}, Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    throw v1
.end method

.method public createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createBlob()Ljava/sql/Blob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createBlob()Ljava/sql/Blob;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 285
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public createClob()Ljava/sql/Clob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createClob()Ljava/sql/Clob;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public createNClob()Ljava/sql/NClob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createNClob()Ljava/sql/NClob;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public createSQLXML()Ljava/sql/SQLXML;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createSQLXML()Ljava/sql/SQLXML;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getClientInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->getClientInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getClientInfo()Ljava/util/Properties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->getClientInfo()Ljava/util/Properties;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized isValid(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->isValid(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 164
    monitor-exit p0

    return p1

    .line 158
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 3
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

    .line 222
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 224
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 230
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.mysql.jdbc.Connection"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.mysql.jdbc.ConnectionProperties"

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

.method public setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 188
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 193
    new-instance p2, Ljava/sql/SQLClientInfoException;

    invoke-direct {p2}, Ljava/sql/SQLClientInfoException;-><init>()V

    .line 194
    invoke-virtual {p2, p1}, Ljava/sql/SQLClientInfoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 196
    throw p2
.end method

.method public setClientInfo(Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkClosed()V

    .line 171
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setClientInfo(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 174
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 176
    new-instance v0, Ljava/sql/SQLClientInfoException;

    invoke-direct {v0}, Ljava/sql/SQLClientInfoException;-><init>()V

    .line 177
    invoke-virtual {v0, p1}, Ljava/sql/SQLClientInfoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 179
    throw v0
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
    const-string v0, "java.sql.Connection"

    .line 254
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

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;

    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->mc:Lcom/mysql/jdbc/Connection;

    invoke-direct {v2, p0, v3}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;-><init>(Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 255
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

    .line 272
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

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4ConnectionWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    :goto_1
    monitor-exit p0

    throw p1
.end method
