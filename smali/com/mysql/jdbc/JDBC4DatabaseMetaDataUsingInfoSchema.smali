.class public Lcom/mysql/jdbc/JDBC4DatabaseMetaDataUsingInfoSchema;
.super Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;
.source "JDBC4DatabaseMetaDataUsingInfoSchema.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getColumnType(ZZZZ)I
    .locals 0

    .line 177
    invoke-static {p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4DatabaseMetaData;->getProcedureOrFunctionColumnType(ZZZZ)I

    move-result p1

    return p1
.end method

.method protected getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I
    .locals 3

    .line 138
    sget-object v0, Lcom/mysql/jdbc/JDBC4DatabaseMetaDataUsingInfoSchema$1;->$SwitchMap$com$mysql$jdbc$DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant:[I

    invoke-virtual {p1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    return p1

    :pswitch_0
    return v1

    :pswitch_1
    return v2

    :pswitch_2
    return v0

    :pswitch_3
    return v0

    :pswitch_4
    const/4 p1, 0x5

    return p1

    :pswitch_5
    const/4 p1, 0x4

    return p1

    :pswitch_6
    const/4 p1, 0x3

    return p1

    :pswitch_7
    return v1

    :pswitch_8
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getJDBC4FunctionNoTableConstant()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getProcedureColumnsNoISParametersView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4DatabaseMetaDataUsingInfoSchema;->createProcedureColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v1

    .line 104
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    .line 105
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGetProceduresReturnsFunctions()Z

    move-result v7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 104
    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/JDBC4DatabaseMetaDataUsingInfoSchema;->getProcedureOrFunctionColumns([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method protected getRoutineTypeConditionForGetProcedureColumns()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGetProceduresReturnsFunctions()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "ROUTINE_TYPE = \'PROCEDURE\' AND "

    :goto_0
    return-object v0
.end method

.method protected getRoutineTypeConditionForGetProcedures()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getGetProceduresReturnsFunctions()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "ROUTINE_TYPE = \'PROCEDURE\' AND "

    :goto_0
    return-object v0
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

    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    .line 89
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    .line 88
    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
