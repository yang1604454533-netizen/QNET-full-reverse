.class public Lcom/tencent/connect/auth/AuthAgent;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/auth/AuthAgent$b;,
        Lcom/tencent/connect/auth/AuthAgent$a;,
        Lcom/tencent/connect/auth/AuthAgent$c;
    }
.end annotation


# static fields
.field public static final KEY_FORCE_QR_LOGIN:Ljava/lang/String; = "KEY_FORCE_QR_LOGIN"

.field public static final SECURE_LIB_ARM64_FILE_NAME:Ljava/lang/String; = "libwbsafeedit_64"

.field public static final SECURE_LIB_ARM_FILE_NAME:Ljava/lang/String; = "libwbsafeedit"

.field public static SECURE_LIB_FILE_NAME:Ljava/lang/String; = "libwbsafeedit"

.field public static SECURE_LIB_NAME:Ljava/lang/String; = null

.field public static final SECURE_LIB_X86_64_FILE_NAME:Ljava/lang/String; = "libwbsafeedit_x86_64"

.field public static final SECURE_LIB_X86_FILE_NAME:Ljava/lang/String; = "libwbsafeedit_x86"


# instance fields
.field private a:Lcom/tencent/tauth/IUiListener;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    .line 100
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, ""

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "arm64-v8a"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "libwbsafeedit_64"

    .line 103
    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "is arm64-v8a architecture"

    .line 105
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "x86"

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "libwbsafeedit_x86"

    .line 107
    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "is x86 architecture"

    .line 109
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "x86_64"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "libwbsafeedit_x86_64"

    .line 111
    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "is x86_64 architecture"

    .line 113
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "libwbsafeedit"

    .line 115
    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "is arm(default) architecture"

    .line 117
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "libwbsafeedit"

    .line 120
    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "is arm(default) architecture"

    .line 122
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/tencent/connect/auth/QQToken;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method

