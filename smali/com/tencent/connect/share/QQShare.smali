.class public Lcom/tencent/connect/share/QQShare;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# static fields
.field public static final QQ_SHARE_SUMMARY_MAX_LENGTH:I = 0x200

.field public static final QQ_SHARE_TITLE_MAX_LENGTH:I = 0x80

.field public static final SHARE_TO_QQ_APP_NAME:Ljava/lang/String; = "appName"

.field public static final SHARE_TO_QQ_ARK_INFO:Ljava/lang/String; = "share_to_qq_ark_info"

.field public static final SHARE_TO_QQ_AUDIO_URL:Ljava/lang/String; = "audio_url"

.field public static final SHARE_TO_QQ_EXT_INT:Ljava/lang/String; = "cflag"

.field public static final SHARE_TO_QQ_EXT_STR:Ljava/lang/String; = "share_qq_ext_str"

.field public static final SHARE_TO_QQ_FLAG_QZONE_AUTO_OPEN:I = 0x1

.field public static final SHARE_TO_QQ_FLAG_QZONE_ITEM_HIDE:I = 0x2

.field public static final SHARE_TO_QQ_IMAGE_LOCAL_URL:Ljava/lang/String; = "imageLocalUrl"

.field public static final SHARE_TO_QQ_IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field public static final SHARE_TO_QQ_KEY_TYPE:Ljava/lang/String; = "req_type"

.field public static final SHARE_TO_QQ_MINI_PROGRAM:I = 0x7

.field public static final SHARE_TO_QQ_MINI_PROGRAM_APPID:Ljava/lang/String; = "mini_program_appid"

.field public static final SHARE_TO_QQ_MINI_PROGRAM_PATH:Ljava/lang/String; = "mini_program_path"

.field public static final SHARE_TO_QQ_MINI_PROGRAM_TYPE:Ljava/lang/String; = "mini_program_type"

.field public static final SHARE_TO_QQ_SITE:Ljava/lang/String; = "site"

.field public static final SHARE_TO_QQ_SUMMARY:Ljava/lang/String; = "summary"

.field public static final SHARE_TO_QQ_TARGET_URL:Ljava/lang/String; = "targetUrl"

.field public static final SHARE_TO_QQ_TITLE:Ljava/lang/String; = "title"

.field public static final SHARE_TO_QQ_TYPE_APP:I = 0x6

.field public static final SHARE_TO_QQ_TYPE_AUDIO:I = 0x2

.field public static final SHARE_TO_QQ_TYPE_DEFAULT:I = 0x1

.field public static final SHARE_TO_QQ_TYPE_IMAGE:I = 0x5


