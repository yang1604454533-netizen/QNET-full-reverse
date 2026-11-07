.class public abstract Lcom/mysql/jdbc/MultiHostConnectionProxy;
.super Ljava/lang/Object;
.source "MultiHostConnectionProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;
    }
.end annotation


# static fields
.field private static JDBC_4_MS_CONNECTION_CTOR:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final METHOD_ABORT:Ljava/lang/String; = "abort"

.field private static final METHOD_ABORT_INTERNAL:Ljava/lang/String; = "abortInternal"

.field private static final METHOD_CLOSE:Ljava/lang/String; = "close"

.field private static final METHOD_EQUALS:Ljava/lang/String; = "equals"

.field private static final METHOD_GET_AUTO_COMMIT:Ljava/lang/String; = "getAutoCommit"

.field private static final METHOD_GET_CATALOG:Ljava/lang/String; = "getCatalog"

.field private static final METHOD_GET_MULTI_HOST_SAFE_PROXY:Ljava/lang/String; = "getMultiHostSafeProxy"

.field private static final METHOD_GET_SESSION_MAX_ROWS:Ljava/lang/String; = "getSessionMaxRows"

.field private static final METHOD_GET_TRANSACTION_ISOLATION:Ljava/lang/String; = "getTransactionIsolation"

.field private static final METHOD_HASH_CODE:Ljava/lang/String; = "hashCode"

.field private static final METHOD_IS_CLOSED:Ljava/lang/String; = "isClosed"


# instance fields
.field autoReconnect:Z

.field closedExplicitly:Z

.field closedReason:Ljava/lang/String;

.field currentConnection:Lcom/mysql/jdbc/MySQLConnection;

.field hostList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isClosed:Z

.field protected lastExceptionDealtWith:Ljava/lang/Throwable;

.field localProps:Ljava/util/Properties;

.field proxyConnection:Lcom/mysql/jdbc/MySQLConnection;

.field thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 74
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.mysql.jdbc.JDBC4MultiHostMySQLConnection"

    .line 76
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/MultiHostConnectionProxy;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->JDBC_4_MS_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->autoReconnect:Z

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 59
    iput-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->proxyConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 61
    iput-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 63
    iput-boolean v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isClosed:Z

    .line 64
    iput-boolean v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedExplicitly:Z

    .line 65
    iput-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedReason:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->lastExceptionDealtWith:Ljava/lang/Throwable;

    .line 126
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->getNewWrapperForThisAsConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;-><init>()V

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->initializeHostsSpecs(Ljava/util/List;Ljava/util/Properties;)I

    return-void
.end method

