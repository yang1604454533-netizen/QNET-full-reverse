.class public Lcom/mysql/jdbc/LoadBalancedConnectionProxy;
.super Lcom/mysql/jdbc/MultiHostConnectionProxy;
.source "LoadBalancedConnectionProxy.java"

# interfaces
.implements Lcom/mysql/jdbc/PingTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/LoadBalancedConnectionProxy$NullLoadBalancedConnectionProxy;
    }
.end annotation


# static fields
.field public static final BLACKLIST_TIMEOUT_PROPERTY_KEY:Ljava/lang/String; = "loadBalanceBlacklistTimeout"

.field public static final HOST_REMOVAL_GRACE_PERIOD_PROPERTY_KEY:Ljava/lang/String; = "loadBalanceHostRemovalGracePeriod"

.field private static INTERFACES_TO_PROXY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static JDBC_4_LB_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static globalBlacklist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static nullLBConnectionInstance:Lcom/mysql/jdbc/LoadBalancedConnection;


# instance fields
.field private autoCommitSwapThreshold:I

.field private balancer:Lcom/mysql/jdbc/BalanceStrategy;

.field private connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

.field private connectionGroupProxyID:J

.field private connectionsToHostsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mysql/jdbc/ConnectionImpl;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private exceptionChecker:Lcom/mysql/jdbc/LoadBalanceExceptionChecker;

.field private globalBlacklistTimeout:I

.field private hostRemovalGracePeriod:I

.field private hostsToListIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hostsToRemove:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inTransaction:Z

