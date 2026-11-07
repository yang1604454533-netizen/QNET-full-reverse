.class public Lcom/tencent/open/log/d;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/log/d$c;,
        Lcom/tencent/open/log/d$b;,
        Lcom/tencent/open/log/d$d;,
        Lcom/tencent/open/log/d$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "access_token"

    .line 293
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pay_token"

    .line 294
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pfkey"

    .line 295
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "expires_in"

    .line 296
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "openid"

    .line 297
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "access_token"

    .line 285
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pay_token"

    .line 286
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pfkey"

    .line 287
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "expires_in"

    .line 288
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "openid"

    .line 289
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 301
    invoke-static {p0}, Lcom/tencent/open/log/d;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 305
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p0, "access_token"

    .line 306
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "pay_token"

    .line 307
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "pfkey"

    .line 308
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "expires_in"

    .line 309
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "openid"

    .line 310
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-object v0
.end method
