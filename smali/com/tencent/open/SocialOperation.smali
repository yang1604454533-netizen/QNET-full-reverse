.class public Lcom/tencent/open/SocialOperation;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# static fields
.field public static final GAME_FRIEND_ADD_MESSAGE:Ljava/lang/String; = "add_msg"

.field public static final GAME_FRIEND_LABEL:Ljava/lang/String; = "friend_label"

.field public static final GAME_FRIEND_OPENID:Ljava/lang/String; = "fopen_id"

.field public static final GAME_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final GAME_UNION_ID:Ljava/lang/String; = "unionid"

.field public static final GAME_UNION_NAME:Ljava/lang/String; = "union_name"

.field public static final GAME_ZONE_ID:Ljava/lang/String; = "zoneid"


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/QQToken;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    const-string v0, ""

    .line 449
    invoke-direct {p0, p1, v0}, Lcom/tencent/open/SocialOperation;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7

    .line 453
    new-instance v6, Lcom/tencent/open/TDialog;

    const-string v2, ""

    invoke-virtual {p0, p2}, Lcom/tencent/open/SocialOperation;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    invoke-virtual {v6}, Lcom/tencent/open/TDialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/open/SocialOperation;Landroid/app/Activity;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/tencent/open/SocialOperation;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/open/SocialOperation;Landroid/app/Activity;ILandroid/content/Intent;Z)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/open/SocialOperation;->a(Landroid/app/Activity;ILandroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/open/SocialOperation;Landroid/app/Activity;ILandroid/content/Intent;Z)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/open/SocialOperation;->a(Landroid/app/Activity;ILandroid/content/Intent;Z)V

    return-void
.end method


