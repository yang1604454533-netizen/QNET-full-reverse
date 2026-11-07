.class public Lcom/mysql/jdbc/ServerAffinityStrategy;
.super Lcom/mysql/jdbc/RandomBalanceStrategy;
.source "ServerAffinityStrategy.java"


# static fields
.field public static final AFFINITY_ORDER:Ljava/lang/String; = "serverAffinityOrder"


# instance fields
.field public affinityOrderedServers:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/mysql/jdbc/RandomBalanceStrategy;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/mysql/jdbc/ServerAffinityStrategy;->affinityOrderedServers:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 37
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/RandomBalanceStrategy;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    const-string p1, "serverAffinityOrder"

    .line 38
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, ","

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ServerAffinityStrategy;->affinityOrderedServers:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/LoadBalancedConnectionProxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ConnectionImpl;",
            ">;[JI)",
            "Lcom/mysql/jdbc/ConnectionImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/mysql/jdbc/ServerAffinityStrategy;->affinityOrderedServers:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    invoke-super/range {p0 .. p5}, Lcom/mysql/jdbc/RandomBalanceStrategy;->pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/mysql/jdbc/ServerAffinityStrategy;->affinityOrderedServers:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 53
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 54
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mysql/jdbc/ConnectionImpl;

    if-eqz v5, :cond_1

    return-object v5

    .line 59
    :cond_1
    :try_start_0
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v5
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v5

    .line 62
    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 63
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/mysql/jdbc/RandomBalanceStrategy;->pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object p1

    return-object p1
.end method
