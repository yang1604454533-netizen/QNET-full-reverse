.class public Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WebQQLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;,
        Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginHandler;,
        Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginClient;
    }
.end annotation


# instance fields
.field public final REQ_QLOGIN:I

.field private URL:Ljava/lang/String;

.field private conninfo:Lcom/tencent/qnet/ui/login/model/ConnInfo;

.field private mHandler:Landroid/os/Handler;

.field private mLoginFlag:Z

.field private mSkey:Ljava/lang/String;

.field private mUin:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/16 v0, 0x100

    .line 47
    iput v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->REQ_QLOGIN:I

    .line 186
    new-instance v0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginHandler;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginHandler;-><init>(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)V

    iput-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mLoginFlag:Z

    return p0
.end method

.method static synthetic access$102(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mLoginFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)Lcom/tencent/qnet/ui/login/model/ConnInfo;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->conninfo:Lcom/tencent/qnet/ui/login/model/ConnInfo;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;Lcom/tencent/qnet/ui/login/model/ConnInfo;)Lcom/tencent/qnet/ui/login/model/ConnInfo;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->conninfo:Lcom/tencent/qnet/ui/login/model/ConnInfo;

    return-object p1
.end method

.method public static clearCookies(Landroid/content/Context;)V
    .locals 2

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 172
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 173
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object p0

    .line 177
    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 178
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 180
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 181
    invoke-virtual {p0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 182
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

    .line 53
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0021

    .line 55
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->setContentView(I)V

    const p1, 0x7f0900e2

    .line 56
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 57
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 59
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$1;-><init>(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900fb

    .line 70
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mWebView:Landroid/webkit/WebView;

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mLoginFlag:Z

    .line 76
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setAllowUniversalAccessFromFileURLs"

    const/4 v2, 0x1

    .line 78
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p1

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, p1

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->setWebview()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 255
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 257
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 238
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 240
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 244
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setWebview()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 95
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 97
    invoke-static {p0}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->clearCookies(Landroid/content/Context;)V

    const-string v0, "https://xui.ptlogin2.qq.com/cgi-bin/xlogin?appid=716027609&pt_3rd_aid=101488970&daid=383&pt_skey_valid=0&style=9&s_url=http%3A%2F%2Fconnect.qq.com&refer_cgi=authorize&which=&response_type=code&client_id=101488970&redirect_uri=http%3A%2F%2Fwetest.qq.com%2Fauth%2Fqqconnect&state=check"

    .line 99
    iput-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->URL:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginClient;-><init>(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$1;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 103
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 106
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 107
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 108
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    const/4 v1, 0x2

    .line 109
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 111
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
