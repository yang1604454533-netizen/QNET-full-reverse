.class public Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;
.super Ljava/lang/Object;
.source "CallableStatement.java"

# interfaces
.implements Ljava/sql/ParameterMetaData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/CallableStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CallableStatementParamInfo"
.end annotation


# instance fields
.field catalogInUse:Ljava/lang/String;

.field isFunctionCall:Z

.field isReadOnlySafeChecked:Z

.field isReadOnlySafeProcedure:Z

.field nativeSql:Ljava/lang/String;

.field numParameters:I

.field parameterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;",
            ">;"
        }
    .end annotation
.end field

.field parameterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mysql/jdbc/CallableStatement;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/CallableStatement;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V
    .locals 6

    .line 159
    iput-object p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    .line 149
    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    .line 160
    iget-object v1, p1, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    iput-object v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->nativeSql:Ljava/lang/String;

    .line 161
    iget-object v1, p1, Lcom/mysql/jdbc/CallableStatement;->currentCatalog:Ljava/lang/String;

    iput-object v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->catalogInUse:Ljava/lang/String;

    .line 162
    iget-boolean v1, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    iput-boolean v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    .line 164
    invoke-static {p1}, Lcom/mysql/jdbc/CallableStatement;->access$000(Lcom/mysql/jdbc/CallableStatement;)[I

    move-result-object p1

    .line 165
    array-length v1, p1

    .line 167
    iget-boolean v2, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    iput-boolean v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    .line 168
    iget-boolean v2, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    iput-boolean v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    .line 170
    new-instance v2, Ljava/util/HashMap;

    iget v3, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterMap:Ljava/util/Map;

    .line 172
    iget-boolean v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    iget-object v3, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    :goto_0
    if-ge v0, v1, :cond_2

    .line 180
    aget v3, p1, v0

    if-eqz v3, :cond_1

    .line 181
    iget-object v3, p2, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    aget v4, p1, v0

    add-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    .line 183
    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v4, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->paramName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    return-void
.end method

.method constructor <init>(Lcom/mysql/jdbc/CallableStatement;Ljava/sql/ResultSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeProcedure:Z

    .line 149
    iput-boolean v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isReadOnlySafeChecked:Z

    .line 193
    invoke-interface {p2}, Ljava/sql/ResultSet;->last()Z

    move-result v1

    .line 195
    iget-object v2, p1, Lcom/mysql/jdbc/CallableStatement;->originalSql:Ljava/lang/String;

    iput-object v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->nativeSql:Ljava/lang/String;

    .line 196
    iget-object v2, p1, Lcom/mysql/jdbc/CallableStatement;->currentCatalog:Ljava/lang/String;

    iput-object v2, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->catalogInUse:Ljava/lang/String;

    .line 197
    invoke-static {p1}, Lcom/mysql/jdbc/CallableStatement;->access$100(Lcom/mysql/jdbc/CallableStatement;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    if-eqz v1, :cond_0

    .line 200
    invoke-interface {p2}, Ljava/sql/ResultSet;->getRow()I

    move-result p1

    iput p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    .line 202
    new-instance p1, Ljava/util/ArrayList;

    iget v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    .line 203
    new-instance p1, Ljava/util/HashMap;

    iget v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterMap:Ljava/util/Map;

    .line 205
    invoke-interface {p2}, Ljava/sql/ResultSet;->beforeFirst()V

    .line 207
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->addParametersFromDBMD(Ljava/sql/ResultSet;)V

    goto :goto_0

    .line 209
    :cond_0
    iput v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    .line 212
    :goto_0
    iget-boolean p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    if-eqz p1, :cond_1

    .line 213
    iget p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    :cond_1
    return-void
.end method

.method private addParametersFromDBMD(Ljava/sql/ResultSet;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 220
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    .line 221
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x5

    .line 223
    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const/4 v13, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v13, 0x4

    goto :goto_1

    :pswitch_2
    const/4 v13, 0x2

    goto :goto_1

    :pswitch_3
    const/4 v13, 0x1

    :goto_1
    if-nez v5, :cond_0

    .line 241
    iget-boolean v4, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->isFunctionCall:Z

    if-eqz v4, :cond_0

    :goto_2
    const/4 v6, 0x0

    goto :goto_4

    :cond_0
    if-ne v13, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_4

    :cond_1
    if-ne v13, v7, :cond_2

    const/4 v6, 0x1

    :goto_3
    const/4 v7, 0x0

    goto :goto_4

    :cond_2
    if-ne v13, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :goto_4
    const/4 v3, 0x6

    .line 255
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v8

    const/4 v3, 0x7

    .line 256
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v3, 0x8

    .line 257
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v10

    const/16 v3, 0xa

    .line 258
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v11

    const/16 v3, 0xc

    .line 259
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getShort(I)S

    move-result v12

    .line 261
    new-instance v15, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    add-int/lit8 v16, v5, 0x1

    move-object v3, v15

    move-object v4, v14

    invoke-direct/range {v3 .. v13}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;-><init>(Ljava/lang/String;IZZILjava/lang/String;IISI)V

    .line 264
    iget-object v3, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v3, v0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterMap:Ljava/util/Map;

    invoke-interface {v3, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v5, v16

    goto :goto_0

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected checkBounds(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    if-ltz p1, :cond_0

    .line 272
    iget v1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    if-ge v0, v1, :cond_0

    return-void

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallableStatement.11"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "CallableStatement.12"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "CallableStatement.13"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 285
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    return-object p1
.end method

.method getParameter(Ljava/lang/String;)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    return-object p1
.end method

.method public getParameterClassName(I)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 297
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameterTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BLOB"

    .line 299
    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    const-string v1, "BINARY"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x1

    :goto_1
    const-string v1, "UNSIGNED"

    .line 301
    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    const-string v1, "MEDIUMINT"

    .line 305
    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v3, 0x9

    const/16 v7, 0x9

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 309
    :goto_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameterType(I)I

    move-result v5

    const/4 v9, 0x0

    iget-object p1, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    iget-object p1, p1, Lcom/mysql/jdbc/CallableStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v10

    invoke-static/range {v5 .. v10}, Lcom/mysql/jdbc/ResultSetMetaData;->getClassNameForJavaType(IZIZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getParameterCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParameterMode(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    add-int/lit8 p1, p1, -0x1

    .line 324
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object p1

    iget p1, p1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->inOutModifier:I

    return p1
.end method

.method public getParameterType(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 328
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    add-int/lit8 p1, p1, -0x1

    .line 330
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object p1

    iget p1, p1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->jdbcType:I

    return p1
.end method

.method public getParameterTypeName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 334
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    add-int/lit8 p1, p1, -0x1

    .line 336
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object p1

    iget-object p1, p1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->typeName:Ljava/lang/String;

    return-object p1
.end method

.method public getPrecision(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    add-int/lit8 p1, p1, -0x1

    .line 342
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object p1

    iget p1, p1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->precision:I

    return p1
.end method

.method public getScale(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 346
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    add-int/lit8 p1, p1, -0x1

    .line 348
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object p1

    iget p1, p1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->scale:I

    return p1
.end method

.method public isNullable(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 352
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    add-int/lit8 p1, p1, -0x1

    .line 354
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->getParameter(I)Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;

    move-result-object p1

    iget-short p1, p1, Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;->nullability:S

    return p1
.end method

.method public isSigned(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 358
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->checkBounds(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
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

    .line 375
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 378
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/mysql/jdbc/CallableStatement$CallableStatementParam;",
            ">;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->parameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method numberOfParameters()I
    .locals 1

    .line 368
    iget v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->numParameters:I

    return v0
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

    .line 387
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 389
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

    iget-object v0, p0, Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;->this$0:Lcom/mysql/jdbc/CallableStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
