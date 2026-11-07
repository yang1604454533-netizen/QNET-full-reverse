.class public Lcom/mysql/jdbc/jdbc2/optional/JDBC42PreparedStatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;
.source "JDBC42PreparedStatementWrapper.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4PreparedStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/PreparedStatement;)V

    return-void
.end method


# virtual methods
.method public setObject(ILjava/lang/Object;Ljava/sql/SQLType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;Ljava/sql/SQLType;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 52
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setObject(ILjava/lang/Object;Ljava/sql/SQLType;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42PreparedStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setObject(ILjava/lang/Object;Ljava/sql/SQLType;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 73
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42PreparedStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42PreparedStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method
