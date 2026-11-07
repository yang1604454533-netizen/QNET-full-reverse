.class Lcom/tencent/connect/auth/AuthAgent$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/AuthAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/tencent/tauth/IUiListener;

.field final synthetic b:Lcom/tencent/connect/auth/AuthAgent;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/AuthAgent;Lcom/tencent/tauth/IUiListener;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthAgent$a;->b:Lcom/tencent/connect/auth/AuthAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p2, p0, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "openSDK_LOG.AuthAgent"

    const-string v0, "CheckLoginListener response data is null"

    .line 475
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 479
    :cond_0
    check-cast p1, Lorg/json/JSONObject;

    :try_start_0
    const-string v0, "ret"

    .line 484
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "success"

    goto :goto_0

    :cond_1
    const-string v1, "msg"

    .line 485
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 487
    :goto_0
    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v1, :cond_2

    .line 488
    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ret"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "msg"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 491
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "openSDK_LOG.AuthAgent"

    const-string v0, "CheckLoginListener response data format error"

    .line 492
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_0
    return-void
.end method
