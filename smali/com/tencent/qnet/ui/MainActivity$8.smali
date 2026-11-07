.class Lcom/tencent/qnet/ui/MainActivity$8;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/MainActivity;->startVPNService()V
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

    .line 546
    iput-object p1, p0, Lcom/tencent/qnet/ui/MainActivity$8;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xbb8

    .line 550
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 552
    sget-object v1, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :goto_0
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity$8;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-static {v0}, Lcom/tencent/qnet/ui/MainActivity;->access$300(Lcom/tencent/qnet/ui/MainActivity;)Lcom/tencent/qnet/ui/profile/NetProfileItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getProfile()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qnet/global/ServerHelper;->reportStartInfo(Ljava/lang/String;)V

    return-void
.end method
