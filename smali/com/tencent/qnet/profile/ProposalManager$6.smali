.class Lcom/tencent/qnet/profile/ProposalManager$6;
.super Ljava/lang/Thread;
.source "ProposalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/profile/ProposalManager;->DeleteProposal(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/profile/ProposalManager;

.field final synthetic val$proposalIDToDel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/profile/ProposalManager;Ljava/lang/String;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/tencent/qnet/profile/ProposalManager$6;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    iput-object p2, p0, Lcom/tencent/qnet/profile/ProposalManager$6;->val$proposalIDToDel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager$6;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    invoke-static {v0}, Lcom/tencent/qnet/profile/ProposalManager;->access$100(Lcom/tencent/qnet/profile/ProposalManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager$6;->val$proposalIDToDel:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/qnet/profile/PersonalNetProposal;->DeleteProposalToServer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    sget-object v0, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed To Del Remote Proposal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
