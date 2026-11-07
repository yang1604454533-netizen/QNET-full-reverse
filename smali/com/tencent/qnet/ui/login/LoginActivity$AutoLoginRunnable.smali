.class Lcom/tencent/qnet/ui/login/LoginActivity$AutoLoginRunnable;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/ui/login/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoLoginRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/login/LoginActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/LoginActivity$AutoLoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/LoginActivity$AutoLoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-static {v0}, Lcom/tencent/qnet/ui/login/manager/LoginManager;->autoLogin(Landroid/content/Context;)Lcom/tencent/qnet/ui/login/model/ConnInfo;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/tencent/qnet/ui/login/model/ConnInfo;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/tencent/qnet/ui/login/LoginActivity$AutoLoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/login/model/ConnInfo;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qnet/ui/login/manager/LoginManager;->autoLoginSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/LoginActivity$AutoLoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/login/LoginActivity;->finish()V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/LoginActivity$AutoLoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    iget-object v1, p0, Lcom/tencent/qnet/ui/login/LoginActivity$AutoLoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-static {v1}, Lcom/tencent/qnet/ui/login/LoginActivity;->access$000(Lcom/tencent/qnet/ui/login/LoginActivity;)Lcom/tencent/tauth/Tencent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qnet/ui/login/manager/LoginManager;->isAutoQQConnectLogin(Landroid/content/Context;Lcom/tencent/tauth/Tencent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/LoginActivity$AutoLoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/login/LoginActivity;->startMainActivity()V

    :cond_1
    :goto_0
    return-void
.end method
