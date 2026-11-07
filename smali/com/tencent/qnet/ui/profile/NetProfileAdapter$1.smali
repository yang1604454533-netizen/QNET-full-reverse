.class Lcom/tencent/qnet/ui/profile/NetProfileAdapter$1;
.super Ljava/lang/Object;
.source "NetProfileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/profile/NetProfileAdapter;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/profile/NetProfileAdapter;Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetProfileAdapter$1;->this$0:Lcom/tencent/qnet/ui/profile/NetProfileAdapter;

    iput-object p2, p0, Lcom/tencent/qnet/ui/profile/NetProfileAdapter$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetProfileAdapter$1;->this$0:Lcom/tencent/qnet/ui/profile/NetProfileAdapter;

    invoke-static {v0}, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->access$000(Lcom/tencent/qnet/ui/profile/NetProfileAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tencent/qnet/ui/MainActivity;

    .line 114
    invoke-virtual {v0}, Lcom/tencent/qnet/ui/MainActivity;->getCurrentSelectConfigView()Landroid/view/View;

    move-result-object v1

    .line 115
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/qnet/ui/profile/NetEditActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "ID"

    .line 116
    iget-object v4, p0, Lcom/tencent/qnet/ui/profile/NetProfileAdapter$1;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Select"

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x927

    .line 119
    invoke-virtual {v0, v2, p1}, Lcom/tencent/qnet/ui/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
