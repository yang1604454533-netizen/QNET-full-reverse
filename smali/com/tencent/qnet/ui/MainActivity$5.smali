.class Lcom/tencent/qnet/ui/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/MainActivity;->initAppManager()V
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

    .line 387
    iput-object p1, p0, Lcom/tencent/qnet/ui/MainActivity$5;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 390
    sget-boolean v0, Lcom/tencent/qnet/core/LocalVpnService;->IsRunning:Z

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/qnet/ui/MainActivity$5;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    iget-object v1, p0, Lcom/tencent/qnet/ui/MainActivity$5;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100039

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/tencent/qnet/ui/MainActivity$5$1;

    invoke-direct {v1, p0}, Lcom/tencent/qnet/ui/MainActivity$5$1;-><init>(Lcom/tencent/qnet/ui/MainActivity$5;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 401
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 404
    :cond_0
    iget-object p1, p0, Lcom/tencent/qnet/ui/MainActivity$5;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qnet/ui/MainActivity$5;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    const-class v2, Lcom/tencent/qnet/ui/AppManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x821

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qnet/ui/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
