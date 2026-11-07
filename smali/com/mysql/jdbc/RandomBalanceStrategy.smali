.class public Lcom/mysql/jdbc/RandomBalanceStrategy;
.super Ljava/lang/Object;
.source "RandomBalanceStrategy.java"

# interfaces
.implements Lcom/mysql/jdbc/BalanceStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getArrayIndexMap(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 123
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 124
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public pickConnection(Lcom/mysql/jdbc/LoadBalancedConnectionProxy;Ljava/util/List;Ljava/util/Map;[JI)Lcom/mysql/jdbc/ConnectionImpl;
    .locals 9
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

    .line 48
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 59
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/RandomBalanceStrategy;->getArrayIndexMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v1

    move-object v1, v2

    :goto_0
    if-ge v3, p5, :cond_5

    .line 62
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v7, v1

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_4

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mysql/jdbc/ConnectionImpl;

    if-nez v5, :cond_3

    .line 73
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v5
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 77
    invoke-virtual {p1, v5}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 83
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 84
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/RandomBalanceStrategy;->getArrayIndexMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 86
    :cond_0
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v6, 0xfa

    .line 91
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :catch_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p4}, Ljava/util/HashMap;-><init>(I)V

    .line 97
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v1

    .line 100
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 101
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/RandomBalanceStrategy;->getArrayIndexMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    move-object v4, v1

    :cond_1
    move-object v1, v5

    goto :goto_0

    .line 107
    :cond_2
    throw v5

    :cond_3
    :goto_1
    return-object v5

    :cond_4
    const-string p1, "No hosts configured"

    .line 64
    invoke-static {p1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_5
    if-nez v1, :cond_6

    return-object v2

    .line 115
    :cond_6
    throw v1
.end method
