.class Lcom/tencent/qnet/ui/profile/NetEditAdapter$3$1;
.super Ljava/lang/Object;
.source "NetEditAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/profile/NetEditAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qnet/ui/profile/NetEditAdapter$3;

.field final synthetic val$item:Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/profile/NetEditAdapter$3;Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$3$1;->this$1:Lcom/tencent/qnet/ui/profile/NetEditAdapter$3;

    iput-object p2, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$3$1;->val$item:Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 279
    move-object p2, p1

    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f090098

    .line 280
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 281
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 282
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    .line 283
    invoke-virtual {p2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 286
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$3$1;->val$item:Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;

    invoke-virtual {v0, p2}, Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;->setItemValue(Ljava/lang/String;)V

    .line 287
    iget-object p2, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$3$1;->val$item:Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;

    invoke-virtual {p2}, Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090042

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 288
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$3$1;->val$item:Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method
