.class Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable$1;
.super Ljava/lang/Object;
.source "WebQQLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable$1;->this$1:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable$1;->this$1:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;

    iget-object v0, v0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-static {v0}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->access$200(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable$1;->this$1:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;

    iget-object v1, v1, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    iget-object v2, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable$1;->this$1:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;

    iget-object v2, v2, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-static {v2}, Lcom/tencent/qnet/ui/login/manager/LoginManager;->autoLogin(Landroid/content/Context;)Lcom/tencent/qnet/ui/login/model/ConnInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->access$302(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;Lcom/tencent/qnet/ui/login/model/ConnInfo;)Lcom/tencent/qnet/ui/login/model/ConnInfo;

    .line 224
    iget-object v1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable$1;->this$1:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;

    iget-object v1, v1, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-static {v1}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->access$300(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)Lcom/tencent/qnet/ui/login/model/ConnInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/login/model/ConnInfo;->isSuccess()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 226
    iget-object v1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable$1;->this$1:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;

    iget-object v1, v1, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-static {v1}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->access$200(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
