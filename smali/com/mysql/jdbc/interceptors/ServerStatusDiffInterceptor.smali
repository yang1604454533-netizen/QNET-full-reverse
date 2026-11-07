.class public Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;
.super Ljava/lang/Object;
.source "ServerStatusDiffInterceptor.java"

# interfaces
.implements Lcom/mysql/jdbc/StatementInterceptor;


# instance fields
.field private postExecuteValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preExecuteValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;->preExecuteValues:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;->postExecuteValues:Ljava/util/Map;

    return-void
.end method

.method private populateMapWithSessionStatusValues(Lcom/mysql/jdbc/Connection;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/Connection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 67
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v1, "SHOW SESSION STATUS"

    .line 68
    invoke-interface {p1, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    :try_start_2
    invoke-static {p2, v1}, Lcom/mysql/jdbc/Util;->resultSetToMap(Ljava/util/Map;Ljava/sql/ResultSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 72
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    :cond_0
    if-eqz p1, :cond_1

    .line 76
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_0

    :catchall_2
    move-exception p2

    move-object p1, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 72
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    :cond_2
    if-eqz p1, :cond_3

    .line 76
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    .line 71
    :cond_3
    throw p2
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public executeTopLevelOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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

.method public postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 p3, 0x2

    .line 50
    invoke-interface {p4, p1, p2, p3}, Lcom/mysql/jdbc/Connection;->versionMeetsMinimum(III)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;->postExecuteValues:Ljava/util/Map;

    invoke-direct {p0, p4, p1}, Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;->populateMapWithSessionStatusValues(Lcom/mysql/jdbc/Connection;Ljava/util/Map;)V

    .line 53
    invoke-interface {p4}, Lcom/mysql/jdbc/Connection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Server status change for statement:\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;->preExecuteValues:Ljava/util/Map;

    iget-object p4, p0, Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;->postExecuteValues:Ljava/util/Map;

    invoke-static {p3, p4}, Lcom/mysql/jdbc/Util;->calculateDifferences(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mysql/jdbc/log/Log;->logInfo(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 83
    invoke-interface {p3, p1, p2, v0}, Lcom/mysql/jdbc/Connection;->versionMeetsMinimum(III)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;->preExecuteValues:Ljava/util/Map;

    invoke-direct {p0, p3, p1}, Lcom/mysql/jdbc/interceptors/ServerStatusDiffInterceptor;->populateMapWithSessionStatusValues(Lcom/mysql/jdbc/Connection;Ljava/util/Map;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
