.class Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable$1;
.super Ljava/lang/Object;
.source "WebOALoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable$1;->this$1:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable$1;->this$1:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;

    iget-object v0, v0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;

    invoke-static {v0}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->access$200(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable$1;->this$1:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;

    iget-object v1, v1, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;

    iget-object v2, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable$1;->this$1:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;

    iget-object v2, v2, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;

    invoke-static {v2}, Lcom/tencent/qnet/ui/login/manager/LoginManager;->autoLogin(Landroid/content/Context;)Lcom/tencent/qnet/ui/login/model/ConnInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->access$302(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;Lcom/tencent/qnet/ui/login/model/ConnInfo;)Lcom/tencent/qnet/ui/login/model/ConnInfo;

    .line 215
    iget-object v1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable$1;->this$1:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;

    iget-object v1, v1, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;

    invoke-static {v1}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->access$300(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;)Lcom/tencent/qnet/ui/login/model/ConnInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/login/model/ConnInfo;->isSuccess()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 216
    iget-object v1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable$1;->this$1:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;

    iget-object v1, v1, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;

    invoke-static {v1}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->access$200(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
