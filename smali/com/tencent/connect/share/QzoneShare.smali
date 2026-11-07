.class public Lcom/tencent/connect/share/QzoneShare;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# static fields
.field public static final SHARE_TO_QQ_APP_NAME:Ljava/lang/String; = "appName"

.field public static final SHARE_TO_QQ_AUDIO_URL:Ljava/lang/String; = "audio_url"

.field public static final SHARE_TO_QQ_EXT_INT:Ljava/lang/String; = "cflag"

.field public static final SHARE_TO_QQ_EXT_STR:Ljava/lang/String; = "share_qq_ext_str"

.field public static final SHARE_TO_QQ_IMAGE_LOCAL_URL:Ljava/lang/String; = "imageLocalUrl"

.field public static final SHARE_TO_QQ_IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field public static final SHARE_TO_QQ_SITE:Ljava/lang/String; = "site"

.field public static final SHARE_TO_QQ_SUMMARY:Ljava/lang/String; = "summary"

.field public static final SHARE_TO_QQ_TARGET_URL:Ljava/lang/String; = "targetUrl"

.field public static final SHARE_TO_QQ_TITLE:Ljava/lang/String; = "title"

.field public static final SHARE_TO_QZONE_EXTMAP:Ljava/lang/String; = "extMap"

.field public static final SHARE_TO_QZONE_KEY_TYPE:Ljava/lang/String; = "req_type"

.field public static final SHARE_TO_QZONE_TYPE_APP:I = 0x6

.field public static final SHARE_TO_QZONE_TYPE_IMAGE:I = 0x5

.field public static final SHARE_TO_QZONE_TYPE_IMAGE_TEXT:I = 0x1

.field public static final SHARE_TO_QZONE_TYPE_MINI_PROGRAM:I = 0x7

.field public static final SHARE_TO_QZONE_TYPE_NO_TYPE:I


