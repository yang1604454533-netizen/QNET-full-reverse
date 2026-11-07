.class Lcom/tencent/qnet/ui/AppManager$2;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/AppManager;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/util/List<",
        "Lcom/tencent/qnet/ui/AppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/AppManager;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/AppManager;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/tencent/qnet/ui/AppManager$2;->this$0:Lcom/tencent/qnet/ui/AppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppManager$2;->this$0:Lcom/tencent/qnet/ui/AppManager;

    invoke-static {v0}, Lcom/tencent/qnet/ui/AppManager;->access$100(Lcom/tencent/qnet/ui/AppManager;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qnet/ui/AppManager$2;->this$0:Lcom/tencent/qnet/ui/AppManager;

    invoke-static {v1}, Lcom/tencent/qnet/ui/AppManager;->access$000(Lcom/tencent/qnet/ui/AppManager;)Lcom/tencent/qnet/ui/AppManagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 90
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppManager$2;->this$0:Lcom/tencent/qnet/ui/AppManager;

    invoke-static {v0}, Lcom/tencent/qnet/ui/AppManager;->access$200(Lcom/tencent/qnet/ui/AppManager;)Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qnet/ui/AppManager$2;->this$0:Lcom/tencent/qnet/ui/AppManager;

    invoke-static {v1}, Lcom/tencent/qnet/ui/AppManager;->access$100(Lcom/tencent/qnet/ui/AppManager;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 92
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppManager$2;->this$0:Lcom/tencent/qnet/ui/AppManager;

    invoke-static {v0}, Lcom/tencent/qnet/ui/AppManager;->access$100(Lcom/tencent/qnet/ui/AppManager;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAlpha(F)V

    .line 93
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppManager$2;->this$0:Lcom/tencent/qnet/ui/AppManager;

    invoke-static {v0}, Lcom/tencent/qnet/ui/AppManager;->access$100(Lcom/tencent/qnet/ui/AppManager;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppManager$2;->this$0:Lcom/tencent/qnet/ui/AppManager;

    invoke-static {v0}, Lcom/tencent/qnet/ui/AppManager;->access$100(Lcom/tencent/qnet/ui/AppManager;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 95
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppManager$2;->this$0:Lcom/tencent/qnet/ui/AppManager;

    invoke-static {v0}, Lcom/tencent/qnet/ui/AppManager;->access$300(Lcom/tencent/qnet/ui/AppManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/tencent/qnet/ui/AppManager$2$1;

    invoke-direct {v1, p0}, Lcom/tencent/qnet/ui/AppManager$2$1;-><init>(Lcom/tencent/qnet/ui/AppManager$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/AppManager$2;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/qnet/ui/AppInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
