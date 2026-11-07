.class public Lcom/tencent/qnet/ui/AppProxyManager;
.super Ljava/lang/Object;
.source "AppProxyManager.java"


# static fields
.field public static Instance:Lcom/tencent/qnet/ui/AppProxyManager; = null

.field private static final PROXY_APPS:Ljava/lang/String; = "PROXY_APPS"

.field public static isLollipopOrAbove:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field public mlistAppInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/qnet/ui/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public proxyAppInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/qnet/ui/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/tencent/qnet/ui/AppProxyManager;->isLollipopOrAbove:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/ui/AppProxyManager;->mlistAppInfo:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/ui/AppProxyManager;->proxyAppInfo:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/tencent/qnet/ui/AppProxyManager;->mContext:Landroid/content/Context;

    .line 28
    sput-object p0, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    .line 29
    invoke-direct {p0}, Lcom/tencent/qnet/ui/AppProxyManager;->readProxyAppsList()V

    return-void
.end method

.method private readProxyAppsList()V
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppProxyManager;->mContext:Landroid/content/Context;

    const-string v1, "qnetProxyUrl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PROXY_APPS"

    const-string v3, ""

    .line 79
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qnet/ui/AppProxyManager;->proxyAppInfo:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/tencent/qnet/ui/AppProxyManager;->proxyAppInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 87
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 88
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 89
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 90
    new-instance v3, Lcom/tencent/qnet/ui/AppInfo;

    invoke-direct {v3}, Lcom/tencent/qnet/ui/AppInfo;-><init>()V

    const-string v4, "label"

    .line 91
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/qnet/ui/AppInfo;->setAppLabel(Ljava/lang/String;)V

    const-string v4, "pkg"

    .line 92
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qnet/ui/AppInfo;->setPkgName(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppProxyManager;->proxyAppInfo:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private writeProxyAppsList()V
    .locals 7

    .line 101
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppProxyManager;->mContext:Landroid/content/Context;

    const-string v1, "qnetProxyUrl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 104
    :goto_0
    iget-object v3, p0, Lcom/tencent/qnet/ui/AppProxyManager;->proxyAppInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 105
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 106
    iget-object v4, p0, Lcom/tencent/qnet/ui/AppProxyManager;->proxyAppInfo:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qnet/ui/AppInfo;

    const-string v5, "label"

    .line 107
    invoke-virtual {v4}, Lcom/tencent/qnet/ui/AppInfo;->getAppLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "pkg"

    .line 108
    invoke-virtual {v4}, Lcom/tencent/qnet/ui/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "PROXY_APPS"

    .line 112
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public addProxyApp(Ljava/lang/String;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppProxyManager;->mlistAppInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qnet/ui/AppInfo;

    .line 44
    invoke-virtual {v1}, Lcom/tencent/qnet/ui/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    iget-object p1, p0, Lcom/tencent/qnet/ui/AppProxyManager;->proxyAppInfo:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qnet/ui/AppProxyManager;->writeProxyAppsList()V

    return-void
.end method

.method public getProxyApp()Lcom/tencent/qnet/ui/AppInfo;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppProxyManager;->proxyAppInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppProxyManager;->proxyAppInfo:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qnet/ui/AppInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAppProxy(Ljava/lang/String;)Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppProxyManager;->proxyAppInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qnet/ui/AppInfo;

    .line 70
    invoke-virtual {v1}, Lcom/tencent/qnet/ui/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeProxyApp(Ljava/lang/String;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppProxyManager;->proxyAppInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qnet/ui/AppInfo;

    .line 34
    invoke-virtual {v1}, Lcom/tencent/qnet/ui/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    iget-object p1, p0, Lcom/tencent/qnet/ui/AppProxyManager;->proxyAppInfo:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qnet/ui/AppProxyManager;->writeProxyAppsList()V

    return-void
.end method

.method public setProxyApp(Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppProxyManager;->proxyAppInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/AppProxyManager;->addProxyApp(Ljava/lang/String;)V

    return-void
.end method
