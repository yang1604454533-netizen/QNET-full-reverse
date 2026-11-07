.class Lcom/tencent/qnet/ui/float_window/FWService$4;
.super Ljava/lang/Object;
.source "FWService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/float_window/FWService;->init_events()V
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

    .line 336
    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$4;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 339
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$4;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$4;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-static {v0}, Lcom/tencent/qnet/ui/float_window/FWService;->access$300(Lcom/tencent/qnet/ui/float_window/FWService;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/qnet/ui/float_window/FWService;->access$302(Lcom/tencent/qnet/ui/float_window/FWService;Z)Z

    .line 340
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$4;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$4;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-static {v0}, Lcom/tencent/qnet/ui/float_window/FWService;->access$300(Lcom/tencent/qnet/ui/float_window/FWService;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/tencent/qnet/ui/float_window/FWService;->access$400(Lcom/tencent/qnet/ui/float_window/FWService;Z)V

    .line 341
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$4;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object p1, p1, Lcom/tencent/qnet/ui/float_window/FWService;->m_img_start:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$4;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService$4;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-static {v1}, Lcom/tencent/qnet/ui/float_window/FWService;->access$300(Lcom/tencent/qnet/ui/float_window/FWService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08006f

    goto :goto_0

    :cond_0
    const v1, 0x7f080070

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/qnet/ui/float_window/FWService;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$4;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-static {p1}, Lcom/tencent/qnet/ui/float_window/FWService;->access$300(Lcom/tencent/qnet/ui/float_window/FWService;)Z

    move-result p1

    sput-boolean p1, Lcom/tencent/qnet/core/LocalVpnService;->IsActive:Z

    .line 344
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$4;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$4;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-static {v0}, Lcom/tencent/qnet/ui/float_window/FWService;->access$300(Lcom/tencent/qnet/ui/float_window/FWService;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f10003f

    goto :goto_1

    :cond_1
    const v0, 0x7f100040

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 345
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$4;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/float_window/FWService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 346
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
