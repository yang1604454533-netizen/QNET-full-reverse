.class public Lcom/tencent/open/b/b;
.super Landroid/webkit/WebView;
.source "ProGuard"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0}, Lcom/tencent/open/b/b;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const-string v0, "searchBoxJavaBridge_"

    .line 34
    invoke-virtual {p0, v0}, Lcom/tencent/open/b/b;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    .line 35
    invoke-virtual {p0, v0}, Lcom/tencent/open/b/b;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 36
    invoke-virtual {p0, v0}, Lcom/tencent/open/b/b;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "OpenWebView"

    const-string v1, "removeJSInterface"

    .line 37
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 43
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 44
    invoke-virtual {p0}, Lcom/tencent/open/b/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "removeJavascriptInterface"

    const/4 v2, 0x1

    .line 50
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "searchBoxJavaBridge_"

    aput-object v3, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "accessibility"

    aput-object v3, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "accessibilityTraversal"

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OpenWebView"

    const-string v1, "remove js interface"

    .line 56
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OpenWebView"

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove js interface.e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
