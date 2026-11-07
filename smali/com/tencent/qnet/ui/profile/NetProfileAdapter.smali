.class public Lcom/tencent/qnet/ui/profile/NetProfileAdapter;
.super Landroid/widget/BaseAdapter;
.source "NetProfileAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/qnet/ui/profile/NetProfileItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/qnet/ui/profile/NetProfileItem;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->items:Ljava/util/List;

    return-void
.end method

.method public static CovertToProfileItemList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/qnet/net/NetProfile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tencent/qnet/ui/profile/NetProfileItem;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qnet/net/NetProfile;

    .line 137
    new-instance v2, Lcom/tencent/qnet/ui/profile/NetProfileItem;

    invoke-direct {v2, v1}, Lcom/tencent/qnet/ui/profile/NetProfileItem;-><init>(Lcom/tencent/qnet/net/NetProfile;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic access$000(Lcom/tencent/qnet/ui/profile/NetProfileAdapter;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/qnet/ui/profile/NetProfileItem;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->items:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 78
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/qnet/ui/profile/NetProfileItem;

    .line 79
    invoke-virtual {p1}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getProfile()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v0

    .line 80
    iget-object v1, v0, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 86
    iget-object p2, p0, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v3, 0x7f0c0040

    .line 87
    invoke-virtual {p2, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_1
    const p3, 0x7f0900cf

    .line 92
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v3, 0x7f0900cd

    .line 93
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 96
    iget-object v4, v0, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-boolean p3, v0, Lcom/tencent/qnet/net/NetProfile;->Preset:Z

    if-eqz p3, :cond_2

    const-string p3, "[%s]%s"

    const/4 v4, 0x2

    .line 99
    new-array v4, v4, [Ljava/lang/Object;

    .line 100
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100095

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    iget-object v0, v0, Lcom/tencent/qnet/net/NetProfile;->Desc:Ljava/lang/String;

    aput-object v0, v4, v2

    .line 99
    invoke-static {p3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object p3, v0, Lcom/tencent/qnet/net/NetProfile;->Desc:Ljava/lang/String;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const p3, 0x7f0900ce

    .line 107
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 108
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_3

    .line 109
    new-instance v0, Lcom/tencent/qnet/ui/profile/NetProfileAdapter$1;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qnet/ui/profile/NetProfileAdapter$1;-><init>(Lcom/tencent/qnet/ui/profile/NetProfileAdapter;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_3
    invoke-virtual {p1, p2}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->setView(Landroid/view/View;)V

    .line 126
    invoke-static {}, Lcom/tencent/qnet/ui/MainActivity;->getMainActivity()Lcom/tencent/qnet/ui/MainActivity;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/tencent/qnet/ui/MainActivity;->updateProfileSelected(Lcom/tencent/qnet/ui/profile/NetProfileItem;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/qnet/ui/profile/NetProfileItem;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->items:Ljava/util/List;

    return-void
.end method
