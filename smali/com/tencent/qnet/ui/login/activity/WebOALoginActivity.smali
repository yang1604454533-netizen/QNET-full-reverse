.class public Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WebOALoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;,
        Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebQQLoginHandler;,
        Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebLoginClient;
    }
.end annotation


# instance fields
.field private URL:Ljava/lang/String;

.field private conninfo:Lcom/tencent/qnet/ui/login/model/ConnInfo;

.field private finish:I

.field private mHandler:Landroid/os/Handler;

.field private mLoginFlag:Z

.field private mWebView:Landroid/webkit/WebView;

.field private toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->finish:I

    .line 177
    new-instance v0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebQQLoginHandler;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebQQLoginHandler;-><init>(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;)V

    iput-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mLoginFlag:Z

    return p0
.end method

.method static synthetic access$102(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mLoginFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;)Lcom/tencent/qnet/ui/login/model/ConnInfo;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->conninfo:Lcom/tencent/qnet/ui/login/model/ConnInfo;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;Lcom/tencent/qnet/ui/login/model/ConnInfo;)Lcom/tencent/qnet/ui/login/model/ConnInfo;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->conninfo:Lcom/tencent/qnet/ui/login/model/ConnInfo;

    return-object p1
.end method

.method public static clearCookies(Landroid/content/Context;)V
    .locals 2

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 121
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 122
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 123
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 128
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 130
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 131
    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 132
    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    .line 53
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->setContentView(I)V

    const p1, 0x7f0900e2

    .line 55
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 56
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 58
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$1;-><init>(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900fb

    .line 70
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mWebView:Landroid/webkit/WebView;

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mLoginFlag:Z

    .line 74
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 75
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 80
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 81
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setAllowUniversalAccessFromFileURLs"

    .line 82
    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v2, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->setWebview()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 249
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 251
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 232
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 234
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 238
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setWebview()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 100
    invoke-static {p0}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->clearCookies(Landroid/content/Context;)V

    const-string v0, "https://tapd.tencent.com/ptlogin/ptlogins/login?site=WeTest&ref=https://wetest.qq.com/auth/tapd/"

    .line 102
    iput-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->URL:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebLoginClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebLoginClient;-><init>(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$1;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 106
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 111
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    const/4 v1, 0x2

    .line 112
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 114
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;->URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
