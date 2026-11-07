.class Lcom/mysql/jdbc/ConnectionImpl$3;
.super Lcom/mysql/jdbc/util/LRUCache;
.source "ConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/ConnectionImpl;->createPreparedStatementCaches()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6ac09b0e8ec5e392L


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/ConnectionImpl;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ConnectionImpl;I)V
    .locals 0

    .line 2329
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$3;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-direct {p0, p2}, Lcom/mysql/jdbc/util/LRUCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 2330
    iget v0, p0, Lcom/mysql/jdbc/ConnectionImpl$3;->maxElements:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    .line 2334
    :cond_0
    invoke-super {p0, p1}, Lcom/mysql/jdbc/util/LRUCache;->removeEldestEntry(Ljava/util/Map$Entry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2337
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/ServerPreparedStatement;

    .line 2338
    iput-boolean v1, p1, Lcom/mysql/jdbc/ServerPreparedStatement;->isCached:Z

    .line 2339
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/ServerPreparedStatement;->setClosed(Z)V

    .line 2342
    :try_start_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/ServerPreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return v0
.end method
