.class Lcom/tencent/qnet/ui/AppManager$2$1;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/AppManager$2;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qnet/ui/AppManager$2;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/AppManager$2;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/tencent/qnet/ui/AppManager$2$1;->this$1:Lcom/tencent/qnet/ui/AppManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/tencent/qnet/ui/AppManager$2$1;->this$1:Lcom/tencent/qnet/ui/AppManager$2;

    iget-object p1, p1, Lcom/tencent/qnet/ui/AppManager$2;->this$0:Lcom/tencent/qnet/ui/AppManager;

    invoke-static {p1}, Lcom/tencent/qnet/ui/AppManager;->access$300(Lcom/tencent/qnet/ui/AppManager;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
