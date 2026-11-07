.class Lcom/tencent/open/a/g$1;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/a/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/a/g;


# direct methods
.method constructor <init>(Lcom/tencent/open/a/g;Landroid/os/Looper;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/tencent/open/a/g$1;->a:Lcom/tencent/open/a/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/open/a/g$1;->a:Lcom/tencent/open/a/g;

    invoke-virtual {v0}, Lcom/tencent/open/a/g;->e()V

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/open/a/g$1;->a:Lcom/tencent/open/a/g;

    invoke-virtual {v0}, Lcom/tencent/open/a/g;->b()V

    .line 137
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
