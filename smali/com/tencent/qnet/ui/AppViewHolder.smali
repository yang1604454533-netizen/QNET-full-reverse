.class Lcom/tencent/qnet/ui/AppViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AppManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private item:Lcom/tencent/qnet/ui/AppInfo;

.field private textID:Landroid/widget/TextView;

.field private textName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 157
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qnet/ui/AppViewHolder;->icon:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0900d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qnet/ui/AppViewHolder;->textName:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0900d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qnet/ui/AppViewHolder;->textID:Landroid/widget/TextView;

    .line 158
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method bind(Lcom/tencent/qnet/ui/AppInfo;)V
    .locals 2

    .line 162
    iput-object p1, p0, Lcom/tencent/qnet/ui/AppViewHolder;->item:Lcom/tencent/qnet/ui/AppInfo;

    .line 163
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/AppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppViewHolder;->textName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/AppInfo;->getAppLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppViewHolder;->textID:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 170
    sget-object v0, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    iget-object v1, p0, Lcom/tencent/qnet/ui/AppViewHolder;->item:Lcom/tencent/qnet/ui/AppInfo;

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qnet/ui/AppProxyManager;->setProxyApp(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ProxyProgram"

    .line 174
    iget-object v2, p0, Lcom/tencent/qnet/ui/AppViewHolder;->item:Lcom/tencent/qnet/ui/AppInfo;

    invoke-virtual {v2}, Lcom/tencent/qnet/ui/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 175
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 176
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
