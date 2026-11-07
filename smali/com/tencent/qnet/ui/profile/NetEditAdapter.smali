.class public Lcom/tencent/qnet/ui/profile/NetEditAdapter;
.super Landroid/widget/BaseAdapter;
.source "NetEditAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/qnet/ui/profile/NetEditBaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_enabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/qnet/ui/profile/NetEditBaseItem;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->m_enabled:Z

    .line 35
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->items:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qnet/ui/profile/NetEditAdapter;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method private createConDropView(Landroid/view/ViewGroup;Lcom/tencent/qnet/ui/profile/NetEditBaseItem;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 110
    move-object v0, p2

    check-cast v0, Lcom/tencent/qnet/ui/profile/NetEditConDropItem;

    .line 111
    iget-object v1, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c003d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f090045

    .line 112
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    invoke-virtual {p2}, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090042

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 115
    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetEditConDropItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    new-instance p2, Lcom/tencent/qnet/ui/profile/NetEditAdapter$1;

    invoke-direct {p2, p0}, Lcom/tencent/qnet/ui/profile/NetEditAdapter$1;-><init>(Lcom/tencent/qnet/ui/profile/NetEditAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private createEditView(Landroid/view/ViewGroup;Lcom/tencent/qnet/ui/profile/NetEditBaseItem;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 181
    check-cast p2, Lcom/tencent/qnet/ui/profile/NetEditTextItem;

    .line 182
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090045

    .line 183
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 184
    iget-object v1, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/tencent/qnet/ui/profile/NetEditTextItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->getStringResourceByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090042

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 187
    invoke-virtual {p2}, Lcom/tencent/qnet/ui/profile/NetEditTextItem;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    new-instance p2, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2;

    invoke-direct {p2, p0, v1}, Lcom/tencent/qnet/ui/profile/NetEditAdapter$2;-><init>(Lcom/tencent/qnet/ui/profile/NetEditAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private createProtocolView(Landroid/view/ViewGroup;Lcom/tencent/qnet/ui/profile/NetEditBaseItem;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 256
    move-object v0, p2

    check-cast v0, Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;

    .line 257
    iget-object v1, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c003f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f090045

    .line 258
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 259
    invoke-virtual {p2}, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090042

    .line 260
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 261
    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    new-instance p2, Lcom/tencent/qnet/ui/profile/NetEditAdapter$3;

    invoke-direct {p2, p0}, Lcom/tencent/qnet/ui/profile/NetEditAdapter$3;-><init>(Lcom/tencent/qnet/ui/profile/NetEditAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private getStringResourceByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "net_title_%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 329
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static setEnabledAll(Landroid/view/View;Z)V
    .locals 2

    .line 333
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 334
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 336
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 337
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 338
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 339
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->setEnabledAll(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 80
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;

    if-nez p2, :cond_3

    .line 84
    invoke-virtual {p1}, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->isTypeEdit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0, p3, p1}, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->createEditView(Landroid/view/ViewGroup;Lcom/tencent/qnet/ui/profile/NetEditBaseItem;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->isTypeProtocol()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-direct {p0, p3, p1}, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->createProtocolView(Landroid/view/ViewGroup;Lcom/tencent/qnet/ui/profile/NetEditBaseItem;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->isTypeConDrop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    invoke-direct {p0, p3, p1}, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->createConDropView(Landroid/view/ViewGroup;Lcom/tencent/qnet/ui/profile/NetEditBaseItem;)Landroid/view/View;

    move-result-object p2

    .line 101
    :cond_3
    :goto_0
    iget-boolean p3, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->m_enabled:Z

    invoke-static {p2, p3}, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->setEnabledAll(Landroid/view/View;Z)V

    .line 102
    invoke-virtual {p1, p2}, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->setView(Landroid/view/View;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 68
    iget-boolean p1, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->m_enabled:Z

    return p1
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->m_enabled:Z

    return-void
.end method
