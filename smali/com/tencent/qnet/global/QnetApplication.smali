.class public Lcom/tencent/qnet/global/QnetApplication;
.super Landroid/app/Application;
.source "QnetApplication.java"


# static fields
.field private static bReleaseMode:Z = true

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mSetting:Landroid/content/SharedPreferences;

.field private mWMParas:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static ReleaseMode()Z
    .locals 1

    .line 19
    sget-boolean v0, Lcom/tencent/qnet/global/QnetApplication;->bReleaseMode:Z

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 42
    sget-object v0, Lcom/tencent/qnet/global/QnetApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getmSetting()Landroid/content/SharedPreferences;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tencent/qnet/global/QnetApplication;->mSetting:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 26
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 28
    iget-object v0, p0, Lcom/tencent/qnet/global/QnetApplication;->mWMParas:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/global/QnetApplication;->mWMParas:Landroid/view/WindowManager$LayoutParams;

    .line 31
    :cond_0
    sget-object v0, Lcom/tencent/qnet/global/QnetApplication;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/tencent/qnet/global/QnetApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/qnet/global/QnetApplication;->mContext:Landroid/content/Context;

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/tencent/qnet/global/QnetApplication;->mSetting:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    const-string v0, "wetest_setting"

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qnet/global/QnetApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qnet/global/QnetApplication;->mSetting:Landroid/content/SharedPreferences;

    :cond_2
    return-void
.end method
