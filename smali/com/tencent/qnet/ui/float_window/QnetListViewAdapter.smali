.class public Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "QnetListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private bg_selected_color:I

.field private colors:Landroid/content/res/ColorStateList;

.field private defaultSelection:I

.field private m_context:Landroid/content/Context;

.field private m_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private text_selected_color:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->m_context:Landroid/content/Context;

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->defaultSelection:I

    .line 28
    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->m_context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->m_data:Ljava/util/List;

    .line 31
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->m_context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060048

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->text_selected_color:I

    const p2, 0x7f060046

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->bg_selected_color:I

    .line 35
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->m_context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06004b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->colors:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->m_data:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->m_data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->m_data:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->m_data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 58
    new-instance p2, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter$ViewHolder;

    invoke-direct {p2, p0}, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter$ViewHolder;-><init>(Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;)V

    .line 59
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->m_context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c003c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0900f1

    .line 60
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter$ViewHolder;->txt_item:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 65
    :goto_0
    iget-object v0, p2, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter$ViewHolder;->txt_item:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget v0, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->defaultSelection:I

    if-ne p1, v0, :cond_1

    .line 68
    iget-object p1, p2, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter$ViewHolder;->txt_item:Landroid/widget/TextView;

    iget p2, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->text_selected_color:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget p1, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->bg_selected_color:I

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 71
    :cond_1
    iget-object p1, p2, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter$ViewHolder;->txt_item:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->colors:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const p1, 0x7f080065

    .line 72
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    return-object p3
.end method

.method public setSelectPosition(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->m_data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 83
    iput p1, p0, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->defaultSelection:I

    .line 84
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
