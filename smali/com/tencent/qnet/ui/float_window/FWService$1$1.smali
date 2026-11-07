.class Lcom/tencent/qnet/ui/float_window/FWService$1$1;
.super Ljava/lang/Object;
.source "FWService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/float_window/FWService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qnet/ui/float_window/FWService$1;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/float_window/FWService$1;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$1$1;->this$1:Lcom/tencent/qnet/ui/float_window/FWService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 88
    sget-object v0, Lcom/tencent/qnet/core/LocalVpnService;->Instance:Lcom/tencent/qnet/core/LocalVpnService;

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$1$1;->this$1:Lcom/tencent/qnet/ui/float_window/FWService$1;

    iget-object v0, v0, Lcom/tencent/qnet/ui/float_window/FWService$1;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object v0, v0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window_info:Landroid/widget/LinearLayout;

    const v1, 0x7f0900f2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    sget-object v1, Lcom/tencent/qnet/core/LocalVpnService;->Instance:Lcom/tencent/qnet/core/LocalVpnService;

    invoke-virtual {v1}, Lcom/tencent/qnet/core/LocalVpnService;->getRealPing()I

    move-result v1

    .line 92
    sget-object v2, Lcom/tencent/qnet/core/LocalVpnService;->Instance:Lcom/tencent/qnet/core/LocalVpnService;

    invoke-virtual {v2}, Lcom/tencent/qnet/core/LocalVpnService;->getPing()I

    move-result v2

    if-lez v2, :cond_4

    if-lez v1, :cond_4

    add-int/lit8 v2, v2, -0x3

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 97
    invoke-static {}, Lcom/tencent/qnet/net/NetworkConfig;->Instnace()Lcom/tencent/qnet/net/NetworkConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/tencent/qnet/net/NetworkConfig;->getDelay(Z)I

    move-result v3

    invoke-static {}, Lcom/tencent/qnet/net/NetworkConfig;->Instnace()Lcom/tencent/qnet/net/NetworkConfig;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/tencent/qnet/net/NetworkConfig;->getDelay(Z)I

    move-result v5

    add-int/2addr v3, v5

    if-ge v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    add-int/2addr v2, v1

    const-string v1, "%dms"

    .line 103
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x64

    if-ge v2, v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService$1$1;->this$1:Lcom/tencent/qnet/ui/float_window/FWService$1;

    iget-object v1, v1, Lcom/tencent/qnet/ui/float_window/FWService$1;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0xc8

    if-ge v2, v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService$1$1;->this$1:Lcom/tencent/qnet/ui/float_window/FWService$1;

    iget-object v1, v1, Lcom/tencent/qnet/ui/float_window/FWService$1;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService$1$1;->this$1:Lcom/tencent/qnet/ui/float_window/FWService$1;

    iget-object v1, v1, Lcom/tencent/qnet/ui/float_window/FWService$1;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_1
    return-void
.end method
