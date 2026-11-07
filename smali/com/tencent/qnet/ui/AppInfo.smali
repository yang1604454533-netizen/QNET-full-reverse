.class public Lcom/tencent/qnet/ui/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appLabel:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppInfo;->appLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/tencent/qnet/ui/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setAppLabel(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/tencent/qnet/ui/AppInfo;->appLabel:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/tencent/qnet/ui/AppInfo;->pkgName:Ljava/lang/String;

    return-void
.end method
