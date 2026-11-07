.class public Lcom/mysql/jdbc/ResultSetMetaData;
.super Ljava/lang/Object;
.source "ResultSetMetaData.java"

# interfaces
.implements Ljava/sql/ResultSetMetaData;


# instance fields
.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field fields:[Lcom/mysql/jdbc/Field;

.field treatYearAsDate:Z

.field useOldAliasBehavior:Z


# direct methods
.method public constructor <init>([Lcom/mysql/jdbc/Field;ZZLcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->useOldAliasBehavior:Z

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->treatYearAsDate:Z

    .line 80
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    .line 81
    iput-boolean p2, p0, Lcom/mysql/jdbc/ResultSetMetaData;->useOldAliasBehavior:Z

    .line 82
    iput-boolean p3, p0, Lcom/mysql/jdbc/ResultSetMetaData;->treatYearAsDate:Z

    .line 83
    iput-object p4, p0, Lcom/mysql/jdbc/ResultSetMetaData;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-void
.end method

.method private static clampedGetLength(Lcom/mysql/jdbc/Field;)I
    .locals 4

    .line 34
    invoke-virtual {p0}, Lcom/mysql/jdbc/Field;->getLength()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    move-wide v0, v2

    :cond_0
    long-to-int p0, v0

    return p0
.end method

.method static getClassNameForJavaType(IZIZZZ)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_a

    const/16 v0, 0x10

    if-eq p0, v0, :cond_9

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    const-string p0, "java.lang.Object"

    return-object p0

    :pswitch_0
    const-string p0, "java.sql.Timestamp"

    return-object p0

    :pswitch_1
    const-string p0, "java.sql.Time"

    return-object p0

    :pswitch_2
    if-nez p5, :cond_1

    const/16 p0, 0xd

    if-eq p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "java.lang.Short"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "java.sql.Date"

    :goto_1
    return-object p0

    :pswitch_3
    const-string p0, "java.lang.Float"

    return-object p0

    :pswitch_4
    const-string p0, "java.lang.Double"

    return-object p0

    :pswitch_5
    if-eqz p1, :cond_2

    const-string p0, "java.lang.Integer"

    return-object p0

    :cond_2
    const-string p0, "java.lang.Integer"

    return-object p0

    :pswitch_6
    if-eqz p1, :cond_4

    const/16 p0, 0x9

    if-ne p2, p0, :cond_3

    goto :goto_2

    :cond_3
    const-string p0, "java.lang.Long"

    return-object p0

    :cond_4
    :goto_2
    const-string p0, "java.lang.Integer"

    return-object p0

    :pswitch_7
    const-string p0, "java.math.BigDecimal"

    return-object p0

    :pswitch_8
    const/16 p0, 0xff

    if-ne p2, p0, :cond_5

    const-string p0, "[B"

    return-object p0

    :cond_5
    if-eqz p3, :cond_6

    const-string p0, "[B"

    return-object p0

    :cond_6
    const-string p0, "java.lang.String"

    return-object p0

    :pswitch_9
    if-nez p1, :cond_7

    const-string p0, "java.lang.Long"

    return-object p0

    :cond_7
    const-string p0, "java.math.BigInteger"

    return-object p0

    :pswitch_a
    if-eqz p1, :cond_8

    const-string p0, "java.lang.Integer"

    return-object p0

    :cond_8
    const-string p0, "java.lang.Integer"

    return-object p0

    :cond_9
    :pswitch_b
    const-string p0, "java.lang.Boolean"

    return-object p0

    :cond_a
    :pswitch_c
    if-nez p4, :cond_b

    const-string p0, "java.lang.String"

    return-object p0

    :cond_b
    const-string p0, "[B"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final isDecimalType(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCatalogName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public getColumnCharacterEncoding(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getColumnCharacterSet(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 125
    :try_start_0
    invoke-static {p1}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 129
    throw v0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getColumnCharacterSet(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnClassName(I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v0

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isBlob()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isOpaqueBinary()Z

    move-result v4

    iget-boolean v5, p0, Lcom/mysql/jdbc/ResultSetMetaData;->treatYearAsDate:Z

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetMetaData;->getClassNameForJavaType(IZIZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    return v0
.end method

.method public getColumnDisplaySize(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    .line 203
    invoke-static {p1}, Lcom/mysql/jdbc/ResultSetMetaData;->clampedGetLength(Lcom/mysql/jdbc/Field;)I

    move-result v0

    .line 205
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getMaxBytesPerCharacter()I

    move-result p1

    div-int/2addr v0, p1

    return v0
.end method

.method public getColumnLabel(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->useOldAliasBehavior:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 224
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getColumnLabel()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 239
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->useOldAliasBehavior:Z

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 243
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getNameNoAliases()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 246
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getColumnType(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result p1

    return p1
.end method

.method public getColumnTypeName(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 281
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    .line 284
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    const-string p1, "UNKNOWN"

    return-object p1

    :pswitch_0
    const-string p1, "GEOMETRY"

    return-object p1

    :pswitch_1
    const/4 p1, -0x2

    if-ne v2, p1, :cond_0

    const-string p1, "BINARY"

    return-object p1

    :cond_0
    const-string p1, "CHAR"

    return-object p1

    :pswitch_2
    const/4 p1, -0x3

    if-ne v2, p1, :cond_1

    const-string p1, "VARBINARY"

    return-object p1

    :cond_1
    const-string p1, "VARCHAR"

    return-object p1

    .line 339
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "BLOB"

    return-object p1

    :cond_2
    const-string p1, "TEXT"

    return-object p1

    :pswitch_4
    const-string p1, "LONGBLOB"

    return-object p1

    :pswitch_5
    const-string p1, "MEDIUMBLOB"

    return-object p1

    :pswitch_6
    const-string p1, "TINYBLOB"

    return-object p1

    :pswitch_7
    const-string p1, "SET"

    return-object p1

    :pswitch_8
    const-string p1, "ENUM"

    return-object p1

    :pswitch_9
    const-string p1, "JSON"

    return-object p1

    :pswitch_a
    const-string p1, "BIT"

    return-object p1

    :pswitch_b
    const-string p1, "VARCHAR"

    return-object p1

    :pswitch_c
    const-string p1, "YEAR"

    return-object p1

    :pswitch_d
    const-string p1, "DATETIME"

    return-object p1

    :pswitch_e
    const-string p1, "TIME"

    return-object p1

    :pswitch_f
    const-string p1, "DATE"

    return-object p1

    .line 318
    :pswitch_10
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "MEDIUMINT UNSIGNED"

    goto :goto_0

    :cond_3
    const-string p1, "MEDIUMINT"

    :goto_0
    return-object p1

    .line 315
    :pswitch_11
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "BIGINT UNSIGNED"

    goto :goto_1

    :cond_4
    const-string p1, "BIGINT"

    :goto_1
    return-object p1

    :pswitch_12
    const-string p1, "TIMESTAMP"

    return-object p1

    :pswitch_13
    const-string p1, "NULL"

    return-object p1

    .line 306
    :pswitch_14
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "DOUBLE UNSIGNED"

    goto :goto_2

    :cond_5
    const-string p1, "DOUBLE"

    :goto_2
    return-object p1

    .line 303
    :pswitch_15
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "FLOAT UNSIGNED"

    goto :goto_3

    :cond_6
    const-string p1, "FLOAT"

    :goto_3
    return-object p1

    .line 300
    :pswitch_16
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "INT UNSIGNED"

    goto :goto_4

    :cond_7
    const-string p1, "INT"

    :goto_4
    return-object p1

    .line 297
    :pswitch_17
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "SMALLINT UNSIGNED"

    goto :goto_5

    :cond_8
    const-string p1, "SMALLINT"

    :goto_5
    return-object p1

    .line 294
    :pswitch_18
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "TINYINT UNSIGNED"

    goto :goto_6

    :cond_9
    const-string p1, "TINYINT"

    :goto_6
    return-object p1

    .line 291
    :pswitch_19
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "DECIMAL UNSIGNED"

    goto :goto_7

    :cond_a
    const-string p1, "DECIMAL"

    :goto_7
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf5
        :pswitch_9
        :pswitch_19
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

.method protected getField(I)Lcom/mysql/jdbc/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 394
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    array-length v1, v1

    if-gt p1, v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    return-object p1

    :cond_0
    const-string p1, "ResultSetMetaData.46"

    .line 395
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v1, "S1002"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getPrecision(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 413
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    .line 419
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v0

    invoke-static {v0}, Lcom/mysql/jdbc/ResultSetMetaData;->isDecimalType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getDecimals()I

    move-result v0

    if-lez v0, :cond_0

    .line 421
    invoke-static {p1}, Lcom/mysql/jdbc/ResultSetMetaData;->clampedGetLength(Lcom/mysql/jdbc/Field;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getPrecisionAdjustFactor()I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 424
    :cond_0
    invoke-static {p1}, Lcom/mysql/jdbc/ResultSetMetaData;->clampedGetLength(Lcom/mysql/jdbc/Field;)I

    move-result v0

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getPrecisionAdjustFactor()I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 427
    :cond_1
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 435
    invoke-static {p1}, Lcom/mysql/jdbc/ResultSetMetaData;->clampedGetLength(Lcom/mysql/jdbc/Field;)I

    move-result v0

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getMaxBytesPerCharacter()I

    move-result p1

    div-int/2addr v0, p1

    return v0

    .line 432
    :pswitch_0
    invoke-static {p1}, Lcom/mysql/jdbc/ResultSetMetaData;->clampedGetLength(Lcom/mysql/jdbc/Field;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0xf9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getScale(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 452
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    .line 454
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v0

    invoke-static {v0}, Lcom/mysql/jdbc/ResultSetMetaData;->isDecimalType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getDecimals()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSchemaName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, ""

    return-object p1
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 490
    iget-boolean v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->useOldAliasBehavior:Z

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 494
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getTableNameNoAliases()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isAutoIncrement(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 509
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    .line 511
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isAutoIncrement()Z

    move-result p1

    return p1
.end method

.method public isCaseSensitive(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 526
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    .line 528
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    return v3

    :pswitch_0
    return v2

    .line 548
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 552
    :cond_1
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getCollation()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "_ci"

    .line 554
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isCurrency(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isDefinitelyWritable(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 588
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->isWritable(I)Z

    move-result p1

    return p1
.end method

.method public isNullable(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 603
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isNotNull()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isReadOnly(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 622
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isReadOnly()Z

    move-result p1

    return p1
.end method

.method public isSearchable(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public isSigned(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 656
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->getField(I)Lcom/mysql/jdbc/Field;

    move-result-object p1

    .line 657
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 p1, 0x0

    packed-switch v0, :pswitch_data_2

    return p1

    :pswitch_0
    return p1

    .line 669
    :pswitch_1
    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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

    .line 805
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isWritable(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 693
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ResultSetMetaData;->isReadOnly(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - Field level information: "

    .line 705
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 707
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n\t"

    .line 708
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    iget-object v2, p0, Lcom/mysql/jdbc/ResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 814
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 816
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

    iget-object v0, p0, Lcom/mysql/jdbc/ResultSetMetaData;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
