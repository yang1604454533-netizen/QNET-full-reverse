.class public Lcom/mysql/jdbc/FailoverConnectionProxy;
.super Lcom/mysql/jdbc/MultiHostConnectionProxy;
.source "FailoverConnectionProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;
    }
.end annotation


# static fields
.field private static final DEFAULT_PRIMARY_HOST_INDEX:I = 0x0

.field private static INTERFACES_TO_PROXY:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final METHOD_COMMIT:Ljava/lang/String; = "commit"

.field private static final METHOD_ROLLBACK:Ljava/lang/String; = "rollback"

.field private static final METHOD_SET_AUTO_COMMIT:Ljava/lang/String; = "setAutoCommit"

.field private static final METHOD_SET_READ_ONLY:Ljava/lang/String; = "setReadOnly"

.field private static final NO_CONNECTION_INDEX:I = -0x1


# instance fields
.field private currentHostIndex:I

.field private enableFallBackToPrimaryHost:Z

.field private explicitlyAutoCommit:Z

.field private explicitlyReadOnly:Ljava/lang/Boolean;

.field private failoverReadOnly:Z

.field private primaryHostFailTimeMillis:J

.field private primaryHostIndex:I

.field private queriesBeforeRetryPrimaryHost:J

.field private queriesIssuedSinceFailover:J

.field private retriesAllDown:I

