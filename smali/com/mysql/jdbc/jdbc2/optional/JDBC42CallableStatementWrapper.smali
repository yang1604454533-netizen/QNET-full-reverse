.class public Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;
.source "JDBC42CallableStatementWrapper.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)V

    return-void
.end method


# virtual methods
.method public registerOutParameter(ILjava/sql/SQLType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->registerOutParameter(ILjava/sql/SQLType;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 51
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public registerOutParameter(ILjava/sql/SQLType;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(ILjava/sql/SQLType;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 71
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public registerOutParameter(ILjava/sql/SQLType;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(ILjava/sql/SQLType;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 91
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 110
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 130
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 150
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setObject(ILjava/lang/Object;Ljava/sql/SQLType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setObject(ILjava/lang/Object;Ljava/sql/SQLType;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 170
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

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

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setObject(ILjava/lang/Object;Ljava/sql/SQLType;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 191
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 194
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 211
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 214
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;I)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 232
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 235
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC42CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method
