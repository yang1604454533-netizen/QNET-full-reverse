.class Lcom/tencent/qnet/ui/profile/NetEditActivity$4;
.super Ljava/lang/Object;
.source "NetEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/profile/NetEditActivity;->initNetProfileUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/profile/NetEditActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/profile/NetEditActivity;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity$4;->this$0:Lcom/tencent/qnet/ui/profile/NetEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 187
    iget-object v1, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity$4;->this$0:Lcom/tencent/qnet/ui/profile/NetEditActivity;

    iget-boolean v1, v1, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_select:Z

    if-eqz v1, :cond_0

    .line 189
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity$4;->this$0:Lcom/tencent/qnet/ui/profile/NetEditActivity;

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100061

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100039

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/tencent/qnet/ui/profile/NetEditActivity$4$1;

    invoke-direct {v1, p0}, Lcom/tencent/qnet/ui/profile/NetEditActivity$4$1;-><init>(Lcom/tencent/qnet/ui/profile/NetEditActivity$4;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 201
    :cond_0
    invoke-static {}, Lcom/tencent/qnet/profile/ProposalManager;->GetInstance()Lcom/tencent/qnet/profile/ProposalManager;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity$4;->this$0:Lcom/tencent/qnet/ui/profile/NetEditActivity;

    iget-object v1, v1, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    iget-object v1, v1, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tencent/qnet/profile/ProposalManager;->DeleteProposal(Ljava/lang/String;)V

    .line 202
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "ID"

    .line 203
    iget-object v2, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity$4;->this$0:Lcom/tencent/qnet/ui/profile/NetEditActivity;

    iget-object v2, v2, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    iget-object v2, v2, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 204
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 205
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
