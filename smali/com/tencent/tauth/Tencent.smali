.class public Lcom/tencent/tauth/Tencent;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final REQUEST_LOGIN:I = 0x2711

.field private static c:Lcom/tencent/tauth/Tencent;


# instance fields
.field private final a:Lcom/tencent/connect/auth/c;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1, p2}, Lcom/tencent/connect/auth/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/connect/auth/c;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 128
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.tauth.AuthActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 132
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :try_start_1
    new-instance p1, Landroid/content/ComponentName;

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.connect.common.AssistActivity"

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 159
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.connect.common.AssistActivity,\u8bf7\u52a0\u4e0acom.tencent.connect.common.AssistActivity,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n     android:name=\"com.tencent.connect.common.AssistActivity\"\n     android:screenOrientation=\"behind\"\n     android:theme=\"@android:style/Theme.Translucent.NoTitleBar\"\n     android:configChanges=\"orientation|keyboardHidden\">\n</activity>"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "openSDK_LOG.Tencent"

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidManifest.xml \u6ca1\u6709\u68c0\u6d4b\u5230com.tencent.connect.common.AssistActivity\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 137
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity,\u8bf7\u52a0\u4e0acom.tencent.tauth.AuthActivity,\u5e76\u914d\u7f6e<data android:scheme=\"tencent"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" />,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n     android:name=\"com.tencent.tauth.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n    <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" />\n</intent-filter>\n</activity>"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "openSDK_LOG.Tencent"

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidManifest.xml \u6ca1\u6709\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;
    .locals 4

    const-class v0, Lcom/tencent/tauth/Tencent;

    monitor-enter v0

    .line 80
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/open/utils/e;->a(Landroid/content/Context;)V

    const-string v1, "openSDK_LOG.Tencent"

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInstance()  -- start, appId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v1, Lcom/tencent/tauth/Tencent;->c:Lcom/tencent/tauth/Tencent;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lcom/tencent/tauth/Tencent;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tauth/Tencent;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/tauth/Tencent;->c:Lcom/tencent/tauth/Tencent;

    goto :goto_0

    .line 85
    :cond_0
    sget-object v1, Lcom/tencent/tauth/Tencent;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v1}, Lcom/tencent/tauth/Tencent;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    sget-object v1, Lcom/tencent/tauth/Tencent;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v1, p1}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V

    .line 87
    new-instance v1, Lcom/tencent/tauth/Tencent;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tauth/Tencent;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/tauth/Tencent;->c:Lcom/tencent/tauth/Tencent;

    .line 91
    :cond_1
    :goto_0
    invoke-static {p1, p0}, Lcom/tencent/tauth/Tencent;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    const/4 p0, 0x0

    .line 92
    monitor-exit v0

    return-object p0

    .line 95
    :cond_2
    :try_start_1
    invoke-static {p1, p0}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    const-string p0, "openSDK_LOG.Tencent"

    const-string p1, "createInstance()  -- end"

    .line 96
    invoke-static {p0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object p0, Lcom/tencent/tauth/Tencent;->c:Lcom/tencent/tauth/Tencent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 79
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/tauth/Tencent;
    .locals 4

    const-class v0, Lcom/tencent/tauth/Tencent;

    monitor-enter v0

    :try_start_0
    const-string v1, "openSDK_LOG.Tencent"

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInstance()  -- start, appId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", authorities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p0, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 70
    iput-object p2, p0, Lcom/tencent/tauth/Tencent;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "openSDK_LOG.Tencent"

    const-string p2, "null == tencent set mAuthorities fail"

    .line 72
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getAuthorities(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/tencent/tauth/Tencent;

    monitor-enter v0

    .line 101
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "openSDK_LOG.Tencent"

    const-string v1, "TextUtils.isEmpty(appId)"

    .line 102
    invoke-static {p0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit v0

    return-object v2

    .line 106
    :cond_0
    :try_start_1
    sget-object v1, Lcom/tencent/tauth/Tencent;->c:Lcom/tencent/tauth/Tencent;

    if-nez v1, :cond_1

    const-string p0, "openSDK_LOG.Tencent"

    const-string v1, "sInstance == null"

    .line 107
    invoke-static {p0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    monitor-exit v0

    return-object v2

    .line 111
    :cond_1
    :try_start_2
    sget-object v1, Lcom/tencent/tauth/Tencent;->c:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v1}, Lcom/tencent/tauth/Tencent;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/tencent/tauth/Tencent;->c:Lcom/tencent/tauth/Tencent;

    iget-object p0, p0, Lcom/tencent/tauth/Tencent;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 100
    monitor-exit v0

    throw p0
.end method

.method public static handleResultData(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V
    .locals 5

    const-string v0, "openSDK_LOG.Tencent"

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResultData() data = null ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", listener = null ? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/connect/common/UIListenerManager;->handleDataToListener(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public static isSupportPushToQZone(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "5.9.5"

    .line 801
    invoke-static {p0, v0}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    const-string v0, "com.tencent.tim"

    .line 802
    invoke-static {p0, v0}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.qqlite"

    .line 803
    invoke-static {p0, v0}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string v0, "openSDK_LOG.Tencent"

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportPushToQZone() support="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static isSupportShareToQQ(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "isSupportShareToQQ()"

    .line 782
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-static {p0}, Lcom/tencent/open/utils/k;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "com.tencent.minihd.qq"

    .line 785
    invoke-static {p0, v0}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "4.1"

    .line 789
    invoke-static {p0, v0}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    const-string v0, "com.tencent.tim"

    .line 790
    invoke-static {p0, v0}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "com.tencent.qqlite"

    .line 791
    invoke-static {p0, v0}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    const-string p0, "openSDK_LOG.Tencent"

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportShareToQQ() support="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z
    .locals 5

    const-string v0, "openSDK_LOG.Tencent"

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResultData() reqcode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultcode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data = null ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", listener = null ? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/connect/common/UIListenerManager;->onActivityResult(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    move-result p0

    return p0
.end method

.method public static parseMiniParameters(Landroid/content/Intent;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    const-string p0, "openSDK_LOG.Tencent"

    const-string v1, "parseMiniParameters null == intent"

    .line 185
    invoke-static {p0, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "appParameter"

    .line 190
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p0, "openSDK_LOG.Tencent"

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseMiniParameters appParameter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 195
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 197
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    .line 202
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "openSDK_LOG.Tencent"

    const-string v1, "parseMiniParameters uri==null"

    .line 204
    invoke-static {p0, v1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 208
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 209
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "openSDK_LOG.Tencent"

    const-string v1, "parseMiniParameters uriStr isEmpty"

    .line 210
    invoke-static {p0, v1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    const/16 v1, 0x3f

    .line 214
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 215
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "openSDK_LOG.Tencent"

    const-string v1, "parseMiniParameters uriParam is empty"

    .line 216
    invoke-static {p0, v1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    const-string v1, "openSDK_LOG.Tencent"

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseMiniParameters uriParam="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "&"

    .line 221
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 222
    array-length v1, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_7

    .line 224
    aget-object v5, p0, v4

    const-string v6, "="

    .line 225
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 226
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 227
    aget-object v6, v5, v3

    aget-object v5, v5, v2

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "openSDK_LOG.Tencent"

    const-string v2, "Exception"

    .line 231
    invoke-static {v1, v2, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-object v0
.end method

.method public static setCustomLogger(Lcom/tencent/open/log/Tracer;)V
    .locals 2

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "setCustomLogger"

    .line 115
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/tencent/open/log/SLog;->getInstance()Lcom/tencent/open/log/SLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/open/log/SLog;->setCustomLogger(Lcom/tencent/open/log/Tracer;)V

    return-void
.end method


# virtual methods
.method public checkLogin(Lcom/tencent/tauth/IUiListener;)V
    .locals 2

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "checkLogin()"

    .line 467
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0, p1}, Lcom/tencent/connect/auth/c;->a(Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 4

    .line 644
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.Tencent"

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccessToken() accessToken = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 4

    .line 638
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.Tencent"

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppId() appid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExpiresIn()J
    .locals 5

    .line 650
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getExpireTimeInSecond()J

    move-result-wide v0

    const-string v2, "openSDK_LOG.Tencent"

    .line 651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExpiresIn() expiresin= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 4

    .line 666
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.Tencent"

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOpenId() openid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getQQToken()Lcom/tencent/connect/auth/QQToken;
    .locals 2

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "getQQToken()"

    .line 750
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    return-object v0
.end method

.method public handleLoginData(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "openSDK_LOG.Tencent"

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLoginData() data = null ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", listener = null ? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/connect/common/UIListenerManager;->handleDataToListener(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public initSessionCache(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "access_token"

    .line 843
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "expires_in"

    .line 844
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "openid"

    .line 845
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 846
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 847
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 848
    invoke-virtual {p0, v0, v1}, Lcom/tencent/tauth/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0, p1}, Lcom/tencent/tauth/Tencent;->setOpenId(Ljava/lang/String;)V

    :cond_0
    const-string p1, "openSDK_LOG.Tencent"

    const-string v0, "initSessionCache()"

    .line 851
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "QQToken"

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSessionCache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isQQInstalled(Landroid/content/Context;)Z
    .locals 3

    .line 809
    invoke-static {p1}, Lcom/tencent/open/utils/h;->b(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "openSDK_LOG.Tencent"

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isQQInstalled() installed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public isReady()Z
    .locals 4

    .line 744
    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->getOpenId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "openSDK_LOG.Tencent"

    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReady() --ready="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isSessionValid()Z
    .locals 4

    .line 632
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->c()Z

    move-result v0

    const-string v1, "openSDK_LOG.Tencent"

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSessionValid() isvalid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isSupportSSOLogin(Landroid/app/Activity;)Z
    .locals 3

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "isSupportSSOLogin()"

    .line 759
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-static {p1}, Lcom/tencent/open/utils/k;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "com.tencent.minihd.qq"

    .line 762
    invoke-static {p1, v0}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "4.1"

    .line 768
    invoke-static {p1, v0}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    const-string v0, "1.1"

    .line 769
    invoke-static {p1, v0}, Lcom/tencent/open/utils/h;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    const-string p1, "openSDK_LOG.Tencent"

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportSSOLogin() support="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public loadSession(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 830
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/connect/auth/QQToken;->loadSession(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "openSDK_LOG.Tencent"

    .line 831
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSession() appid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", length="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 3

    const-string v0, "openSDK_LOG.Tencent"

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login() with activity, scope is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    move-result p1

    return p1
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)I
    .locals 3

    const-string v0, "openSDK_LOG.Tencent"

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login() with activity, scope is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)I

    move-result p1

    return p1
.end method

.method public login(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 3

    const-string v0, "openSDK_LOG.Tencent"

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login() with fragment, scope is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    const-string v1, ""

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/tencent/connect/auth/c;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public login(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)I
    .locals 8

    const-string v0, "openSDK_LOG.Tencent"

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login() with fragment, scope is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    const-string v6, ""

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/connect/auth/c;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public loginServerSide(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 3

    const-string v0, "openSDK_LOG.Tencent"

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loginServerSide() with activity, scope = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",server_side"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",server_side"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    move-result p1

    return p1
.end method

.method public loginServerSide(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 3

    const-string v0, "openSDK_LOG.Tencent"

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loginServerSide() with fragment, scope = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",server_side"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",server_side"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/tencent/connect/auth/c;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public loginWithOEM(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    const-string v0, "openSDK_LOG.Tencent"

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loginWithOEM() with activity, scope = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 411
    iget-object v3, v0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public logout(Landroid/content/Context;)V
    .locals 2

    const-string p1, "openSDK_LOG.Tencent"

    const-string v0, "logout()"

    .line 420
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object p1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object p1

    const-string v0, "0"

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/tencent/connect/auth/QQToken;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object p1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tencent/connect/auth/QQToken;->setOpenId(Ljava/lang/String;)V

    .line 423
    iget-object p1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/connect/auth/QQToken;->removeSession(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const-string p1, "openSDK_LOG.Tencent"

    const-string p2, "onActivityResult() deprecated, will do nothing"

    .line 613
    invoke-static {p1, p2}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 2

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "publishToQzone()"

    .line 528
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance v0, Lcom/tencent/connect/share/QzonePublish;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/tencent/connect/share/QzonePublish;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    .line 530
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/share/QzonePublish;->publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public reAuth(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 3

    const-string v0, "openSDK_LOG.Tencent"

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reAuth() with activity, scope = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/auth/c;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    move-result p1

    return p1
.end method

.method public releaseResource()V
    .locals 0

    return-void
.end method

.method public reportDAU()V
    .locals 2

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "reportDAU() "

    .line 457
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->a()V

    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;,
            Lcom/tencent/open/utils/HttpUtils$HttpStatusException;
        }
    .end annotation

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "request()"

    .line 510
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/tencent/open/utils/HttpUtils;->request(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public requestAsync(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
    .locals 7

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "requestAsync()"

    .line 486
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    return-void
.end method

.method public saveSession(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "openSDK_LOG.Tencent"

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveSession() length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/connect/auth/QQToken;->saveSession(Lorg/json/JSONObject;)V

    return-void
.end method

.method public setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "openSDK_LOG.Tencent"

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAccessToken(), expiresIn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/connect/auth/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 3

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "setAvatar()"

    .line 542
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "picture"

    .line 543
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "exitAnim"

    .line 544
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 545
    new-instance v1, Lcom/tencent/connect/avatar/QQAvatar;

    iget-object v2, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/connect/avatar/QQAvatar;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    .line 546
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, p1, v0, p3, p2}, Lcom/tencent/connect/avatar/QQAvatar;->setAvatar(Landroid/app/Activity;Landroid/net/Uri;Lcom/tencent/tauth/IUiListener;I)V

    return-void
.end method

.method public setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;II)V
    .locals 2

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "setAvatar()"

    .line 561
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "exitAnim"

    .line 562
    invoke-virtual {p2, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p5, 0x0

    .line 564
    invoke-virtual {p1, p4, p5}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 565
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->setAvatar(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public setAvatarByQQ(Landroid/app/Activity;Landroid/net/Uri;Lcom/tencent/tauth/IUiListener;)V
    .locals 2

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "setAvatarByQQ()"

    .line 576
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v0, Lcom/tencent/connect/avatar/QQAvatar;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/connect/avatar/QQAvatar;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    .line 578
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/avatar/QQAvatar;->setAvatarByQQ(Landroid/app/Activity;Landroid/net/Uri;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public setDynamicAvatar(Landroid/app/Activity;Landroid/net/Uri;Lcom/tencent/tauth/IUiListener;)V
    .locals 2

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "setDynamicAvatar()"

    .line 589
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    new-instance v0, Lcom/tencent/connect/avatar/QQAvatar;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/connect/avatar/QQAvatar;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    .line 591
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/avatar/QQAvatar;->setDynamicAvatar(Landroid/app/Activity;Landroid/net/Uri;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public setEmotions(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/tencent/tauth/IUiListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/tencent/tauth/IUiListener;",
            ")V"
        }
    .end annotation

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "saveQQEmotions()"

    .line 601
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    new-instance v0, Lcom/tencent/connect/emotion/QQEmotion;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/connect/emotion/QQEmotion;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    .line 603
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/emotion/QQEmotion;->setEmotions(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 2

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "setOpenId() --start"

    .line 731
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/connect/auth/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "openSDK_LOG.Tencent"

    const-string v0, "setOpenId() --end"

    .line 735
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 2

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "shareToQQ()"

    .line 516
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v0, Lcom/tencent/connect/share/QQShare;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/tencent/connect/share/QQShare;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    .line 518
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/share/QQShare;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 2

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "shareToQzone()"

    .line 522
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    new-instance v0, Lcom/tencent/connect/share/QzoneShare;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/tencent/connect/share/QzoneShare;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    .line 524
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/connect/share/QzoneShare;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public startIMAio(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "startIMAio()"

    .line 866
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "thirdparty2c"

    .line 867
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/tencent/tauth/Tencent;->startIMConversation(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startIMAudio(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "startIMAudio()"

    .line 879
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio_chat"

    .line 880
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/tencent/tauth/Tencent;->startIMConversation(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startIMConversation(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 897
    new-instance v0, Lcom/tencent/open/im/IM;

    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->getQQToken()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/open/im/IM;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    .line 898
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/open/im/IM;->startIMConversation(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startIMVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "startIMVideo()"

    .line 892
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video_chat"

    .line 893
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/tencent/tauth/Tencent;->startIMConversation(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startMiniApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const-string v0, "openSDK_LOG.Tencent"

    const-string v1, "startMiniApp()"

    .line 912
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    new-instance v2, Lcom/tencent/open/miniapp/MiniApp;

    invoke-virtual {p0}, Lcom/tencent/tauth/Tencent;->getQQToken()Lcom/tencent/connect/auth/QQToken;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/open/miniapp/MiniApp;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    const-string v4, "mini_program_or_game"

    const-string v6, "21"

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    .line 914
    invoke-virtual/range {v2 .. v8}, Lcom/tencent/open/miniapp/MiniApp;->startMiniApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
