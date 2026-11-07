.class Lcom/tencent/qnet/ui/profile/NetEditAdapter$2$2;
.super Ljava/lang/Object;
.source "NetEditAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/profile/NetEditAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qnet/ui/profile/NetEditAdapter$2;

.field final synthetic val$iValue:I


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/profile/NetEditAdapter$2;I)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2$2;->this$1:Lcom/tencent/qnet/ui/profile/NetEditAdapter$2;

    iput p2, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2$2;->val$iValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5

    .line 231
    check-cast p1, Landroid/app/AlertDialog;

    const v0, 0x7f090043

    .line 232
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v0, "%d"

    const/4 v1, 0x1

    .line 234
    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2$2;->val$iValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2$2;->this$1:Lcom/tencent/qnet/ui/profile/NetEditAdapter$2;

    iget-object v0, v0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2;->this$0:Lcom/tencent/qnet/ui/profile/NetEditAdapter;

    invoke-static {v0}, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->access$000(Lcom/tencent/qnet/ui/profile/NetEditAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 240
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    return-void
.end method
