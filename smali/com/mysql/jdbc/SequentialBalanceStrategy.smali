.class public Lcom/mysql/jdbc/SequentialBalanceStrategy;
.super Ljava/lang/Object;
.source "SequentialBalanceStrategy.java"

# interfaces
.implements Lcom/mysql/jdbc/BalanceStrategy;


# instance fields
.field private currentHostIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

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

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 52
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v0

    const/4 v5, 0x0

    move-object v6, v0

    move-object v0, v5

    :goto_0
    if-lez p5, :cond_d

    const-wide/16 v7, 0xfa

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v4, v10, :cond_0

    .line 60
    iput v9, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    goto/16 :goto_9

    .line 61
    :cond_0
    iget v11, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    .line 62
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    int-to-double v13, v4

    mul-double v10, v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    move v11, v10

    :goto_1
    if-ge v11, v4, :cond_2

    .line 65
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 66
    iput v11, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 71
    :cond_2
    :goto_2
    iget v11, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    if-ne v11, v12, :cond_4

    :goto_3
    if-ge v9, v10, :cond_4

    .line 73
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 74
    iput v9, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 80
    :cond_4
    :goto_4
    iget v9, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    if-ne v9, v12, :cond_a

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v6

    .line 85
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 93
    :cond_5
    iget v11, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    add-int/2addr v11, v10

    :goto_5
    if-ge v11, v4, :cond_7

    .line 97
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 98
    iput v11, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    const/4 v11, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_7
    const/4 v11, 0x0

    :goto_6
    if-nez v11, :cond_9

    .line 105
    :goto_7
    iget v12, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    if-ge v9, v12, :cond_9

    .line 106
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 107
    iput v9, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    goto :goto_8

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_9
    move v10, v11

    :goto_8
    if-nez v10, :cond_a

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->getGlobalBlacklist()Ljava/util/Map;

    move-result-object v6

    .line 119
    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 127
    :cond_a
    :goto_9
    iget v0, v1, Lcom/mysql/jdbc/SequentialBalanceStrategy;->currentHostIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    move-object/from16 v10, p3

    .line 129
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionImpl;

    if-nez v0, :cond_c

    .line 133
    :try_start_2
    invoke-virtual {v2, v9}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->createConnectionForHost(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionImpl;

    move-result-object v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v11, v0

    .line 137
    invoke-virtual {v2, v11}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->shouldExceptionTriggerConnectionSwitch(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 139
    invoke-virtual {v2, v9}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->addToGlobalBlacklist(Ljava/lang/String;)V

    .line 142
    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-object v0, v11

    goto/16 :goto_0

    .line 148
    :cond_b
    throw v11

    :cond_c
    :goto_a
    return-object v0

    :cond_d
    if-nez v0, :cond_e

    return-object v5

    .line 156
    :cond_e
    throw v0
.end method
