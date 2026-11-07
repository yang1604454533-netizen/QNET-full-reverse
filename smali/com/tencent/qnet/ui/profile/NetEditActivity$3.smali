.class Lcom/tencent/qnet/ui/profile/NetEditActivity$3;
.super Ljava/lang/Object;
.source "NetEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/profile/NetEditActivity;->initNetProfileUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/profile/NetEditActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/profile/NetEditActivity;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity$3;->this$0:Lcom/tencent/qnet/ui/profile/NetEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity$3;->this$0:Lcom/tencent/qnet/ui/profile/NetEditActivity;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->access$000(Lcom/tencent/qnet/ui/profile/NetEditActivity;Landroid/content/Context;)V

    return-void
.end method
