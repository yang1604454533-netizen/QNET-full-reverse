.class Lcom/tencent/qnet/ui/login/activity/WetestMainActivity$1;
.super Ljava/lang/Object;
.source "WetestMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity$1;->this$0:Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 37
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity$1;->this$0:Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;

    invoke-static {p1}, Lcom/tencent/qnet/ui/login/manager/LoginManager;->logOut(Landroid/content/Context;)V

    .line 38
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity$1;->this$0:Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;

    const-class v1, Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity$1;->this$0:Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;

    invoke-virtual {v0, p1}, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 41
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity$1;->this$0:Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;->finish()V

    return-void
.end method
