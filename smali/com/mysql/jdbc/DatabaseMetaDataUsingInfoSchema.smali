.class public Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;
.super Lcom/mysql/jdbc/DatabaseMetaData;
.source "DatabaseMetaDataUsingInfoSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;
    }
.end annotation


# instance fields
.field private final hasParametersView:Z

.field private hasReferentialConstraintsView:Z


# direct methods
.method protected constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/DatabaseMetaData;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 p2, 0x5

    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-interface {p1, p2, v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasReferentialConstraintsView:Z

    const/4 p1, 0x0

    :try_start_0
    const-string p2, "INFORMATION_SCHEMA"

    const-string v0, "PARAMETERS"

    const/4 v1, 0x0

    .line 54
    new-array v1, v1, [Ljava/lang/String;

    invoke-super {p0, p2, p1, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasParametersView:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    .line 59
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    goto :goto_0

    :catchall_1
    move-exception p2

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    .line 58
    :cond_1
    throw p2
.end method

.method private generateDeleteRuleClause()Ljava/lang/String;
    .locals 3

    .line 508
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasReferentialConstraintsView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CASE WHEN R.DELETE_RULE=\'CASCADE\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN R.DELETE_RULE=\'SET NULL\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN R.DELETE_RULE=\'SET DEFAULT\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN R.DELETE_RULE=\'RESTRICT\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHEN R.DELETE_RULE=\'NO ACTION\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ELSE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private generateOptionalRefContraintsJoin()Ljava/lang/String;
    .locals 1

    .line 503
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasReferentialConstraintsView:Z

    if-eqz v0, :cond_0

    const-string v0, "JOIN INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS R ON (R.CONSTRAINT_NAME = B.CONSTRAINT_NAME AND R.TABLE_NAME = B.TABLE_NAME AND R.CONSTRAINT_SCHEMA = B.TABLE_SCHEMA) "

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private generateUpdateRuleClause()Ljava/lang/String;
    .locals 3

    .line 516
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasReferentialConstraintsView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CASE WHEN R.UPDATE_RULE=\'CASCADE\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN R.UPDATE_RULE=\'SET NULL\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN R.UPDATE_RULE=\'SET DEFAULT\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHEN R.UPDATE_RULE=\'RESTRICT\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHEN R.UPDATE_RULE=\'NO ACTION\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ELSE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    .line 66
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setOwningStatement(Lcom/mysql/jdbc/StatementImpl;)V

    return-object p1
.end method

.method public getColumnPrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p4, :cond_1

    .line 106
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p4, "%"

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Column name pattern can not be NULL or empty."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 115
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 116
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    :cond_2
    const-string p2, "SELECT TABLE_SCHEMA AS TABLE_CAT, NULL AS TABLE_SCHEM, TABLE_NAME,COLUMN_NAME, NULL AS GRANTOR, GRANTEE, PRIVILEGE_TYPE AS PRIVILEGE, IS_GRANTABLE FROM INFORMATION_SCHEMA.COLUMN_PRIVILEGES WHERE TABLE_SCHEMA LIKE ? AND TABLE_NAME =? AND COLUMN_NAME LIKE ? ORDER BY COLUMN_NAME, PRIVILEGE_TYPE"

    const/4 v0, 0x0

    .line 127
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 130
    :try_start_1
    invoke-interface {p2, v0, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_3
    const-string p1, "%"

    .line 132
    invoke-interface {p2, v0, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x2

    .line 135
    invoke-interface {p2, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p3, 0x3

    .line 136
    invoke-interface {p2, p3, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 138
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object p4

    .line 139
    move-object v1, p4

    check-cast v1, Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/mysql/jdbc/Field;

    const/4 v3, 0x0

    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "TABLE_CAT"

    const/16 v7, 0x40

    invoke-direct {v4, v5, v6, v0, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v2, v3

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "TABLE_SCHEM"

    invoke-direct {v3, v4, v5, v0, v0}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, v0

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "TABLE_NAME"

    invoke-direct {v3, v4, v5, v0, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, p1

    new-instance p1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "COLUMN_NAME"

    invoke-direct {p1, v3, v4, v0, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p1, v2, p3

    const/4 p1, 0x4

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "GRANTOR"

    const/16 v6, 0x4d

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, p1

    const/4 p1, 0x5

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "GRANTEE"

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, p1

    const/4 p1, 0x6

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "PRIVILEGE"

    invoke-direct {v3, v4, v5, v0, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, p1

    const/4 p1, 0x7

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "IS_GRANTABLE"

    invoke-direct {v3, v4, v5, v0, p3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, p1

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_4

    .line 147
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    :cond_4
    return-object p4

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_2
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    .line 146
    :cond_5
    throw p1
.end method

.method public getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p4, :cond_1

    .line 193
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p4, "%"

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Column name pattern can not be NULL or empty."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 202
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 203
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 207
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "SELECT TABLE_SCHEMA AS TABLE_CAT, NULL AS TABLE_SCHEM, TABLE_NAME, COLUMN_NAME,"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "DATA_TYPE"

    .line 208
    invoke-static {p2, v0}, Lcom/mysql/jdbc/MysqlDefs;->appendJdbcTypeMappingQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v0, " AS DATA_TYPE, "

    .line 210
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCapitalizeTypeNames()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "UPPER(CASE WHEN LOCATE(\'unsigned\', COLUMN_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 AND LOCATE(\'set\', DATA_TYPE) <> 1 AND LOCATE(\'enum\', DATA_TYPE) <> 1 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END) AS TYPE_NAME,"

    .line 213
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v0, "CASE WHEN LOCATE(\'unsigned\', COLUMN_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 AND LOCATE(\'set\', DATA_TYPE) <> 1 AND LOCATE(\'enum\', DATA_TYPE) <> 1 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END AS TYPE_NAME,"

    .line 216
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CASE WHEN LCASE(DATA_TYPE)=\'date\' THEN 10 WHEN LCASE(DATA_TYPE)=\'time\' THEN 8 WHEN LCASE(DATA_TYPE)=\'datetime\' THEN 19 WHEN LCASE(DATA_TYPE)=\'timestamp\' THEN 19 WHEN CHARACTER_MAXIMUM_LENGTH IS NULL THEN NUMERIC_PRECISION WHEN CHARACTER_MAXIMUM_LENGTH > 2147483647 THEN 2147483647 ELSE CHARACTER_MAXIMUM_LENGTH END AS COLUMN_SIZE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AS BUFFER_LENGTH,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NUMERIC_SCALE AS DECIMAL_DIGITS,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "10 AS NUM_PREC_RADIX,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CASE WHEN IS_NULLABLE=\'NO\' THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ELSE CASE WHEN IS_NULLABLE=\'YES\' THEN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ELSE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " END END AS NULLABLE,"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "COLUMN_COMMENT AS REMARKS,"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "COLUMN_DEFAULT AS COLUMN_DEF,"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0 AS SQL_DATA_TYPE,"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0 AS SQL_DATETIME_SUB,"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CASE WHEN CHARACTER_OCTET_LENGTH > "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " THEN "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ELSE CHARACTER_OCTET_LENGTH END AS CHAR_OCTET_LENGTH,"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ORDINAL_POSITION,"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "IS_NULLABLE,"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "NULL AS SCOPE_CATALOG,"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "NULL AS SCOPE_SCHEMA,"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "NULL AS SCOPE_TABLE,"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "NULL AS SOURCE_DATA_TYPE,"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "IF (EXTRA LIKE \'%auto_increment%\',\'YES\',\'NO\') AS IS_AUTOINCREMENT, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "IF (EXTRA LIKE \'%GENERATED%\',\'YES\',\'NO\') AS IS_GENERATEDCOLUMN FROM INFORMATION_SCHEMA.COLUMNS WHERE "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "information_schema"

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, -0x1

    if-eqz p1, :cond_6

    if-nez v0, :cond_5

    const-string v0, "%"

    .line 235
    invoke-static {v1, p1, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_4

    const-string v0, "_"

    invoke-static {v1, p1, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "TABLE_SCHEMA LIKE ? AND "

    .line 239
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    :goto_2
    const-string v0, "TABLE_SCHEMA = ? AND "

    .line 237
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const-string v0, "TABLE_SCHEMA LIKE ? AND "

    .line 243
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-eqz p3, :cond_8

    const-string v0, "%"

    .line 247
    invoke-static {v1, p3, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_7

    const-string v0, "_"

    invoke-static {v1, p3, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_7

    const-string v0, "TABLE_NAME = ? AND "

    .line 248
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    const-string v0, "TABLE_NAME LIKE ? AND "

    .line 250
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    const-string v0, "TABLE_NAME LIKE ? AND "

    .line 254
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v0, "%"

    .line 257
    invoke-static {v1, p4, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_9

    const-string v0, "_"

    invoke-static {v1, p4, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_9

    const-string v0, "COLUMN_NAME = ? "

    .line 258
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_9
    const-string v0, "COLUMN_NAME LIKE ? "

    .line 260
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const-string v0, "ORDER BY TABLE_SCHEMA, TABLE_NAME, ORDINAL_POSITION"

    .line 262
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 267
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_a

    .line 270
    :try_start_1
    invoke-interface {p2, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_a
    const-string p1, "%"

    .line 272
    invoke-interface {p2, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 275
    :goto_6
    invoke-interface {p2, v3, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 276
    invoke-interface {p2, p1, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 278
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object p1

    .line 280
    move-object p3, p1

    check-cast p3, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_b

    .line 284
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    :cond_b
    return-object p1

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_7
    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    .line 283
    :cond_c
    throw p1
.end method

.method public getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p3, :cond_6

    if-nez p1, :cond_0

    .line 351
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 352
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    :cond_0
    if-nez p4, :cond_1

    .line 357
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 358
    iget-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 362
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "SELECT A.REFERENCED_TABLE_SCHEMA AS PKTABLE_CAT,NULL AS PKTABLE_SCHEM, A.REFERENCED_TABLE_NAME AS PKTABLE_NAME,A.REFERENCED_COLUMN_NAME AS PKCOLUMN_NAME, A.TABLE_SCHEMA AS FKTABLE_CAT, NULL AS FKTABLE_SCHEM, A.TABLE_NAME AS FKTABLE_NAME, A.COLUMN_NAME AS FKCOLUMN_NAME, A.ORDINAL_POSITION AS KEY_SEQ,"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateUpdateRuleClause()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " AS UPDATE_RULE,"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateDeleteRuleClause()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " AS DELETE_RULE,"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "A.CONSTRAINT_NAME AS FK_NAME,"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "(SELECT CONSTRAINT_NAME FROM"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " INFORMATION_SCHEMA.TABLE_CONSTRAINTS"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " WHERE TABLE_SCHEMA = A.REFERENCED_TABLE_SCHEMA AND"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " TABLE_NAME = A.REFERENCED_TABLE_NAME AND"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " CONSTRAINT_TYPE IN (\'UNIQUE\',\'PRIMARY KEY\') LIMIT 1)"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " AS PK_NAME,"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p5, 0x7

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " AS DEFERRABILITY "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "FROM "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "INFORMATION_SCHEMA.KEY_COLUMN_USAGE A JOIN "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "INFORMATION_SCHEMA.TABLE_CONSTRAINTS B "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "USING (TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_NAME) "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateOptionalRefContraintsJoin()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "WHERE "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "B.CONSTRAINT_TYPE = \'FOREIGN KEY\' "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "AND A.REFERENCED_TABLE_SCHEMA LIKE ? AND A.REFERENCED_TABLE_NAME=? "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "AND A.TABLE_SCHEMA LIKE ? AND A.TABLE_NAME=? ORDER BY A.TABLE_SCHEMA, A.TABLE_NAME, A.ORDINAL_POSITION"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p5, 0x0

    .line 376
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p5, 0x1

    if-eqz p1, :cond_2

    .line 378
    :try_start_1
    invoke-interface {p2, p5, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    const-string p1, "%"

    .line 380
    invoke-interface {p2, p5, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    .line 383
    invoke-interface {p2, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    if-eqz p4, :cond_3

    .line 386
    invoke-interface {p2, p1, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p3, "%"

    .line 388
    invoke-interface {p2, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x4

    .line 391
    invoke-interface {p2, p1, p6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 393
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object p1

    .line 394
    move-object p3, p1

    check-cast p3, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_4

    .line 399
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    :cond_4
    return-object p1

    :catchall_1
    move-exception p1

    move-object p2, p5

    :goto_2
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    .line 398
    :cond_5
    throw p1

    .line 347
    :cond_6
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Table not specified."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p3, :cond_4

    if-nez p1, :cond_0

    .line 459
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 460
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 466
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT A.REFERENCED_TABLE_SCHEMA AS PKTABLE_CAT, NULL AS PKTABLE_SCHEM, A.REFERENCED_TABLE_NAME AS PKTABLE_NAME, A.REFERENCED_COLUMN_NAME AS PKCOLUMN_NAME, A.TABLE_SCHEMA AS FKTABLE_CAT, NULL AS FKTABLE_SCHEM, A.TABLE_NAME AS FKTABLE_NAME,A.COLUMN_NAME AS FKCOLUMN_NAME, A.ORDINAL_POSITION AS KEY_SEQ,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateUpdateRuleClause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AS UPDATE_RULE,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateDeleteRuleClause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AS DELETE_RULE,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "A.CONSTRAINT_NAME AS FK_NAME,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(SELECT CONSTRAINT_NAME FROM"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " INFORMATION_SCHEMA.TABLE_CONSTRAINTS"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WHERE TABLE_SCHEMA = A.REFERENCED_TABLE_SCHEMA AND"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " TABLE_NAME = A.REFERENCED_TABLE_NAME AND"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " CONSTRAINT_TYPE IN (\'UNIQUE\',\'PRIMARY KEY\') LIMIT 1)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AS PK_NAME,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " AS DEFERRABILITY "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FROM "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "INFORMATION_SCHEMA.KEY_COLUMN_USAGE A JOIN "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "INFORMATION_SCHEMA.TABLE_CONSTRAINTS B "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "USING (TABLE_SCHEMA, TABLE_NAME, CONSTRAINT_NAME) "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateOptionalRefContraintsJoin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WHERE "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "B.CONSTRAINT_TYPE = \'FOREIGN KEY\' "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AND A.REFERENCED_TABLE_SCHEMA LIKE ? AND A.REFERENCED_TABLE_NAME=? "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ORDER BY A.TABLE_SCHEMA, A.TABLE_NAME, A.ORDINAL_POSITION"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 479
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 482
    :try_start_1
    invoke-interface {p2, v0, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p1, "%"

    .line 484
    invoke-interface {p2, v0, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    .line 487
    invoke-interface {p2, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 489
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object p1

    .line 491
    move-object p3, p1

    check-cast p3, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 496
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p1

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    .line 495
    :cond_3
    throw p1

    .line 455
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Table not specified."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1347
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasParametersView:Z

    if-nez v0, :cond_0

    .line 1348
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/DatabaseMetaData;->getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 1351
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    .line 1352
    :cond_1
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p3, "%"

    :cond_2
    const/4 p2, 0x0

    if-nez p1, :cond_4

    .line 1363
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1364
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object p1, p2

    .line 1375
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT SPECIFIC_SCHEMA AS FUNCTION_CAT, NULL AS `FUNCTION_SCHEM`, SPECIFIC_NAME AS `FUNCTION_NAME`, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "IFNULL(PARAMETER_NAME, \'\') AS `COLUMN_NAME`, CASE WHEN PARAMETER_MODE = \'IN\' THEN "

    .line 1376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_IN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " WHEN PARAMETER_MODE = \'OUT\' THEN "

    .line 1378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_OUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " WHEN PARAMETER_MODE = \'INOUT\' THEN "

    .line 1380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_INOUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " WHEN ORDINAL_POSITION = 0 THEN "

    .line 1382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_RETURN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ELSE "

    .line 1384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " END AS `COLUMN_TYPE`, "

    .line 1386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DATA_TYPE"

    .line 1389
    invoke-static {v0, v1}, Lcom/mysql/jdbc/MysqlDefs;->appendJdbcTypeMappingQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v1, " AS `DATA_TYPE`, "

    .line 1391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCapitalizeTypeNames()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "UPPER(CASE WHEN LOCATE(\'unsigned\', DATA_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END) AS `TYPE_NAME`,"

    .line 1395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v1, "CASE WHEN LOCATE(\'unsigned\', DATA_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END AS `TYPE_NAME`,"

    .line 1398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "NUMERIC_PRECISION AS `PRECISION`, "

    .line 1403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CASE WHEN LCASE(DATA_TYPE)=\'date\' THEN 10 WHEN LCASE(DATA_TYPE)=\'time\' THEN 8 WHEN LCASE(DATA_TYPE)=\'datetime\' THEN 19 WHEN LCASE(DATA_TYPE)=\'timestamp\' THEN 19 WHEN CHARACTER_MAXIMUM_LENGTH IS NULL THEN NUMERIC_PRECISION WHEN CHARACTER_MAXIMUM_LENGTH > 2147483647 THEN 2147483647 ELSE CHARACTER_MAXIMUM_LENGTH END AS LENGTH, "

    .line 1405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NUMERIC_SCALE AS `SCALE`, "

    .line 1410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "10 AS RADIX,"

    .line 1412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_NULLABLE:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " AS `NULLABLE`,  NULL AS `REMARKS`, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CHARACTER_OCTET_LENGTH AS `CHAR_OCTET_LENGTH`,  ORDINAL_POSITION, \'YES\' AS `IS_NULLABLE`, SPECIFIC_NAME "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FROM INFORMATION_SCHEMA.PARAMETERS WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SPECIFIC_SCHEMA LIKE ? AND SPECIFIC_NAME LIKE ? AND (PARAMETER_NAME LIKE ? OR PARAMETER_NAME IS NULL) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AND ROUTINE_TYPE=\'FUNCTION\' ORDER BY SPECIFIC_SCHEMA, SPECIFIC_NAME, ORDINAL_POSITION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    .line 1431
    :try_start_1
    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_6
    const-string p1, "%"

    .line 1433
    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    :goto_2
    const/4 p1, 0x2

    .line 1436
    invoke-interface {v0, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 1437
    invoke-interface {v0, p1, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1439
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object p1

    .line 1440
    move-object p2, p1

    check-cast p2, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createFunctionColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_7

    .line 1445
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_7
    return-object p1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_3
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 1444
    :cond_8
    throw p1

    .line 1355
    :cond_9
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Procedure name pattern can not be NULL or empty."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getFunctions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1510
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    .line 1511
    :cond_0
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p3, "%"

    :cond_1
    const/4 p2, 0x0

    if-nez p1, :cond_3

    .line 1522
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1523
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object p1, p2

    .line 1529
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT ROUTINE_SCHEMA AS FUNCTION_CAT, NULL AS FUNCTION_SCHEM, ROUTINE_NAME AS FUNCTION_NAME, ROUTINE_COMMENT AS REMARKS, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getJDBC4FunctionNoTableConstant()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AS FUNCTION_TYPE, ROUTINE_NAME AS SPECIFIC_NAME FROM INFORMATION_SCHEMA.ROUTINES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WHERE ROUTINE_TYPE LIKE \'FUNCTION\' AND ROUTINE_SCHEMA LIKE ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ROUTINE_NAME LIKE ? ORDER BY FUNCTION_CAT, FUNCTION_SCHEM, FUNCTION_NAME, SPECIFIC_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1537
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    :try_start_1
    const-string p1, "%"

    :goto_1
    const/4 p2, 0x1

    .line 1539
    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    .line 1540
    invoke-interface {v0, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1542
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object p3

    .line 1543
    move-object v1, p3

    check-cast v1, Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v2, 0x6

    new-array v3, v2, [Lcom/mysql/jdbc/Field;

    const/4 v4, 0x0

    new-instance v5, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v7, "FUNCTION_CAT"

    const/16 v8, 0xff

    invoke-direct {v5, v6, v7, p2, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v5, v3, v4

    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "FUNCTION_SCHEM"

    invoke-direct {v4, v5, v6, p2, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v3, p2

    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "FUNCTION_NAME"

    invoke-direct {v4, v5, v6, p2, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v3, p1

    const/4 p1, 0x3

    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "REMARKS"

    invoke-direct {v4, v5, v6, p2, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v3, p1

    const/4 p1, 0x4

    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "FUNCTION_TYPE"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v3, p1

    new-instance p1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v4, "SPECIFIC_NAME"

    invoke-direct {p1, v2, v4, p2, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p1, v3, v7

    invoke-interface {v1, v3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 1551
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_5
    return-object p3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_2
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 1550
    :cond_6
    throw p1

    .line 1514
    :cond_7
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Function name pattern can not be NULL or empty."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p3, :cond_4

    if-nez p1, :cond_0

    .line 576
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 577
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 581
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT A.REFERENCED_TABLE_SCHEMA AS PKTABLE_CAT, NULL AS PKTABLE_SCHEM, A.REFERENCED_TABLE_NAME AS PKTABLE_NAME,A.REFERENCED_COLUMN_NAME AS PKCOLUMN_NAME, A.TABLE_SCHEMA AS FKTABLE_CAT, NULL AS FKTABLE_SCHEM, A.TABLE_NAME AS FKTABLE_NAME, A.COLUMN_NAME AS FKCOLUMN_NAME, A.ORDINAL_POSITION AS KEY_SEQ,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateUpdateRuleClause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AS UPDATE_RULE,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateDeleteRuleClause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AS DELETE_RULE,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "A.CONSTRAINT_NAME AS FK_NAME,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(SELECT CONSTRAINT_NAME FROM"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " INFORMATION_SCHEMA.TABLE_CONSTRAINTS"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WHERE TABLE_SCHEMA = A.REFERENCED_TABLE_SCHEMA AND"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " TABLE_NAME = A.REFERENCED_TABLE_NAME AND"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " CONSTRAINT_TYPE IN (\'UNIQUE\',\'PRIMARY KEY\') LIMIT 1)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AS PK_NAME,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " AS DEFERRABILITY "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FROM "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "INFORMATION_SCHEMA.KEY_COLUMN_USAGE A "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS B USING "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(CONSTRAINT_NAME, TABLE_NAME) "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->generateOptionalRefContraintsJoin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WHERE "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "B.CONSTRAINT_TYPE = \'FOREIGN KEY\' "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AND A.TABLE_SCHEMA LIKE ? "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AND A.TABLE_NAME=? "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AND A.REFERENCED_TABLE_SCHEMA IS NOT NULL "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ORDER BY A.REFERENCED_TABLE_SCHEMA, A.REFERENCED_TABLE_NAME, A.ORDINAL_POSITION"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 594
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 597
    :try_start_1
    invoke-interface {p2, v0, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p1, "%"

    .line 599
    invoke-interface {p2, v0, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    .line 602
    invoke-interface {p2, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 604
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object p1

    .line 606
    move-object p3, p1

    check-cast p3, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 611
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p1

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    .line 610
    :cond_3
    throw p1

    .line 572
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Table not specified."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 665
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "SELECT TABLE_SCHEMA AS TABLE_CAT, NULL AS TABLE_SCHEM, TABLE_NAME, NON_UNIQUE,"

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p5, "TABLE_SCHEMA AS INDEX_QUALIFIER, INDEX_NAME,3 AS TYPE, SEQ_IN_INDEX AS ORDINAL_POSITION, COLUMN_NAME,"

    .line 666
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "COLLATION AS ASC_OR_DESC, CARDINALITY, NULL AS PAGES, NULL AS FILTER_CONDITION FROM INFORMATION_SCHEMA.STATISTICS WHERE "

    .line 667
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "TABLE_SCHEMA LIKE ? AND TABLE_NAME LIKE ?"

    .line 668
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p4, " AND NON_UNIQUE=0 "

    .line 671
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p4, "ORDER BY NON_UNIQUE, INDEX_NAME, SEQ_IN_INDEX"

    .line 674
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p4, 0x0

    if-nez p1, :cond_1

    .line 680
    :try_start_0
    iget-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 681
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p2, p4

    goto :goto_2

    .line 685
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    .line 688
    :try_start_1
    invoke-interface {p2, p4, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_2
    const-string p1, "%"

    .line 690
    invoke-interface {p2, p4, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x2

    .line 693
    invoke-interface {p2, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 695
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object p1

    .line 697
    move-object p3, p1

    check-cast p3, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createIndexInfoFields()[Lcom/mysql/jdbc/Field;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_3

    .line 702
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    :cond_3
    return-object p1

    :goto_2
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    .line 701
    :cond_4
    throw p1
.end method

.method protected getJDBC4FunctionConstant(Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getJDBC4FunctionNoTableConstant()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 735
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 736
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_4

    const-string p2, "SELECT TABLE_SCHEMA AS TABLE_CAT, NULL AS TABLE_SCHEM, TABLE_NAME, COLUMN_NAME, SEQ_IN_INDEX AS KEY_SEQ, \'PRIMARY\' AS PK_NAME FROM INFORMATION_SCHEMA.STATISTICS WHERE TABLE_SCHEMA LIKE ? AND TABLE_NAME LIKE ? AND INDEX_NAME=\'PRIMARY\' ORDER BY TABLE_SCHEMA, TABLE_NAME, INDEX_NAME, SEQ_IN_INDEX"

    const/4 v0, 0x0

    .line 751
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 754
    :try_start_1
    invoke-interface {p2, v0, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p1, "%"

    .line 756
    invoke-interface {p2, v0, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    .line 759
    invoke-interface {p2, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 761
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object p3

    .line 762
    move-object v1, p3

    check-cast v1, Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/mysql/jdbc/Field;

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "TABLE_CAT"

    const/16 v6, 0xff

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v7, "TABLE_SCHEM"

    invoke-direct {v3, v5, v7, v0, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, v0

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "TABLE_NAME"

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, p1

    const/4 p1, 0x3

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "COLUMN_NAME"

    const/16 v6, 0x20

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, p1

    const/4 p1, 0x4

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "KEY_SEQ"

    const/4 v7, 0x5

    invoke-direct {v3, v4, v5, v7, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, p1

    new-instance p1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "PK_NAME"

    invoke-direct {p1, v3, v4, v0, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p1, v2, v7

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 769
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p3

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    .line 768
    :cond_3
    throw p1

    .line 741
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Table not specified."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 937
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasParametersView:Z

    if-nez v0, :cond_0

    .line 938
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getProcedureColumnsNoISParametersView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 941
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    .line 942
    :cond_1
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p3, "%"

    :cond_2
    const/4 p2, 0x0

    if-nez p1, :cond_4

    .line 953
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 954
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object p1, p2

    .line 976
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT SPECIFIC_SCHEMA AS PROCEDURE_CAT, NULL AS `PROCEDURE_SCHEM`, SPECIFIC_NAME AS `PROCEDURE_NAME`, IFNULL(PARAMETER_NAME, \'\') AS `COLUMN_NAME`, CASE WHEN PARAMETER_MODE = \'IN\' THEN 1 WHEN PARAMETER_MODE = \'OUT\' THEN 4 WHEN PARAMETER_MODE = \'INOUT\' THEN 2 WHEN ORDINAL_POSITION = 0 THEN 5 ELSE 0 END AS `COLUMN_TYPE`, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DATA_TYPE"

    .line 982
    invoke-static {v0, v1}, Lcom/mysql/jdbc/MysqlDefs;->appendJdbcTypeMappingQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v1, " AS `DATA_TYPE`, "

    .line 984
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCapitalizeTypeNames()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "UPPER(CASE WHEN LOCATE(\'unsigned\', DATA_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END) AS `TYPE_NAME`,"

    .line 988
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v1, "CASE WHEN LOCATE(\'unsigned\', DATA_TYPE) != 0 AND LOCATE(\'unsigned\', DATA_TYPE) = 0 THEN CONCAT(DATA_TYPE, \' unsigned\') ELSE DATA_TYPE END AS `TYPE_NAME`,"

    .line 991
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "NUMERIC_PRECISION AS `PRECISION`, "

    .line 996
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CASE WHEN LCASE(DATA_TYPE)=\'date\' THEN 10 WHEN LCASE(DATA_TYPE)=\'time\' THEN 8 WHEN LCASE(DATA_TYPE)=\'datetime\' THEN 19 WHEN LCASE(DATA_TYPE)=\'timestamp\' THEN 19 WHEN CHARACTER_MAXIMUM_LENGTH IS NULL THEN NUMERIC_PRECISION WHEN CHARACTER_MAXIMUM_LENGTH > 2147483647 THEN 2147483647 ELSE CHARACTER_MAXIMUM_LENGTH END AS LENGTH, "

    .line 998
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NUMERIC_SCALE AS `SCALE`, "

    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "10 AS RADIX,"

    .line 1005
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 AS `NULLABLE`, NULL AS `REMARKS`, NULL AS `COLUMN_DEF`, NULL AS `SQL_DATA_TYPE`, NULL AS `SQL_DATETIME_SUB`, CHARACTER_OCTET_LENGTH AS `CHAR_OCTET_LENGTH`, ORDINAL_POSITION, \'YES\' AS `IS_NULLABLE`, SPECIFIC_NAME FROM INFORMATION_SCHEMA.PARAMETERS WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getRoutineTypeConditionForGetProcedureColumns()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SPECIFIC_SCHEMA LIKE ? AND SPECIFIC_NAME LIKE ? AND (PARAMETER_NAME LIKE ? OR PARAMETER_NAME IS NULL) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ORDER BY SPECIFIC_SCHEMA, SPECIFIC_NAME, ROUTINE_TYPE, ORDINAL_POSITION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    .line 1018
    :try_start_1
    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_6
    const-string p1, "%"

    .line 1020
    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    :goto_2
    const/4 p1, 0x2

    .line 1023
    invoke-interface {v0, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 1024
    invoke-interface {v0, p1, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1026
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object p1

    .line 1027
    move-object p2, p1

    check-cast p2, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createProcedureColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_7

    .line 1032
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_7
    return-object p1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_3
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 1031
    :cond_8
    throw p1

    .line 945
    :cond_9
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Procedure name pattern can not be NULL or empty."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected getProcedureColumnsNoISParametersView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1044
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/DatabaseMetaData;->getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 813
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    .line 814
    :cond_0
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p3, "%"

    :cond_1
    const/4 p2, 0x0

    if-nez p1, :cond_3

    .line 825
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 826
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object p1, p2

    .line 832
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT ROUTINE_SCHEMA AS PROCEDURE_CAT, NULL AS PROCEDURE_SCHEM, ROUTINE_NAME AS PROCEDURE_NAME, NULL AS RESERVED_1, NULL AS RESERVED_2, NULL AS RESERVED_3, ROUTINE_COMMENT AS REMARKS, CASE WHEN ROUTINE_TYPE = \'PROCEDURE\' THEN 1 WHEN ROUTINE_TYPE=\'FUNCTION\' THEN 2 ELSE 0 END AS PROCEDURE_TYPE, ROUTINE_NAME AS SPECIFIC_NAME FROM INFORMATION_SCHEMA.ROUTINES WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getRoutineTypeConditionForGetProcedures()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ROUTINE_SCHEMA LIKE ? AND ROUTINE_NAME LIKE ? ORDER BY ROUTINE_SCHEMA, ROUTINE_NAME, ROUTINE_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 841
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    .line 844
    :try_start_1
    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    const-string p1, "%"

    .line 846
    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x2

    .line 849
    invoke-interface {v0, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 851
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object p1

    .line 852
    move-object p2, p1

    check-cast p2, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createFieldMetadataForGetProcedures()[Lcom/mysql/jdbc/Field;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 857
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_5
    return-object p1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_2
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 856
    :cond_6
    throw p1

    .line 817
    :cond_7
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Procedure name pattern can not be NULL or empty."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected getRoutineTypeConditionForGetProcedureColumns()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getRoutineTypeConditionForGetProcedures()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1093
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1094
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    :cond_0
    if-nez p3, :cond_2

    .line 1099
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p3, "%"

    goto :goto_0

    .line 1102
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Table name pattern can not be NULL or empty."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    const-string p2, ""

    if-eqz p1, :cond_4

    .line 1110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, p1

    goto :goto_2

    .line 1111
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1112
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    .line 1118
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->quotedId:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v1

    invoke-static {p3, p2, v0, v1}, Lcom/mysql/jdbc/StringUtils;->splitDBdotName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p2

    .line 1120
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_6

    .line 1121
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Ljava/lang/String;

    :cond_6
    const/4 p2, 0x0

    const-string v0, "SELECT TABLE_SCHEMA AS TABLE_CAT, NULL AS TABLE_SCHEM, TABLE_NAME, CASE WHEN TABLE_TYPE=\'BASE TABLE\' THEN CASE WHEN TABLE_SCHEMA = \'mysql\' OR TABLE_SCHEMA = \'performance_schema\' THEN \'SYSTEM TABLE\' ELSE \'TABLE\' END WHEN TABLE_TYPE=\'TEMPORARY\' THEN \'LOCAL_TEMPORARY\' ELSE TABLE_TYPE END AS TABLE_TYPE, TABLE_COMMENT AS REMARKS, NULL AS TYPE_CAT, NULL AS TYPE_SCHEM, NULL AS TYPE_NAME, NULL AS SELF_REFERENCING_COL_NAME, NULL AS REF_GENERATION FROM INFORMATION_SCHEMA.TABLES WHERE "

    const-string v3, "information_schema"

    .line 1134
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_9

    if-nez v3, :cond_8

    const-string v3, "%"

    .line 1136
    invoke-static {v5, p1, v3}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_7

    const-string v3, "_"

    invoke-static {v5, p1, v3}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_7

    goto :goto_3

    .line 1140
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "TABLE_SCHEMA LIKE ? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1138
    :cond_8
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "TABLE_SCHEMA = ? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1144
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "TABLE_SCHEMA LIKE ? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz p3, :cond_b

    const-string v3, "%"

    .line 1148
    invoke-static {v5, p3, v3}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_a

    const-string v3, "_"

    invoke-static {v5, p3, v3}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_a

    .line 1149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AND TABLE_NAME = ? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1151
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AND TABLE_NAME LIKE ? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1155
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AND TABLE_NAME LIKE ? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1157
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "HAVING TABLE_TYPE IN (?,?,?,?,?) "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ORDER BY TABLE_TYPE, TABLE_SCHEMA, TABLE_NAME"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1160
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_c

    .line 1163
    :try_start_1
    invoke-interface {v0, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_b

    :cond_c
    const-string p1, "%"

    .line 1165
    invoke-interface {v0, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1168
    :goto_6
    invoke-interface {v0, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    if-eqz p4, :cond_10

    .line 1171
    array-length p2, p4

    if-nez p2, :cond_d

    goto :goto_9

    :cond_d
    const/4 p2, 0x0

    :goto_7
    if-ge p2, p1, :cond_e

    add-int/lit8 p3, p2, 0x3

    const/16 v1, 0xc

    .line 1178
    invoke-interface {v0, p3, v1}, Ljava/sql/PreparedStatement;->setNull(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_e
    const/4 p1, 0x3

    .line 1182
    :goto_8
    array-length p2, p4

    if-ge v5, p2, :cond_11

    .line 1183
    aget-object p2, p4, v5

    invoke-static {p2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getTableTypeEqualTo(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-result-object p2

    .line 1184
    sget-object p3, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    if-eq p2, p3, :cond_f

    add-int/lit8 p3, p1, 0x1

    .line 1185
    invoke-virtual {p2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    move p1, p3

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 1172
    :cond_10
    :goto_9
    invoke-static {}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->values()[Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-result-object p2

    :goto_a
    if-ge v5, p1, :cond_11

    add-int/lit8 p3, v5, 0x3

    .line 1174
    aget-object p4, p2, v5

    invoke-virtual {p4}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p3, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 1190
    :cond_11
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object p1

    .line 1192
    move-object p2, p1

    check-cast p2, Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->createTablesFields()[Lcom/mysql/jdbc/Field;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_12

    .line 1197
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_12
    return-object p1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_b
    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 1196
    :cond_13
    throw p1
.end method

.method public getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1210
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1211
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->database:Ljava/lang/String;

    :cond_0
    if-eqz p3, :cond_4

    .line 1219
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "SELECT NULL AS SCOPE, COLUMN_NAME, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "DATA_TYPE"

    .line 1221
    invoke-static {p2, v0}, Lcom/mysql/jdbc/MysqlDefs;->appendJdbcTypeMappingQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v0, " AS DATA_TYPE, "

    .line 1222
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "COLUMN_TYPE AS TYPE_NAME, "

    .line 1224
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CASE WHEN LCASE(DATA_TYPE)=\'date\' THEN 10 WHEN LCASE(DATA_TYPE)=\'time\' THEN 8 WHEN LCASE(DATA_TYPE)=\'datetime\' THEN 19 WHEN LCASE(DATA_TYPE)=\'timestamp\' THEN 19 WHEN CHARACTER_MAXIMUM_LENGTH IS NULL THEN NUMERIC_PRECISION WHEN CHARACTER_MAXIMUM_LENGTH > 2147483647 THEN 2147483647 ELSE CHARACTER_MAXIMUM_LENGTH END AS COLUMN_SIZE, "

    .line 1225
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AS BUFFER_LENGTH,NUMERIC_SCALE AS DECIMAL_DIGITS, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AS PSEUDO_COLUMN FROM INFORMATION_SCHEMA.COLUMNS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WHERE TABLE_SCHEMA LIKE ? AND TABLE_NAME LIKE ? AND EXTRA LIKE \'%on update CURRENT_TIMESTAMP%\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 1236
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 1239
    :try_start_1
    invoke-interface {p2, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    const-string p1, "%"

    .line 1241
    invoke-interface {p2, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    .line 1244
    invoke-interface {p2, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1246
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->executeMetadataQuery(Ljava/sql/PreparedStatement;)Ljava/sql/ResultSet;

    move-result-object p3

    .line 1247
    move-object v0, p3

    check-cast v0, Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/mysql/jdbc/Field;

    const/4 v3, 0x0

    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "SCOPE"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v2, v3

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "COLUMN_NAME"

    const/16 v6, 0x20

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, v1

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "DATA_TYPE"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, p1

    const/4 p1, 0x3

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "TYPE_NAME"

    const/16 v8, 0x10

    invoke-direct {v3, v4, v5, v1, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, p1

    new-instance p1, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v3, "COLUMN_SIZE"

    invoke-direct {p1, v1, v3, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p1, v2, v6

    new-instance p1, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v3, "BUFFER_LENGTH"

    invoke-direct {p1, v1, v3, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p1, v2, v7

    const/4 p1, 0x6

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "DECIMAL_DIGITS"

    invoke-direct {v1, v3, v4, v7, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v2, p1

    const/4 p1, 0x7

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "PSEUDO_COLUMN"

    invoke-direct {v1, v3, v4, v7, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v2, p1

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->redefineFieldsForDBMD([Lcom/mysql/jdbc/Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 1255
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p3

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    .line 1254
    :cond_3
    throw p1

    .line 1216
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Table not specified."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public gethasParametersView()Z
    .locals 1

    .line 1203
    iget-boolean v0, p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;->hasParametersView:Z

    return v0
.end method
