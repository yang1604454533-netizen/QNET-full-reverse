.class Lcom/tencent/qnet/ui/profile/NetEditAdapter$1$2;
.super Ljava/lang/Object;
.source "NetEditAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/profile/NetEditAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qnet/ui/profile/NetEditAdapter$1;

.field final synthetic val$drop:I

.field final synthetic val$pass:I


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/profile/NetEditAdapter$1;II)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$1$2;->this$1:Lcom/tencent/qnet/ui/profile/NetEditAdapter$1;

    iput p2, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$1$2;->val$pass:I

    iput p3, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$1$2;->val$drop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 6

    .line 155
    check-cast p1, Landroid/app/AlertDialog;

    const v0, 0x7f090046

    .line 156
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f090044

    .line 157
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v1, "%d"

    const/4 v2, 0x1

    .line 159
    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$1$2;->val$pass:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "%d"

    .line 160
    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$1$2;->val$drop:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$1$2;->this$1:Lcom/tencent/qnet/ui/profile/NetEditAdapter$1;

    iget-object p1, p1, Lcom/tencent/qnet/ui/profile/NetEditAdapter$1;->this$0:Lcom/tencent/qnet/ui/profile/NetEditAdapter;

    invoke-static {p1}, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->access$000(Lcom/tencent/qnet/ui/profile/NetEditAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 166
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    return-void
.end method
