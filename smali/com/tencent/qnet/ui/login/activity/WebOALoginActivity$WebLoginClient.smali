.class Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebLoginClient;
.super Landroid/webkit/WebViewClient;
.source "WebOALoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebLoginClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;


# direct methods
.method private constructor <init>(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebLoginClient;->this$0:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$1;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebLoginClient;-><init>(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 169
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 145
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebLoginClient;->this$0:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;

    invoke-static {p1}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->access$100(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "https://wetest.qq.com/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    const-string p2, "https://wetest.qq.com/"

    .line 147
    invoke-virtual {p1, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 149
    new-instance p2, Lcom/tencent/qnet/ui/login/model/CookieInfo;

    invoke-direct {p2}, Lcom/tencent/qnet/ui/login/model/CookieInfo;-><init>()V

    if-eqz p1, :cond_0

    .line 152
    invoke-static {p1, p2}, Lcom/tencent/qnet/ui/login/manager/LoginManager;->parseCookie(Ljava/lang/String;Lcom/tencent/qnet/ui/login/model/CookieInfo;)Lcom/tencent/qnet/ui/login/model/CookieInfo;

    :cond_0
    const/16 p1, 0x7d2

    .line 155
    invoke-static {p2, p1}, Lcom/tencent/qnet/ui/login/manager/LoginManager;->setCookie(Lcom/tencent/qnet/ui/login/model/CookieInfo;I)V

    .line 156
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebLoginClient;->this$0:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;

    invoke-static {p1}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->access$200(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;

    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebLoginClient;->this$0:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;

    invoke-direct {p2, v0}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;-><init>(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
