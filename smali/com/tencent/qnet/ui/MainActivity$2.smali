.class Lcom/tencent/qnet/ui/MainActivity$2;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/MainActivity;->initSyncHandler()V
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

    .line 327
    iput-object p1, p0, Lcom/tencent/qnet/ui/MainActivity$2;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 329
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 331
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 332
    sget-object v1, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->MS_NET_PROPOSAL_LOADED:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    invoke-virtual {v1}, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 334
    iget-object p1, p0, Lcom/tencent/qnet/ui/MainActivity$2;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-static {p1}, Lcom/tencent/qnet/ui/MainActivity;->access$000(Lcom/tencent/qnet/ui/MainActivity;)V

    goto :goto_0

    .line 335
    :cond_0
    sget-object v1, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->MS_NET_PROPOSAL_LOAD_FAILED:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    invoke-virtual {v1}, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 336
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity$2;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-static {v0, p1}, Lcom/tencent/qnet/ui/MainActivity;->access$100(Lcom/tencent/qnet/ui/MainActivity;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
