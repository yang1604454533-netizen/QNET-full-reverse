.class public Lcom/mysql/jdbc/BestResponseTimeBalanceStrategy;
.super Ljava/lang/Object;
.source "BestResponseTimeBalanceStrategy.java"

# interfaces
.implements Lcom/mysql/jdbc/BalanceStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .locals 15
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

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v6, p5

    move-object v8, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_7

    const-wide v8, 0x7fffffffffffffffL

    .line 57
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v10

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v0

    :cond_0
    move-object v10, v0

    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 61
    :goto_1
    array-length v12, v3

    if-ge v0, v12, :cond_3

    .line 62
    aget-wide v12, v3, v0

    cmp-long v14, v12, v8

    if-gez v14, :cond_2

    .line 64
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v8, v12, v8

    if-nez v8, :cond_1

    move v11, v0

    goto :goto_2

    :cond_1
    move v11, v0

    move-wide v8, v12

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :cond_3
    :goto_2
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    move-object/from16 v9, p3

    .line 78
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;

    if-nez v0, :cond_6

    .line 82
    :try_start_0
    invoke-virtual {v1, v8}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 86
    invoke-virtual {v1, v11}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87
    invoke-virtual {v1, v8}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    .line 88
    invoke-interface {v10, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    if-ne v0, v8, :cond_4

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v12, 0xfa

    .line 93
    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :catch_1
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v10

    :goto_3
    move-object v8, v11

    goto :goto_0

    .line 102
    :cond_5
    throw v11

    :cond_6
    :goto_4
    return-object v0

    :cond_7
    if-nez v8, :cond_8

    return-object v5

    .line 110
    :cond_8
    throw v8
.end method
