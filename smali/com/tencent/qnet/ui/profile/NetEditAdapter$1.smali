.class Lcom/tencent/qnet/ui/profile/NetEditAdapter$1;
.super Ljava/lang/Object;
.source "NetEditAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/profile/NetEditAdapter;->createConDropView(Landroid/view/ViewGroup;Lcom/tencent/qnet/ui/profile/NetEditBaseItem;)Landroid/view/View;
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

    .line 117
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter$1;->this$0:Lcom/tencent/qnet/ui/profile/NetEditAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 122
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/tencent/qnet/ui/profile/NetEditAdapter;

    .line 123
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 124
    invoke-virtual {v1, v0}, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qnet/ui/profile/NetEditConDropItem;

    .line 126
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetEditConDropItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0036

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/qnet/ui/profile/NetEditAdapter$1$1;

    invoke-direct {v3, p0, v0}, Lcom/tencent/qnet/ui/profile/NetEditAdapter$1$1;-><init>(Lcom/tencent/qnet/ui/profile/NetEditAdapter$1;Lcom/tencent/qnet/ui/profile/NetEditConDropItem;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f10003a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 150
    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetEditConDropItem;->getPass()I

    move-result v1

    .line 151
    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetEditConDropItem;->getDrop()I

    move-result v0

    .line 152
    new-instance v2, Lcom/tencent/qnet/ui/profile/NetEditAdapter$1$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/tencent/qnet/ui/profile/NetEditAdapter$1$2;-><init>(Lcom/tencent/qnet/ui/profile/NetEditAdapter$1;II)V

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 170
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
