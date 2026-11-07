.class public Lcom/mysql/jdbc/JDBC4Connection;
.super Lcom/mysql/jdbc/ConnectionImpl;
.source "JDBC4Connection.java"

# interfaces
.implements Lcom/mysql/jdbc/JDBC4MySQLConnection;


# static fields
.field private static final serialVersionUID:J = 0x27eed4e755fd1763L


# instance fields
.field private infoProvider:Lcom/mysql/jdbc/JDBC4ClientInfoProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/ConnectionImpl;-><init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createArrayOf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Array;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public createBlob()Ljava/sql/Blob;
    .locals 2

    .line 197
    new-instance v0, Lcom/mysql/jdbc/Blob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Blob;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method public createClob()Ljava/sql/Clob;
    .locals 2

    .line 204
    new-instance v0, Lcom/mysql/jdbc/Clob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Clob;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method public createNClob()Ljava/sql/NClob;
    .locals 2

    .line 211
    new-instance v0, Lcom/mysql/jdbc/JDBC4NClob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/JDBC4NClob;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method public createSQLXML()Ljava/sql/SQLXML;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method public createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getClientInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfoProviderImpl()Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/mysql/jdbc/JDBC4ClientInfoProvider;->getClientInfo(Ljava/sql/Connection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getClientInfo()Ljava/util/Properties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfoProviderImpl()Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/mysql/jdbc/JDBC4ClientInfoProvider;->getClientInfo(Ljava/sql/Connection;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfoProviderImpl()Lcom/mysql/jdbc/JDBC4ClientInfoProvider;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4Connection;->infoProvider:Lcom/mysql/jdbc/JDBC4ClientInfoProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 219
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfoProvider()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Object;

    .line 220
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    .line 219
    invoke-static {v2, v3, v4, v5}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    iput-object v2, p0, Lcom/mysql/jdbc/JDBC4Connection;->infoProvider:Lcom/mysql/jdbc/JDBC4ClientInfoProvider;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 222
    :try_start_2
    invoke-virtual {v2}, Ljava/sql/SQLException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/ClassCastException;

    if-eqz v2, :cond_0

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.mysql.jdbc."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfoProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Object;

    .line 225
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    .line 224
    invoke-static {v2, v3, v4, v5}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    iput-object v2, p0, Lcom/mysql/jdbc/JDBC4Connection;->infoProvider:Lcom/mysql/jdbc/JDBC4ClientInfoProvider;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    :cond_0
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4Connection;->infoProvider:Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    iget-object v2, p0, Lcom/mysql/jdbc/JDBC4Connection;->props:Ljava/util/Properties;

    invoke-interface {v1, p0, v2}, Lcom/mysql/jdbc/JDBC4ClientInfoProvider;->initialize(Ljava/sql/Connection;Ljava/util/Properties;)V

    goto :goto_1

    :catch_1
    const-string v2, "JDBC4Connection.ClientInfoNotImplemented"

    const/4 v3, 0x1

    .line 229
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfoProvider()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    .line 230
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    .line 229
    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 236
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4Connection;->infoProvider:Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 237
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public isValid(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->isClosed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_0
    mul-int/lit16 p1, p1, 0x3e8

    .line 99
    :try_start_1
    invoke-virtual {p0, v2, p1}, Lcom/mysql/jdbc/JDBC4Connection;->pingInternal(ZI)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 114
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p1

    .line 102
    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->abortInternal()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    :catch_1
    :try_start_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 115
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 0
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

    .line 162
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->checkClosed()V

    .line 165
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfoProviderImpl()Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ClientInfoProvider;->setClientInfo(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLClientInfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 137
    new-instance p2, Ljava/sql/SQLClientInfoException;

    invoke-direct {p2}, Ljava/sql/SQLClientInfoException;-><init>()V

    .line 138
    invoke-virtual {p2, p1}, Ljava/sql/SQLClientInfoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 140
    throw p2

    :catch_1
    move-exception p1

    .line 135
    throw p1
.end method

.method public setClientInfo(Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getClientInfoProviderImpl()Lcom/mysql/jdbc/JDBC4ClientInfoProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/mysql/jdbc/JDBC4ClientInfoProvider;->setClientInfo(Ljava/sql/Connection;Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/sql/SQLClientInfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 124
    new-instance v0, Ljava/sql/SQLClientInfoException;

    invoke-direct {v0}, Ljava/sql/SQLClientInfoException;-><init>()V

    .line 125
    invoke-virtual {v0, p1}, Ljava/sql/SQLClientInfoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 127
    throw v0

    :catch_1
    move-exception p1

    .line 122
    throw p1
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
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

    .line 187
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 189
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unwrap to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
