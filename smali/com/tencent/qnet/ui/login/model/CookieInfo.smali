.class public Lcom/tencent/qnet/ui/login/model/CookieInfo;
.super Ljava/lang/Object;
.source "CookieInfo.java"


# instance fields
.field private cstfToken:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCstfToken()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/model/CookieInfo;->cstfToken:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginCookie()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/model/CookieInfo;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/model/CookieInfo;->sessionId:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/model/CookieInfo;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public hasCookie()Z
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/model/CookieInfo;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qnet/ui/login/model/CookieInfo;->sessionId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCstfToken(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/model/CookieInfo;->cstfToken:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/model/CookieInfo;->sessionId:Ljava/lang/String;

    return-void
.end method
