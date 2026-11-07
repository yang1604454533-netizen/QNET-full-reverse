.class Lcom/tencent/qnet/ui/float_window/FWService$7;
.super Ljava/lang/Object;
.source "FWService.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/float_window/FWService;->createHelperWnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/float_window/FWService;

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/float_window/FWService;Landroid/view/WindowManager;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$7;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iput-object p2, p0, Lcom/tencent/qnet/ui/float_window/FWService$7;->val$wm:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 431
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 432
    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService$7;->val$wm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 433
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 434
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 435
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$7;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object v2, p0, Lcom/tencent/qnet/ui/float_window/FWService$7;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object v2, v2, Lcom/tencent/qnet/ui/float_window/FWService;->m_helperWnd:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/tencent/qnet/ui/float_window/FWService;->access$102(Lcom/tencent/qnet/ui/float_window/FWService;Z)Z

    return-void
.end method
