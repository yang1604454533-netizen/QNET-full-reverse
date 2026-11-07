.class Lcom/tencent/qnet/ui/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/MainActivity;->showNormalDialog(Ljava/lang/String;)V
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

    .line 362
    iput-object p1, p0, Lcom/tencent/qnet/ui/MainActivity$3;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 366
    iget-object p1, p0, Lcom/tencent/qnet/ui/MainActivity$3;->this$0:Lcom/tencent/qnet/ui/MainActivity;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/MainActivity;->finishAndRemoveTask()V

    return-void
.end method