# instance fields
.field public mViaShareQQType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
    .locals 0

    .line 84
    invoke-direct {p0, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    const-string p1, ""

    .line 77
    iput-object p1, p0, Lcom/tencent/connect/share/QQShare;->mViaShareQQType:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/share/QQShare;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/connect/share/QQShare;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/connect/share/QQShare;->d(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/connect/share/QQShare;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method private b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 10

    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToMobileQQ() -- start."

    .line 258
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imageUrl"

    .line 259
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    .line 260
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "summary"

    .line 261
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "openSDK_LOG.QQShare"

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shareToMobileQQ -- imageUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 266
    invoke-static {v0}, Lcom/tencent/open/utils/k;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "4.3.0"

    .line 268
    invoke-static {p1, v1}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/connect/share/QQShare;->d(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto/16 :goto_0

    .line 273
    :cond_0
    new-instance v1, Lcom/tencent/open/utils/b;

    invoke-direct {v1, p1}, Lcom/tencent/open/utils/b;-><init>(Landroid/app/Activity;)V

    .line 274
    new-instance v9, Lcom/tencent/connect/share/QQShare$1;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p2

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/tencent/connect/share/QQShare$1;-><init>(Lcom/tencent/connect/share/QQShare;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v9}, Lcom/tencent/open/utils/b;->a(Ljava/lang/String;Lcom/tencent/open/utils/c;)V

    goto :goto_0

    :cond_1
    const-string v1, "imageUrl"

    const/4 v2, 0x0

    .line 307
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "4.3.0"

    .line 308
    invoke-static {p1, v1}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToMobileQQ -- QQ Version is < 4.3.0 "

    .line 311
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/connect/share/QQShare;->d(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_0

    .line 318
    :cond_2
    invoke-static {v0}, Lcom/tencent/open/utils/k;->n(Ljava/lang/String;)Z

    move-result v1

    .line 319
    invoke-static {}, Lcom/tencent/open/utils/k;->d()Z

    move-result v2

    const-string v3, "openSDK_LOG.QQShare"

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shareToMobileQQ -- QQ Version is > 4.3.0:isAppSpecificDir="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",hasSDPermission:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v1, Lcom/tencent/connect/share/QQShare$2;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/tencent/connect/share/QQShare$2;-><init>(Lcom/tencent/connect/share/QQShare;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Landroid/app/Activity;)V

    invoke-static {p1, v0, v1}, Lcom/tencent/connect/share/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/open/utils/c;)V

    goto :goto_0

    :cond_3
    const-string v0, "req_type"

    const/4 v1, 0x1

    .line 366
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 367
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/connect/share/QQShare;->c(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_0

    .line 369
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/connect/share/QQShare;->d(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    :goto_0
    const-string p1, "openSDK_LOG.QQShare"

    const-string p2, "shareToMobileQQ() -- end"

    .line 371
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/connect/share/QQShare;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method private c(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 9

    const-string v0, "imageLocalUrl"

    .line 375
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const/4 v3, 0x0

    const-wide/32 v4, 0x500000

    cmp-long v1, v1, v4

    if-ltz v1, :cond_1

    if-eqz p3, :cond_0

    .line 379
    new-instance p1, Lcom/tencent/tauth/UiError;

    const/16 p2, -0x10

    const-string v0, "\u56fe\u7247\u592a\u5927\uff0c\u8bf7\u538b\u7f29\u52305M\u5185\u518d\u5206\u4eab!"

    invoke-direct {p1, p2, v0, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_0
    const-string p1, "openSDK_LOG.QQShare"

    const-string p2, "doShareImageToQQ -- error: \u56fe\u7247\u592a\u5927\uff0c\u8bf7\u538b\u7f29\u52305M\u5185\u518d\u5206\u4eab!"

    .line 381
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 388
    :cond_1
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Images"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/connect/common/Constants;->QQ_SHARE_TEMP_DIR:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "openSDK_LOG.QQShare"

    const-string v2, "doShareImageToQQ() getExternalFilesDir return null"

    .line 392
    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 395
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 400
    invoke-static {v0}, Lcom/tencent/open/utils/k;->n(Ljava/lang/String;)Z

    move-result v4

    .line 401
    invoke-static {}, Lcom/tencent/open/utils/k;->d()Z

    move-result v5

    const-string v6, "openSDK_LOG.QQShare"

    .line 402
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doShareImageToQQ() check file: isAppSpecificDir="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",hasSDPermission="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",fileDir="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v4, :cond_3

    move-object v1, v0

    goto :goto_1

    .line 422
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-static {v0, v1}, Lcom/tencent/open/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v4, "openSDK_LOG.QQShare"

    .line 425
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doShareImageToQQ() sd permission not denied. copy to app sepcific:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",isSuccess="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v3

    .line 431
    :goto_1
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doShareImageToQQ() destFilePaths=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 434
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "openSDK_LOG.QQShare"

    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imageLocalUrlArray"

    .line 436
    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 438
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/connect/share/QQShare;->d(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method private d(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    const-string v4, "openSDK_LOG.QQShare"

    const-string v5, "doShareToQQ() -- start"

    .line 442
    invoke-static {v4, v5}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "mqqapi://share/to_fri?src_type=app&version=1&file_type=news"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "imageUrl"

    .line 445
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    .line 446
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "summary"

    .line 447
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "targetUrl"

    .line 448
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "audio_url"

    .line 449
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "req_type"

    const/4 v11, 0x1

    .line 450
    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v12, "share_to_qq_ark_info"

    .line 451
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "mini_program_appid"

    .line 452
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "mini_program_path"

    .line 453
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "mini_program_type"

    .line 454
    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v11, "cflag"

    const/4 v3, 0x0

    .line 457
    invoke-virtual {v0, v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v3, "share_qq_ext_str"

    .line 458
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-static/range {p1 .. p1}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_0

    move/from16 v19, v11

    const-string v11, "appName"

    .line 463
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    :cond_0
    move/from16 v19, v11

    :goto_0
    move-object/from16 v20, v3

    move-object/from16 v11, v18

    const-string v3, "imageLocalUrl"

    .line 465
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v12

    const-string v12, "imageLocalUrlArray"

    .line 468
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 470
    iget-object v12, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v12}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v22, v15

    .line 471
    iget-object v15, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v15}, Lcom/tencent/connect/auth/QQToken;->getOpenIdWithCache()Ljava/lang/String;

    move-result-object v15

    const-string v1, "openSDK_LOG.QQShare"

    move-object/from16 v23, v14

    .line 473
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v13

    const-string v13, "doShareToQQ -- openid: "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",appName="

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    .line 482
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v13, v1, :cond_3

    const/4 v13, 0x0

    .line 484
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, ""

    .line 486
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&file_data="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x1

    .line 489
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x7

    if-ne v10, v3, :cond_2

    .line 492
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "8.3.3"

    .line 493
    invoke-static {v2, v3}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    const/4 v0, 0x0

    const-string v3, "openSDK_LOG.QQShare"

    const-string v13, "doShareToQQ() share to mini program set file uri empty"

    .line 495
    invoke-static {v3, v13}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 499
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-static {v12}, Lcom/tencent/tauth/Tencent;->getAuthorities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-static {v2, v0, v3}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "com.tencent.mobileqq"

    const/4 v13, 0x3

    .line 502
    invoke-virtual {v2, v3, v0, v13}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    const-string v3, "&file_uri="

    .line 503
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "openSDK_LOG.QQShare"

    const-string v13, "doShareToQQ() getUriForFile exception:"

    .line 505
    invoke-static {v3, v13, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 509
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "&file_data="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    :cond_4
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&image_url="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&title="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    :cond_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&description="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    :cond_7
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&share_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&url="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    :cond_9
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 531
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x14

    if-le v0, v3, :cond_a

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v11, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    .line 534
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&app_name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 537
    :goto_4
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&open_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    :cond_c
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&audioUrl="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&req_type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&mini_program_appid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    :cond_e
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&mini_program_path="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    :cond_f
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&mini_program_type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    :cond_10
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&share_to_qq_ark_info="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    :cond_11
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&share_qq_ext_str="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 568
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&cflag="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    invoke-static {}, Lcom/tencent/open/utils/k;->d()Z

    move-result v0

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&third_sd="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "openSDK_LOG.QQShare"

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doShareToQQ -- url: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v3, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    const-string v6, "requireApi"

    const-string v7, "shareToNativeQQ"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v3, v6, v7}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V

    .line 578
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "pkg_name"

    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "4.6.0"

    .line 583
    invoke-static {v2, v3}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "openSDK_LOG.QQShare"

    const-string v4, "doShareToQQ, qqver below 4.6."

    .line 584
    invoke-static {v3, v4}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {v1, v0}, Lcom/tencent/connect/share/QQShare;->a(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 586
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v3

    const/16 v4, 0x2b5f

    move-object/from16 v5, p3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/tencent/connect/common/UIListenerManager;->setListenerWithRequestcode(ILcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    .line 588
    invoke-virtual {v1, v2, v0, v4}, Lcom/tencent/connect/share/QQShare;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_5

    :cond_13
    const/4 v6, 0x0

    :cond_14
    :goto_5
    const/4 v4, 0x1

    goto :goto_6

    :cond_15
    move-object/from16 v5, p3

    const/4 v6, 0x0

    const-string v3, "openSDK_LOG.QQShare"

    const-string v4, "doShareToQQ, qqver greater than 4.6."

    .line 591
    invoke-static {v3, v4}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v3

    const-string v4, "shareToQQ"

    invoke-virtual {v3, v4, v5}, Lcom/tencent/connect/common/UIListenerManager;->setListnerWithAction(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16

    const-string v3, "openSDK_LOG.QQShare"

    const-string v4, "doShareToQQ, last listener is not null, cancel it."

    .line 595
    invoke-static {v3, v4}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_16
    invoke-virtual {v1, v0}, Lcom/tencent/connect/share/QQShare;->a(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v3, 0x2777

    const/4 v4, 0x1

    .line 598
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/tencent/connect/share/QQShare;->a(Landroid/app/Activity;ILandroid/content/Intent;Z)V

    :goto_6
    const-string v2, "10"

    move/from16 v3, v19

    if-ne v3, v4, :cond_17

    const-string v2, "11"

    :cond_17
    move-object v11, v2

    .line 605
    invoke-virtual {v1, v0}, Lcom/tencent/connect/share/QQShare;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 606
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v7

    iget-object v0, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v8

    iget-object v0, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ANDROIDQQ.SHARETOQQ.XX"

    const-string v12, "3"

    const-string v13, "0"

    iget-object v14, v1, Lcom/tencent/connect/share/QQShare;->mViaShareQQType:Ljava/lang/String;

    const-string v15, "0"

    const-string v16, "1"

    const-string v17, "0"

    invoke-virtual/range {v7 .. v17}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v18

    const/16 v19, 0x0

    const-string v20, "SHARE_CHECK_SDK"

    const-string v21, "1000"

    iget-object v0, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v22

    .line 610
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string v27, ""

    .line 609
    invoke-virtual/range {v18 .. v27}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto :goto_7

    .line 612
    :cond_18
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v7

    iget-object v0, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v8

    iget-object v0, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ANDROIDQQ.SHARETOQQ.XX"

    const-string v12, "3"

    const-string v13, "1"

    iget-object v14, v1, Lcom/tencent/connect/share/QQShare;->mViaShareQQType:Ljava/lang/String;

    const-string v15, "0"

    const-string v16, "1"

    const-string v17, "0"

    invoke-virtual/range {v7 .. v17}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v18

    const/16 v19, 0x1

    const-string v20, "SHARE_CHECK_SDK"

    const-string v21, "1000"

    iget-object v0, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v22

    .line 616
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string v27, "hasActivityForIntent fail"

    .line 615
    invoke-virtual/range {v18 .. v27}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    :goto_7
    const-string v0, "openSDK_LOG.QQShare"

    const-string v2, "doShareToQQ() --end"

    .line 619
    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public releaseResource()V
    .locals 0

    return-void
.end method

.method public shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    const-string v3, "openSDK_LOG.QQShare"

    const-string v4, "shareToQQ() -- start."

    .line 88
    invoke-static {v3, v4}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "imageUrl"

    .line 89
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "title"

    .line 90
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "summary"

    .line 91
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "targetUrl"

    .line 92
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "imageLocalUrl"

    .line 93
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "mini_program_appid"

    .line 94
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mini_program_path"

    .line 95
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "req_type"

    const/4 v12, 0x1

    .line 96
    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v13, "openSDK_LOG.QQShare"

    .line 97
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "shareToQQ -- type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v13, "9"

    .line 112
    iput-object v13, v1, Lcom/tencent/connect/share/QQShare;->mViaShareQQType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v13, "4"

    .line 109
    iput-object v13, v1, Lcom/tencent/connect/share/QQShare;->mViaShareQQType:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string v13, "2"

    .line 106
    iput-object v13, v1, Lcom/tencent/connect/share/QQShare;->mViaShareQQType:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string v13, "3"

    .line 103
    iput-object v13, v1, Lcom/tencent/connect/share/QQShare;->mViaShareQQType:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const-string v13, "1"

    .line 100
    iput-object v13, v1, Lcom/tencent/connect/share/QQShare;->mViaShareQQType:Ljava/lang/String;

    :goto_0
    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-ne v11, v13, :cond_1

    const-string v6, "5.0.0"

    .line 119
    invoke-static {v0, v6}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 120
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/16 v2, -0xf

    const-string v3, "\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u5e94\u7528\u5206\u4eab\u53ea\u652f\u6301\u624bQ5.0\u53ca\u5176\u4ee5\u4e0a\u7248\u672c"

    invoke-direct {v0, v2, v3, v15}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v0, "openSDK_LOG.QQShare"

    const-string v2, "shareToQQ, app share is not support below qq5.0."

    .line 121
    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    iget-object v0, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    .line 123
    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "shareToQQ, app share is not support below qq5.0."

    .line 122
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    :cond_0
    const-string v6, "http://fusion.qq.com/cgi-bin/qzapps/unified_jump?appid=%1$s&from=%2$s&isOpenAppID=1"

    const/4 v13, 0x2

    .line 127
    new-array v13, v13, [Ljava/lang/Object;

    iget-object v15, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v15}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const-string v15, "mqq"

    aput-object v15, v13, v12

    invoke-static {v6, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v13, "targetUrl"

    .line 128
    invoke-virtual {v2, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_1
    invoke-static {}, Lcom/tencent/open/utils/k;->b()Z

    move-result v13

    const/4 v15, -0x6

    if-nez v13, :cond_2

    const-string v13, "4.5.0"

    .line 136
    invoke-static {v0, v13}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 137
    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string v2, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    const/4 v3, 0x0

    invoke-direct {v0, v15, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v0, "openSDK_LOG.QQShare"

    const-string v2, "shareToQQ sdcard is null--end"

    .line 138
    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    iget-object v0, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    .line 140
    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "shareToQQ sdcard is null"

    .line 139
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    :cond_2
    const/4 v13, 0x5

    if-ne v11, v13, :cond_4

    const-string v12, "4.3.0"

    .line 148
    invoke-static {v0, v12}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 149
    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string v2, "\u4f4e\u7248\u672c\u624bQ\u4e0d\u652f\u6301\u8be5\u9879\u529f\u80fd!"

    const/4 v3, 0x0

    invoke-direct {v0, v15, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v0, "openSDK_LOG.QQShare"

    const-string v2, "shareToQQ, version below 4.3 is not support."

    .line 151
    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    iget-object v0, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    .line 153
    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "shareToQQ, version below 4.3 is not support."

    .line 152
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    .line 158
    :cond_3
    invoke-static {v7}, Lcom/tencent/open/utils/k;->h(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 159
    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string v2, "\u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    const/4 v3, 0x0

    invoke-direct {v0, v15, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v0, "openSDK_LOG.QQShare"

    const-string v2, "shareToQQ -- error: \u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    .line 161
    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    iget-object v0, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    .line 163
    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "\u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    .line 162
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    :cond_4
    const/4 v7, 0x7

    if-eq v11, v13, :cond_7

    if-eq v11, v7, :cond_7

    .line 171
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "http://"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "https://"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_1

    .line 180
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 181
    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string v2, "title\u4e0d\u80fd\u4e3a\u7a7a!"

    const/4 v3, 0x0

    invoke-direct {v0, v15, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v0, "openSDK_LOG.QQShare"

    const-string v2, "shareToQQ, title is empty."

    .line 183
    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    iget-object v0, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    .line 185
    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "shareToQQ, title is empty."

    .line 184
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    .line 172
    :cond_6
    :goto_1
    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string v2, "\u4f20\u5165\u53c2\u6570\u6709\u8bef!"

    const/4 v3, 0x0

    invoke-direct {v0, v15, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v0, "openSDK_LOG.QQShare"

    const-string v2, "shareToQQ, targetUrl is empty or illegal.."

    .line 174
    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    iget-object v0, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    .line 176
    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "shareToQQ, targetUrl is empty or illegal.."

    .line 175
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    :cond_7
    if-ne v11, v7, :cond_c

    .line 192
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v9, -0x5

    if-nez v7, :cond_b

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v6}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    const-string v6, "com.tencent.qqlite"

    .line 196
    invoke-static {v0, v6}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    const-string v6, "8.0.8"

    invoke-static {v0, v6}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_9

    const-string v0, "808\u4ee5\u4e0b\u4e0d\u652f\u6301\u5206\u4eab\u5c0f\u7a0b\u5e8f"

    .line 198
    new-instance v2, Lcom/tencent/tauth/UiError;

    const-string v3, "\u4f4e\u7248\u672c\u624bQ\u4e0d\u652f\u6301\u8be5\u9879\u529f\u80fd!"

    invoke-direct {v2, v9, v3, v0}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    return-void

    .line 202
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 203
    :cond_a
    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string v2, "\u4f20\u5165\u53c2\u6570\u6709\u8bef!"

    const-string v3, "title || summary empty."

    invoke-direct {v0, v9, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    return-void

    .line 193
    :cond_b
    :goto_2
    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string v2, "\u4f20\u5165\u53c2\u6570\u6709\u8bef!"

    const-string v3, "appid || path || url empty."

    invoke-direct {v0, v9, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    return-void

    .line 208
    :cond_c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "http://"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "https://"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 210
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_d

    .line 213
    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string v2, "\u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    const/4 v3, 0x0

    invoke-direct {v0, v15, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v0, "openSDK_LOG.QQShare"

    const-string v2, "shareToQQ, image url is emprty or illegal."

    .line 215
    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    iget-object v0, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    .line 217
    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "shareToQQ, image url is emprty or illegal."

    .line 216
    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    return-void

    .line 223
    :cond_d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x80

    if-le v3, v6, :cond_e

    const/4 v3, 0x0

    .line 225
    invoke-static {v4, v6, v3, v3}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "title"

    .line 226
    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    const/4 v3, 0x0

    .line 228
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x200

    if-le v4, v6, :cond_f

    .line 230
    invoke-static {v5, v6, v3, v3}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "summary"

    .line 231
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-string v3, "cflag"

    .line 234
    invoke-virtual {v2, v3, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    const/4 v14, 0x1

    .line 235
    :cond_10
    invoke-static {v0, v14}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "openSDK_LOG.QQShare"

    const-string v4, "shareToQQ, support share"

    .line 236
    invoke-static {v3, v4}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-direct/range {p0 .. p3}, Lcom/tencent/connect/share/QQShare;->b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_4

    :cond_11
    :try_start_0
    const-string v2, "openSDK_LOG.QQShare"

    const-string v3, "shareToQQ, don\'t support share, will show download dialog"

    .line 240
    invoke-static {v2, v3}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v9, Lcom/tencent/open/TDialog;

    const-string v4, ""

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/tencent/connect/share/QQShare;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/tencent/connect/share/QQShare;->c:Lcom/tencent/connect/auth/QQToken;

    move-object v2, v9

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    invoke-virtual {v9}, Lcom/tencent/open/TDialog;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v2, "openSDK_LOG.QQShare"

    const-string v3, " shareToQQ, TDialog.show not in main thread"

    .line 244
    invoke-static {v2, v3, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 246
    new-instance v0, Lcom/tencent/tauth/UiError;

    const-string v2, "\u6ca1\u6709\u5728\u4e3b\u7ebf\u7a0b\u8c03\u7528\uff01"

    const/4 v3, 0x0

    invoke-direct {v0, v15, v2, v3}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :goto_4
    const-string v0, "openSDK_LOG.QQShare"

    const-string v2, "shareToQQ() -- end."

    .line 251
    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
