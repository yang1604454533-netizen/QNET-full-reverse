.class Lcom/mysql/jdbc/PerVmServerConfigCacheFactory$1;
.super Ljava/lang/Object;
.source "PerVmServerConfigCacheFactory.java"

# interfaces
.implements Lcom/mysql/jdbc/CacheAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/PerVmServerConfigCacheFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mysql/jdbc/CacheAdapter<",
        "Ljava/lang/String;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PerVmServerConfigCacheFactory$1;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/mysql/jdbc/PerVmServerConfigCacheFactory;->serverConfigByUrl:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public bridge synthetic invalidate(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PerVmServerConfigCacheFactory$1;->invalidate(Ljava/lang/String;)V

    return-void
.end method

.method public invalidate(Ljava/lang/String;)V
    .locals 1

    .line 46
    sget-object v0, Lcom/mysql/jdbc/PerVmServerConfigCacheFactory;->serverConfigByUrl:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public invalidateAll()V
    .locals 1

    .line 56
    sget-object v0, Lcom/mysql/jdbc/PerVmServerConfigCacheFactory;->serverConfigByUrl:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public invalidateAll(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    sget-object v1, Lcom/mysql/jdbc/PerVmServerConfigCacheFactory;->serverConfigByUrl:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PerVmServerConfigCacheFactory$1;->put(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/mysql/jdbc/PerVmServerConfigCacheFactory;->serverConfigByUrl:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
