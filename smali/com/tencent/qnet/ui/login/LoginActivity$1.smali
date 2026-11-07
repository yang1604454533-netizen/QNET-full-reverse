.class Lcom/tencent/qnet/ui/login/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/login/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/login/LoginActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/LoginActivity$1;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 71
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 72
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/LoginActivity$1;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    const-class v1, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/LoginActivity$1;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/tencent/qnet/ui/login/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
