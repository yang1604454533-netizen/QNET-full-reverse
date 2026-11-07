.class Lcom/tencent/qnet/profile/ProposalManager$1;
.super Ljava/lang/Object;
.source "ProposalManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/profile/ProposalManager;->OnSelectedProfileChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/profile/ProposalManager;

.field final synthetic val$ma:Lcom/tencent/qnet/ui/MainActivity;

.field final synthetic val$selectedID:Ljava/lang/String;

.field final synthetic val$update_fw:Z


# direct methods
.method constructor <init>(Lcom/tencent/qnet/profile/ProposalManager;Lcom/tencent/qnet/ui/MainActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/tencent/qnet/profile/ProposalManager$1;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    iput-object p2, p0, Lcom/tencent/qnet/profile/ProposalManager$1;->val$ma:Lcom/tencent/qnet/ui/MainActivity;

    iput-object p3, p0, Lcom/tencent/qnet/profile/ProposalManager$1;->val$selectedID:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/tencent/qnet/profile/ProposalManager$1;->val$update_fw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager$1;->val$ma:Lcom/tencent/qnet/ui/MainActivity;

    iget-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager$1;->val$selectedID:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tencent/qnet/profile/ProposalManager$1;->val$update_fw:Z

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qnet/ui/MainActivity;->profileChangedByFW(Ljava/lang/String;Z)V

    return-void
.end method
