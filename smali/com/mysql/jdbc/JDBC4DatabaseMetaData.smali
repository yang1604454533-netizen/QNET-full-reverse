.class public Lcom/mysql/jdbc/JDBC4DatabaseMetaData;
.super Lcom/mysql/jdbc/DatabaseMetaData;
.source "JDBC4DatabaseMetaData.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/DatabaseMetaData;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    return-void
.end method

.method protected static getProcedureOrFunctionColumnType(ZZZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p1, 0x4

    if-eqz p0, :cond_3

    if-eqz p3, :cond_2

    const/4 p1, 0x3

    :cond_2
    return p1

    :cond_3
    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    :goto_0
    return p1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public autoCommitFailureClosesAllResultSets()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected getColumnType(ZZZZ)I
    .locals 0

    .line 140
    invoke-static {p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->getProcedureOrFunctionColumnType(ZZZZ)I

    move-result p1

    return p1
.end method

.method protected getJDBC4FunctionNoTableConstant()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->createProcedureColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v1

    .line 108
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    .line 109
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGetProceduresReturnsFunctions()Z

    move-result v7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 108
    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->getProcedureOrFunctionColumns([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->createFieldMetadataForGetProcedures()[Lcom/mysql/jdbc/Field;

    move-result-object v1

    .line 122
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGetProceduresReturnsFunctions()Z

    move-result v6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getRowIdLifetime()Ljava/sql/RowIdLifetime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 42
    sget-object v0, Ljava/sql/RowIdLifetime;->ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

    return-object v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 0
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

    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
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

    .line 86
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unwrap to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    .line 89
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    .line 88
    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
