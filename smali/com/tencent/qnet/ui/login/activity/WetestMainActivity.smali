.class public Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WetestMainActivity.java"


# instance fields
.field private loginOut:Landroid/widget/Button;

.field private text:Landroid/widget/TextView;

.field private userPic:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0022

    .line 28
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;->setContentView(I)V

    const p1, 0x7f0900d0

    .line 29
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;->text:Landroid/widget/TextView;

    const p1, 0x7f090075

    .line 30
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;->loginOut:Landroid/widget/Button;

    const p1, 0x7f0900f8

    .line 31
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;->userPic:Landroid/widget/ImageView;

    .line 33
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;->loginOut:Landroid/widget/Button;

    new-instance v0, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity$1;-><init>(Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;->showUserInfo()V

    return-void
.end method

.method public showUserInfo()V
    .locals 8

    .line 48
    invoke-static {}, Lcom/tencent/qnet/global/QnetApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tencent/qnet/global/QnetApplication;

    invoke-virtual {v0}, Lcom/tencent/qnet/global/QnetApplication;->getmSetting()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "uid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/tencent/qnet/global/QnetApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/tencent/qnet/global/QnetApplication;

    invoke-virtual {v1}, Lcom/tencent/qnet/global/QnetApplication;->getmSetting()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "nick"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {}, Lcom/tencent/qnet/global/QnetApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/tencent/qnet/global/QnetApplication;

    invoke-virtual {v2}, Lcom/tencent/qnet/global/QnetApplication;->getmSetting()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "face"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {}, Lcom/tencent/qnet/global/QnetApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/tencent/qnet/global/QnetApplication;

    invoke-virtual {v3}, Lcom/tencent/qnet/global/QnetApplication;->getmSetting()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "LoginType"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 52
    invoke-static {}, Lcom/tencent/qnet/global/QnetApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/tencent/qnet/global/QnetApplication;

    invoke-virtual {v4}, Lcom/tencent/qnet/global/QnetApplication;->getmSetting()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "projs"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-static {}, Lcom/tencent/qnet/ui/login/manager/LoginManager;->getLoginCookie()Ljava/lang/String;

    move-result-object v5

    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nnick="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\ntype="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d2

    if-ne v3, v0, :cond_0

    const-string v0, "RTX"

    goto :goto_0

    :cond_0
    const-string v0, "QQ"

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nface="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nprojs="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nseesionId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const-string v1, ""

    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    invoke-static {v2}, Lcom/tencent/qnet/ui/login/manager/LoginManager;->getBitMapByUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 69
    invoke-static {}, Lcom/tencent/qnet/global/QnetApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080066

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    const/high16 v1, 0x42b40000    # 90.0f

    .line 72
    invoke-static {v0, v1}, Lcom/tencent/qnet/ui/login/manager/LoginManager;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 74
    iget-object v1, p0, Lcom/tencent/qnet/ui/login/activity/WetestMainActivity;->userPic:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    return-void
.end method
