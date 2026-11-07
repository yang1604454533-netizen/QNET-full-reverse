.class Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginClient;
.super Landroid/webkit/WebViewClient;
.source "WebQQLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebQQLoginClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;


# direct methods
.method private constructor <init>(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginClient;->this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginClient;-><init>(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 119
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "https://ssl.ptlogin2.qq.com/j_newreg_url"

    .line 125
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const-string v0, "https://ssl.ptlogin2.qq.com/ptui_forgetpwd"

    .line 126
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http://id.qq.com/index.html#account"

    .line 127
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http://support.qq.com/write.shtml?guest"

    .line 128
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginClient;->this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-static {v0}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->access$100(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https://wetest.qq.com/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://wetest.qq.com/register/complete"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginClient;->this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 137
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 138
    invoke-virtual {p1, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    new-instance p2, Lcom/tencent/qnet/ui/login/model/CookieInfo;

    invoke-direct {p2}, Lcom/tencent/qnet/ui/login/model/CookieInfo;-><init>()V

    if-eqz p1, :cond_2

    .line 142
    invoke-static {p1, p2}, Lcom/tencent/qnet/ui/login/manager/LoginManager;->parseCookie(Ljava/lang/String;Lcom/tencent/qnet/ui/login/model/CookieInfo;)Lcom/tencent/qnet/ui/login/model/CookieInfo;

    :cond_2
    const/16 p1, 0x7d1

    .line 145
    invoke-static {p2, p1}, Lcom/tencent/qnet/ui/login/manager/LoginManager;->setCookie(Lcom/tencent/qnet/ui/login/model/CookieInfo;I)V

    .line 146
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginClient;->this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-static {p1}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->access$200(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;

    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginClient;->this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-direct {p2, v0}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;-><init>(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    .line 150
    :cond_3
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 130
    :cond_4
    :goto_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 131
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginClient;->this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-virtual {p1, p2}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->startActivity(Landroid/content/Intent;)V

    return v1
.end method