.field private secondsBeforeRetryPrimaryHost:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    new-array v0, v2, [Ljava/lang/Class;

    const-string v2, "com.mysql.jdbc.JDBC4MySQLConnection"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/FailoverConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 71
    :cond_0
    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/FailoverConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/Properties;)V
    .locals 6
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

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/MultiHostConnectionProxy;-><init>(Ljava/util/List;Ljava/util/Properties;)V

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyReadOnly:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyAutoCommit:Z

    .line 57
    iput-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->enableFallBackToPrimaryHost:Z

    const-wide/16 v1, 0x0

    .line 58
    iput-wide v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostFailTimeMillis:J

    .line 59
    iput-wide v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesIssuedSinceFailover:J

    .line 123
    new-instance v3, Lcom/mysql/jdbc/ConnectionPropertiesImpl;

    invoke-direct {v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;-><init>()V

    .line 124
    invoke-virtual {v3, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->initializeProperties(Ljava/util/Properties;)V

    .line 126
    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getSecondsBeforeRetryMaster()I

    move-result p2

    iput p2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->secondsBeforeRetryPrimaryHost:I

    .line 127
    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getQueriesBeforeRetryMaster()I

    move-result p2

    int-to-long v4, p2

    iput-wide v4, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesBeforeRetryPrimaryHost:J

    .line 128
    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getFailOverReadOnly()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->failoverReadOnly:Z

    .line 129
    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->getRetriesAllDown()I

    move-result p2

    iput p2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->retriesAllDown:I

    .line 131
    iget p2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->secondsBeforeRetryPrimaryHost:I

    if-gtz p2, :cond_0

    iget-wide v3, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesBeforeRetryPrimaryHost:J

    cmp-long p2, v3, v1

    if-lez p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    iput-boolean p1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->enableFallBackToPrimaryHost:Z

    .line 133
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->pickNewConnection()V

    .line 135
    iget-object p1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoCommit()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyAutoCommit:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mysql/jdbc/FailoverConnectionProxy;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyAutoCommit:Z

    return p0
.end method

.method private declared-synchronized connectTo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 226
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->createConnectionForHostIndex(I)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->switchCurrentConnectionTo(ILcom/mysql/jdbc/MySQLConnection;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 228
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_1

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "primary"

    goto :goto_0

    :cond_0
    const-string v2, "secondary"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " host \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' failed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object p1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 233
    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public static createProxyInstance(Ljava/util/List;Ljava/util/Properties;)Lcom/mysql/jdbc/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")",
            "Lcom/mysql/jdbc/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/mysql/jdbc/FailoverConnectionProxy;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;-><init>(Ljava/util/List;Ljava/util/Properties;)V

    .line 109
    const-class p0, Lcom/mysql/jdbc/Connection;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    sget-object p1, Lcom/mysql/jdbc/FailoverConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/Connection;

    return-object p0
.end method

.method private declared-synchronized failOver()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 269
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->failOver(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 268
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized failOver(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 280
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0, p1, v1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->nextHost(IZ)I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1

    .line 287
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move-object v5, v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    move v2, p1

    :cond_2
    if-nez v0, :cond_4

    .line 290
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_4

    :cond_4
    :goto_2
    const/4 v0, 0x1

    .line 292
    :goto_3
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectTo(I)V

    if-eqz v0, :cond_5

    .line 294
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectedToSecondaryHost()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 295
    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->resetAutoFallBackCounters()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    const/4 v6, 0x1

    goto :goto_6

    .line 302
    :goto_4
    :try_start_2
    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/FailoverConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-lez v3, :cond_6

    const/4 v7, 0x1

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    .line 303
    :goto_5
    invoke-direct {p0, v2, v7}, Lcom/mysql/jdbc/FailoverConnectionProxy;->nextHost(IZ)I

    move-result v7

    if-ne v7, p1, :cond_7

    .line 305
    invoke-direct {p0, v2, v4}, Lcom/mysql/jdbc/FailoverConnectionProxy;->nextHost(IZ)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v7, v2, :cond_8

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v7, 0xfa

    .line 309
    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :cond_7
    move v2, v7

    .line 320
    :catch_1
    :cond_8
    :goto_6
    :try_start_4
    iget v7, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->retriesAllDown:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ge v3, v7, :cond_9

    if-eqz v6, :cond_2

    :cond_9
    if-eqz v6, :cond_a

    .line 325
    monitor-exit p0

    return-void

    .line 323
    :cond_a
    :try_start_5
    throw v5

    .line 317
    :cond_b
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    .line 279
    monitor-exit p0

    throw p1
.end method

.method private nextHost(IZ)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 360
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    .line 361
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->enableFallBackToPrimaryHost:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->readyToFallBackToPrimaryHost()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/FailoverConnectionProxy;->nextHost(IZ)I

    move-result p1

    :cond_0
    return p1
.end method

.method private declared-synchronized queriesBeforeRetryPrimaryHostIsMet()Z
    .locals 4

    monitor-enter p0

    .line 425
    :try_start_0
    iget-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesBeforeRetryPrimaryHost:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesIssuedSinceFailover:J

    iget-wide v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesBeforeRetryPrimaryHost:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetAutoFallBackCounters()V
    .locals 2

    monitor-enter p0

    .line 432
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostFailTimeMillis:J

    const-wide/16 v0, 0x0

    .line 433
    iput-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesIssuedSinceFailover:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 431
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized secondsBeforeRetryPrimaryHostIsMet()Z
    .locals 4

    monitor-enter p0

    .line 418
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->secondsBeforeRetryPrimaryHost:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostFailTimeMillis:J

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->secondsSinceMillis(J)J

    move-result-wide v0

    iget v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->secondsBeforeRetryPrimaryHost:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized switchCurrentConnectionTo(ILcom/mysql/jdbc/MySQLConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 246
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->invalidateCurrentConnection()V

    .line 249
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyReadOnly:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyReadOnly:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 251
    :cond_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->failoverReadOnly:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyReadOnly:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyReadOnly:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v1

    .line 260
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v0, p2, v1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V

    .line 261
    iput-object p2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 262
    iput p1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 245
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized connectedToPrimaryHost()Z
    .locals 1

    monitor-enter p0

    .line 404
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized connectedToSecondaryHost()Z
    .locals 1

    monitor-enter p0

    .line 411
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isPrimaryHostIndex(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized createConnectionForHostIndex(I)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized doAbort(Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->abort(Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 456
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized doAbortInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->abortInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 448
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 440
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized fallBackToPrimaryIfAvailable()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 333
    :try_start_0
    iget v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->createConnectionForHostIndex(I)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :try_start_1
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->switchCurrentConnectionTo(ILcom/mysql/jdbc/MySQLConnection;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    nop

    :goto_0
    if-eqz v0, :cond_0

    .line 338
    :try_start_2
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    :catch_2
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->resetAutoFallBackCounters()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    :goto_1
    monitor-exit p0

    return-void

    .line 330
    :goto_2
    monitor-exit p0

    throw v0
.end method

.method getNewJdbcInterfaceProxy(Ljava/lang/Object;)Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;
    .locals 1

    .line 145
    new-instance v0, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy$FailoverJdbcInterfaceProxy;-><init>(Lcom/mysql/jdbc/FailoverConnectionProxy;Ljava/lang/Object;)V

    return-object v0
.end method

.method bridge synthetic getNewJdbcInterfaceProxy(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/FailoverConnectionProxy;->getNewJdbcInterfaceProxy(Ljava/lang/Object;)Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized incrementQueriesIssuedSinceFailover()V
    .locals 4

    monitor-enter p0

    .line 372
    :try_start_0
    iget-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesIssuedSinceFailover:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesIssuedSinceFailover:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 371
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invokeMore(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 466
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "setReadOnly"

    .line 468
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 469
    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyReadOnly:Ljava/lang/Boolean;

    .line 470
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->failoverReadOnly:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectedToSecondaryHost()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 471
    monitor-exit p0

    return-object v2

    .line 475
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->isClosed:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/FailoverConnectionProxy;->allowedOnClosedConnection(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 476
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->autoReconnect:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->closedExplicitly:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 477
    iput v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I

    .line 478
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->pickNewConnection()V

    .line 479
    iput-boolean v1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->isClosed:Z

    .line 480
    iput-object v2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->closedReason:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "No operations allowed after connection closed."

    .line 483
    iget-object p2, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->closedReason:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 484
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->closedReason:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string p2, "08003"

    .line 486
    invoke-static {p1, p2, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    :cond_3
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 494
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->proxyIfReturnTypeIsJdbcInterface(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v0, v2

    .line 496
    :goto_1
    :try_start_4
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/FailoverConnectionProxy;->dealWithInvocationException(Ljava/lang/reflect/InvocationTargetException;)V

    move-object p2, v0

    :goto_2
    const-string v0, "setAutoCommit"

    .line 499
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 500
    aget-object p3, p3, v1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyAutoCommit:Z

    .line 503
    :cond_4
    iget-boolean p3, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->explicitlyAutoCommit:Z

    if-nez p3, :cond_5

    const-string p3, "commit"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "rollback"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->readyToFallBackToPrimaryHost()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 505
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->fallBackToPrimaryIfAvailable()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 508
    :cond_6
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    .line 465
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isConnected()Z
    .locals 2

    monitor-enter p0

    .line 387
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->currentHostIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isMasterConnection()Z
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectedToPrimaryHost()Z

    move-result v0

    return v0
.end method

.method declared-synchronized isPrimaryHostIndex(I)Z
    .locals 1

    monitor-enter p0

    .line 397
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pickNewConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 190
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->isClosed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->closedExplicitly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 191
    monitor-exit p0

    return-void

    .line 194
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->readyToFallBackToPrimaryHost()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->failOver()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 196
    :cond_2
    :goto_0
    :try_start_2
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectTo(I)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 198
    :catch_0
    :try_start_3
    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->resetAutoFallBackCounters()V

    .line 199
    iget v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->primaryHostIndex:I

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->failOver(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 189
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized readyToFallBackToPrimaryHost()Z
    .locals 1

    monitor-enter p0

    .line 380
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/FailoverConnectionProxy;->enableFallBackToPrimaryHost:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->connectedToSecondaryHost()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->secondsBeforeRetryPrimaryHostIsMet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mysql/jdbc/FailoverConnectionProxy;->queriesBeforeRetryPrimaryHostIsMet()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z
    .locals 4

    .line 155
    instance-of v0, p1, Ljava/sql/SQLException;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/sql/SQLException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v3, "08"

    .line 161
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 168
    :cond_1
    instance-of p1, p1, Lcom/mysql/jdbc/CommunicationsException;

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method
