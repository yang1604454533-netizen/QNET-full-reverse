.class Lcom/tencent/qnet/ui/MainActivity$11;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/MainActivity;->checkVersion()V
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

    .line 748
    iput-object p1, p0, Lcom/tencent/qnet/ui/MainActivity$11;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 752
    invoke-static {}, Lcom/tencent/qnet/global/ServerHelper;->getIPArrFromHost()[I

    move-result-object v0

    sput-object v0, Lcom/tencent/qnet/global/ServerHelper;->QNET_SERVER_IP:[I

    .line 753
    invoke-static {}, Lcom/tencent/qnet/global/ServerHelper;->getQnetMinVersion()I

    move-result v0

    .line 754
    iget-object v1, p0, Lcom/tencent/qnet/ui/MainActivity$11;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    new-instance v2, Lcom/tencent/qnet/ui/MainActivity$11$1;

    invoke-direct {v2, p0, v0}, Lcom/tencent/qnet/ui/MainActivity$11$1;-><init>(Lcom/tencent/qnet/ui/MainActivity$11;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/qnet/ui/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
