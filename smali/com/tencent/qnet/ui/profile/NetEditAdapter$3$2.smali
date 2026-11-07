.class Lcom/tencent/qnet/ui/profile/NetEditAdapter$3$2;
.super Ljava/lang/Object;
.source "NetEditAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/profile/NetEditAdapter$3;Ljava/lang/String;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$3$2;->this$1:Lcom/tencent/qnet/ui/profile/NetEditAdapter$3;

    iput-object p2, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$3$2;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 6

    .line 299
    check-cast p1, Landroid/app/AlertDialog;

    const v0, 0x7f090098

    .line 300
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 301
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f030000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 303
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 304
    new-instance v3, Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 305
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 306
    aget-object v4, v1, v2

    iget-object v5, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$3$2;->val$value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 308
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 310
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
