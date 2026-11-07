.class Lcom/mysql/jdbc/ConnectionImpl$4;
.super Ljava/lang/Object;
.source "ConnectionImpl.java"

# interfaces
.implements Lcom/mysql/jdbc/ExceptionInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/ConnectionImpl;->createConfigCacheIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/ConnectionImpl;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ConnectionImpl;)V
    .locals 0

    .line 3666
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$4;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public interceptException(Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;
    .locals 0

    .line 3667
    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object p1

    const-string p2, "08"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3668
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$4;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-static {p1}, Lcom/mysql/jdbc/ConnectionImpl;->access$000(Lcom/mysql/jdbc/ConnectionImpl;)Lcom/mysql/jdbc/CacheAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/mysql/jdbc/ConnectionImpl$4;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {p2}, Lcom/mysql/jdbc/ConnectionImpl;->getURL()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mysql/jdbc/CacheAdapter;->invalidate(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
