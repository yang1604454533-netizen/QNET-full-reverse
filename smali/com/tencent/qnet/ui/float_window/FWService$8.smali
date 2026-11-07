.class Lcom/tencent/qnet/ui/float_window/FWService$8;
.super Ljava/lang/Object;
.source "FWService.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/float_window/FWService;->onProfileChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/float_window/FWService;

.field final synthetic val$profileNameAdapter:Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/float_window/FWService;Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$8;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iput-object p2, p0, Lcom/tencent/qnet/ui/float_window/FWService$8;->val$profileNameAdapter:Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;

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

    .line 477
    invoke-static {}, Lcom/tencent/qnet/profile/ProposalManager;->GetInstance()Lcom/tencent/qnet/profile/ProposalManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/tencent/qnet/profile/ProposalManager;->OnSelectedProfileChanged(IZ)V

    .line 478
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$8;->val$profileNameAdapter:Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;

    invoke-virtual {p1, p3}, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->setSelectPosition(I)V

    .line 479
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$8;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-static {p1, p3}, Lcom/tencent/qnet/ui/float_window/FWService;->access$600(Lcom/tencent/qnet/ui/float_window/FWService;I)V

    return-void
.end method
