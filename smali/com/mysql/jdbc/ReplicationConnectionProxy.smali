.class public Lcom/mysql/jdbc/ReplicationConnectionProxy;
.super Lcom/mysql/jdbc/MultiHostConnectionProxy;
.source "ReplicationConnectionProxy.java"

# interfaces
.implements Lcom/mysql/jdbc/PingTarget;


# static fields
.field private static INTERFACES_TO_PROXY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static JDBC_4_REPL_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field protected allowMasterDownConnections:Z

.field protected allowSlaveDownConnections:Z

.field connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

.field private connectionGroupID:J

.field private driver:Lcom/mysql/jdbc/NonRegisteringDriver;

.field protected enableJMX:Z

.field protected masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

.field private masterHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private masterProperties:Ljava/util/Properties;

.field protected readFromMasterWhenNoSlaves:Z

.field protected readFromMasterWhenNoSlavesOriginal:Z

.field protected readOnly:Z

.field private slaveHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private slaveProperties:Ljava/util/Properties;

.field protected slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

.field private thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 66
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.mysql.jdbc.JDBC4ReplicationMySQLConnection"

    .line 68
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/mysql/jdbc/ReplicationConnectionProxy;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->JDBC_4_REPL_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x2

    .line 70
    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Lcom/mysql/jdbc/ReplicationConnection;

    aput-object v3, v0, v1

    const-string v1, "com.mysql.jdbc.JDBC4MySQLConnection"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 79
    :cond_0
    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Lcom/mysql/jdbc/ReplicationConnection;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/Properties;Ljava/util/List;Ljava/util/Properties;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
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

    .line 106
    invoke-direct {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->enableJMX:Z

    .line 45
    iput-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowMasterDownConnections:Z

    .line 46
    iput-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowSlaveDownConnections:Z

    .line 47
    iput-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    .line 48
    iput-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlavesOriginal:Z

    .line 49
    iput-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    const-wide/16 v1, -0x1

    .line 52
    iput-wide v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroupID:J

    .line 108
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    check-cast v1, Lcom/mysql/jdbc/ReplicationConnection;

    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    const-string v1, "replicationEnableJMX"

    const-string v2, "false"

    .line 110
    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 112
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->enableJMX:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const-string v1, "allowMasterDownConnections"

    const-string v4, "false"

    .line 119
    invoke-virtual {p2, v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowMasterDownConnections:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const-string v1, "allowSlaveDownConnections"

    const-string v4, "false"

    .line 128
    invoke-virtual {p2, v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    :try_start_2
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowSlaveDownConnections:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const-string v1, "readFromMasterWhenNoSlaves"

    .line 137
    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    :try_start_3
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlavesOriginal:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v0, "replicationConnectionGroup"

    .line 147
    invoke-virtual {p2, v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    invoke-static {v0}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getConnectionGroupInstance(Ljava/lang/String;)Lcom/mysql/jdbc/ReplicationConnectionGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    .line 150
    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->enableJMX:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->registerJmx()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v0, v1, p1, p3}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->registerReplicationConnection(Lcom/mysql/jdbc/ReplicationConnection;Ljava/util/List;Ljava/util/List;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroupID:J

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    invoke-virtual {p3}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getSlaveHosts()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    .line 156
    new-instance p1, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    invoke-virtual {p3}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getMasterHosts()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    goto :goto_0

    .line 158
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    .line 159
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    .line 162
    :goto_0
    new-instance p1, Lcom/mysql/jdbc/NonRegisteringDriver;

    invoke-direct {p1}, Lcom/mysql/jdbc/NonRegisteringDriver;-><init>()V

    iput-object p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->driver:Lcom/mysql/jdbc/NonRegisteringDriver;

    .line 163
    iput-object p4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveProperties:Ljava/util/Properties;

    .line 164
    iput-object p2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterProperties:Ljava/util/Properties;

    .line 166
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->resetReadFromMasterWhenNoSlaves()V

    .line 170
    :try_start_4
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeSlavesConnection()Lcom/mysql/jdbc/MySQLConnection;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 172
    iget-boolean p2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowSlaveDownConnections:Z

    if-nez p2, :cond_3

    .line 173
    iget-object p2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    if-eqz p2, :cond_2

    .line 174
    iget-object p2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    iget-object p3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {p2, p3}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->handleCloseConnection(Lcom/mysql/jdbc/ReplicationConnection;)V

    .line 176
    :cond_2
    throw p1

    .line 182
    :cond_3
    :goto_1
    :try_start_5
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeMasterConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    move-object p1, v3

    goto :goto_2

    :catch_1
    move-exception p1

    .line 187
    :goto_2
    iget-object p2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez p2, :cond_7

    .line 188
    iget-boolean p2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowMasterDownConnections:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz p2, :cond_4

    .line 190
    iput-boolean v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    .line 191
    iget-object p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    iput-object p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    goto :goto_3

    .line 193
    :cond_4
    iget-object p2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    if-eqz p2, :cond_5

    .line 194
    iget-object p2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    iget-object p3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {p2, p3}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->handleCloseConnection(Lcom/mysql/jdbc/ReplicationConnection;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 197
    throw p1

    :cond_6
    const-string p1, "ReplicationConnectionProxy.initializationWithEmptyHostsLists"

    .line 199
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-static {p1, p2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_7
    :goto_3
    return-void

    .line 142
    :catch_2
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v1, p1, v0

    const-string p2, "ReplicationConnectionProxy.badValueForReadFromMasterWhenNoSlaves"

    invoke-static {p2, p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-static {p1, p2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 132
    :catch_3
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v1, p1, v0

    const-string p2, "ReplicationConnectionProxy.badValueForAllowSlaveDownConnections"

    invoke-static {p2, p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-static {p1, p2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 123
    :catch_4
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v1, p1, v0

    const-string p2, "ReplicationConnectionProxy.badValueForAllowMasterDownConnections"

    invoke-static {p2, p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-static {p1, p2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 114
    :catch_5
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v1, p1, v0

    const-string p2, "ReplicationConnectionProxy.badValueForReplicationEnableJMX"

    invoke-static {p2, p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-static {p1, p2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private buildURL(Ljava/util/List;Ljava/util/Properties;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jdbc:mysql:loadbalance://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_0

    const/16 v1, 0x2c

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string p1, "/"

    .line 450
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "DBNAME"

    .line 451
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 453
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private checkConnectionCapabilityForMethod(Ljava/lang/reflect/Method;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "ReplicationConnectionProxy.noHostsInconsistentState"

    .line 342
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0xf4242

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "25000"

    invoke-static {p1, v3, v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static createProxyInstance(Ljava/util/List;Ljava/util/Properties;Ljava/util/List;Ljava/util/Properties;)Lcom/mysql/jdbc/ReplicationConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")",
            "Lcom/mysql/jdbc/ReplicationConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mysql/jdbc/ReplicationConnectionProxy;-><init>(Ljava/util/List;Ljava/util/Properties;Ljava/util/List;Ljava/util/Properties;)V

    .line 87
    const-class p0, Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    sget-object p1, Lcom/mysql/jdbc/ReplicationConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/ReplicationConnection;

    return-object p0
.end method

.method private initializeMasterConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 411
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->driver:Lcom/mysql/jdbc/NonRegisteringDriver;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterProperties:Ljava/util/Properties;

    invoke-direct {p0, v1, v2}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->buildURL(Ljava/util/List;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterProperties:Ljava/util/Properties;

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/NonRegisteringDriver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 417
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/LoadBalancedConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 419
    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 420
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    return-object v0
.end method

.method private initializeSlavesConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 424
    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 426
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->driver:Lcom/mysql/jdbc/NonRegisteringDriver;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveProperties:Ljava/util/Properties;

    invoke-direct {p0, v1, v2}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->buildURL(Ljava/util/List;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveProperties:Ljava/util/Properties;

    invoke-virtual {v0, v1, v2}, Lcom/mysql/jdbc/NonRegisteringDriver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 432
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->getProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/LoadBalancedConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    const/4 v1, 0x1

    .line 433
    invoke-interface {v0, v1}, Lcom/mysql/jdbc/LoadBalancedConnection;->setReadOnly(Z)V

    .line 435
    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 436
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    return-object v0
.end method

.method private resetReadFromMasterWhenNoSlaves()V
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlavesOriginal:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    return-void
.end method

.method private declared-synchronized switchToMasterConnection()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 462
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeMasterConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 463
    monitor-exit p0

    return v1

    .line 470
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V

    .line 472
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    const/4 v0, 0x1

    .line 474
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 466
    :try_start_3
    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 467
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 459
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized switchToSlavesConnection()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 480
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeSlavesConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 481
    monitor-exit p0

    return v0

    .line 488
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isSlavesConnection()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;Z)V

    .line 490
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 492
    :cond_2
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 484
    :try_start_3
    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 485
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 477
    monitor-exit p0

    throw v0
.end method

.method private switchToSlavesConnectionIfNecessary()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 503
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnection()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized addSlaveHost(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 587
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isHostSlave(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 588
    monitor-exit p0

    return-void

    .line 590
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->resetReadFromMasterWhenNoSlaves()V

    .line 592
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-nez v0, :cond_1

    .line 593
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeSlavesConnection()Lcom/mysql/jdbc/MySQLConnection;

    .line 594
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnectionIfNecessary()Z

    goto :goto_0

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->addHost(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 586
    monitor-exit p0

    throw p1
.end method

.method doAbort(Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->abort(Ljava/util/concurrent/Executor;)V

    .line 292
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->abort(Ljava/util/concurrent/Executor;)V

    .line 293
    iget-object p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    if-eqz p1, :cond_0

    .line 294
    iget-object p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->handleCloseConnection(Lcom/mysql/jdbc/ReplicationConnection;)V

    :cond_0
    return-void
.end method

.method doAbortInternal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->abortInternal()V

    .line 283
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->abortInternal()V

    .line 284
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->handleCloseConnection(Lcom/mysql/jdbc/ReplicationConnection;)V

    :cond_0
    return-void
.end method

.method doClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->close()V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->close()V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ReplicationConnectionGroup;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsReplicationConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->handleCloseConnection(Lcom/mysql/jdbc/ReplicationConnection;)V

    :cond_2
    return-void
.end method

.method public doPing()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    .line 356
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/LoadBalancedConnection;->ping()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeMasterConnection()Lcom/mysql/jdbc/MySQLConnection;

    :goto_0
    move-object v1, v2

    .line 366
    :goto_1
    iget-object v3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v3, :cond_1

    .line 368
    :try_start_1
    iget-object v3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/LoadBalancedConnection;->ping()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_3

    .line 374
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->initializeSlavesConnection()Lcom/mysql/jdbc/MySQLConnection;

    .line 375
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnectionIfNecessary()Z

    move-result v3
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :catch_2
    move-exception v3

    .line 379
    iget-object v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    if-eqz v4, :cond_9

    :cond_2
    :goto_2
    move-object v3, v2

    :goto_3
    const/4 v4, 0x1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 387
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    .line 388
    iput-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 389
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 390
    iput-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    .line 392
    :cond_3
    throw v1

    :cond_4
    if-nez v0, :cond_8

    if-nez v3, :cond_5

    .line 394
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-nez v0, :cond_8

    .line 396
    :cond_5
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    .line 397
    iput-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 398
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 399
    iput-boolean v4, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    .line 400
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v4}, Lcom/mysql/jdbc/MySQLConnection;->setReadOnly(Z)V

    :cond_6
    if-nez v3, :cond_7

    goto :goto_4

    .line 403
    :cond_7
    throw v3

    :cond_8
    :goto_4
    return-void

    .line 380
    :cond_9
    throw v3
.end method

.method public getConnectionGroupId()J
    .locals 2

    .line 513
    iget-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->connectionGroupID:J

    return-wide v0
.end method

.method public declared-synchronized getCurrentConnection()Lcom/mysql/jdbc/Connection;
    .locals 1

    monitor-enter p0

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getNullLoadBalancedConnectionInstance()Lcom/mysql/jdbc/LoadBalancedConnection;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMasterConnection()Lcom/mysql/jdbc/Connection;
    .locals 1

    monitor-enter p0

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNewWrapperForThisAsConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 213
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->JDBC_4_REPL_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/ReplicationMySQLConnection;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;-><init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;)V

    return-object v0

    .line 214
    :cond_1
    :goto_0
    sget-object v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->JDBC_4_REPL_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

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

.method public declared-synchronized getSlavesConnection()Lcom/mysql/jdbc/Connection;
    .locals 1

    monitor-enter p0

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method invokeMore(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 304
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->checkConnectionCapabilityForMethod(Ljava/lang/reflect/Method;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 309
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 310
    instance-of v2, v1, Lcom/mysql/jdbc/Statement;

    if-eqz v2, :cond_0

    .line 311
    move-object v2, v1

    check-cast v2, Lcom/mysql/jdbc/Statement;

    invoke-interface {v2, p0}, Lcom/mysql/jdbc/Statement;->setPingTarget(Lcom/mysql/jdbc/PingTarget;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 317
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/sql/SQLException;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/sql/SQLException;

    invoke-virtual {v2}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "25000"

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/sql/SQLException;

    invoke-virtual {v2}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    const v3, 0xf4241

    if-ne v2, v3, :cond_2

    .line 322
    :try_start_1
    iget-boolean v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->setReadOnly(Z)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto :goto_1

    :catch_1
    nop

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    goto :goto_0

    .line 329
    :cond_3
    throw v1
.end method

.method public isHostMaster(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 575
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public isHostSlave(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 637
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public isMasterConnection()Z
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 693
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSlavesConnection()Z
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method pickNewConnection()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized promoteSlaveToMaster(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->removeSlave(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->addHost(Ljava/lang/String;)Z

    .line 528
    :cond_0
    iget-boolean p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result p1

    if-nez p1, :cond_1

    .line 529
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToMasterConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 520
    monitor-exit p0

    throw p1
.end method

.method protected propagateProxyDown(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized removeMasterHost(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 534
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->removeMasterHost(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 533
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMasterHost(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 538
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->removeMasterHost(Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 537
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMasterHost(Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 543
    :try_start_0
    iget-object p3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->resetReadFromMasterWhenNoSlaves()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 546
    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 549
    iget-object p3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/LoadBalancedConnection;->isClosed()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 555
    iget-object p2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {p2, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->removeHostWhenNotInUse(Ljava/lang/String;)V

    goto :goto_1

    .line 557
    :cond_2
    iget-object p2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {p2, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->removeHost(Ljava/lang/String;)V

    .line 561
    :goto_1
    iget-object p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterHosts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 562
    iget-object p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->close()V

    .line 563
    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 566
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnectionIfNecessary()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :cond_3
    monitor-exit p0

    return-void

    .line 550
    :cond_4
    :goto_2
    :try_start_1
    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    monitor-exit p0

    return-void

    .line 541
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeSlave(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 601
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->removeSlave(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 600
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeSlave(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 606
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->resetReadFromMasterWhenNoSlaves()V

    .line 608
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/LoadBalancedConnection;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 614
    iget-object p2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {p2, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->removeHostWhenNotInUse(Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_1
    iget-object p2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {p2, p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->removeHost(Ljava/lang/String;)V

    .line 620
    :goto_0
    iget-object p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slaveHosts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 621
    iget-object p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/LoadBalancedConnection;->close()V

    .line 622
    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 625
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToMasterConnection()Z

    .line 626
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 627
    iget-object p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-boolean p2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    invoke-interface {p1, p2}, Lcom/mysql/jdbc/MySQLConnection;->setReadOnly(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :cond_2
    monitor-exit p0

    return-void

    .line 609
    :cond_3
    :goto_1
    :try_start_1
    iput-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 604
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setReadOnly(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 647
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isSlavesConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    .line 651
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnection()Z

    move-result v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    if-nez v0, :cond_1

    .line 656
    :try_start_2
    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToMasterConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_2

    goto :goto_4

    .line 660
    :cond_2
    throw v1

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 664
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_6

    .line 668
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToMasterConnection()Z

    move-result v2
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v2

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_2
    if-nez v0, :cond_5

    .line 673
    :try_start_4
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->switchToSlavesConnectionIfNecessary()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    if-nez v1, :cond_8

    .line 681
    :cond_6
    :goto_4
    iput-boolean p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    .line 687
    iget-boolean p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readFromMasterWhenNoSlaves:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isMasterConnection()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 688
    iget-object p1, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->readOnly:Z

    invoke-interface {p1, v0}, Lcom/mysql/jdbc/MySQLConnection;->setReadOnly(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 690
    :cond_7
    monitor-exit p0

    return-void

    .line 677
    :cond_8
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 645
    :goto_5
    monitor-exit p0

    throw p1
.end method

.method shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
