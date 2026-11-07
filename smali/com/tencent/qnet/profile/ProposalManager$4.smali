.class Lcom/tencent/qnet/profile/ProposalManager$4;
.super Ljava/lang/Thread;
.source "ProposalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/profile/ProposalManager;->EditProposal(Lcom/tencent/qnet/net/NetProfile;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/profile/ProposalManager;

.field final synthetic val$proposalToSave:Lcom/tencent/qnet/net/NetProfile;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/profile/ProposalManager;Lcom/tencent/qnet/net/NetProfile;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/tencent/qnet/profile/ProposalManager$4;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    iput-object p2, p0, Lcom/tencent/qnet/profile/ProposalManager$4;->val$proposalToSave:Lcom/tencent/qnet/net/NetProfile;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager$4;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    invoke-static {v0}, Lcom/tencent/qnet/profile/ProposalManager;->access$100(Lcom/tencent/qnet/profile/ProposalManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager$4;->val$proposalToSave:Lcom/tencent/qnet/net/NetProfile;

    invoke-static {v0, v1}, Lcom/tencent/qnet/profile/PersonalNetProposal;->UpdateProposalToServer(Ljava/lang/String;Lcom/tencent/qnet/net/NetProfile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    sget-object v0, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed To Update Remote Proposal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