.field protected liveConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ConnectionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private responseTimes:[J

.field private retriesAllDown:I

.field private totalPhysicalConnections:J

.field private transactionCount:J

.field private transactionStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    .line 87
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.mysql.jdbc.JDBC4LoadBalancedMySQLConnection"

    .line 89
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->JDBC_4_LB_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x2

    .line 91
    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Lcom/mysql/jdbc/LoadBalancedConnection;

    aput-object v3, v0, v1

    const-string v1, "com.mysql.jdbc.JDBC4MySQLConnection"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 95
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :cond_0
    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Lcom/mysql/jdbc/LoadBalancedConnection;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    :goto_0
    const/4 v0, 0x0

    .line 838
    sput-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->nullLBConnectionInstance:Lcom/mysql/jdbc/LoadBalancedConnection;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/Properties;)V
    .locals 7
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

    .line 120
    invoke-direct {p0}, Lcom/mysql/jdbc/MultiHostConnectionProxy;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    const-wide/16 v1, 0x0

    .line 57
    iput-wide v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroupProxyID:J

    .line 62
    iput-wide v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->totalPhysicalConnections:J

    const/4 v3, 0x0

    .line 67
    iput v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->autoCommitSwapThreshold:I

    .line 70
    iput v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklistTimeout:I

    .line 73
    iput v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I

    .line 75
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    .line 77
    iput-boolean v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    .line 78
    iput-wide v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    .line 79
    iput-wide v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionCount:J

    const-string v1, "loadBalanceConnectionGroup"

    .line 122
    invoke-virtual {p2, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "loadBalanceEnableJMX"

    const-string v4, "false"

    .line 124
    invoke-virtual {p2, v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 126
    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v1, :cond_1

    .line 134
    invoke-static {v1}, Lcom/mysql/jdbc/ConnectionGroupManager;->getConnectionGroupInstance(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    if-eqz v5, :cond_0

    .line 136
    invoke-static {}, Lcom/mysql/jdbc/ConnectionGroupManager;->registerJmx()V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    invoke-virtual {v1, p0, p1}, Lcom/mysql/jdbc/ConnectionGroup;->registerConnectionProxy(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroupProxyID:J

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->initializeHostsSpecs(Ljava/util/List;Ljava/util/Properties;)I

    move-result p1

    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    .line 146
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 148
    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    .line 151
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    .line 153
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v1, "retriesAllDown"

    const-string v2, "120"

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->retriesAllDown:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    .line 162
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v1, "loadBalanceBlacklistTimeout"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklistTimeout:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    .line 171
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v1, "loadBalanceHostRemovalGracePeriod"

    const-string v2, "15000"

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 173
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 179
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v1, "loadBalanceStrategy"

    const-string v2, "random"

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "random"

    .line 180
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    const-class p1, Lcom/mysql/jdbc/RandomBalanceStrategy;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InvalidLoadBalanceStrategy"

    invoke-static {v0, p2, p1, v1, v0}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/BalanceStrategy;

    iput-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    goto :goto_1

    :cond_3
    const-string v1, "bestResponseTime"

    .line 183
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 184
    const-class p1, Lcom/mysql/jdbc/BestResponseTimeBalanceStrategy;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InvalidLoadBalanceStrategy"

    invoke-static {v0, p2, p1, v1, v0}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/BalanceStrategy;

    iput-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    goto :goto_1

    :cond_4
    const-string v1, "serverAffinity"

    .line 186
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 187
    const-class p1, Lcom/mysql/jdbc/ServerAffinityStrategy;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InvalidLoadBalanceStrategy"

    invoke-static {v0, p2, p1, v1, v0}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/BalanceStrategy;

    iput-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    goto :goto_1

    :cond_5
    const-string v1, "InvalidLoadBalanceStrategy"

    .line 190
    invoke-static {v0, p2, p1, v1, v0}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/BalanceStrategy;

    iput-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    :goto_1
    const-string p1, "loadBalanceAutoCommitStatementThreshold"

    const-string v1, "0"

    .line 193
    invoke-virtual {p2, p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 195
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->autoCommitSwapThreshold:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    const-string p1, "loadBalanceAutoCommitStatementRegex"

    const-string v1, ""

    .line 201
    invoke-virtual {p2, p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :try_start_5
    const-string v1, ""

    .line 204
    invoke-virtual {v1, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 206
    :catch_0
    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v3

    const-string p1, "LoadBalancedConnectionProxy.badValueForLoadBalanceAutoCommitStatementRegex"

    invoke-static {p1, p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 212
    :cond_6
    :goto_2
    iget p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->autoCommitSwapThreshold:I

    if-lez p1, :cond_9

    .line 213
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v1, "statementInterceptors"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    .line 215
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v1, "statementInterceptors"

    const-string v2, "com.mysql.jdbc.LoadBalancedAutoCommitInterceptor"

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_3

    .line 216
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 217
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v2, "statementInterceptors"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",com.mysql.jdbc.LoadBalancedAutoCommitInterceptor"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_8
    :goto_3
    const-string p1, "statementInterceptors"

    .line 219
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v2, "statementInterceptors"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    :cond_9
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    invoke-interface {p1, v0, p2}, Lcom/mysql/jdbc/BalanceStrategy;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 225
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->localProps:Ljava/util/Properties;

    const-string v1, "loadBalanceExceptionChecker"

    const-string v2, "com.mysql.jdbc.StandardLoadBalanceExceptionChecker"

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "InvalidLoadBalanceExceptionChecker"

    .line 226
    invoke-static {v0, p2, p1, v1, v0}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/LoadBalanceExceptionChecker;

    iput-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->exceptionChecker:Lcom/mysql/jdbc/LoadBalanceExceptionChecker;

    .line 229
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V

    return-void

    .line 197
    :catch_1
    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v3

    const-string p1, "LoadBalancedConnectionProxy.badValueForLoadBalanceAutoCommitStatementThreshold"

    invoke-static {p1, p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 175
    :catch_2
    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v3

    const-string p1, "LoadBalancedConnectionProxy.badValueForLoadBalanceHostRemovalGracePeriod"

    invoke-static {p1, p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 166
    :catch_3
    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v3

    const-string p1, "LoadBalancedConnectionProxy.badValueForLoadBalanceBlacklistTimeout"

    invoke-static {p1, p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 157
    :catch_4
    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v3

    const-string p1, "LoadBalancedConnectionProxy.badValueForRetriesAllDown"

    invoke-static {p1, p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 128
    :catch_5
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v2, p1, v3

    const-string p2, "LoadBalancedConnectionProxy.badValueForLoadBalanceEnableJMX"

    invoke-static {p2, p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private declared-synchronized closeAllConnections()V
    .locals 2

    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :try_start_1
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 394
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    invoke-interface {v0}, Lcom/mysql/jdbc/BalanceStrategy;->destroy()V

    .line 396
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    invoke-virtual {v0, p0}, Lcom/mysql/jdbc/ConnectionGroup;->closeConnectionProxy(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;)V

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 402
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 386
    monitor-exit p0

    throw v0
.end method

.method public static createProxyInstance(Ljava/util/List;Ljava/util/Properties;)Lcom/mysql/jdbc/LoadBalancedConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Properties;",
            ")",
            "Lcom/mysql/jdbc/LoadBalancedConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;-><init>(Ljava/util/List;Ljava/util/Properties;)V

    .line 107
    const-class p0, Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    sget-object p1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/LoadBalancedConnection;

    return-object p0
.end method

.method static declared-synchronized getNullLoadBalancedConnectionInstance()Lcom/mysql/jdbc/LoadBalancedConnection;
    .locals 4

    const-class v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    monitor-enter v0

    .line 841
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->nullLBConnectionInstance:Lcom/mysql/jdbc/LoadBalancedConnection;

    if-nez v1, :cond_0

    .line 842
    const-class v1, Lcom/mysql/jdbc/LoadBalancedConnection;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->INTERFACES_TO_PROXY:[Ljava/lang/Class;

    new-instance v3, Lcom/mysql/jdbc/LoadBalancedConnectionProxy$NullLoadBalancedConnectionProxy;

    invoke-direct {v3}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy$NullLoadBalancedConnectionProxy;-><init>()V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/LoadBalancedConnection;

    sput-object v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->nullLBConnectionInstance:Lcom/mysql/jdbc/LoadBalancedConnection;

    .line 845
    :cond_0
    sget-object v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->nullLBConnectionInstance:Lcom/mysql/jdbc/LoadBalancedConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 840
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addHost(Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 763
    monitor-exit p0

    return v1

    .line 766
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v0, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    new-array v0, v0, [J

    .line 767
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v4, v4

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 769
    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    .line 770
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v1, v1

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 761
    monitor-exit p0

    throw p1
.end method

.method public addToGlobalBlacklist(Ljava/lang/String;)V
    .locals 4

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklistTimeout:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;J)V

    return-void
.end method

.method public addToGlobalBlacklist(Ljava/lang/String;J)V
    .locals 2

    .line 602
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isGlobalBlacklistEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    sget-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    monitor-enter v0

    .line 604
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 372
    :try_start_0
    invoke-super {p0, p1}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-wide v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->totalPhysicalConnections:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->totalPhysicalConnections:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 371
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized doAbort(Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :try_start_1
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/MySQLConnection;->abort(Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    :cond_0
    :try_start_2
    iget-boolean p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    if-nez p1, :cond_1

    .line 451
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    invoke-interface {p1}, Lcom/mysql/jdbc/BalanceStrategy;->destroy()V

    .line 452
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    if-eqz p1, :cond_1

    .line 453
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    invoke-virtual {p1, p0}, Lcom/mysql/jdbc/ConnectionGroup;->closeConnectionProxy(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;)V

    .line 457
    :cond_1
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 458
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 442
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized doAbortInternal()V
    .locals 2

    monitor-enter p0

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :try_start_1
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->abortInternal()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 426
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    if-nez v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    invoke-interface {v0}, Lcom/mysql/jdbc/BalanceStrategy;->destroy()V

    .line 428
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    invoke-virtual {v0, p0}, Lcom/mysql/jdbc/ConnectionGroup;->closeConnectionProxy(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;)V

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 434
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 418
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized doClose()V
    .locals 1

    monitor-enter p0

    .line 410
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closeAllConnections()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 409
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doPing()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 536
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalancePingTimeout()I

    move-result v2

    .line 538
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    .line 539
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 540
    iget-object v6, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/ConnectionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 546
    :try_start_1
    invoke-virtual {v6}, Lcom/mysql/jdbc/ConnectionImpl;->ping()V

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_2

    .line 548
    :cond_1
    invoke-virtual {v6, v5, v2}, Lcom/mysql/jdbc/ConnectionImpl;->pingInternal(ZI)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 553
    :goto_2
    :try_start_2
    iget-object v8, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    iget-object v9, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 562
    invoke-virtual {v7}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v8, "Connection.exceededConnectionLifetime"

    invoke-static {v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v0, :cond_4

    goto :goto_3

    .line 570
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isGlobalBlacklistEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 571
    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    :cond_3
    :goto_3
    move-object v0, v7

    .line 575
    :cond_4
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    iget-object v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 555
    :cond_5
    invoke-direct {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closeAllConnections()V

    .line 556
    iput-boolean v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    const-string v0, "Connection closed because ping of current connection failed."

    .line 557
    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;

    .line 558
    throw v7

    :cond_6
    if-nez v1, :cond_8

    .line 581
    invoke-direct {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closeAllConnections()V

    .line 582
    iput-boolean v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    const-string v1, "Connection closed due to inability to ping any active connections."

    .line 583
    iput-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 589
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionImpl;->throwConnectionClosedException()V

    goto :goto_4

    .line 586
    :cond_7
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 591
    :cond_8
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 533
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActivePhysicalConnectionCount()J
    .locals 2

    monitor-enter p0

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnectionGroupProxyID()J
    .locals 2

    monitor-enter p0

    .line 796
    :try_start_0
    iget-wide v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroupProxyID:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentActiveHost()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 800
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    .line 802
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 807
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 799
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentTransactionDuration()J
    .locals 5

    monitor-enter p0

    .line 811
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 812
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    .line 814
    :cond_0
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception v0

    .line 810
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGlobalBlacklist()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 633
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isGlobalBlacklistEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-object v0

    .line 637
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 638
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 641
    :cond_1
    monitor-exit p0

    return-object v0

    .line 645
    :cond_2
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    sget-object v2, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 647
    sget-object v2, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 648
    :try_start_3
    sget-object v3, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 649
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 650
    :try_start_4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 653
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 656
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 657
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 659
    sget-object v5, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 660
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    .line 662
    sget-object v5, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 663
    :try_start_5
    sget-object v6, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklist:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 665
    :try_start_6
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 664
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    .line 669
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 672
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit p0

    return-object v0

    .line 675
    :cond_5
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    .line 649
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    .line 632
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

    .line 240
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->JDBC_4_LB_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;-><init>(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;)V

    return-object v0

    .line 241
    :cond_1
    :goto_0
    sget-object v0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->JDBC_4_LB_CONNECTION_CTOR:Ljava/lang/reflect/Constructor;

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

.method public declared-synchronized getTotalPhysicalConnectionCount()J
    .locals 2

    monitor-enter p0

    .line 792
    :try_start_0
    iget-wide v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->totalPhysicalConnections:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTransactionCount()J
    .locals 2

    monitor-enter p0

    .line 784
    :try_start_0
    iget-wide v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized inTransaction()Z
    .locals 1

    monitor-enter p0

    .line 780
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 286
    :try_start_0
    invoke-super {p0, p1}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 289
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isGlobalBlacklistEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 299
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 300
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, p1

    .line 301
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 303
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 285
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized invokeMore(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 468
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 470
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->allowedOnClosedConnection(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    .line 471
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->autoReconnect:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedExplicitly:Z

    if-nez v0, :cond_0

    .line 473
    iput-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    .line 474
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V

    .line 475
    iput-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    .line 476
    iput-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after connection closed."

    .line 479
    iget-object p2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 480
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string p2, "08003"

    .line 482
    invoke-static {p1, p2, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 486
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 487
    iput-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    .line 488
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    .line 489
    iget-wide v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 495
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->thisAsConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p3, :cond_5

    .line 498
    :try_start_2
    instance-of v0, p3, Lcom/mysql/jdbc/Statement;

    if-eqz v0, :cond_4

    .line 499
    move-object v0, p3

    check-cast v0, Lcom/mysql/jdbc/Statement;

    invoke-interface {v0, p0}, Lcom/mysql/jdbc/Statement;->setPingTarget(Lcom/mysql/jdbc/PingTarget;)V

    .line 501
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->proxyIfReturnTypeIsJdbcInterface(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_5
    move-object p2, p3

    :goto_1
    :try_start_3
    const-string p3, "commit"

    .line 527
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "rollback"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 509
    :cond_6
    iput-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    .line 512
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    iget-object p3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 515
    iget-object p3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    monitor-enter p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 516
    :try_start_4
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_7

    .line 518
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 519
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 521
    :cond_7
    monitor-exit p3

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    .line 523
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catchall_1
    move-exception p2

    goto :goto_6

    :catch_1
    move-exception p2

    move-object p3, v2

    .line 505
    :goto_3
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->dealWithInvocationException(Ljava/lang/reflect/InvocationTargetException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string p2, "commit"

    .line 524
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "rollback"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 509
    :cond_9
    iput-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    .line 512
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    iget-object p2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 515
    iget-object p2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    monitor-enter p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 516
    :try_start_8
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_a

    .line 518
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_a

    .line 519
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 521
    :cond_a
    monitor-exit p2

    goto :goto_4

    :catchall_2
    move-exception p1

    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw p1

    .line 523
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_c
    move-object p2, p3

    .line 527
    :cond_d
    :goto_5
    monitor-exit p0

    return-object p2

    :goto_6
    :try_start_a
    const-string p3, "commit"

    .line 524
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_e

    const-string p3, "rollback"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 509
    :cond_e
    iput-boolean v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->inTransaction:Z

    .line 512
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    iget-object p3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_10

    .line 515
    iget-object p3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    monitor-enter p3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 516
    :try_start_b
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_f

    .line 518
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_f

    .line 519
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->transactionStartTime:J

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 521
    :cond_f
    monitor-exit p3

    goto :goto_7

    :catchall_3
    move-exception p1

    monitor-exit p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw p1

    .line 523
    :cond_10
    :goto_7
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V

    .line 508
    :cond_11
    throw p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception p1

    .line 467
    monitor-exit p0

    throw p1
.end method

.method public isGlobalBlacklistEnabled()Z
    .locals 1

    .line 623
    iget v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->globalBlacklistTimeout:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isMasterConnection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized pickNewConnection()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 312
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedExplicitly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 313
    monitor-exit p0

    return-void

    .line 316
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v0, :cond_1

    .line 317
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [J

    iget v6, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->retriesAllDown:I

    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Lcom/mysql/jdbc/BalanceStrategy;->pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 322
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->invalidateCurrentConnection()V

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalancePingTimeout()I

    move-result v0

    .line 327
    iget-object v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getLoadBalanceValidateConnectionOnSwapServer()Z

    move-result v1

    const/4 v2, 0x0

    .line 329
    iget-object v3, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v3, :cond_7

    const/4 v5, 0x0

    .line 332
    :try_start_3
    iget-object v6, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->balancer:Lcom/mysql/jdbc/BalanceStrategy;

    iget-object v7, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iget-object v7, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    iget-object v7, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    invoke-virtual {v7}, [J->clone()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, [J

    iget v11, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->retriesAllDown:I

    move-object v7, p0

    invoke-interface/range {v6 .. v11}, Lcom/mysql/jdbc/BalanceStrategy;->pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v6
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 335
    :try_start_4
    iget-object v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v5, :cond_5

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    .line 338
    invoke-virtual {v6}, Lcom/mysql/jdbc/ConnectionImpl;->ping()V

    goto :goto_1

    .line 340
    :cond_3
    invoke-virtual {v6, v4, v0}, Lcom/mysql/jdbc/ConnectionImpl;->pingInternal(ZI)V

    .line 344
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v4, v6}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->syncSessionState(Lcom/mysql/jdbc/Connection;Lcom/mysql/jdbc/Connection;)V

    .line 347
    :cond_5
    iput-object v6, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    :catch_0
    move-exception v4

    move-object v5, v6

    goto :goto_2

    :catch_1
    move-exception v4

    .line 351
    :goto_2
    :try_start_5
    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 353
    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    :cond_7
    iput-boolean v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->isClosed:Z

    const-string v0, "Connection closed after inability to pick valid new connection during load-balance."

    .line 360
    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->closedReason:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 311
    monitor-exit p0

    throw v0
.end method

.method protected propagateProxyDown(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionImpl;

    .line 255
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/MySQLConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized removeHost(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 725
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionGroup:Lcom/mysql/jdbc/ConnectionGroup;

    invoke-virtual {v0}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Cannot remove only configured host."

    const/4 v0, 0x0

    .line 727
    invoke-static {p1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 731
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 733
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->connectionsToHostsMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->liveConnections:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 735
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v0, v0

    sub-int/2addr v0, v1

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 737
    iget-object v2, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 738
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 739
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 740
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    array-length v6, v6

    if-ge v5, v6, :cond_3

    .line 741
    iget-object v5, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-wide v4, v5, v4

    aput-wide v4, v0, v1

    .line 743
    :cond_3
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToListIndexMap:Ljava/util/Map;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    goto :goto_1

    .line 746
    :cond_4
    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->responseTimes:[J

    .line 749
    :cond_5
    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getHostPortPair()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 750
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->invalidateConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 751
    invoke-virtual {p0}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 724
    monitor-exit p0

    throw p1
.end method

.method public removeHostWhenNotInUse(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 686
    iget v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I

    if-gtz v0, :cond_0

    .line 687
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->removeHost(Ljava/lang/String;)V

    return-void

    .line 691
    :cond_0
    iget v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I

    .line 693
    :goto_0
    monitor-enter p0

    .line 694
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    int-to-long v0, v1

    add-long/2addr v2, v0

    invoke-virtual {p0, p1, v2, v3}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;J)V

    .line 696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 698
    :catch_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostRemovalGracePeriod:I

    int-to-long v6, v6

    add-long/2addr v6, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 699
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->hostsToRemove:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v4, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->currentConnection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getHostPortPair()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 702
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->removeHost(Ljava/lang/String;)V

    .line 703
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 707
    :cond_2
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 712
    :cond_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 714
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->removeHost(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 712
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z
    .locals 1

    .line 267
    instance-of v0, p1, Ljava/sql/SQLException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->exceptionChecker:Lcom/mysql/jdbc/LoadBalanceExceptionChecker;

    check-cast p1, Ljava/sql/SQLException;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/LoadBalanceExceptionChecker;->shouldExceptionTriggerFailover(Ljava/sql/SQLException;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
