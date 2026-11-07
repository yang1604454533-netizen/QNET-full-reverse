.class public Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;
.super Ljava/lang/Object;
.source "LoadBalancedAutoCommitInterceptor.java"

# interfaces
.implements Lcom/mysql/jdbc/StatementInterceptorV2;


# instance fields
.field private conn:Lcom/mysql/jdbc/ConnectionImpl;

.field private matchingAfterStatementCount:I

.field private matchingAfterStatementRegex:Ljava/lang/String;

.field private matchingAfterStatementThreshold:I

.field private proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    .line 31
    iput v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementThreshold:I

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public executeTopLevelOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 51
    check-cast p1, Lcom/mysql/jdbc/ConnectionImpl;

    iput-object p1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->conn:Lcom/mysql/jdbc/ConnectionImpl;

    const-string p1, "loadBalanceAutoCommitStatementThreshold"

    const-string v0, "0"

    .line 53
    invoke-virtual {p2, p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementThreshold:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "loadBalanceAutoCommitStatementRegex"

    const-string v0, ""

    .line 59
    invoke-virtual {p2, p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementRegex:Ljava/lang/String;

    return-void
.end method

.method public postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;IZZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 77
    iget-object p2, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->conn:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {p2}, Lcom/mysql/jdbc/ConnectionImpl;->getAutoCommit()Z

    move-result p2

    const/4 p4, 0x0

    if-nez p2, :cond_0

    .line 78
    iput p4, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    goto :goto_1

    .line 82
    :cond_0
    iget-object p2, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->conn:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {p2}, Lcom/mysql/jdbc/ConnectionImpl;->isProxySet()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 83
    iget-object p2, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->conn:Lcom/mysql/jdbc/ConnectionImpl;

    invoke-virtual {p2}, Lcom/mysql/jdbc/ConnectionImpl;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 84
    instance-of p5, p2, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;

    if-nez p5, :cond_1

    .line 85
    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object p2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 88
    check-cast p2, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;

    invoke-virtual {p2}, Lcom/mysql/jdbc/LoadBalancedMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    move-result-object p2

    iput-object p2, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    .line 93
    :cond_2
    iget-object p2, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    if-eqz p2, :cond_4

    .line 95
    iget-object p2, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementRegex:Ljava/lang/String;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementRegex:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 96
    :cond_3
    iget p1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    .line 100
    :cond_4
    iget p1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    iget p2, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementThreshold:I

    if-lt p1, p2, :cond_5

    .line 101
    iput p4, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->matchingAfterStatementCount:I

    .line 103
    :try_start_0
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    if-eqz p1, :cond_5

    .line 104
    iget-object p1, p0, Lcom/mysql/jdbc/LoadBalancedAutoCommitInterceptor;->proxy:Lcom/mysql/jdbc/LoadBalancedConnectionProxy;

    invoke-virtual {p1}, Lcom/mysql/jdbc/LoadBalancedConnectionProxy;->pickNewConnection()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_1
    return-object p3
.end method

.method public preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
