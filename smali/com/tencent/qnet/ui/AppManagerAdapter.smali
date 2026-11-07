.class Lcom/tencent/qnet/ui/AppManagerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AppManager.java"

# interfaces
.implements Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/tencent/qnet/ui/AppViewHolder;",
        ">;",
        "Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 197
    sget-object v0, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    iget-object v0, v0, Lcom/tencent/qnet/ui/AppProxyManager;->mlistAppInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 1

    .line 202
    sget-object v0, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    iget-object v0, v0, Lcom/tencent/qnet/ui/AppProxyManager;->mlistAppInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/qnet/ui/AppInfo;

    .line 203
    invoke-virtual {p1}, Lcom/tencent/qnet/ui/AppInfo;->getAppLabel()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 181
    check-cast p1, Lcom/tencent/qnet/ui/AppViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/qnet/ui/AppManagerAdapter;->onBindViewHolder(Lcom/tencent/qnet/ui/AppViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tencent/qnet/ui/AppViewHolder;I)V
    .locals 1

    .line 191
    sget-object v0, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    iget-object v0, v0, Lcom/tencent/qnet/ui/AppProxyManager;->mlistAppInfo:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/qnet/ui/AppInfo;

    .line 192
    invoke-virtual {p1, p2}, Lcom/tencent/qnet/ui/AppViewHolder;->bind(Lcom/tencent/qnet/ui/AppInfo;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qnet/ui/AppManagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tencent/qnet/ui/AppViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tencent/qnet/ui/AppViewHolder;
    .locals 3

    .line 186
    new-instance p2, Lcom/tencent/qnet/ui/AppViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/qnet/ui/AppViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
