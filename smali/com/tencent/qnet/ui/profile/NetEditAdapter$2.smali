.class Lcom/tencent/qnet/ui/profile/NetEditAdapter$2;
.super Ljava/lang/Object;
.source "NetEditAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/profile/NetEditAdapter;->createEditView(Landroid/view/ViewGroup;Lcom/tencent/qnet/ui/profile/NetEditBaseItem;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/profile/NetEditAdapter;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/profile/NetEditAdapter;Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2;->this$0:Lcom/tencent/qnet/ui/profile/NetEditAdapter;

    iput-object p2, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 195
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/tencent/qnet/ui/profile/NetEditAdapter;

    .line 196
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 197
    invoke-virtual {v1, v0}, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qnet/ui/profile/NetEditTextItem;

    .line 199
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    iget-object v2, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2$1;

    invoke-direct {v3, p0, v0}, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2$1;-><init>(Lcom/tencent/qnet/ui/profile/NetEditAdapter$2;Lcom/tencent/qnet/ui/profile/NetEditTextItem;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f10003a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 227
    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetEditTextItem;->getValue()I

    move-result v0

    .line 228
    new-instance v1, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2$2;

    invoke-direct {v1, p0, v0}, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2$2;-><init>(Lcom/tencent/qnet/ui/profile/NetEditAdapter$2;I)V

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 245
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
