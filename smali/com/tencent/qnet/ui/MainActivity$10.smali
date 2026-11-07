.class Lcom/tencent/qnet/ui/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/MainActivity;->initNetTemplateUI()V
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

    .line 631
    iput-object p1, p0, Lcom/tencent/qnet/ui/MainActivity$10;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 635
    iget-object p1, p0, Lcom/tencent/qnet/ui/MainActivity$10;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    .line 637
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/qnet/ui/profile/NetEditActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ID"

    const-string v2, ""

    .line 638
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Select"

    const/4 v2, 0x0

    .line 639
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x927

    .line 640
    invoke-virtual {p1, v0, v1}, Lcom/tencent/qnet/ui/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
