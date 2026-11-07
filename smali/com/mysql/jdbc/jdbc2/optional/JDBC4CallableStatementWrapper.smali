.class public Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;
.super Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;
.source "JDBC4CallableStatementWrapper.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;-><init>(Lcom/mysql/jdbc/jdbc2/optional/ConnectionWrapper;Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;Ljava/sql/CallableStatement;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    :try_start_0
    invoke-super {p0}, Lcom/mysql/jdbc/jdbc2/optional/CallableStatementWrapper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    throw v1
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 532
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 535
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 549
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 552
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getNCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 566
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 569
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 583
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 586
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNClob(I)Ljava/sql/NClob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getNClob(I)Ljava/sql/NClob;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 799
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 802
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNClob(Ljava/lang/String;)Ljava/sql/NClob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getNClob(Ljava/lang/String;)Ljava/sql/NClob;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 600
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 603
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 810
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getNString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 813
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 816
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getNString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 617
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 620
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRowId(I)Ljava/sql/RowId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getRowId(I)Ljava/sql/RowId;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 827
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 830
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRowId(Ljava/lang/String;)Ljava/sql/RowId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getRowId(Ljava/lang/String;)Ljava/sql/RowId;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 467
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 470
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSQLXML(I)Ljava/sql/SQLXML;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getSQLXML(I)Ljava/sql/SQLXML;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 438
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 441
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1}, Ljava/sql/CallableStatement;->getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string v0, "S1000"

    .line 453
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 456
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isClosed()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isClosed()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 74
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isPoolable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0}, Ljava/sql/Statement;->isPoolable()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "Statement already closed"

    const-string v1, "S1009"

    .line 100
    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 350
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 356
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.mysql.jdbc.Statement"

    .line 358
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "java.sql.Statement"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "java.sql.PreparedStatement"

    .line 359
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "java.sql.Wrapper"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public setAsciiStream(ILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 246
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 249
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 210
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 213
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 631
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 634
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 643
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 646
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 258
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 261
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 222
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 225
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 655
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 658
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 667
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 670
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBlob(ILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setBlob(ILjava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 309
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 312
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBlob(ILjava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setBlob(ILjava/io/InputStream;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 186
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 189
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBlob(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setBlob(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 679
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 682
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBlob(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setBlob(Ljava/lang/String;Ljava/io/InputStream;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 691
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 694
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 700
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setBlob(Ljava/lang/String;Ljava/sql/Blob;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 703
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 706
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 270
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 273
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 234
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 237
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 715
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 718
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 727
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 730
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setClob(ILjava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setClob(ILjava/io/Reader;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 296
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 299
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setClob(ILjava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setClob(ILjava/io/Reader;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 174
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setClob(Ljava/lang/String;Ljava/io/Reader;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 751
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 754
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 760
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setClob(Ljava/lang/String;Ljava/io/Reader;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 763
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 766
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setClob(Ljava/lang/String;Ljava/sql/Clob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setClob(Ljava/lang/String;Ljava/sql/Clob;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 739
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 742
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 283
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 162
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 775
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 778
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 784
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 787
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 790
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNClob(ILjava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNClob(ILjava/io/Reader;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 321
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 324
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNClob(ILjava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/PreparedStatement;->setNClob(ILjava/io/Reader;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 198
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 201
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNClob(ILjava/sql/NClob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNClob(ILjava/sql/NClob;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 126
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setNClob(Ljava/lang/String;Ljava/io/Reader;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 493
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 496
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/CallableStatement;->setNClob(Ljava/lang/String;Ljava/io/Reader;J)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 505
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 508
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setNClob(Ljava/lang/String;Ljava/sql/NClob;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 481
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 484
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setNString(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 150
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setNString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setNString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 517
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 520
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setPoolable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-interface {v0, p1}, Ljava/sql/Statement;->setPoolable(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "Statement already closed"

    const-string v0, "S1009"

    .line 88
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setRowId(ILjava/sql/RowId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setRowId(ILjava/sql/RowId;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 114
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setRowId(Ljava/lang/String;Ljava/sql/RowId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setRowId(Ljava/lang/String;Ljava/sql/RowId;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 414
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 417
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setSQLXML(ILjava/sql/SQLXML;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/PreparedStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setSQLXML(ILjava/sql/SQLXML;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 138
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public setSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    check-cast v0, Ljava/sql/CallableStatement;

    invoke-interface {v0, p1, p2}, Ljava/sql/CallableStatement;->setSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V

    goto :goto_0

    :cond_0
    const-string p1, "No operations allowed after statement closed"

    const-string p2, "S1000"

    .line 426
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 429
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "java.sql.Statement"

    .line 383
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "java.sql.PreparedStatement"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "java.sql.Wrapper.class"

    .line 384
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    if-nez v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;

    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->wrappedStmt:Ljava/sql/Statement;

    invoke-direct {v2, p0, v3}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;-><init>(Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->unwrappedInterfaces:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 385
    :cond_4
    :goto_0
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 405
    :catch_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unwrap to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "S1009"

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/JDBC4CallableStatementWrapper;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    :goto_1
    monitor-exit p0

    throw p1
.end method
