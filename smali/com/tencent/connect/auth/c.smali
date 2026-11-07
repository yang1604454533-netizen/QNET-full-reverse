.class public Lcom/tencent/connect/auth/c;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/tencent/connect/auth/AuthAgent;

.field private b:Lcom/tencent/connect/auth/QQToken;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "new QQAuth() --start"

    .line 40
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/tencent/connect/auth/QQToken;

    invoke-direct {v0, p1}, Lcom/tencent/connect/auth/QQToken;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    .line 42
    new-instance p1, Lcom/tencent/connect/auth/AuthAgent;

    iget-object v0, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-direct {p1, v0}, Lcom/tencent/connect/auth/AuthAgent;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    iput-object p1, p0, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    .line 43
    iget-object p1, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-static {p2, p1}, Lcom/tencent/connect/a/a;->c(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    const-string p1, "3.3.8.lite"

    .line 44
    invoke-static {p2, p1}, Lcom/tencent/connect/auth/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "openSDK_LOG.QQAuth"

    const-string p2, "new QQAuth() --end"

    .line 45
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 196
    invoke-direct/range {v0 .. v6}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method private a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I
    .locals 11

    .line 210
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x80

    .line 214
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 215
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 216
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :cond_1
    if-eqz v2, :cond_2

    .line 222
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/open/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .line 223
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "openSDK_LOG.QQAuth"

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->login channelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, ""

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p6

    move-object v8, v9

    .line 225
    invoke-virtual/range {v3 .. v10}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "openSDK_LOG.QQAuth"

    const-string v2, "-->login get channel id exception."

    .line 229
    invoke-static {v1, v2, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "-->login channelId is null "

    .line 232
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 234
    sput-boolean v0, Lcom/tencent/connect/common/BaseApi;->isOEM:Z

    move-object v1, p0

    .line 235
    iget-object v2, v1, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, p2

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;Z)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/connect/auth/c;
    .locals 5

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/utils/e;->a(Landroid/content/Context;)V

    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "QQAuth -- createInstance() --start"

    .line 72
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 75
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.tauth.AuthActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 80
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tencent.connect.common.AssistActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    new-instance v0, Lcom/tencent/connect/auth/c;

    invoke-direct {v0, p0, p1}, Lcom/tencent/connect/auth/c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const-string p0, "openSDK_LOG.QQAuth"

    const-string p1, "QQAuth -- createInstance()  --end"

    .line 94
    invoke-static {p0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "createInstance() error --end"

    .line 85
    invoke-static {v0, v1, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "\u8bf7\u53c2\u7167\u6587\u6863\u5728Androidmanifest.xml\u52a0\u4e0aAuthActivity\u548cAssitActivity\u7684\u5b9a\u4e49 "

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "BuglySdkInfos"

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 56
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "bcb3903995"

    .line 57
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 2

    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "login()"

    .line 117
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 118
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I
    .locals 8

    const-string v0, "openSDK_LOG.QQAuth"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->login activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 147
    invoke-direct/range {v2 .. v7}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)I
    .locals 9

    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "login()"

    .line 122
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, ""

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p4

    .line 123
    invoke-direct/range {v2 .. v8}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "loginWithOEM"

    .line 253
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 254
    sput-boolean v0, Lcom/tencent/connect/common/BaseApi;->isOEM:Z

    const-string v0, ""

    .line 256
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p5, "null"

    :cond_0
    const-string v0, ""

    .line 259
    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p6, "null"

    :cond_1
    const-string v0, ""

    .line 262
    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p7, "null"

    .line 265
    :cond_2
    sput-object p6, Lcom/tencent/connect/common/BaseApi;->installChannel:Ljava/lang/String;

    .line 266
    sput-object p5, Lcom/tencent/connect/common/BaseApi;->registerChannel:Ljava/lang/String;

    .line 267
    sput-object p7, Lcom/tencent/connect/common/BaseApi;->businessId:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;Z)I

    move-result p1

    return p1
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I
    .locals 6

    .line 171
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v0, "openSDK_LOG.QQAuth"

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->login activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 173
    invoke-direct/range {v0 .. v5}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I
    .locals 7

    .line 181
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v0, "openSDK_LOG.QQAuth"

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->login activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 183
    invoke-direct/range {v0 .. v6}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/connect/auth/AuthAgent;->a(Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public a(Lcom/tencent/tauth/IUiListener;)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-virtual {v0, p1}, Lcom/tencent/connect/auth/AuthAgent;->b(Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "openSDK_LOG.QQAuth"

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAccessToken(), validTimeInSecond = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/connect/auth/QQToken;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 8

    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "reAuth()"

    .line 291
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;)I

    move-result p1

    return p1
.end method

.method public b()Lcom/tencent/connect/auth/QQToken;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "openSDK_LOG.QQAuth"

    const-string v1, "setOpenId() --start"

    .line 373
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0, p2}, Lcom/tencent/connect/auth/QQToken;->setOpenId(Ljava/lang/String;)V

    .line 375
    iget-object p2, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-static {p1, p2}, Lcom/tencent/connect/a/a;->d(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    const-string p1, "openSDK_LOG.QQAuth"

    const-string p2, "setOpenId() --end"

    .line 376
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 3

    const-string v0, "openSDK_LOG.QQAuth"

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSessionValid(), result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "true"

    goto :goto_0

    :cond_0
    const-string v2, "false"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z

    move-result v0

    return v0
.end method
