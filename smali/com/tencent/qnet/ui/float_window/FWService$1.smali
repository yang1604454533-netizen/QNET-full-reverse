.class Lcom/tencent/qnet/ui/float_window/FWService$1;
.super Ljava/lang/Thread;
.source "FWService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/ui/float_window/FWService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/float_window/FWService;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/float_window/FWService;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$1;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 72
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$1;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/qnet/ui/float_window/FWService;->access$002(Lcom/tencent/qnet/ui/float_window/FWService;Z)Z

    const-wide/16 v0, 0x0

    .line 75
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tencent/qnet/ui/float_window/FWService$1;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-static {v2}, Lcom/tencent/qnet/ui/float_window/FWService;->access$000(Lcom/tencent/qnet/ui/float_window/FWService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qnet/ui/float_window/FWService$1;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object v2, v2, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window_info:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    sub-long v4, v2, v0

    const-wide/16 v6, 0x9c4

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 83
    :try_start_1
    invoke-static {}, Lcom/tencent/qnet/ui/MainActivity;->getMainActivity()Lcom/tencent/qnet/ui/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/tencent/qnet/ui/float_window/FWService$1$1;

    invoke-direct {v1, p0}, Lcom/tencent/qnet/ui/float_window/FWService$1$1;-><init>(Lcom/tencent/qnet/ui/float_window/FWService$1;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qnet/ui/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x64

    .line 115
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    move-wide v8, v0

    move-object v0, v2

    move-wide v2, v8

    .line 120
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    move-wide v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method
