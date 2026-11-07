.class Lcom/tencent/qnet/profile/ProposalManager$3;
.super Ljava/lang/Object;
.source "ProposalManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/profile/ProposalManager;->GetSortedListFromMap(Ljava/util/Map;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/tencent/qnet/net/NetProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/profile/ProposalManager;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/profile/ProposalManager;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/tencent/qnet/profile/ProposalManager$3;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 226
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/qnet/profile/ProposalManager$3;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/tencent/qnet/net/NetProfile;",
            ">;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/tencent/qnet/net/NetProfile;",
            ">;)I"
        }
    .end annotation

    .line 228
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/qnet/net/NetProfile;

    iget-object p2, p2, Lcom/tencent/qnet/net/NetProfile;->UpdateTime:Ljava/util/Date;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/qnet/net/NetProfile;

    iget-object p1, p1, Lcom/tencent/qnet/net/NetProfile;->UpdateTime:Ljava/util/Date;

    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method
