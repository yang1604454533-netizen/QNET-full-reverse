.class public Lcom/mysql/fabric/ShardMappingFactory;
.super Ljava/lang/Object;
.source "ShardMappingFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createShardMapping(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Lcom/mysql/fabric/ShardMapping;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mysql/fabric/ShardingType;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/ShardTable;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/ShardIndex;",
            ">;)",
            "Lcom/mysql/fabric/ShardMapping;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/mysql/fabric/ShardMappingFactory$1;->$SwitchMap$com$mysql$fabric$ShardingType:[I

    invoke-virtual {p2}, Lcom/mysql/fabric/ShardingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid ShardingType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :pswitch_0
    new-instance v0, Lcom/mysql/fabric/HashShardMapping;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/mysql/fabric/HashShardMapping;-><init>(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_0

    .line 37
    :pswitch_1
    new-instance v0, Lcom/mysql/fabric/RangeShardMapping;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/mysql/fabric/RangeShardMapping;-><init>(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
