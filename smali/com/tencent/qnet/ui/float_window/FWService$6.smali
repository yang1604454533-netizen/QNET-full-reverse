.class Lcom/tencent/qnet/ui/float_window/FWService$6;
.super Ljava/lang/Object;
.source "FWService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/float_window/FWService;->init_events_info()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private m_last_click_time:J

.field private m_pos_x:I

.field private m_pos_y:I

.field private m_x:I

.field private m_y:I

.field final synthetic this$0:Lcom/tencent/qnet/ui/float_window/FWService;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/float_window/FWService;)V
    .locals 2

    .line 385
    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 387
    iput-wide v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->m_last_click_time:J

    const/4 p1, 0x0

    .line 389
    iput p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->m_x:I

    .line 390
    iput p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->m_y:I

    .line 391
    iput p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->m_pos_x:I

    .line 392
    iput p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->m_pos_y:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 397
    iget-wide v2, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->m_last_click_time:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 398
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->m_x:I

    .line 399
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->m_y:I

    .line 400
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object p1, p1, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params_info:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->m_pos_x:I

    .line 401
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object p1, p1, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params_info:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->m_pos_y:I

    .line 403
    :cond_0
    iput-wide v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->m_last_click_time:J

    .line 405
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object p1, p1, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params_info:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->m_pos_x:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->m_x:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 406
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object p1, p1, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params_info:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->m_pos_y:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr v0, p2

    iget p2, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->m_y:I

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 407
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object p1, p1, Lcom/tencent/qnet/ui/float_window/FWService;->m_window_manager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object p2, p2, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window_info:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$6;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object v0, v0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params_info:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    return p1
.end method