# virtual methods
.method public bindQQGroup(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 8

    const-string v0, "openSDK_LOG.GameAppOperation"

    const-string v1, "-->bindQQGroup()  -- start"

    .line 333
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->bindQQGroup, activity is empty."

    .line 335
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 337
    new-instance p1, Lcom/tencent/tauth/UiError;

    const/16 p2, 0x3e9

    const-string p3, "param acitivty is null"

    const-string v0, "activity param of api can not be null."

    invoke-direct {p1, p2, p3, v0}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_0
    return-void

    .line 341
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "mqqapi://opensdk/bind_group?src_type=app&version=1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->bindQQGroup, appId is empty."

    .line 344
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    .line 346
    new-instance p1, Lcom/tencent/tauth/UiError;

    const/16 p2, 0x3eb

    const-string p3, "appid is null"

    const-string v0, "please login."

    invoke-direct {p1, p2, p3, v0}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_2
    return-void

    .line 350
    :cond_3
    iget-object v2, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->bindQQGroup, openid is empty."

    .line 352
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_4

    .line 354
    new-instance p1, Lcom/tencent/tauth/UiError;

    const/16 p2, 0x3ec

    const-string p3, "openid params is null"

    const-string v0, "please login."

    invoke-direct {p1, p2, p3, v0}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_4
    return-void

    .line 358
    :cond_5
    invoke-static {p1}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 359
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->bindQQGroup, appname is empty."

    .line 360
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_6

    .line 362
    new-instance p1, Lcom/tencent/tauth/UiError;

    const/16 p2, 0x3ed

    const-string p3, "appName params is null"

    const-string v0, ""

    invoke-direct {p1, p2, p3, v0}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_6
    return-void

    .line 366
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->bindQQGroup, organization id is empty."

    .line 367
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_8

    .line 369
    new-instance p1, Lcom/tencent/tauth/UiError;

    const/16 p2, 0x3ee

    const-string p3, "organizationId params is null"

    const-string v0, ""

    invoke-direct {p1, p2, p3, v0}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_8
    return-void

    .line 373
    :cond_9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->bindQQGroup, organization name is empty."

    .line 374
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_a

    .line 376
    new-instance p1, Lcom/tencent/tauth/UiError;

    const/16 p2, 0x3ef

    const-string p3, "organizationName params is null"

    const-string v0, ""

    invoke-direct {p1, p2, p3, v0}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_a
    return-void

    .line 382
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&app_name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&organization_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&organization_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object p3

    invoke-static {p3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&openid="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&appid="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&sdk_version="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "3.3.8.lite"

    invoke-static {v2}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "openSDK_LOG.GameAppOperation"

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->bindQQGroup, url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialOperation;->a(Landroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_d

    const-string p3, "8.1.0"

    invoke-static {p1, p3}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-gez p3, :cond_c

    goto :goto_0

    .line 400
    :cond_c
    new-instance p3, Lcom/tencent/open/SocialOperation$3;

    invoke-direct {p3, p0, p4, p1, v0}, Lcom/tencent/open/SocialOperation$3;-><init>(Lcom/tencent/open/SocialOperation;Lcom/tencent/tauth/IUiListener;Landroid/app/Activity;Landroid/content/Intent;)V

    .line 440
    invoke-virtual {p0}, Lcom/tencent/open/SocialOperation;->a()Landroid/os/Bundle;

    move-result-object v5

    const-string p4, "appid"

    .line 441
    invoke-virtual {v5, p4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "orgid"

    .line 442
    invoke-virtual {v5, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    const-string v4, "https://openmobile.qq.com/cgi-bin/qunopensdk/check_group"

    const-string v6, "GET"

    new-instance v7, Lcom/tencent/connect/common/BaseApi$TempRequestListener;

    invoke-direct {v7, p0, p3}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->bindQQGroup() do."

    .line 445
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    :goto_0
    const-string p2, "openSDK_LOG.GameAppOperation"

    const-string p3, "-->bind group, there is no activity, show download page."

    .line 395
    invoke-static {p2, p3}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-direct {p0, p1}, Lcom/tencent/open/SocialOperation;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public joinGroup(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 9

    const-string v0, "openSDK_LOG.GameAppOperation"

    const-string v1, "joinQQGroup()"

    .line 224
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->joinGroup, activity is empty."

    .line 226
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 228
    new-instance p1, Lcom/tencent/tauth/UiError;

    const/16 p2, 0x3e9

    const-string v0, "param acitivty is null"

    const-string v1, "activity param of api can not be null."

    invoke-direct {p1, p2, v0, v1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_0
    return-void

    .line 232
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->joinGroup, params is empty."

    .line 233
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 235
    new-instance p1, Lcom/tencent/tauth/UiError;

    const/16 p2, 0x3ee

    const-string v0, "param organizationId is null"

    const-string v1, "organizationId param of api can not be null."

    invoke-direct {p1, p2, v0, v1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_2
    return-void

    .line 240
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    iget-object v1, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->joinGroup, appid is empty."

    .line 243
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 245
    new-instance p1, Lcom/tencent/tauth/UiError;

    const/16 p2, 0x3eb

    const-string v0, "appid is null"

    const-string v1, "appid is null, please login."

    invoke-direct {p1, p2, v0, v1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_4
    return-void

    .line 249
    :cond_5
    iget-object v2, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->joinGroup, openid is empty."

    .line 251
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_6

    .line 253
    new-instance p1, Lcom/tencent/tauth/UiError;

    const/16 p2, 0x3ec

    const-string v0, "openid is null"

    const-string v1, "openid is null, please login."

    invoke-direct {p1, p2, v0, v1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_6
    return-void

    .line 257
    :cond_7
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "mqqapi://opensdk/join_group?src_type=app&version=1"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&openid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&appid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&organization_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&sdk_version="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "3.3.8.lite"

    invoke-static {v4}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, v0}, Lcom/tencent/open/SocialOperation;->a(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "8.1.0"

    invoke-static {p1, v2}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_8

    goto :goto_0

    .line 271
    :cond_8
    new-instance v2, Lcom/tencent/open/SocialOperation$2;

    invoke-direct {v2, p0, p3, p1, v0}, Lcom/tencent/open/SocialOperation$2;-><init>(Lcom/tencent/open/SocialOperation;Lcom/tencent/tauth/IUiListener;Landroid/app/Activity;Landroid/content/Intent;)V

    .line 310
    invoke-virtual {p0}, Lcom/tencent/open/SocialOperation;->a()Landroid/os/Bundle;

    move-result-object v6

    const-string p3, "appid"

    .line 311
    invoke-virtual {v6, p3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "orgid"

    .line 312
    invoke-virtual {v6, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v3, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    const-string v5, "https://openmobile.qq.com/cgi-bin/qunopensdk/check_group"

    const-string v7, "GET"

    new-instance v8, Lcom/tencent/connect/common/BaseApi$TempRequestListener;

    invoke-direct {v8, p0, v2}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->joinQQGroup() do."

    .line 315
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_0
    const-string p2, "openSDK_LOG.GameAppOperation"

    const-string p3, "-->bind group, there is no activity, show download page."

    .line 266
    invoke-static {p2, p3}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/tencent/open/SocialOperation;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public makeFriend(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "openSDK_LOG.GameAppOperation"

    const-string v1, "-->makeFriend()  -- start"

    .line 83
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->makeFriend params is null"

    .line 85
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v0

    iget-object p1, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ANDROIDQQ.MAKEAFRIEND.XX"

    const-string v4, "14"

    const-string v5, "18"

    const-string v6, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "fopen_id"

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->make friend, fOpenid is empty."

    .line 93
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v0

    iget-object p1, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    .line 95
    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ANDROIDQQ.MAKEAFRIEND.XX"

    const-string v4, "14"

    const-string v5, "18"

    const-string v6, "1"

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "friend_label"

    .line 100
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "add_msg"

    .line 101
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 102
    invoke-static {p1}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v3

    .line 105
    iget-object v4, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v4}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "openSDK_LOG.GameAppOperation"

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-->make friend, fOpenid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " | label: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " | message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " | openid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " | appid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "mqqapi://gamesdk/add_friend?src_type=app&version=1"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&fopen_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v7, 0x2

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&open_id="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&app_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&friend_label="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&add_msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "&app_name="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    const-string p2, "openSDK_LOG.GameAppOperation"

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->make friend, url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, p2}, Lcom/tencent/open/SocialOperation;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "5.1.0"

    invoke-static {p1, v0}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "openSDK_LOG.GameAppOperation"

    const-string v1, "-->makeFriend target activity found, qqver greater than 5.1.0"

    .line 135
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 139
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v2

    iget-object p2, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    .line 140
    invoke-virtual {p2}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ANDROIDQQ.MAKEAFRIEND.XX"

    const-string v6, "14"

    const-string v7, "18"

    const-string v8, "0"

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "openSDK_LOG.GameAppOperation"

    const-string v1, "-->make friend, start activity exception."

    .line 144
    invoke-static {v0, v1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/tencent/open/SocialOperation;->a(Landroid/app/Activity;)V

    .line 146
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v2

    iget-object p1, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ANDROIDQQ.MAKEAFRIEND.XX"

    const-string v6, "14"

    const-string v7, "18"

    const-string v8, "1"

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string p2, "openSDK_LOG.GameAppOperation"

    const-string v0, "-->make friend, there is no activity."

    .line 151
    invoke-static {p2, v0}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/tencent/open/SocialOperation;->a(Landroid/app/Activity;)V

    .line 153
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v1

    iget-object p1, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    .line 154
    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ANDROIDQQ.MAKEAFRIEND.XX"

    const-string v5, "14"

    const-string v6, "18"

    const-string v7, "1"

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->makeFriend()  -- end"

    .line 157
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unBindGroup(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 8

    const-string v0, "openSDK_LOG.GameAppOperation"

    const-string v1, "unBindQQGroup()"

    .line 161
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->uinBindGroup, activity is empty."

    .line 163
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 165
    new-instance p1, Lcom/tencent/tauth/UiError;

    const/16 p2, 0x3e9

    const-string v0, "param acitivty is null"

    const-string v1, "activity param of api can not be null."

    invoke-direct {p1, p2, v0, v1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_0
    return-void

    .line 169
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->unBindGroup, params is empty."

    .line 170
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 172
    new-instance p1, Lcom/tencent/tauth/UiError;

    const/16 p2, 0x3ee

    const-string v0, "param organizationId is null"

    const-string v1, "organizationId param of api can not be null."

    invoke-direct {p1, p2, v0, v1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_2
    return-void

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->unBindGroup, appid is empty."

    .line 179
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 181
    new-instance p1, Lcom/tencent/tauth/UiError;

    const/16 p2, 0x3eb

    const-string v0, "param appId is null"

    const-string v1, "appid is null please login."

    invoke-direct {p1, p2, v0, v1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_4
    return-void

    .line 186
    :cond_5
    new-instance v1, Lcom/tencent/open/SocialOperation$1;

    invoke-direct {v1, p0, p3}, Lcom/tencent/open/SocialOperation$1;-><init>(Lcom/tencent/open/SocialOperation;Lcom/tencent/tauth/IUiListener;)V

    .line 215
    invoke-virtual {p0}, Lcom/tencent/open/SocialOperation;->a()Landroid/os/Bundle;

    move-result-object v5

    const-string p3, "appid"

    .line 216
    invoke-virtual {v5, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "orgid"

    .line 217
    invoke-virtual {v5, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/tencent/open/SocialOperation;->c:Lcom/tencent/connect/auth/QQToken;

    const-string v4, "https://openmobile.qq.com/cgi-bin/qunopensdk/unbind"

    const-string v6, "GET"

    new-instance v7, Lcom/tencent/connect/common/BaseApi$TempRequestListener;

    invoke-direct {v7, p0, v1}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    const-string p1, "openSDK_LOG.GameAppOperation"

    const-string p2, "-->unBindQQGroup() do."

    .line 220
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
