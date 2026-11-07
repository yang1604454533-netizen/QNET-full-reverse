.class Lcom/tencent/qnet/ui/profile/NetEditActivity$1;
.super Ljava/lang/Object;
.source "NetEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/profile/NetEditActivity;->onBackPressed()V
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

    .line 56
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity$1;->this$0:Lcom/tencent/qnet/ui/profile/NetEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity$1;->this$0:Lcom/tencent/qnet/ui/profile/NetEditActivity;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->finish()V

    return-void
.end method
