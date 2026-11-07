.class Lcom/tencent/qnet/ui/profile/NetEditAdapter$3;
.super Ljava/lang/Object;
.source "NetEditAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/profile/NetEditAdapter;->createProtocolView(Landroid/view/ViewGroup;Lcom/tencent/qnet/ui/profile/NetEditBaseItem;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/profile/NetEditAdapter;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/profile/NetEditAdapter;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$3;->this$0:Lcom/tencent/qnet/ui/profile/NetEditAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 269
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/tencent/qnet/ui/profile/NetEditAdapter;

    .line 270
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 271
    invoke-virtual {v1, v0}, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;

    .line 273
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0038

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/qnet/ui/profile/NetEditAdapter$3$1;

    invoke-direct {v3, p0, v0}, Lcom/tencent/qnet/ui/profile/NetEditAdapter$3$1;-><init>(Lcom/tencent/qnet/ui/profile/NetEditAdapter$3;Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f10003a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 295
    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 296
    new-instance v1, Lcom/tencent/qnet/ui/profile/NetEditAdapter$3$2;

    invoke-direct {v1, p0, v0}, Lcom/tencent/qnet/ui/profile/NetEditAdapter$3$2;-><init>(Lcom/tencent/qnet/ui/profile/NetEditAdapter$3;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 315
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
