.class public Lcom/mysql/fabric/RangeShardMapping;
.super Lcom/mysql/fabric/ShardMapping;
.source "RangeShardMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/fabric/RangeShardMapping$RangeShardIndexSorter;
    }
.end annotation


# direct methods
.method public constructor <init>(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6
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
            ">;)V"
        }
    .end annotation

    .line 52
    new-instance v5, Ljava/util/TreeSet;

    sget-object v0, Lcom/mysql/fabric/RangeShardMapping$RangeShardIndexSorter;->instance:Lcom/mysql/fabric/RangeShardMapping$RangeShardIndexSorter;

    invoke-direct {v5, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mysql/fabric/ShardMapping;-><init>(ILcom/mysql/fabric/ShardingType;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 53
    iget-object p1, p0, Lcom/mysql/fabric/RangeShardMapping;->shardIndices:Ljava/util/Set;

    invoke-interface {p1, p5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method protected getShardIndexForKey(Ljava/lang/String;)Lcom/mysql/fabric/ShardIndex;
    .locals 4

    const/4 v0, -0x1

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/mysql/fabric/RangeShardMapping;->shardIndices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/ShardIndex;

    .line 66
    invoke-virtual {v1}, Lcom/mysql/fabric/ShardIndex;->getBound()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 67
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v3, v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
