.class Lcom/tencent/qnet/ui/float_window/FWService$5;
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

    .line 351
    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$5;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 354
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$5;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$5;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-static {v0}, Lcom/tencent/qnet/ui/float_window/FWService;->access$500(Lcom/tencent/qnet/ui/float_window/FWService;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/qnet/ui/float_window/FWService;->access$502(Lcom/tencent/qnet/ui/float_window/FWService;Z)Z

    .line 355
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$5;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object p1, p1, Lcom/tencent/qnet/ui/float_window/FWService;->m_img_expand:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$5;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService$5;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-static {v1}, Lcom/tencent/qnet/ui/float_window/FWService;->access$500(Lcom/tencent/qnet/ui/float_window/FWService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080067

    goto :goto_0

    :cond_0
    const v1, 0x7f080068

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/qnet/ui/float_window/FWService;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$5;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-static {p1}, Lcom/tencent/qnet/ui/float_window/FWService;->access$500(Lcom/tencent/qnet/ui/float_window/FWService;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 357
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x33

    .line 358
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 359
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 360
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, -0x2

    .line 363
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 364
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 365
    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService$5;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/float_window/FWService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 367
    iget-object v2, p0, Lcom/tencent/qnet/ui/float_window/FWService$5;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    const v3, 0x7f0c003a

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/tencent/qnet/ui/float_window/FWService;->m_expand:Landroid/widget/LinearLayout;

    .line 368
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$5;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/float_window/FWService;->onProfileChanged()V

    .line 370
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$5;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object v0, v0, Lcom/tencent/qnet/ui/float_window/FWService;->m_root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService$5;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object v1, v1, Lcom/tencent/qnet/ui/float_window/FWService;->m_expand:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 372
    :cond_1
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$5;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object p1, p1, Lcom/tencent/qnet/ui/float_window/FWService;->m_expand:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 373
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$5;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object p1, p1, Lcom/tencent/qnet/ui/float_window/FWService;->m_root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService$5;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object v1, v1, Lcom/tencent/qnet/ui/float_window/FWService;->m_expand:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 374
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$5;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iput-object v0, p1, Lcom/tencent/qnet/ui/float_window/FWService;->m_expand:Landroid/widget/LinearLayout;

    :cond_2
    :goto_1
    return-void
.end method
