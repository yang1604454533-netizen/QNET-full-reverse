.class Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;
.super Ljava/lang/Object;
.source "PerConnectionLRUFactory.java"

# interfaces
.implements Lcom/mysql/jdbc/CacheAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/PerConnectionLRUFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerConnectionLRU"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mysql/jdbc/CacheAdapter<",
        "Ljava/lang/String;",
        "Lcom/mysql/jdbc/PreparedStatement$ParseInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final cache:Lcom/mysql/jdbc/util/LRUCache;

.field private final cacheSqlLimit:I

.field private final conn:Lcom/mysql/jdbc/Connection;

.field final synthetic this$0:Lcom/mysql/jdbc/PerConnectionLRUFactory;


# direct methods
.method protected constructor <init>(Lcom/mysql/jdbc/PerConnectionLRUFactory;Lcom/mysql/jdbc/Connection;II)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->this$0:Lcom/mysql/jdbc/PerConnectionLRUFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p4, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cacheSqlLimit:I

    .line 49
    new-instance p1, Lcom/mysql/jdbc/util/LRUCache;

    invoke-direct {p1, p3}, Lcom/mysql/jdbc/util/LRUCache;-><init>(I)V

    iput-object p1, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cache:Lcom/mysql/jdbc/util/LRUCache;

    .line 50
    iput-object p2, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->conn:Lcom/mysql/jdbc/Connection;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    .locals 2

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cacheSqlLimit:I

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->conn:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/util/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->get(Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invalidate(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->invalidate(Ljava/lang/String;)V

    return-void
.end method

.method public invalidate(Ljava/lang/String;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->conn:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/util/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public invalidateAll()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->conn:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v1}, Lcom/mysql/jdbc/util/LRUCache;->clear()V

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public invalidateAll(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->conn:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 81
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    iget-object v2, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/util/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->put(Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cacheSqlLimit:I

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->conn:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PerConnectionLRUFactory$PerConnectionLRU;->cache:Lcom/mysql/jdbc/util/LRUCache;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/util/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
