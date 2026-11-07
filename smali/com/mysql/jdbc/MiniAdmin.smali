.class public Lcom/mysql/jdbc/MiniAdmin;
.super Ljava/lang/Object;
.source "MiniAdmin.java"


# instance fields
.field private conn:Lcom/mysql/jdbc/Connection;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/MiniAdmin;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/mysql/jdbc/Driver;

    invoke-direct {v0}, Lcom/mysql/jdbc/Driver;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/Connection;

    iput-object p1, p0, Lcom/mysql/jdbc/MiniAdmin;->conn:Lcom/mysql/jdbc/Connection;

    return-void
.end method

.method public constructor <init>(Ljava/sql/Connection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 49
    instance-of v0, p1, Lcom/mysql/jdbc/Connection;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lcom/mysql/jdbc/Connection;

    iput-object p1, p0, Lcom/mysql/jdbc/MiniAdmin;->conn:Lcom/mysql/jdbc/Connection;

    return-void

    :cond_0
    const-string v0, "MiniAdmin.1"

    .line 50
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionImpl;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string v1, "S1000"

    invoke-static {v0, v1, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "MiniAdmin.0"

    .line 46
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "S1000"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/mysql/jdbc/MiniAdmin;->conn:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->shutdownServer()V

    return-void
.end method
