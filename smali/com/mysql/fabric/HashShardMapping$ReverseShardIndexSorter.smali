.class Lcom/mysql/fabric/HashShardMapping$ReverseShardIndexSorter;
.super Ljava/lang/Object;
.source "HashShardMapping.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/fabric/HashShardMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseShardIndexSorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mysql/fabric/ShardIndex;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/mysql/fabric/HashShardMapping$ReverseShardIndexSorter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/mysql/fabric/HashShardMapping$ReverseShardIndexSorter;

    invoke-direct {v0}, Lcom/mysql/fabric/HashShardMapping$ReverseShardIndexSorter;-><init>()V

    sput-object v0, Lcom/mysql/fabric/HashShardMapping$ReverseShardIndexSorter;->instance:Lcom/mysql/fabric/HashShardMapping$ReverseShardIndexSorter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mysql/fabric/ShardIndex;Lcom/mysql/fabric/ShardIndex;)I
    .locals 0

    .line 39
    invoke-virtual {p2}, Lcom/mysql/fabric/ShardIndex;->getBound()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/mysql/fabric/ShardIndex;->getBound()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 37
    check-cast p1, Lcom/mysql/fabric/ShardIndex;

    check-cast p2, Lcom/mysql/fabric/ShardIndex;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/fabric/HashShardMapping$ReverseShardIndexSorter;->compare(Lcom/mysql/fabric/ShardIndex;Lcom/mysql/fabric/ShardIndex;)I

    move-result p1

    return p1
.end method
