.class Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$1;
.super Ljava/lang/Object;
.source "WebQQLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$1;->this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 63
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$1;->this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    const-class v1, Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$1;->this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-virtual {v0, p1}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$1;->this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->finish()V

    return-void
.end method
