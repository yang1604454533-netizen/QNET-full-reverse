.class Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;
.super Ljava/lang/Object;
.source "ConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompoundCacheKey"
.end annotation


# instance fields
.field componentOne:Ljava/lang/String;

.field componentTwo:Ljava/lang/String;

.field hashCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    .line 201
    iput-object p2, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentTwo:Ljava/lang/String;

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentTwo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 214
    instance-of v0, p1, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 215
    check-cast p1, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;

    .line 219
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p1, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    iget-object v3, p1, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentOne:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentTwo:Ljava/lang/String;

    iget-object p1, p1, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->componentTwo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl$CompoundCacheKey;->hashCode:I

    return v0
.end method