.method private a(ZLcom/tencent/tauth/IUiListener;Z)I
    .locals 6

    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "OpenUi, showDialog -- start"

    .line 255
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 258
    invoke-virtual {p0}, Lcom/tencent/connect/auth/AuthAgent;->a()Landroid/os/Bundle;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "isadd"

    const-string v1, "1"

    .line 260
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "scope"

    .line 262
    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "client_id"

    .line 263
    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-boolean p1, Lcom/tencent/connect/auth/AuthAgent;->isOEM:Z

    if-eqz p1, :cond_1

    const-string p1, "pf"

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desktop_m_qq-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/connect/auth/AuthAgent;->installChannel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/connect/auth/AuthAgent;->registerChannel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/connect/auth/AuthAgent;->businessId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "pf"

    const-string v1, "openmobile_android"

    .line 267
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/tencent/open/utils/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    .line 273
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "time"

    .line 274
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "display"

    const-string v1, "mobile"

    .line 277
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "response_type"

    const-string v1, "token"

    .line 278
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "redirect_uri"

    const-string v1, "auth://tauth.qq.com/"

    .line 279
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cancel_display"

    const-string v1, "1"

    .line 281
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "switch"

    const-string v1, "1"

    .line 282
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "status_userip"

    .line 284
    invoke-static {}, Lcom/tencent/open/utils/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string p1, "style"

    const-string p3, "qr"

    .line 286
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Lcom/tencent/open/utils/g;

    move-result-object p3

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "https://openmobile.qq.com/oauth2.0/m_authorize?"

    invoke-virtual {p3, v1, v2}, Lcom/tencent/open/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-static {v0}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 294
    new-instance p3, Lcom/tencent/connect/auth/AuthAgent$c;

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/connect/auth/AuthAgent$c;-><init>(Lcom/tencent/connect/auth/AuthAgent;Landroid/content/Context;Lcom/tencent/tauth/IUiListener;ZZ)V

    const-string p2, "openSDK_LOG.AuthAgent"

    const-string v0, "OpenUi, showDialog TDialog"

    .line 296
    invoke-static {p2, v0}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance p2, Lcom/tencent/connect/auth/AuthAgent$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/tencent/connect/auth/AuthAgent$1;-><init>(Lcom/tencent/connect/auth/AuthAgent;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    invoke-static {p2}, Lcom/tencent/open/utils/i;->a(Ljava/lang/Runnable;)V

    const-string p1, "openSDK_LOG.AuthAgent"

    const-string p2, "OpenUi, showDialog -- end"

    .line 330
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1
.end method

.method static synthetic a(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method private a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 8

    const-string v0, "status_os"

    .line 385
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status_machine"

    .line 386
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "status_version"

    .line 387
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdkv"

    .line 388
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "client_id"

    .line 389
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "need_pay"

    .line 390
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pf"

    .line 391
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 393
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "os="

    .line 394
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", machine="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", version="

    .line 395
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", sdkv="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", appId="

    .line 396
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", needPay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", pf="

    .line 397
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "openSDK_LOG.AuthAgent"

    .line 398
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_2

    const-string v2, ""

    :cond_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_4

    const-string v4, ""

    :cond_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_5

    const-string v5, ""

    :cond_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_6

    const-string p1, ""

    :cond_6
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/connect/auth/AuthAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/tencent/connect/auth/AuthAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Z)Z
    .locals 10

    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "startActionActivity() -- start"

    .line 335
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.tencent.open.agent.AgentActivity"

    .line 336
    invoke-virtual {p0, v0}, Lcom/tencent/connect/auth/AuthAgent;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 340
    invoke-virtual {p0}, Lcom/tencent/connect/auth/AuthAgent;->a()Landroid/os/Bundle;

    move-result-object v1

    if-eqz p3, :cond_0

    const-string p3, "isadd"

    const-string v2, "1"

    .line 342
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p3, "scope"

    .line 344
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthAgent;->d:Ljava/lang/String;

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "client_id"

    .line 345
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-boolean p3, Lcom/tencent/connect/auth/AuthAgent;->isOEM:Z

    if-eqz p3, :cond_1

    const-string p3, "pf"

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "desktop_m_qq-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/connect/auth/AuthAgent;->installChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/connect/auth/AuthAgent;->registerChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/connect/auth/AuthAgent;->businessId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p3, "pf"

    const-string v2, "openmobile_android"

    .line 350
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p3, "need_pay"

    const-string v2, "1"

    .line 352
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "oauth_app_name"

    .line 353
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "key_action"

    const-string v2, "action_login"

    .line 354
    invoke-virtual {v0, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "key_params"

    .line 355
    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p3, "appid"

    .line 356
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "ppsts"

    .line 358
    invoke-direct {p0, v1}, Lcom/tencent/connect/auth/AuthAgent;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/tencent/open/utils/h;->a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0, v0}, Lcom/tencent/connect/auth/AuthAgent;->a(Landroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 361
    new-instance p3, Lcom/tencent/connect/auth/AuthAgent$b;

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent;->a:Lcom/tencent/tauth/IUiListener;

    invoke-direct {p3, p0, v1}, Lcom/tencent/connect/auth/AuthAgent$b;-><init>(Lcom/tencent/connect/auth/AuthAgent;Lcom/tencent/tauth/IUiListener;)V

    .line 362
    iput-object p3, p0, Lcom/tencent/connect/auth/AuthAgent;->a:Lcom/tencent/tauth/IUiListener;

    .line 364
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object p3

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent;->a:Lcom/tencent/tauth/IUiListener;

    const/16 v2, 0x2b5d

    invoke-virtual {p3, v2, v1}, Lcom/tencent/connect/common/UIListenerManager;->setListenerWithRequestcode(ILcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    const-string p1, "openSDK_LOG.AuthAgent"

    const-string p3, "startAssitActivity fragment"

    .line 366
    invoke-static {p1, p3}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0, p2, v0, v2}, Lcom/tencent/connect/auth/AuthAgent;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_1

    :cond_2
    const-string p2, "openSDK_LOG.AuthAgent"

    const-string p3, "startAssitActivity activity"

    .line 369
    invoke-static {p2, p3}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0, p1, v0, v2}, Lcom/tencent/connect/auth/AuthAgent;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    :goto_1
    const-string p1, "openSDK_LOG.AuthAgent"

    const-string p2, "startActionActivity() -- end, found activity for loginIntent"

    .line 372
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LOGIN_CHECK_SDK"

    const-string v3, "1000"

    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    .line 374
    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, ""

    .line 373
    invoke-virtual/range {v0 .. v9}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 378
    :cond_3
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "LOGIN_CHECK_SDK"

    const-string v3, "1000"

    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 379
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "startActionActivity fail"

    .line 378
    invoke-virtual/range {v0 .. v9}, Lcom/tencent/open/a/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    const-string p1, "openSDK_LOG.AuthAgent"

    const-string p2, "startActionActivity() -- end, no target activity for loginIntent"

    .line 380
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic d(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic e(Lcom/tencent/connect/auth/AuthAgent;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->e:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic f(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic g(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic h(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic i(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method

.method static synthetic j(Lcom/tencent/connect/auth/AuthAgent;)Landroid/os/Bundle;
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/tencent/connect/auth/AuthAgent;->b()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/tencent/tauth/IUiListener;)V
    .locals 7

    const-string p1, "openSDK_LOG.AuthAgent"

    const-string v0, "reportDAU() -- start"

    .line 415
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "tencent&sdk&qazxc***14969%%"

    const-string v0, "qzone3.4"

    .line 418
    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 419
    iget-object v2, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v2

    .line 420
    iget-object v3, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 422
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/open/utils/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 425
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "openSDK_LOG.AuthAgent"

    const-string v0, "reportDAU -- encrytoken is null"

    .line 426
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v3, "https://openmobile.qq.com/user/user_login_statis"

    .line 430
    invoke-virtual {p0}, Lcom/tencent/connect/auth/AuthAgent;->a()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "encrytoken"

    .line 431
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    const-string v5, "POST"

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    const-string p1, "openSDK_LOG.AuthAgent"

    const-string v0, "reportDAU() -- end"

    .line 433
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Lcom/tencent/tauth/IUiListener;)V
    .locals 6

    const-string v2, "https://openmobile.qq.com/v3/user/get_info"

    .line 443
    invoke-virtual {p0}, Lcom/tencent/connect/auth/AuthAgent;->a()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "reqType"

    const-string v1, "checkLogin"

    .line 444
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;

    new-instance v0, Lcom/tencent/connect/auth/AuthAgent$a;

    invoke-direct {v0, p0, p1}, Lcom/tencent/connect/auth/AuthAgent$a;-><init>(Lcom/tencent/connect/auth/AuthAgent;Lcom/tencent/tauth/IUiListener;)V

    invoke-direct {v5, p0, v0}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V

    .line 446
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v1

    const-string v4, "GET"

    invoke-static/range {v0 .. v5}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    return-void
.end method

.method public doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 211
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;)I

    move-result p1

    return p1
.end method

.method public doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;)I
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 215
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;Z)I

    move-result p1

    return p1
.end method

.method public doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;Z)I
    .locals 9

    .line 219
    iput-object p2, p0, Lcom/tencent/connect/auth/AuthAgent;->d:Ljava/lang/String;

    .line 220
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/tencent/connect/auth/AuthAgent;->e:Ljava/lang/ref/WeakReference;

    .line 221
    iput-object p3, p0, Lcom/tencent/connect/auth/AuthAgent;->a:Lcom/tencent/tauth/IUiListener;

    .line 223
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "KEY_FORCE_QR_LOGIN"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    .line 224
    iget-object p2, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p2}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object p2

    const-string p3, "C_LoginWeb"

    invoke-virtual {p2, p3}, Lcom/tencent/open/utils/f;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, p1, p5, p4}, Lcom/tencent/connect/auth/AuthAgent;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "openSDK_LOG.AuthAgent"

    const-string p2, "OpenUi, showUi, return Constants.UI_ACTIVITY"

    .line 228
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v0

    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    const-string v4, "1"

    const-string v5, "5"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "0"

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 234
    :cond_0
    invoke-static {}, Lcom/tencent/open/a/d;->a()Lcom/tencent/open/a/d;

    move-result-object v0

    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    const-string v4, "1"

    const-string v5, "5"

    const-string v6, "1"

    const-string v7, "0"

    const-string v8, "0"

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/open/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "openSDK_LOG.AuthAgent"

    const-string p2, "doLogin startActivity fail show dialog."

    .line 237
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance p1, Lcom/tencent/connect/auth/AuthAgent$b;

    iget-object p2, p0, Lcom/tencent/connect/auth/AuthAgent;->a:Lcom/tencent/tauth/IUiListener;

    invoke-direct {p1, p0, p2}, Lcom/tencent/connect/auth/AuthAgent$b;-><init>(Lcom/tencent/connect/auth/AuthAgent;Lcom/tencent/tauth/IUiListener;)V

    .line 239
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->a:Lcom/tencent/tauth/IUiListener;

    .line 240
    iget-object p1, p0, Lcom/tencent/connect/auth/AuthAgent;->a:Lcom/tencent/tauth/IUiListener;

    invoke-direct {p0, p4, p1, p6}, Lcom/tencent/connect/auth/AuthAgent;->a(ZLcom/tencent/tauth/IUiListener;Z)I

    move-result p1

    return p1
.end method

.method public releaseResource()V
    .locals 1

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/tencent/connect/auth/AuthAgent;->a:Lcom/tencent/tauth/IUiListener;

    return-void
.end method
