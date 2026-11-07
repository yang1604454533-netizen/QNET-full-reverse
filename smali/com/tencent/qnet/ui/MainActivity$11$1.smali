.class Lcom/tencent/qnet/ui/MainActivity$11$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/MainActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qnet/ui/MainActivity$11;

.field final synthetic val$minVersion:I


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/MainActivity$11;I)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcom/tencent/qnet/ui/MainActivity$11$1;->this$1:Lcom/tencent/qnet/ui/MainActivity$11;

    iput p2, p0, Lcom/tencent/qnet/ui/MainActivity$11$1;->val$minVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 758
    :try_start_0
    iget v0, p0, Lcom/tencent/qnet/ui/MainActivity$11$1;->val$minVersion:I

    if-lez v0, :cond_2

    .line 759
    invoke-static {}, Lcom/tencent/qnet/global/QnetApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qnet/common/SystemUtil;->getAppVersionInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 760
    iget v1, p0, Lcom/tencent/qnet/ui/MainActivity$11$1;->val$minVersion:I

    if-le v1, v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity$11$1;->this$1:Lcom/tencent/qnet/ui/MainActivity$11;

    iget-object v0, v0, Lcom/tencent/qnet/ui/MainActivity$11;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    iget-object v1, p0, Lcom/tencent/qnet/ui/MainActivity$11$1;->this$1:Lcom/tencent/qnet/ui/MainActivity$11;

    iget-object v1, v1, Lcom/tencent/qnet/ui/MainActivity$11;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qnet/ui/MainActivity;->access$500(Lcom/tencent/qnet/ui/MainActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 763
    :cond_0
    invoke-static {}, Lcom/tencent/qnet/profile/ProposalManager;->GetInstance()Lcom/tencent/qnet/profile/ProposalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qnet/profile/ProposalManager;->IsProposalLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 764
    invoke-static {}, Lcom/tencent/qnet/profile/ProposalManager;->GetInstance()Lcom/tencent/qnet/profile/ProposalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qnet/profile/ProposalManager;->LoadLocalProposal()V

    .line 766
    :cond_1
    invoke-static {}, Lcom/tencent/qnet/global/GlobalSettings;->getInstance()Lcom/tencent/qnet/global/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qnet/global/GlobalSettings;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-static {}, Lcom/tencent/qnet/profile/ProposalManager;->GetInstance()Lcom/tencent/qnet/profile/ProposalManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qnet/profile/ProposalManager;->SetProposalUser(Ljava/lang/String;)V

    .line 768
    invoke-static {}, Lcom/tencent/qnet/profile/ProposalManager;->GetInstance()Lcom/tencent/qnet/profile/ProposalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qnet/profile/ProposalManager;->DownLoadMyProposals()V

    goto :goto_0

    .line 773
    :cond_2
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity$11$1;->this$1:Lcom/tencent/qnet/ui/MainActivity$11;

    iget-object v0, v0, Lcom/tencent/qnet/ui/MainActivity$11;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    iget-object v1, p0, Lcom/tencent/qnet/ui/MainActivity$11$1;->this$1:Lcom/tencent/qnet/ui/MainActivity$11;

    iget-object v1, v1, Lcom/tencent/qnet/ui/MainActivity$11;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qnet/ui/MainActivity;->access$500(Lcom/tencent/qnet/ui/MainActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 778
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
