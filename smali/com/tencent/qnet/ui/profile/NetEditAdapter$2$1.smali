.class Lcom/tencent/qnet/ui/profile/NetEditAdapter$2$1;
.super Ljava/lang/Object;
.source "NetEditAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$item:Lcom/tencent/qnet/ui/profile/NetEditTextItem;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/profile/NetEditAdapter$2;Lcom/tencent/qnet/ui/profile/NetEditTextItem;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2$1;->this$1:Lcom/tencent/qnet/ui/profile/NetEditAdapter$2;

    iput-object p2, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2$1;->val$item:Lcom/tencent/qnet/ui/profile/NetEditTextItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 205
    move-object p2, p1

    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f090043

    .line 206
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 210
    :try_start_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 213
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2$1;->val$item:Lcom/tencent/qnet/ui/profile/NetEditTextItem;

    invoke-virtual {v0, p2}, Lcom/tencent/qnet/ui/profile/NetEditTextItem;->setItemValue(I)V

    .line 217
    iget-object p2, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2$1;->val$item:Lcom/tencent/qnet/ui/profile/NetEditTextItem;

    invoke-virtual {p2}, Lcom/tencent/qnet/ui/profile/NetEditTextItem;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090042

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2$1;->val$item:Lcom/tencent/qnet/ui/profile/NetEditTextItem;

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetEditTextItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method