# instance fields
.field private a:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field public mViaShareQzoneType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
    .locals 0

    .line 82
    invoke-direct {p0, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    const-string p1, ""

    .line 74
    iput-object p1, p0, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/tencent/connect/share/QzoneShare;->d:Z

    .line 78
    iput-boolean p1, p0, Lcom/tencent/connect/share/QzoneShare;->e:Z

    .line 79
    iput-boolean p1, p0, Lcom/tencent/connect/share/QzoneShare;->f:Z

    return-void
.end method

.method private b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    const-string v4, "openSDK_LOG.QzoneShare"

    const-string v5, "doshareToQzone() --start"

    .line 357
    invoke-static {v4, v5}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "mqqapi://share/to_qzone?src_type=app&version=1&file_type=news"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "imageUrl"

    .line 360
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "title"

    .line 361
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "summary"

    .line 362
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "targetUrl"

    .line 363
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "audio_url"

    .line 364
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "req_type"

    const/4 v11, 0x1

    .line 365
    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "appName"

    .line 366
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "mini_program_appid"

    .line 367
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "mini_program_path"

    .line 368
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "mini_program_type"

    .line 369
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "cflag"

    const/4 v3, 0x0

    .line 372
    invoke-virtual {v0, v15, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    const-string v3, "share_qq_ext_str"

    .line 373
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v17, ""

    move/from16 v18, v15

    :try_start_0
    const-string v15, "extMap"

    .line 376
    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v19, v3

    .line 379
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 380
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v22, v14

    :try_start_2
    move-object/from16 v14, v21

    check-cast v14, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v23, v13

    .line 381
    :try_start_3
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v3, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v14, v22

    move-object/from16 v13, v23

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v23, v13

    goto :goto_2

    :cond_0
    move-object/from16 v23, v13

    move-object/from16 v22, v14

    .line 383
    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 384
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v17, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_1
    move-object/from16 v19, v3

    move-object/from16 v23, v13

    move-object/from16 v22, v14

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v19, v3

    :goto_1
    move-object/from16 v23, v13

    move-object/from16 v22, v14

    :goto_2
    const-string v3, "openSDK_LOG.QzoneShare"

    const-string v13, "ShareToQzone()  --error parse extmap"

    .line 388
    invoke-static {v3, v13, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    :cond_2
    :goto_3
    iget-object v0, v1, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 392
    iget-object v3, v1, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getOpenIdWithCache()Ljava/lang/String;

    move-result-object v3

    const-string v13, "openSDK_LOG.QzoneShare"

    .line 394
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "openId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x2

    if-eqz v5, :cond_3

    .line 396
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_3

    const/4 v14, 0x0

    .line 398
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 399
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&image_url="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v14

    invoke-static {v14, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    invoke-static {v5}, Lcom/tencent/open/utils/k;->g(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 401
    invoke-static {v0, v2, v5}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 402
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 403
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "&image_uri="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 418
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&title="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&description="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&share_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    :cond_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&url="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    :cond_7
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&app_name="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    :cond_8
    invoke-static {v3}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&open_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    :cond_9
    invoke-static {v9}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&audioUrl="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&req_type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&mini_program_appid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    :cond_b
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&mini_program_path="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    :cond_c
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&mini_program_type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    :cond_d
    invoke-static/range {v19 .. v19}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&share_qq_ext_str="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    :cond_e
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&share_qzone_ext_str="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&cflag="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "openSDK_LOG.QzoneShare"

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doshareToQzone, url: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    const-string v5, "requireApi"

    const-string v6, "shareToNativeQQ"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v5, v6}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "pkg_name"

    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "4.6.0"

    .line 474
    invoke-static {v2, v3}, Lcom/tencent/open/utils/k;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 475
    invoke-virtual {v1, v0}, Lcom/tencent/connect/share/QzoneShare;->a(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 476
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v3

    const/16 v4, 0x2b60

    move-object/from16 v5, p3

    invoke-virtual {v3, v4, v5}, Lcom/tencent/connect/common/UIListenerManager;->setListenerWithRequestcode(ILcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    .line 478
    invoke-virtual {v1, v2, v0, v4}, Lcom/tencent/connect/share/QzoneShare;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    :cond_10
    const-string v2, "openSDK_LOG.QzoneShare"

    const-string v3, "doShareToQzone() -- QQ Version is < 4.6.0"

    .line 480
    invoke-static {v2, v3}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_11
    const/4 v3, 0x0

    move-object/from16 v5, p3

    const-string v4, "openSDK_LOG.QzoneShare"

    const-string v6, "doShareToQzone() -- QQ Version is > 4.6.0"

    .line 482
    invoke-static {v4, v6}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v4

    const-string v6, "shareToQzone"

    invoke-virtual {v4, v6, v5}, Lcom/tencent/connect/common/UIListenerManager;->setListnerWithAction(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_12

    const-string v4, "openSDK_LOG.QzoneShare"

    const-string v5, "doShareToQzone() -- do listener onCancel()"

    .line 485
    invoke-static {v4, v5}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_12
    invoke-virtual {v1, v0}, Lcom/tencent/connect/share/QzoneShare;->a(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/16 v4, 0x2778

    .line 490
    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/tencent/connect/share/QzoneShare;->a(Landroid/app/Activity;ILandroid/content/Intent;Z)V

    .line 494
    :cond_13
    :goto_4
    invoke-virtual {v1, v0}, Lcom/tencent/connect/share/QzoneShare;->a(Landroid/content/Intent;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_14

    .line 495
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    iget-object v0, v1, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ANDROIDQQ.SHARETOQZ.XX"

    const-string v7, "11"

    const-string v8, "3"

    const-string v9, "0"

    iget-object v10, v1, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    const-string v11, "0"

    const-string v12, "1"

    const-string v13, "0"

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v14

    const/4 v15, 0x0

    const-string v16, "SHARE_CHECK_SDK"

    const-string v17, "1000"

    iget-object v0, v1, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v18

    .line 500
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    const-string v23, ""

    .line 499
    invoke-virtual/range {v14 .. v23}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto :goto_5

    .line 502
    :cond_14
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    iget-object v0, v1, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ANDROIDQQ.SHARETOQZ.XX"

    const-string v7, "11"

    const-string v8, "3"

    const-string v9, "1"

    iget-object v10, v1, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    const-string v11, "0"

    const-string v12, "1"

    const-string v13, "0"

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v14

    const/4 v15, 0x1

    const-string v16, "SHARE_CHECK_SDK"

    const-string v17, "1000"

    iget-object v0, v1, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v18

    .line 507
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    const-string v23, "hasActivityForIntent fail"

    .line 506
    invoke-virtual/range {v14 .. v23}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    :goto_5
    const-string v0, "openSDK_LOG"

    const-string v2, "doShareToQzone() --end"

    .line 509
    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public releaseResource()V
    .locals 0

    return-void
.end method

.method public shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    const-string v4, "openSDK_LOG.QzoneShare"

    const-string v5, "shareToQzone() -- start"

    .line 87
    invoke-static {v4, v5}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x6

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    invoke-direct {v1, v4, v2, v6}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "openSDK_LOG.QzoneShare"

    const-string v2, "shareToQzone() params is null"

    .line 91
    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v6

    const/4 v7, 0x1

    const-string v8, "SHARE_CHECK_SDK"

    const-string v9, "1000"

    iget-object v1, v0, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v10

    .line 93
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v15, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    .line 92
    invoke-virtual/range {v6 .. v15}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    :cond_0
    const-string v7, "title"

    .line 97
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "summary"

    .line 98
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "targetUrl"

    .line 99
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mini_program_appid"

    .line 100
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mini_program_path"

    .line 101
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "imageUrl"

    .line 103
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 104
    invoke-static/range {p1 .. p1}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    if-nez v13, :cond_1

    const-string v13, "appName"

    .line 107
    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v4, 0x14

    if-le v15, v4, :cond_2

    .line 110
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_2
    :goto_0
    const-string v4, "req_type"

    .line 114
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v15, "openSDK_LOG.QzoneShare"

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shareToQzone() get SHARE_TO_QZONE_KEY_TYPE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    packed-switch v4, :pswitch_data_0

    const-string v6, "1"

    .line 129
    iput-object v6, v0, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    const-string v6, "4"

    .line 119
    iput-object v6, v0, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const-string v6, "2"

    .line 125
    iput-object v6, v0, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v6, "1"

    .line 122
    iput-object v6, v0, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    :goto_1
    const/4 v6, -0x5

    if-eq v4, v5, :cond_9

    packed-switch v4, :pswitch_data_1

    .line 177
    invoke-static {v7}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 178
    invoke-static {v8}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v12, :cond_4

    .line 180
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_4

    .line 181
    iput-boolean v14, v0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    goto :goto_2

    .line 183
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u6765\u81ea"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\u7684\u5206\u4eab"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 184
    iput-boolean v5, v0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    goto :goto_2

    .line 188
    :cond_5
    iput-boolean v5, v0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    .line 190
    :goto_2
    iput-boolean v14, v0, Lcom/tencent/connect/share/QzoneShare;->d:Z

    const-string v10, "openSDK_LOG.QzoneShare"

    .line 191
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "-->shareToQzone, default needTitle = true, shareType = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iput-boolean v5, v0, Lcom/tencent/connect/share/QzoneShare;->e:Z

    .line 193
    iput-boolean v14, v0, Lcom/tencent/connect/share/QzoneShare;->f:Z

    goto/16 :goto_3

    .line 168
    :pswitch_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 169
    :cond_6
    new-instance v10, Lcom/tencent/tauth/UiError;

    const-string v11, "\u4f20\u5165\u53c2\u6570\u6709\u8bef!"

    const-string v15, "appid or path empty."

    invoke-direct {v10, v6, v11, v15}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 171
    :cond_7
    iput-boolean v14, v0, Lcom/tencent/connect/share/QzoneShare;->e:Z

    .line 172
    iput-boolean v14, v0, Lcom/tencent/connect/share/QzoneShare;->f:Z

    .line 173
    iput-boolean v14, v0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    goto/16 :goto_3

    :pswitch_3
    const-string v9, "5.0.0"

    .line 136
    invoke-static {v2, v9}, Lcom/tencent/open/utils/k;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 137
    new-instance v1, Lcom/tencent/tauth/UiError;

    const/16 v2, -0xf

    const-string v4, "\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u5e94\u7528\u5206\u4eab\u53ea\u652f\u6301\u624bQ5.0\u53ca\u5176\u4ee5\u4e0a\u7248\u672c"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "openSDK_LOG.QzoneShare"

    const-string v2, "-->shareToQzone, app share is not support below qq5.0."

    .line 138
    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    iget-object v1, v0, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    .line 140
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "shareToQzone, app share is not support below qq5.0."

    .line 139
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    :cond_8
    const-string v9, "http://fusion.qq.com/cgi-bin/qzapps/unified_jump?appid=%1$s&from=%2$s&isOpenAppID=1"

    const/4 v10, 0x2

    .line 144
    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v11}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v14

    const-string v11, "mqq"

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "targetUrl"

    .line 145
    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 155
    :pswitch_4
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "\u8bf7\u9009\u62e9\u652f\u6301\u7684\u5206\u4eab\u7c7b\u578b"

    const/4 v4, 0x0

    invoke-direct {v1, v6, v2, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "openSDK_LOG.QzoneShare"

    const-string v2, "shareToQzone() error--end\u8bf7\u9009\u62e9\u652f\u6301\u7684\u5206\u4eab\u7c7b\u578b"

    .line 157
    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    iget-object v1, v0, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    .line 160
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "shareToQzone() \u8bf7\u9009\u62e9\u652f\u6301\u7684\u5206\u4eab\u7c7b\u578b"

    .line 159
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    :cond_9
    const-string v10, "openSDK_LOG.QzoneShare"

    const-string v11, "-->shareToQzone, SHARE_TO_QZONE_TYPE_IMAGE_TEXT needTitle = true"

    .line 148
    invoke-static {v10, v11}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iput-boolean v5, v0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    .line 150
    iput-boolean v14, v0, Lcom/tencent/connect/share/QzoneShare;->d:Z

    .line 151
    iput-boolean v5, v0, Lcom/tencent/connect/share/QzoneShare;->e:Z

    .line 152
    iput-boolean v14, v0, Lcom/tencent/connect/share/QzoneShare;->f:Z

    .line 199
    :goto_3
    invoke-static {}, Lcom/tencent/open/utils/k;->b()Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "4.5.0"

    .line 200
    invoke-static {v2, v10}, Lcom/tencent/open/utils/k;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 201
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    const/4 v4, 0x0

    const/4 v5, -0x6

    invoke-direct {v1, v5, v2, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "openSDK_LOG.QzoneShare"

    const-string v2, "shareToQzone() sdcard is null--end"

    .line 203
    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    iget-object v1, v0, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    .line 206
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    .line 205
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    .line 212
    :cond_a
    iget-boolean v10, v0, Lcom/tencent/connect/share/QzoneShare;->a:Z

    if-eqz v10, :cond_c

    .line 213
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 214
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "targetUrl\u4e3a\u5fc5\u586b\u9879\uff0c\u8bf7\u8865\u5145\u540e\u5206\u4eab"

    const/4 v4, 0x0

    invoke-direct {v1, v6, v2, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "openSDK_LOG.QzoneShare"

    const-string v2, "shareToQzone() targetUrl null error--end"

    .line 216
    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    iget-object v1, v0, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    .line 218
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "targetUrl\u4e3a\u5fc5\u586b\u9879\uff0c\u8bf7\u8865\u5145\u540e\u5206\u4eab"

    .line 217
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    .line 222
    :cond_b
    invoke-static {v9}, Lcom/tencent/open/utils/k;->g(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 223
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "targetUrl\u6709\u8bef"

    const/4 v4, 0x0

    invoke-direct {v1, v6, v2, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "openSDK_LOG.QzoneShare"

    const-string v2, "shareToQzone() targetUrl error--end"

    .line 225
    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    iget-object v1, v0, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    .line 227
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "targetUrl\u6709\u8bef"

    .line 226
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    .line 233
    :cond_c
    iget-boolean v6, v0, Lcom/tencent/connect/share/QzoneShare;->d:Z

    if-eqz v6, :cond_d

    const-string v6, ""

    const-string v7, ""

    const-string v8, "title"

    .line 236
    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "summary"

    .line 237
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 239
    :cond_d
    iget-boolean v6, v0, Lcom/tencent/connect/share/QzoneShare;->e:Z

    if-eqz v6, :cond_e

    invoke-static {v7}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 240
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "title\u4e0d\u80fd\u4e3a\u7a7a!"

    const/4 v4, 0x0

    const/4 v5, -0x6

    invoke-direct {v1, v5, v2, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "openSDK_LOG.QzoneShare"

    const-string v2, "shareToQzone() title is null--end"

    .line 242
    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    iget-object v1, v0, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    .line 244
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "shareToQzone() title is null"

    .line 243
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    .line 249
    :cond_e
    invoke-static {v7}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v9, 0xc8

    if-le v6, v9, :cond_f

    const/4 v6, 0x0

    .line 251
    invoke-static {v7, v9, v6, v6}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "title"

    .line 252
    invoke-virtual {v1, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    const/4 v6, 0x0

    .line 254
    :goto_4
    invoke-static {v8}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v9, 0x258

    if-le v7, v9, :cond_10

    .line 256
    invoke-static {v8, v9, v6, v6}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "summary"

    .line 257
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_10
    :goto_5
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "appName"

    .line 262
    invoke-virtual {v1, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    if-eqz v12, :cond_16

    if-eqz v12, :cond_12

    .line 266
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_12

    goto :goto_7

    :cond_12
    const/4 v6, 0x0

    .line 277
    :goto_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_14

    .line 278
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 279
    invoke-static {v7}, Lcom/tencent/open/utils/k;->g(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_13

    invoke-static {v7}, Lcom/tencent/open/utils/k;->h(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 281
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    :cond_13
    add-int/2addr v6, v5

    goto :goto_6

    .line 285
    :cond_14
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_15

    .line 286
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "\u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    const/4 v4, 0x0

    const/4 v5, -0x6

    invoke-direct {v1, v5, v2, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "openSDK_LOG.QzoneShare"

    const-string v2, "shareToQzone() MSG_PARAM_IMAGE_URL_FORMAT_ERROR--end"

    .line 288
    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    iget-object v1, v0, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    .line 291
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "shareToQzone() \u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    .line 290
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    :cond_15
    const-string v6, "imageUrl"

    .line 295
    invoke-virtual {v1, v6, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_8

    .line 267
    :cond_16
    :goto_7
    iget-boolean v6, v0, Lcom/tencent/connect/share/QzoneShare;->f:Z

    if-eqz v6, :cond_17

    .line 268
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "\u7eaf\u56fe\u5206\u4eab\uff0cimageUrl \u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v4, 0x0

    const/4 v5, -0x6

    invoke-direct {v1, v5, v2, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "openSDK_LOG.QzoneShare"

    const-string v2, "shareToQzone() imageUrl is null -- end"

    .line 270
    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    iget-object v1, v0, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    .line 272
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "shareToQzone() imageUrl is null"

    .line 271
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    :cond_17
    :goto_8
    const-string v6, "4.6.0"

    .line 298
    invoke-static {v2, v6}, Lcom/tencent/open/utils/k;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_18

    const-string v4, "openSDK_LOG.QzoneShare"

    const-string v5, "shareToQzone() qqver greater than 4.6.0"

    .line 299
    invoke-static {v4, v5}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-direct/range {p0 .. p3}, Lcom/tencent/connect/share/QzoneShare;->b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto/16 :goto_9

    :cond_18
    const-string v6, "4.2.0"

    .line 319
    invoke-static {v2, v6}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1c

    const-string v6, "4.6.0"

    .line 320
    invoke-static {v2, v6}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1c

    const-string v6, "openSDK_LOG.QzoneShare"

    const-string v7, "shareToQzone() qqver between 4.2.0 and 4.6.0, will use qqshare"

    .line 321
    invoke-static {v6, v7}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v6, Lcom/tencent/connect/share/QQShare;

    iget-object v7, v0, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-direct {v6, v2, v7}, Lcom/tencent/connect/share/QQShare;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    if-eqz v12, :cond_1a

    .line 324
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1a

    .line 325
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x5

    if-ne v4, v8, :cond_19

    .line 328
    invoke-static {v7}, Lcom/tencent/open/utils/k;->h(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 329
    new-instance v1, Lcom/tencent/tauth/UiError;

    const-string v2, "\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u7eaf\u56fe\u5206\u4eab\u4e0d\u652f\u6301\u7f51\u8def\u56fe\u7247"

    const/4 v4, 0x0

    const/4 v5, -0x6

    invoke-direct {v1, v5, v2, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v1, "openSDK_LOG.QzoneShare"

    const-string v2, "shareToQzone()\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u7eaf\u56fe\u5206\u4eab\u4e0d\u652f\u6301\u7f51\u8def\u56fe\u7247"

    .line 331
    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    iget-object v1, v0, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    .line 334
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "shareToQzone()\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u7eaf\u56fe\u5206\u4eab\u4e0d\u652f\u6301\u7f51\u8def\u56fe\u7247"

    .line 333
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    :cond_19
    const-string v4, "imageLocalUrl"

    .line 340
    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const-string v4, "4.5.0"

    .line 343
    invoke-static {v2, v4}, Lcom/tencent/open/utils/k;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "cflag"

    .line 344
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    :cond_1b
    invoke-virtual {v6, v2, v1, v3}, Lcom/tencent/connect/share/QQShare;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_9

    :cond_1c
    const-string v1, "openSDK_LOG.QzoneShare"

    const-string v3, "shareToQzone() qqver below 4.2.0, will show download dialog"

    .line 349
    invoke-static {v1, v3}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v7, Lcom/tencent/open/TDialog;

    const-string v3, ""

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/connect/share/QzoneShare;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/tencent/connect/share/QzoneShare;->c:Lcom/tencent/connect/auth/QQToken;

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    invoke-virtual {v7}, Lcom/tencent/open/TDialog;->show()V

    :goto_9
    const-string v1, "openSDK_LOG.QzoneShare"

    const-string v2, "shareToQzone() --end"

    .line 352
    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
