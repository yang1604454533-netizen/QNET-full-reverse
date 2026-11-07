.class Lcom/tencent/qnet/profile/ProposalManager$2;
.super Ljava/lang/Thread;
.source "ProposalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/profile/ProposalManager;->DownLoadMyProposals()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/profile/ProposalManager;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/profile/ProposalManager;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/tencent/qnet/profile/ProposalManager$2;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 160
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager$2;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/qnet/profile/ProposalManager;->access$002(Lcom/tencent/qnet/profile/ProposalManager;Z)Z

    .line 161
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager$2;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    invoke-static {v0}, Lcom/tencent/qnet/profile/ProposalManager;->access$100(Lcom/tencent/qnet/profile/ProposalManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qnet/profile/PersonalNetProposal;->QueryRemoteProposal(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 162
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/tencent/qnet/profile/ProposalManager$2;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    invoke-static {v2}, Lcom/tencent/qnet/profile/ProposalManager;->access$200(Lcom/tencent/qnet/profile/ProposalManager;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/tencent/qnet/profile/ProposalManager$2;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/tencent/qnet/profile/ProposalManager;->access$202(Lcom/tencent/qnet/profile/ProposalManager;Ljava/util/Map;)Ljava/util/Map;

    .line 169
    iget-object v2, p0, Lcom/tencent/qnet/profile/ProposalManager$2;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    invoke-static {v2, v0}, Lcom/tencent/qnet/profile/ProposalManager;->access$202(Lcom/tencent/qnet/profile/ProposalManager;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 174
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 175
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 177
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qnet/net/NetProfile;

    invoke-virtual {v2}, Lcom/tencent/qnet/net/NetProfile;->clone()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v2

    .line 178
    iget-object v3, v2, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    .line 179
    iget-object v4, p0, Lcom/tencent/qnet/profile/ProposalManager$2;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    invoke-static {v4}, Lcom/tencent/qnet/profile/ProposalManager;->access$200(Lcom/tencent/qnet/profile/ProposalManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 180
    iget-object v4, p0, Lcom/tencent/qnet/profile/ProposalManager$2;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    invoke-static {v4}, Lcom/tencent/qnet/profile/ProposalManager;->access$200(Lcom/tencent/qnet/profile/ProposalManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qnet/net/NetProfile;

    .line 181
    iget-object v4, v4, Lcom/tencent/qnet/net/NetProfile;->UpdateTime:Ljava/util/Date;

    iget-object v5, v2, Lcom/tencent/qnet/net/NetProfile;->UpdateTime:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-gez v4, :cond_2

    .line 182
    iget-object v4, p0, Lcom/tencent/qnet/profile/ProposalManager$2;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    invoke-static {v4}, Lcom/tencent/qnet/profile/ProposalManager;->access$200(Lcom/tencent/qnet/profile/ProposalManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    :cond_3
    iget-object v4, p0, Lcom/tencent/qnet/profile/ProposalManager$2;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    invoke-static {v4}, Lcom/tencent/qnet/profile/ProposalManager;->access$200(Lcom/tencent/qnet/profile/ProposalManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    sget-object v2, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Exception When Get Remote Proposal"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager$2;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    invoke-static {v0, v1}, Lcom/tencent/qnet/profile/ProposalManager;->access$302(Lcom/tencent/qnet/profile/ProposalManager;Z)Z

    .line 196
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager$2;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qnet/profile/ProposalManager;->access$002(Lcom/tencent/qnet/profile/ProposalManager;Z)Z

    .line 198
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager$2;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    invoke-virtual {v0}, Lcom/tencent/qnet/profile/ProposalManager;->GetProposal()Ljava/util/List;

    move-result-object v0

    .line 200
    :try_start_1
    iget-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager$2;->this$0:Lcom/tencent/qnet/profile/ProposalManager;

    invoke-static {v1}, Lcom/tencent/qnet/profile/ProposalManager;->access$400(Lcom/tencent/qnet/profile/ProposalManager;)Lcom/tencent/qnet/common/XmlService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qnet/common/XmlService;->writeProposalParamsToCache(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 202
    :catch_1
    sget-object v0, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed To Write Remote Proposal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 206
    sget-object v1, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->MS_NET_PROPOSAL_LOADED:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    invoke-virtual {v1}, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 209
    invoke-static {}, Lcom/tencent/qnet/ui/MainActivity;->getMainActivity()Lcom/tencent/qnet/ui/MainActivity;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/tencent/qnet/ui/MainActivity;->getMainActivity()Lcom/tencent/qnet/ui/MainActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/qnet/ui/MainActivity;->m_profile_sync_handler:Landroid/os/Handler;

    if-eqz v1, :cond_6

    .line 210
    invoke-static {}, Lcom/tencent/qnet/ui/MainActivity;->getMainActivity()Lcom/tencent/qnet/ui/MainActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/qnet/ui/MainActivity;->m_profile_sync_handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 163
    :cond_5
    :goto_3
    sget-object v0, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed To Get Proposal From Remote Or Remote Has No Proposal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    return-void
.end method