.method static syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->isReadOnly()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method static syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 381
    invoke-interface {p1, p2}, Lcom/mysql/jdbc/Connection;->setReadOnly(Z)V

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 387
    :cond_1
    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getAutoCommit()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/mysql/jdbc/Connection;->setAutoCommit(Z)V

    .line 388
    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getCatalog()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mysql/jdbc/Connection;->setCatalog(Ljava/lang/String;)V

    .line 389
    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getTransactionIsolation()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/mysql/jdbc/Connection;->setTransactionIsolation(I)V

    .line 390
    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getSessionMaxRows()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/mysql/jdbc/Connection;->setSessionMaxRows(I)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected allowedOnClosedConnection(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 481
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getAutoCommit"

    .line 483
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "getCatalog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "getTransactionIsolation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "getSessionMaxRows"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method declared-synchronized createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 327
    invoke-static {p1}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseHostPortPair(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 328
    aget-object v1, p1, v1

    const/4 v2, 0x1

    .line 329
    aget-object p1, p1, v2

    const-string v2, "DBNAME"

    .line 330
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const-string p1, "3306"

    :cond_0
    const-string v3, "HOST"

    .line 339
    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "PORT"

    .line 340
    invoke-virtual {v0, v3, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "HOST.1"

    .line 341
    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "PORT.1"

    .line 342
    invoke-virtual {v0, v3, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "NUM_HOSTS"

    const-string v4, "1"

    .line 343
    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "roundRobinLoadBalance"

    const-string v4, "false"

    .line 344
    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 346
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jdbc:mysql://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, v0, v2, p1}, Lcom/mysql/jdbc/ConnectionImpl;->getInstance(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/Connection;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/ConnectionImpl;

    .line 349
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/ConnectionImpl;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-object p1

    .line 333
    :cond_1
    :try_start_1
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Could not find a hostname to start a connection to"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 324
    monitor-exit p0

    throw p1
.end method

.method dealWithInvocationException(Ljava/lang/reflect/InvocationTargetException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/lang/Throwable;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 262
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    iget-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->lastExceptionDealtWith:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->invalidateCurrentConnection()V

    .line 267
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->pickNewConnection()V

    .line 268
    iput-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->lastExceptionDealtWith:Ljava/lang/Throwable;

    .line 270
    :cond_0
    throw v0

    .line 272
    :cond_1
    throw p1
.end method

.method abstract doAbort(Ljava/util/concurrent/Executor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract doAbortInternal()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract doClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method getNewJdbcInterfaceProxy(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .locals 1

    .line 252
    new-instance v0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;-><init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;Ljava/lang/Object;)V

    return-object v0
.end method

.method getNewWrapperForThisAsConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 181
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->JDBC_4_MS_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/MultiHostMySQLConnection;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;-><init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;)V

    return-object v0

    .line 182
    :cond_1
    :goto_0
    sget-object v0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->JDBC_4_MS_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/MySQLConnection;

    return-object v0
.end method

.method protected getProxy()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->proxyConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->proxyConnection:Lcom/mysql/jdbc/MySQLConnection;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    :goto_0
    return-object v0
.end method

.method initializeHostsSpecs(Ljava/util/List;Ljava/util/Properties;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")I"
        }
    .end annotation

    const-string v0, "true"

    const-string v1, "autoReconnect"

    .line 154
    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "true"

    const-string v2, "autoReconnectForPools"

    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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
    iput-boolean v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->autoReconnect:Z

    .line 156
    iput-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->hostList:Ljava/util/List;

    .line 157
    iget-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 159
    invoke-virtual {p2}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Properties;

    iput-object p2, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    .line 160
    iget-object p2, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v0, "HOST"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object p2, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v0, "PORT"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-ge v1, p1, :cond_2

    .line 164
    iget-object p2, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HOST."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object p2, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PORT."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 168
    :cond_2
    iget-object p2, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v0, "NUM_HOSTS"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object p2, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v0, "useLocalSessionState"

    const-string v1, "true"

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return p1
.end method

.method declared-synchronized invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 303
    :try_start_0
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoCommit()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->realClose(ZZZLjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 302
    monitor-exit p0

    throw p1

    .line 309
    :catch_0
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method declared-synchronized invalidateCurrentConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 291
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 414
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getMultiHostSafeProxy"

    .line 416
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    iget-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    const-string v1, "equals"

    .line 420
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 422
    aget-object p1, p3, v2

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    const-string v1, "hashCode"

    .line 425
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 426
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_3
    const-string v1, "close"

    .line 429
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 430
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->doClose()V

    .line 431
    iput-boolean v4, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isClosed:Z

    const-string p1, "Connection explicitly closed."

    .line 432
    iput-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedReason:Ljava/lang/String;

    .line 433
    iput-boolean v4, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedExplicitly:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 434
    monitor-exit p0

    return-object v3

    :cond_3
    :try_start_4
    const-string v1, "abortInternal"

    .line 437
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 438
    invoke-virtual {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->doAbortInternal()V

    .line 439
    iget-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->abortInternal()V

    .line 440
    iput-boolean v4, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isClosed:Z

    const-string p1, "Connection explicitly closed."

    .line 441
    iput-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedReason:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 442
    monitor-exit p0

    return-object v3

    :cond_4
    :try_start_5
    const-string v1, "abort"

    .line 445
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    array-length v1, p3

    if-ne v1, v4, :cond_5

    .line 446
    aget-object p1, p3, v2

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->doAbort(Ljava/util/concurrent/Executor;)V

    .line 447
    iput-boolean v4, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isClosed:Z

    const-string p1, "Connection explicitly closed."

    .line 448
    iput-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->closedReason:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 449
    monitor-exit p0

    return-object v3

    :cond_5
    :try_start_6
    const-string v1, "isClosed"

    .line 452
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 453
    iget-boolean p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->isClosed:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    .line 457
    :cond_6
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->invokeMore(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 462
    :try_start_8
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object p2

    .line 463
    array-length p3, p2

    :goto_0
    if-ge v2, p3, :cond_8

    aget-object v0, p2, v2

    .line 464
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    :cond_7
    throw p1

    .line 468
    :cond_8
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 459
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :cond_9
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception p1

    .line 413
    monitor-exit p0

    throw p1
.end method

.method abstract invokeMore(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method abstract isMasterConnection()Z
.end method

.method abstract pickNewConnection()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected propagateProxyDown(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    return-void
.end method

.method proxyIfReturnTypeIsJdbcInterface(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 235
    invoke-static {p1}, Lcom/mysql/jdbc/Util;->isJdbcInterface(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1}, Lcom/mysql/jdbc/Util;->getImplementedInterfaces(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->getNewJdbcInterfaceProxy(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p2

    invoke-static {v0, p1, p2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method protected final setProxy(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy;->proxyConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 209
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->propagateProxyDown(Lcom/mysql/jdbc/MySQLConnection;)V

    return-void
.end method

.method abstract shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z
.end method
