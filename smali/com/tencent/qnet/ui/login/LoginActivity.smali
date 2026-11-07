.class public Lcom/tencent/qnet/ui/login/LoginActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qnet/ui/login/LoginActivity$GetUserInfoCallBack;,
        Lcom/tencent/qnet/ui/login/LoginActivity$LoginCallBack;,
        Lcom/tencent/qnet/ui/login/LoginActivity$AutoLoginRunnable;
    }
.end annotation


# instance fields
.field private getUserInfoCallBack:Lcom/tencent/qnet/ui/login/LoginActivity$GetUserInfoCallBack;

.field private loginCallBack:Lcom/tencent/qnet/ui/login/LoginActivity$LoginCallBack;

.field private mTencent:Lcom/tencent/tauth/Tencent;

.field private oaLogin:Landroid/widget/ImageView;

.field private qqLogin:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 38
    new-instance v0, Lcom/tencent/qnet/ui/login/LoginActivity$LoginCallBack;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/login/LoginActivity$LoginCallBack;-><init>(Lcom/tencent/qnet/ui/login/LoginActivity;)V

    iput-object v0, p0, Lcom/tencent/qnet/ui/login/LoginActivity;->loginCallBack:Lcom/tencent/qnet/ui/login/LoginActivity$LoginCallBack;

    .line 39
    new-instance v0, Lcom/tencent/qnet/ui/login/LoginActivity$GetUserInfoCallBack;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/login/LoginActivity$GetUserInfoCallBack;-><init>(Lcom/tencent/qnet/ui/login/LoginActivity;)V

    iput-object v0, p0, Lcom/tencent/qnet/ui/login/LoginActivity;->getUserInfoCallBack:Lcom/tencent/qnet/ui/login/LoginActivity$GetUserInfoCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qnet/ui/login/LoginActivity;)Lcom/tencent/tauth/Tencent;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/tencent/qnet/ui/login/LoginActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/qnet/ui/login/LoginActivity;)Lcom/tencent/qnet/ui/login/LoginActivity$GetUserInfoCallBack;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/tencent/qnet/ui/login/LoginActivity;->getUserInfoCallBack:Lcom/tencent/qnet/ui/login/LoginActivity$GetUserInfoCallBack;

    return-object p0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2b5d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2776

    if-ne p1, v0, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/LoginActivity;->loginCallBack:Lcom/tencent/qnet/ui/login/LoginActivity$LoginCallBack;

    invoke-static {p1, p2, p3, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090096

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    sget-object p1, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v0, "qq login onclick"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/LoginActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {p1}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result p1

    if-nez p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/LoginActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    const-string v0, "all"

    iget-object v1, p0, Lcom/tencent/qnet/ui/login/LoginActivity;->loginCallBack:Lcom/tencent/qnet/ui/login/LoginActivity$LoginCallBack;

    invoke-virtual {p1, p0, v0, v1}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4



    .line 54
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    .line 55
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/LoginActivity;->setContentView(I)V

    const-string p1, "1108754378"

    .line 59
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/login/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qnet/ui/login/LoginActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 60
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/LoginActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {p1}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/LoginActivity;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {p1, p0}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V

    :cond_0
    const p1, 0x7f09008b

    .line 63
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tencent/qnet/ui/login/LoginActivity;->oaLogin:Landroid/widget/ImageView;

    const p1, 0x7f090096

    .line 64
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tencent/qnet/ui/login/LoginActivity;->qqLogin:Landroid/widget/ImageView;

    .line 65
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/LoginActivity;->qqLogin:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/LoginActivity;->oaLogin:Landroid/widget/ImageView;

    new-instance v0, Lcom/tencent/qnet/ui/login/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/login/LoginActivity$1;-><init>(Lcom/tencent/qnet/ui/login/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget-boolean p1, Lcom/tencent/qnet/ui/login/manager/LoginManager;->IS_LOGIN:Z

    if-eqz p1, :cond_1

    .line 81
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 82
    const-class v0, Lcom/tencent/qnet/ui/MainActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/login/LoginActivity;->finish()V

    goto :goto_0

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/qnet/ui/login/LoginActivity$AutoLoginRunnable;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/login/LoginActivity$AutoLoginRunnable;-><init>(Lcom/tencent/qnet/ui/login/LoginActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    const p1, 0x7f0900ee

    .line 94
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 95
    invoke-static {p0}, Lcom/tencent/qnet/common/SystemUtil;->getAppVersionInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "v%s"

    const/4 v2, 0x1

    .line 96
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public startMainActivity()V
    .locals 2

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    const-class v1, Lcom/tencent/qnet/ui/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/ui/login/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/login/LoginActivity;->finish()V

    return-void
.end method
