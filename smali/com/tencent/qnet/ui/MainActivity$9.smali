.class Lcom/tencent/qnet/ui/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/MainActivity;->initNetTemplateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/MainActivity;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/tencent/qnet/ui/MainActivity$9;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 613
    iget-object p1, p0, Lcom/tencent/qnet/ui/MainActivity$9;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    iget-object p1, p1, Lcom/tencent/qnet/ui/MainActivity;->m_profileListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;

    .line 614
    invoke-virtual {p1, p3}, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/qnet/ui/profile/NetProfileItem;

    .line 615
    iget-object p3, p0, Lcom/tencent/qnet/ui/MainActivity$9;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-static {p3}, Lcom/tencent/qnet/ui/MainActivity;->access$300(Lcom/tencent/qnet/ui/MainActivity;)Lcom/tencent/qnet/ui/profile/NetProfileItem;

    move-result-object p3

    const/4 p4, 0x1

    if-nez p3, :cond_0

    .line 617
    iget-object p2, p0, Lcom/tencent/qnet/ui/MainActivity$9;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-static {p2, p1, p4}, Lcom/tencent/qnet/ui/MainActivity;->access$400(Lcom/tencent/qnet/ui/MainActivity;Lcom/tencent/qnet/ui/profile/NetProfileItem;Z)V

    goto :goto_0

    .line 619
    :cond_0
    iget-object p3, p0, Lcom/tencent/qnet/ui/MainActivity$9;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-static {p3}, Lcom/tencent/qnet/ui/MainActivity;->access$300(Lcom/tencent/qnet/ui/MainActivity;)Lcom/tencent/qnet/ui/profile/NetProfileItem;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getView()Landroid/view/View;

    move-result-object p3

    if-eq p2, p3, :cond_1

    .line 621
    iget-object p2, p0, Lcom/tencent/qnet/ui/MainActivity$9;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-static {p2, p1, p4}, Lcom/tencent/qnet/ui/MainActivity;->access$400(Lcom/tencent/qnet/ui/MainActivity;Lcom/tencent/qnet/ui/profile/NetProfileItem;Z)V

    :cond_1
    :goto_0
    return-void
.end method
