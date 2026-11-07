.class public Lcom/tencent/connect/common/AssistActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_INTENT:Ljava/lang/String; = "openSDK_LOG.AssistActivity.ExtraIntent"


# instance fields
.field protected a:Z

.field protected b:Landroid/os/Handler;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->c:Z

    .line 39
    iput-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->a:Z

    .line 51
    new-instance v0, Lcom/tencent/connect/common/AssistActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/connect/common/AssistActivity$1;-><init>(Lcom/tencent/connect/common/AssistActivity;)V

    iput-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method private a()I
    .locals 3

    .line 131
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v2, "--getRotation-- getWindowManager() == null"

    .line 132
    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v2, "--getRotation-- etWindowManager().getDefaultDisplay() == null"

    .line 137
    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 12

    const-string v0, "viaShareType"

    .line 386
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "callbackAction"

    .line 387
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    .line 388
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "openId"

    .line 389
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "appId"

    .line 390
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, ""

    const-string v4, ""

    const-string v5, "shareToQQ"

    .line 394
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p1, "ANDROIDQQ.SHARETOQQ.XX"

    const-string v4, "10"

    :cond_0
    :goto_0
    move-object v5, v4

    move-object v4, p1

    goto :goto_1

    :cond_1
    const-string v5, "shareToQzone"

    .line 397
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string p1, "ANDROIDQQ.SHARETOQZ.XX"

    const-string v4, "11"

    goto :goto_0

    .line 402
    :goto_1
    invoke-static {p0, v1}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 404
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/connect/common/UIListenerManager;->getListnerWithAction(Ljava/lang/String;)Lcom/tencent/tauth/IUiListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 406
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/4 v1, -0x6

    const-string v6, "\u6253\u5f00\u6d4f\u89c8\u5668\u5931\u8d25!"

    const/4 v7, 0x0

    invoke-direct {v0, v1, v6, v7}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 409
    :cond_2
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v1

    const-string v6, "3"

    const-string v7, "1"

    const-string v9, "0"

    const-string v10, "2"

    const-string v11, "0"

    invoke-virtual/range {v1 .. v11}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    goto :goto_2

    .line 414
    :cond_3
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v1

    const-string v6, "3"

    const-string v7, "0"

    const-string v9, "0"

    const-string v10, "2"

    const-string v11, "0"

    invoke-virtual/range {v1 .. v11}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "shareH5"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method public static getAssistActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "openSDK_LOG.AssistActivity"

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--onActivityResult--requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "data = null ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "key_action"

    const-string v0, "action_login"

    .line 293
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/tencent/connect/common/AssistActivity;->setResultData(ILandroid/content/Intent;)V

    .line 299
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->restoreEnterOrientation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "openSDK_LOG.AssistActivity"

    .line 301
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreEnterOrientation error : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 69
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lcom/tencent/connect/common/AssistActivity;->requestWindowFeature(I)Z

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0}, Lcom/tencent/connect/common/AssistActivity;->a()I

    move-result v0

    iput v0, p0, Lcom/tencent/connect/common/AssistActivity;->f:I

    const/4 v0, 0x3

    .line 76
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/tencent/connect/common/AssistActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "openSDK_LOG.AssistActivity"

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate setRequestedOrientation error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "--onCreate--"

    .line 81
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onCreate--getIntent() returns null"

    .line 83
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "openSDK_LOG.AssistActivity.ExtraIntent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const-string v2, "key_request_code"

    .line 88
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :goto_1
    if-nez v0, :cond_2

    const-string v3, ""

    goto :goto_2

    :cond_2
    const-string v3, "appid"

    .line 89
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, p0, Lcom/tencent/connect/common/AssistActivity;->d:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "h5_share_data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz p1, :cond_3

    const-string v4, "RESTART_FLAG"

    .line 93
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tencent/connect/common/AssistActivity;->c:Z

    const-string v4, "RESUME_FLAG"

    .line 94
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/connect/common/AssistActivity;->a:Z

    .line 96
    :cond_3
    iget-boolean p1, p0, Lcom/tencent/connect/common/AssistActivity;->c:Z

    if-nez p1, :cond_7

    if-nez v3, :cond_6

    if-eqz v0, :cond_5

    const-string p1, "openSDK_LOG.AssistActivity"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--onCreate--activityIntent not null, will start activity, reqcode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v1, "share_id"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.tencent.tauth.opensdk.SHARE_SUCCESS_AND_STAY_QQ_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/tencent/connect/common/AssistActivity;->e:Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;

    if-nez p1, :cond_4

    .line 107
    new-instance p1, Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;-><init>(Lcom/tencent/connect/common/AssistActivity;Lcom/tencent/connect/common/AssistActivity$1;)V

    iput-object p1, p0, Lcom/tencent/connect/common/AssistActivity;->e:Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;

    .line 109
    :cond_4
    iget-object p1, p0, Lcom/tencent/connect/common/AssistActivity;->e:Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;

    invoke-virtual {p0, p1, v1}, Lcom/tencent/connect/common/AssistActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string v1, "openSDK_LOG.AssistActivity"

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerReceiver exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/tencent/connect/common/AssistActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    :cond_5
    const-string p1, "openSDK_LOG.AssistActivity"

    const-string v0, "--onCreate--activityIntent is null"

    .line 115
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    goto :goto_4

    :cond_6
    const-string p1, "openSDK_LOG.AssistActivity"

    const-string v0, "--onCreate--h5 bundle not null, will open browser"

    .line 121
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, v3}, Lcom/tencent/connect/common/AssistActivity;->a(Landroid/os/Bundle;)V

    goto :goto_4

    :cond_7
    const-string p1, "openSDK_LOG.AssistActivity"

    const-string v0, "is restart"

    .line 126
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onDestroy"

    .line 197
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->e:Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->e:Lcom/tencent/connect/common/AssistActivity$QQStayReceiver;

    invoke-virtual {p0, v0}, Lcom/tencent/connect/common/AssistActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "--onNewIntent"

    .line 207
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "key_request_code"

    const/4 v1, -0x1

    .line 213
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x277c

    if-ne v0, v4, :cond_1

    const-string v0, "key_action"

    const-string v4, "action_request_avatar"

    .line 215
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "stay_back_stack"

    .line 216
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0, v2}, Lcom/tencent/connect/common/AssistActivity;->moveTaskToBack(Z)Z

    .line 220
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    .line 221
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_a

    .line 222
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x277d

    if-ne v0, v4, :cond_3

    const-string v0, "key_action"

    const-string v4, "action_request_set_emotion"

    .line 225
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "stay_back_stack"

    .line 226
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {p0, v2}, Lcom/tencent/connect/common/AssistActivity;->moveTaskToBack(Z)Z

    .line 230
    :cond_2
    invoke-virtual {p0, v1, p1}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    .line 231
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_a

    .line 232
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x277e

    if-ne v0, v4, :cond_5

    const-string v0, "key_action"

    const-string v4, "action_request_dynamic_avatar"

    .line 235
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "stay_back_stack"

    .line 236
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    invoke-virtual {p0, v2}, Lcom/tencent/connect/common/AssistActivity;->moveTaskToBack(Z)Z

    .line 240
    :cond_4
    invoke-virtual {p0, v1, p1}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    .line 241
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_a

    .line 242
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    goto :goto_0

    :cond_5
    const/16 v4, 0x277f

    if-ne v0, v4, :cond_7

    const-string v0, "key_action"

    const-string v4, "joinGroup"

    .line 245
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "stay_back_stack"

    .line 246
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 248
    invoke-virtual {p0, v2}, Lcom/tencent/connect/common/AssistActivity;->moveTaskToBack(Z)Z

    .line 250
    :cond_6
    invoke-virtual {p0, v1, p1}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    .line 251
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_a

    .line 252
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    goto :goto_0

    :cond_7
    const/16 v4, 0x2780

    if-ne v0, v4, :cond_9

    const-string v0, "key_action"

    const-string v4, "bindGroup"

    .line 255
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "stay_back_stack"

    .line 256
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 258
    invoke-virtual {p0, v2}, Lcom/tencent/connect/common/AssistActivity;->moveTaskToBack(Z)Z

    .line 260
    :cond_8
    invoke-virtual {p0, v1, p1}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    .line 261
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_a

    .line 262
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    goto :goto_0

    :cond_9
    const-string v0, "key_action"

    const-string v2, "action_share"

    .line 265
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0, v1, p1}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    .line 267
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "openSDK_LOG.AssistActivity"

    const-string v0, "--onNewIntent--activity not finished, finish now"

    .line 268
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    :cond_a
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onPause"

    .line 184
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onResume"

    .line 152
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_login"

    const/4 v2, 0x0

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "is_qq_mobile_share"

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    .line 172
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->a:Z

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/tencent/connect/common/AssistActivity;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->a:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "--onSaveInstanceState--"

    .line 277
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RESTART_FLAG"

    const/4 v1, 0x1

    .line 278
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "RESUME_FLAG"

    .line 279
    iget-boolean v1, p0, Lcom/tencent/connect/common/AssistActivity;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onStart"

    .line 146
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onStop"

    .line 191
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public restoreEnterOrientation()V
    .locals 3

    const-string v0, "openSDK_LOG.AssistActivity"

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--restoreEnterOrientation--mEnterRotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/connect/common/AssistActivity;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget v0, p0, Lcom/tencent/connect/common/AssistActivity;->f:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    .line 321
    invoke-virtual {p0, v0}, Lcom/tencent/connect/common/AssistActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x8

    .line 318
    invoke-virtual {p0, v0}, Lcom/tencent/connect/common/AssistActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x9

    .line 315
    invoke-virtual {p0, v0}, Lcom/tencent/connect/common/AssistActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0, v0}, Lcom/tencent/connect/common/AssistActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setResultData(ILandroid/content/Intent;)V
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const-string p2, "openSDK_LOG.AssistActivity"

    const-string v1, "--setResultData--intent is null, setResult ACTIVITY_CANCEL"

    .line 328
    invoke-static {p2, v1}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0, v0}, Lcom/tencent/connect/common/AssistActivity;->setResult(I)V

    const/16 p2, 0x2b5d

    if-ne p1, p2, :cond_0

    .line 332
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/tencent/connect/common/AssistActivity;->d:Ljava/lang/String;

    const-string v3, "2"

    const-string v4, "1"

    const-string v5, "7"

    const-string v6, "2"

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    const-string p1, "key_response"

    .line 340
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "openSDK_LOG.AssistActivity"

    const-string v2, "--setResultDataForLogin-- "

    .line 341
    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_3

    .line 343
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "openid"

    .line 344
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "access_token"

    .line 345
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "openSDK_LOG.AssistActivity"

    const-string v0, "--setResultData--openid and token not empty, setResult ACTIVITY_OK"

    .line 349
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, v2, p2}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    .line 352
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    iget-object v5, p0, Lcom/tencent/connect/common/AssistActivity;->d:Ljava/lang/String;

    const-string v6, "2"

    const-string v7, "1"

    const-string v8, "7"

    const-string v9, "0"

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "openSDK_LOG.AssistActivity"

    const-string v1, "--setResultData--openid or token is empty, setResult ACTIVITY_CANCEL"

    .line 355
    invoke-static {p1, v1}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0, v0, p2}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    .line 358
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcom/tencent/connect/common/AssistActivity;->d:Ljava/lang/String;

    const-string v5, "2"

    const-string v6, "1"

    const-string v7, "7"

    const-string v8, "1"

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "openSDK_LOG.AssistActivity"

    const-string v0, "--setResultData--response is empty, setResult ACTIVITY_OK"

    .line 371
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0, v2, p2}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "openSDK_LOG.AssistActivity"

    const-string v0, "--setResultData--parse response failed"

    .line 376
    invoke-static {p2, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
