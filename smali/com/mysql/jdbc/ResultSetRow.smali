.class public abstract Lcom/mysql/jdbc/ResultSetRow;
.super Ljava/lang/Object;
.source "ResultSetRow.java"


# instance fields
.field protected exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field protected metadata:[Lcom/mysql/jdbc/Field;


# direct methods
.method protected constructor <init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-void
.end method


# virtual methods
.method public abstract closeOpenStreams()V
.end method

.method public abstract getBinaryInputStream(I)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getBytesSize()I
.end method

.method public abstract getColumnValue(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getDateFast(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected final getDateFast(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v0, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    const/4 v7, 0x0

    if-nez v3, :cond_0

    return-object v7

    :cond_0
    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0x3a

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v9, v4, :cond_2

    add-int v13, v0, v9

    .line 105
    :try_start_0
    aget-byte v13, v3, v13

    if-ne v13, v10, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    goto/16 :goto_c

    :cond_2
    const/4 v9, 0x0

    :goto_1
    move v13, v9

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v4, :cond_6

    add-int v14, v0, v9

    .line 112
    aget-byte v14, v3, v14

    const/16 v15, 0x20

    if-eq v14, v15, :cond_3

    const/16 v8, 0x2d

    if-eq v14, v8, :cond_3

    const/16 v8, 0x2f

    if-ne v14, v8, :cond_4

    :cond_3
    const/4 v13, 0x0

    :cond_4
    const/16 v8, 0x30

    if-eq v14, v8, :cond_5

    if-eq v14, v15, :cond_5

    if-eq v14, v10, :cond_5

    const/16 v8, 0x2d

    if-eq v14, v8, :cond_5

    const/16 v8, 0x2f

    if-eq v14, v8, :cond_5

    const/16 v8, 0x2e

    if-eq v14, v8, :cond_5

    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x1

    :goto_3
    const/4 v9, 0x0

    :goto_4
    const/4 v10, -0x1

    if-ge v9, v4, :cond_8

    add-int v14, v0, v9

    .line 128
    aget-byte v14, v3, v14

    const/16 v15, 0x2e

    if-ne v14, v15, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_8
    const/4 v9, -0x1

    :goto_5
    if-le v9, v10, :cond_9

    goto :goto_6

    :cond_9
    move v9, v4

    :goto_6
    if-nez v13, :cond_c

    if-eqz v8, :cond_c

    const-string v0, "convertToNull"

    .line 141
    invoke-interface/range {p5 .. p5}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-object v7

    :cond_a
    const-string v0, "exception"

    .line 144
    invoke-interface/range {p5 .. p5}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 150
    invoke-virtual {v5, v6, v12, v12, v12}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 145
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' can not be represented as java.sql.Date"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "S1009"

    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 152
    :cond_c
    iget-object v4, v1, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    const/4 v7, 0x7

    const/16 v8, 0x45

    const/16 v10, 0xa

    const/16 v13, 0x8

    const/4 v14, 0x4

    if-ne v4, v7, :cond_16

    if-eq v9, v11, :cond_14

    if-eq v9, v14, :cond_12

    const/4 v4, 0x6

    if-eq v9, v4, :cond_10

    if-eq v9, v13, :cond_f

    if-eq v9, v10, :cond_10

    const/16 v7, 0xc

    if-eq v9, v7, :cond_10

    const/16 v4, 0xe

    if-eq v9, v4, :cond_f

    const/16 v4, 0x13

    if-eq v9, v4, :cond_e

    const/16 v4, 0x15

    if-eq v9, v4, :cond_e

    const/16 v4, 0x1d

    if-ne v9, v4, :cond_d

    goto :goto_7

    :cond_d
    const-string v0, "ResultSet.Bad_format_for_Date"

    .line 212
    new-array v4, v11, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v0, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "S1009"

    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_7
    add-int/lit8 v4, v0, 0x0

    add-int/lit8 v7, v0, 0x4

    .line 158
    invoke-static {v3, v4, v7}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    add-int/lit8 v7, v0, 0x5

    add-int/lit8 v8, v0, 0x7

    .line 159
    invoke-static {v3, v7, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v7

    add-int/lit8 v8, v0, 0x8

    add-int/2addr v0, v10

    .line 160
    invoke-static {v3, v8, v0}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    .line 162
    invoke-virtual {v5, v6, v4, v7, v0}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    :cond_f
    add-int/lit8 v4, v0, 0x0

    add-int/lit8 v7, v0, 0x4

    .line 167
    invoke-static {v3, v4, v7}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    add-int/lit8 v8, v0, 0x6

    .line 168
    invoke-static {v3, v7, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v7

    add-int/2addr v0, v13

    .line 169
    invoke-static {v3, v8, v0}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    .line 171
    invoke-virtual {v5, v6, v4, v7, v0}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    :cond_10
    add-int/lit8 v7, v0, 0x0

    add-int/lit8 v9, v0, 0x2

    .line 177
    invoke-static {v3, v7, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v7

    if-gt v7, v8, :cond_11

    add-int/lit8 v7, v7, 0x64

    :cond_11
    add-int/lit8 v8, v0, 0x4

    .line 183
    invoke-static {v3, v9, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v9

    add-int/2addr v0, v4

    .line 184
    invoke-static {v3, v8, v0}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    add-int/lit16 v7, v7, 0x76c

    .line 186
    invoke-virtual {v5, v6, v7, v9, v0}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    :cond_12
    add-int/lit8 v4, v0, 0x0

    add-int/lit8 v7, v0, 0x4

    .line 190
    invoke-static {v3, v4, v7}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    if-gt v4, v8, :cond_13

    add-int/lit8 v4, v4, 0x64

    :cond_13
    add-int/2addr v0, v11

    .line 196
    invoke-static {v3, v0, v7}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    add-int/lit16 v4, v4, 0x76c

    .line 198
    invoke-virtual {v5, v6, v4, v0, v12}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    :cond_14
    add-int/lit8 v4, v0, 0x0

    add-int/2addr v0, v11

    .line 202
    invoke-static {v3, v4, v0}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    if-gt v0, v8, :cond_15

    add-int/lit8 v0, v0, 0x64

    :cond_15
    add-int/lit16 v0, v0, 0x76c

    .line 208
    invoke-virtual {v5, v6, v0, v12, v12}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 217
    :cond_16
    iget-object v4, v1, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    const/16 v7, 0xd

    if-ne v4, v7, :cond_1a

    if-eq v9, v11, :cond_18

    if-ne v9, v12, :cond_17

    goto :goto_8

    :cond_17
    add-int/lit8 v4, v0, 0x0

    add-int/2addr v0, v14

    .line 228
    invoke-static {v3, v4, v0}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    goto :goto_9

    :cond_18
    :goto_8
    add-int v4, v0, v9

    .line 220
    invoke-static {v3, v0, v4}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    if-gt v0, v8, :cond_19

    add-int/lit8 v0, v0, 0x64

    :cond_19
    add-int/lit16 v0, v0, 0x76c

    .line 231
    :goto_9
    invoke-virtual {v5, v6, v0, v12, v12}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 232
    :cond_1a
    iget-object v4, v1, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    const/16 v7, 0xb

    if-ne v4, v7, :cond_1b

    const/16 v0, 0x7b2

    .line 233
    invoke-virtual {v5, v6, v0, v12, v12}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    :cond_1b
    if-ge v9, v10, :cond_1d

    if-ne v9, v13, :cond_1c

    const/16 v0, 0x7b2

    .line 237
    invoke-virtual {v5, v6, v0, v12, v12}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    :cond_1c
    const-string v0, "ResultSet.Bad_format_for_Date"

    .line 241
    new-array v4, v11, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v0, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "S1009"

    iget-object v5, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v4, v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_1d
    const/16 v4, 0x12

    if-eq v9, v4, :cond_1e

    add-int/lit8 v4, v0, 0x0

    add-int/lit8 v7, v0, 0x4

    .line 248
    invoke-static {v3, v4, v7}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    add-int/lit8 v7, v0, 0x5

    add-int/lit8 v8, v0, 0x7

    .line 249
    invoke-static {v3, v7, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v7

    add-int/lit8 v8, v0, 0x8

    add-int/2addr v0, v10

    .line 250
    invoke-static {v3, v8, v0}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move/from16 v16, v4

    move v4, v0

    move/from16 v0, v16

    goto :goto_a

    .line 253
    :cond_1e
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v7, "ISO8859_1"

    invoke-static {v3, v0, v9, v7}, Lcom/mysql/jdbc/StringUtils;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "- "

    invoke-direct {v4, v0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 256
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 257
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 261
    :goto_a
    invoke-virtual {v5, v6, v0, v7, v4}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 265
    :goto_b
    new-array v4, v11, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v12

    const-string v2, "ResultSet.Bad_format_for_Date"

    invoke-static {v2, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v4, "S1009"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 268
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 270
    throw v2

    .line 263
    :goto_c
    throw v0
.end method

.method public abstract getInt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getLong(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getNativeDate(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeDate(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    add-int/lit8 p1, p3, 0x0

    .line 318
    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 v0, p3, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    add-int/lit8 v0, p3, 0x2

    .line 320
    aget-byte v0, p2, v0

    add-int/lit8 p3, p3, 0x3

    .line 321
    aget-byte p2, p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 p3, 0x1

    if-eqz p4, :cond_2

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move p3, v0

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "convertToNull"

    .line 325
    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    const-string p1, "exception"

    .line 327
    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x1

    const/4 p2, 0x1

    .line 337
    :goto_2
    iget-boolean p4, p6, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez p4, :cond_4

    .line 338
    invoke-static {p1, p3, p2, p7}, Lcom/mysql/jdbc/TimeUtil;->fastDateCreate(IIILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1

    :cond_4
    if-nez p7, :cond_5

    .line 341
    invoke-virtual {p6}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object p7

    :cond_5
    invoke-virtual {p6, p7, p1, p3, p2}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object p1

    return-object p1

    .line 328
    :cond_6
    iget-object p1, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string p2, "Value \'0000-00-00\' can not be represented as java.sql.Date"

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public abstract getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeDateTimeValue(I[BIILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p11

    const/4 v10, 0x0

    if-nez p2, :cond_0

    return-object v10

    .line 364
    :cond_0
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v11

    :goto_0
    move-object/from16 v18, v11

    goto :goto_1

    :cond_1
    invoke-virtual/range {p11 .. p11}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v11

    goto :goto_0

    :goto_1
    const/4 v11, 0x7

    const/4 v13, 0x1

    if-eq v6, v11, :cond_3

    packed-switch v6, :pswitch_data_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_2
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    goto/16 :goto_5

    :pswitch_0
    if-eqz v4, :cond_2

    add-int/lit8 v4, p3, 0x5

    .line 408
    aget-byte v4, p2, v4

    add-int/lit8 v6, p3, 0x6

    .line 409
    aget-byte v6, p2, v6

    add-int/lit8 v3, p3, 0x7

    .line 410
    aget-byte v2, p2, v3

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_3
    const/16 v3, 0x7b2

    move v3, v2

    move v15, v6

    const/16 v6, 0x7b2

    const/4 v12, 0x1

    const/4 v14, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x1

    goto/16 :goto_5

    :pswitch_1
    if-eqz v4, :cond_6

    add-int/lit8 v4, p3, 0x0

    .line 396
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, p3, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    add-int/lit8 v6, p3, 0x2

    .line 397
    aget-byte v6, p2, v6

    add-int/lit8 v3, p3, 0x3

    .line 398
    aget-byte v2, p2, v3

    move/from16 v19, v2

    move v14, v6

    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    move v6, v4

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_3
    :pswitch_2
    if-eqz v4, :cond_6

    add-int/lit8 v6, p3, 0x0

    .line 374
    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v14, p3, 0x1

    aget-byte v14, p2, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v6, v14

    add-int/lit8 v14, p3, 0x2

    .line 375
    aget-byte v14, p2, v14

    add-int/lit8 v15, p3, 0x3

    .line 376
    aget-byte v15, p2, v15

    const/4 v12, 0x4

    if-le v4, v12, :cond_4

    add-int/lit8 v12, p3, 0x4

    .line 379
    aget-byte v12, p2, v12

    add-int/lit8 v16, p3, 0x5

    .line 380
    aget-byte v16, p2, v16

    add-int/lit8 v17, p3, 0x6

    .line 381
    aget-byte v17, p2, v17

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_4
    if-le v4, v11, :cond_5

    add-int/lit8 v4, p3, 0x7

    .line 386
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v11, p3, 0x8

    aget-byte v11, p2, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v4, v11

    add-int/lit8 v11, p3, 0x9

    aget-byte v11, p2, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v4, v11

    add-int/lit8 v3, p3, 0xa

    aget-byte v2, p2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v4

    mul-int/lit16 v2, v2, 0x3e8

    move v4, v12

    move/from16 v19, v15

    move/from16 v15, v16

    move/from16 v3, v17

    const/4 v12, 0x1

    move/from16 v17, v2

    goto :goto_5

    :cond_5
    move v4, v12

    move/from16 v19, v15

    move/from16 v15, v16

    move/from16 v3, v17

    const/4 v12, 0x1

    const/16 v17, 0x0

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x1

    goto/16 :goto_2

    :goto_5
    packed-switch p6, :pswitch_data_1

    .line 490
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "Internal error - conversion method doesn\'t support this type"

    const-string v3, "S1000"

    invoke-direct {v1, v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :pswitch_3
    if-eqz v12, :cond_b

    if-nez v6, :cond_9

    if-nez v14, :cond_9

    if-nez v19, :cond_9

    const-string v1, "convertToNull"

    .line 464
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v10

    :cond_7
    const-string v1, "exception"

    .line 467
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v11, 0x1

    const/4 v12, 0x1

    goto :goto_6

    .line 468
    :cond_8
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "Value \'0000-00-00\' can not be represented as java.sql.Timestamp"

    const-string v3, "S1009"

    invoke-direct {v1, v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_9
    move v11, v6

    move v12, v14

    move/from16 v13, v19

    .line 476
    :goto_6
    iget-boolean v1, v9, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_a

    move-object/from16 p1, p8

    move/from16 p2, v11

    move/from16 p3, v12

    move/from16 p4, v13

    move/from16 p5, v4

    move/from16 p6, v15

    move/from16 p7, v3

    move/from16 p8, v17

    .line 477
    invoke-static/range {p1 .. p8}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v1

    return-object v1

    .line 480
    :cond_a
    invoke-virtual/range {p11 .. p11}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v10

    move-object/from16 v9, p11

    move v14, v4

    move/from16 v16, v3

    invoke-virtual/range {v9 .. v17}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v4

    .line 482
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v6

    move-object/from16 v1, p10

    move-object/from16 v2, v18

    move-object/from16 v3, p5

    move-object v5, v6

    move-object/from16 v6, p8

    move/from16 v7, p9

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v1

    return-object v1

    :cond_b
    add-int/lit8 v1, p1, 0x1

    .line 487
    invoke-virtual {v9, v1, v5, v7, v8}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTimestampViaParseConversion(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v1

    return-object v1

    :pswitch_4
    if-eqz v12, :cond_d

    .line 425
    iget-boolean v1, v9, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_c

    .line 426
    iget-object v1, v0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v4, v15, v3, v5, v1}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(IIILjava/util/Calendar;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v1

    return-object v1

    .line 429
    :cond_c
    invoke-virtual/range {p11 .. p11}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, v0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v4, v15, v3, v2}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(Ljava/util/Calendar;IIILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v4

    .line 431
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v6

    move-object/from16 v1, p10

    move-object/from16 v2, v18

    move-object/from16 v3, p5

    move-object v5, v6

    move-object/from16 v6, p8

    move/from16 v7, p9

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v1

    return-object v1

    :cond_d
    add-int/lit8 v1, p1, 0x1

    .line 436
    invoke-virtual {v9, v1, v5, v7, v8}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeTimeViaParseConversion(ILjava/util/Calendar;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v1

    return-object v1

    :pswitch_5
    if-eqz v12, :cond_12

    if-nez v6, :cond_10

    if-nez v14, :cond_10

    if-nez v19, :cond_10

    const-string v1, "convertToNull"

    .line 441
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v10

    :cond_e
    const-string v1, "exception"

    .line 444
    invoke-interface/range {p10 .. p10}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    const/4 v6, 0x1

    goto :goto_7

    .line 445
    :cond_f
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "Value \'0000-00-00\' can not be represented as java.sql.Date"

    const-string v3, "S1009"

    invoke-direct {v1, v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_10
    move v13, v14

    move/from16 v1, v19

    .line 453
    :goto_7
    iget-boolean v2, v9, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v2, :cond_11

    .line 454
    invoke-static {v6, v13, v1, v5}, Lcom/mysql/jdbc/TimeUtil;->fastDateCreate(IIILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object v1

    return-object v1

    .line 457
    :cond_11
    invoke-virtual/range {p11 .. p11}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v9, v2, v6, v13, v1}, Lcom/mysql/jdbc/ResultSetImpl;->fastDateCreate(Ljava/util/Calendar;III)Ljava/sql/Date;

    move-result-object v1

    return-object v1

    :cond_12
    add-int/lit8 v1, p1, 0x1

    .line 460
    invoke-virtual {v9, v1}, Lcom/mysql/jdbc/ResultSetImpl;->getNativeDateViaParseConversion(I)Ljava/sql/Date;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public abstract getNativeDouble(I)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeDouble([BI)D
    .locals 5

    add-int/lit8 v0, p2, 0x0

    .line 498
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    const/16 v2, 0x38

    shl-long/2addr p1, v2

    or-long/2addr p1, v0

    .line 502
    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public abstract getNativeFloat(I)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeFloat([BI)F
    .locals 2

    add-int/lit8 v0, p2, 0x0

    .line 508
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    .line 510
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public abstract getNativeInt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeInt([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x0

    .line 517
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1
.end method

.method public abstract getNativeLong(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeLong([BI)J
    .locals 5

    add-int/lit8 v0, p2, 0x0

    .line 525
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    const/16 v2, 0x38

    shl-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public abstract getNativeShort(I)S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeShort([BI)S
    .locals 1

    add-int/lit8 v0, p2, 0x0

    .line 535
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method public abstract getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeTime(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v0, p0

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    add-int/lit8 v3, p3, 0x5

    .line 564
    aget-byte v3, p2, v3

    add-int/lit8 v4, p3, 0x6

    .line 565
    aget-byte v4, p2, v4

    add-int/lit8 v2, p3, 0x7

    .line 566
    aget-byte v1, p2, v2

    move v2, v1

    move-object/from16 v1, p9

    goto :goto_0

    :cond_0
    move-object/from16 v1, p9

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 569
    :goto_0
    iget-boolean v5, v1, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v5, :cond_1

    .line 570
    iget-object v1, v0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    move-object/from16 v7, p5

    invoke-static {v3, v4, v2, v7, v1}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(IIILjava/util/Calendar;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v1

    return-object v1

    :cond_1
    move-object/from16 v7, p5

    .line 573
    invoke-virtual/range {p9 .. p9}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v6

    .line 575
    iget-object v1, v0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v6, v3, v4, v2, v1}, Lcom/mysql/jdbc/TimeUtil;->fastTimeCreate(Ljava/util/Calendar;IIILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;

    move-result-object v8

    .line 577
    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v9

    move-object/from16 v5, p8

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v5 .. v11}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v1

    return-object v1
.end method

.method public abstract getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getNativeTimestamp([BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move/from16 v2, p3

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    add-int/lit8 v4, p2, 0x0

    .line 598
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x2

    .line 599
    aget-byte v5, p1, v5

    add-int/lit8 v6, p2, 0x3

    .line 600
    aget-byte v6, p1, v6

    const/4 v7, 0x4

    if-le v2, v7, :cond_0

    add-int/lit8 v7, p2, 0x4

    .line 603
    aget-byte v7, p1, v7

    add-int/lit8 v8, p2, 0x5

    .line 604
    aget-byte v8, p1, v8

    add-int/lit8 v9, p2, 0x6

    .line 605
    aget-byte v9, p1, v9

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x7

    if-le v2, v10, :cond_1

    add-int/lit8 v3, p2, 0x7

    .line 610
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v10, p2, 0x8

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v3, v10

    add-int/lit8 v10, p2, 0x9

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v3, v10

    add-int/lit8 v1, p2, 0xa

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v3

    mul-int/lit16 v3, v0, 0x3e8

    move v15, v3

    move v12, v7

    move v13, v8

    move v14, v9

    goto :goto_2

    :cond_1
    move v12, v7

    move v13, v8

    move v14, v9

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    const/4 v15, 0x0

    :goto_2
    const/4 v0, 0x1

    if-eqz v2, :cond_4

    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v0, p8

    move v9, v4

    move v10, v5

    move v11, v6

    goto :goto_4

    :cond_4
    :goto_3
    const-string v1, "convertToNull"

    .line 616
    invoke-interface/range {p7 .. p7}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    const-string v1, "exception"

    .line 619
    invoke-interface/range {p7 .. p7}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 629
    :goto_4
    iget-boolean v1, v0, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_6

    move-object/from16 p1, p5

    move/from16 p2, v9

    move/from16 p3, v10

    move/from16 p4, v11

    move/from16 p5, v12

    move/from16 p6, v13

    move/from16 p7, v14

    move/from16 p8, v15

    .line 630
    invoke-static/range {p1 .. p8}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 633
    :cond_6
    invoke-interface/range {p7 .. p7}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface/range {p7 .. p7}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v1

    :goto_5
    move-object v3, v1

    goto :goto_6

    :cond_7
    invoke-virtual/range {p8 .. p8}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v1

    goto :goto_5

    :goto_6
    move-object/from16 v7, p8

    move-object v8, v3

    .line 635
    invoke-virtual/range {v7 .. v15}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v5

    .line 637
    invoke-interface/range {p7 .. p7}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v6

    move-object/from16 v2, p7

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    :cond_8
    move-object/from16 v0, p0

    .line 620
    iget-object v1, v0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v2, "Value \'0000-00-00\' can not be represented as java.sql.Timestamp"

    const-string v3, "S1009"

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public abstract getReader(I)Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getString(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;[BII)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 691
    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 694
    :try_start_0
    invoke-static {p3}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 696
    :cond_0
    invoke-interface {p2, p1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 699
    invoke-virtual {p2, p3, p4, p5}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toString([BII)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 701
    :cond_1
    invoke-static {p3, p4, p5, p1}, Lcom/mysql/jdbc/StringUtils;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 705
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ResultSet.Unsupported_character_encoding____101"

    invoke-static {p3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string p3, "0S100"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 709
    :cond_2
    invoke-static {p3, p4, p5}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public abstract getTimeFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getTimeFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p9

    const/4 v7, 0x0

    if-nez v2, :cond_0

    return-object v7

    :cond_0
    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0x3a

    if-ge v9, v4, :cond_2

    add-int v12, p3, v9

    .line 735
    :try_start_0
    aget-byte v12, v2, v12

    if-ne v12, v10, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_2
    const/4 v9, 0x0

    :goto_1
    const/4 v12, 0x0

    :goto_2
    const/16 v13, 0x2e

    if-ge v12, v4, :cond_4

    add-int v15, p3, v12

    .line 742
    aget-byte v15, v2, v15

    if-ne v15, v13, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, -0x1

    :goto_3
    move v15, v9

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v4, :cond_9

    add-int v16, p3, v9

    .line 749
    aget-byte v11, v2, v16

    const/16 v14, 0x2f

    const/16 v8, 0x2d

    const/16 v7, 0x20

    if-eq v11, v7, :cond_5

    if-eq v11, v8, :cond_5

    if-ne v11, v14, :cond_6

    :cond_5
    const/4 v15, 0x0

    :cond_6
    const/16 v13, 0x30

    if-eq v11, v13, :cond_7

    if-eq v11, v7, :cond_7

    if-eq v11, v10, :cond_7

    if-eq v11, v8, :cond_7

    if-eq v11, v14, :cond_7

    const/16 v7, 0x2e

    if-eq v11, v7, :cond_8

    const/4 v7, 0x0

    goto :goto_5

    :cond_7
    const/16 v7, 0x2e

    :cond_8
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x0

    const/16 v13, 0x2e

    goto :goto_4

    :cond_9
    const/4 v7, 0x1

    :goto_5
    if-nez v15, :cond_c

    if-eqz v7, :cond_c

    const-string v0, "convertToNull"

    .line 763
    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    const-string v0, "exception"

    .line 765
    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 771
    invoke-virtual {v6, v5, v0, v0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v0

    return-object v0

    .line 766
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' can not be represented as java.sql.Time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    iget-object v3, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 774
    :cond_c
    iget-object v7, v1, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v7, v7, v0

    const/4 v8, -0x1

    if-eq v12, v8, :cond_e

    add-int/lit8 v8, v12, 0x2

    if-gt v8, v4, :cond_d

    add-int v8, p3, v12

    const/4 v9, 0x1

    add-int/2addr v8, v9

    add-int v9, p3, v4

    .line 783
    invoke-static {v2, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    add-int/lit8 v8, v12, 0x1

    sub-int/2addr v4, v8

    const/16 v8, 0x9

    if-ge v4, v8, :cond_f

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    sub-int/2addr v8, v4

    int-to-double v13, v8

    .line 788
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    goto :goto_6

    .line 792
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_e
    move v12, v4

    .line 801
    :cond_f
    :goto_6
    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    const/4 v8, 0x7

    const/16 v9, 0xa

    if-ne v4, v8, :cond_13

    if-eq v12, v9, :cond_12

    const/16 v4, 0xc

    if-eq v12, v4, :cond_11

    const/16 v4, 0xe

    if-eq v12, v4, :cond_11

    const/16 v4, 0x13

    if-ne v12, v4, :cond_10

    add-int v3, p3, v12

    add-int/lit8 v4, v3, -0x8

    add-int/lit8 v8, v3, -0x6

    .line 806
    invoke-static {v2, v4, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    add-int/lit8 v8, v3, -0x5

    add-int/lit8 v9, v3, -0x3

    .line 807
    invoke-static {v2, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    add-int/lit8 v9, v3, -0x2

    .line 808
    invoke-static {v2, v9, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v2

    goto :goto_7

    .line 830
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultSet.Timestamp_too_small_to_convert_to_Time_value_in_column__257"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    iget-object v3, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_11
    add-int v3, p3, v12

    add-int/lit8 v4, v3, -0x6

    add-int/lit8 v8, v3, -0x4

    .line 814
    invoke-static {v2, v4, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    add-int/lit8 v9, v3, -0x2

    .line 815
    invoke-static {v2, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    .line 816
    invoke-static {v2, v9, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v2

    goto :goto_7

    :cond_12
    add-int/lit8 v4, p3, 0x6

    add-int/lit8 v8, p3, 0x8

    .line 822
    invoke-static {v2, v4, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    add-int/lit8 v3, p3, 0xa

    .line 823
    invoke-static {v2, v8, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    const/4 v2, 0x0

    .line 835
    :goto_7
    new-instance v3, Ljava/sql/SQLWarning;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ResultSet.Precision_lost_converting_TIMESTAMP_to_Time_with_getTime()_on_column__261"

    invoke-static {v10}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 843
    :cond_13
    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    const/16 v8, 0xc

    if-ne v4, v8, :cond_14

    add-int/lit8 v4, p3, 0xb

    add-int/lit8 v8, p3, 0xd

    .line 844
    invoke-static {v2, v4, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    add-int/lit8 v8, p3, 0xe

    add-int/lit8 v9, p3, 0x10

    .line 845
    invoke-static {v2, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    add-int/lit8 v9, p3, 0x11

    add-int/lit8 v3, p3, 0x13

    .line 846
    invoke-static {v2, v9, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v2

    .line 849
    new-instance v3, Ljava/sql/SQLWarning;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ResultSet.Precision_lost_converting_DATETIME_to_Time_with_getTime()_on_column__264"

    invoke-static {v10}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    add-int/2addr v0, v10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;)V

    goto :goto_a

    .line 858
    :cond_14
    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    if-ne v4, v9, :cond_15

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 859
    invoke-virtual {v6, v7, v4, v4, v4}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v4, 0x0

    const/4 v7, 0x5

    const/16 v8, 0x8

    if-eq v12, v7, :cond_17

    if-ne v12, v8, :cond_16

    goto :goto_8

    .line 864
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResultSet.Bad_format_for_Time____267"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ResultSet.___in_column__268"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    iget-object v3, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_17
    :goto_8
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v9, p3, 0x2

    .line 870
    invoke-static {v2, v0, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    add-int/lit8 v9, p3, 0x3

    add-int/lit8 v10, p3, 0x5

    .line 871
    invoke-static {v2, v9, v10}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v9

    if-ne v12, v7, :cond_18

    const/4 v2, 0x0

    goto :goto_9

    :cond_18
    add-int/lit8 v4, p3, 0x6

    add-int/lit8 v3, p3, 0x8

    .line 872
    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    move v2, v8

    :goto_9
    move v4, v0

    move v8, v9

    .line 875
    :goto_a
    invoke-virtual/range {p9 .. p9}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v3

    .line 877
    iget-boolean v0, v6, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_19

    .line 881
    invoke-virtual {v6, v5, v4, v8, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v0

    return-object v0

    .line 884
    :cond_19
    invoke-virtual {v6, v3, v4, v8, v2}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimeCreate(Ljava/util/Calendar;III)Ljava/sql/Time;

    move-result-object v0

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v6

    move-object/from16 v2, p8

    move-object/from16 v4, p5

    move-object v5, v0

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 890
    :goto_b
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v4, "S1009"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 891
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 893
    throw v2
.end method

.method public abstract getTimestampFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected getTimestampFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p9

    const/4 v12, 0x1

    .line 904
    :try_start_0
    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-virtual/range {p9 .. p9}, Lcom/mysql/jdbc/ResultSetImpl;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v6

    :goto_0
    move-object v14, v6

    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x3a

    if-ge v7, v4, :cond_2

    add-int v9, v3, v7

    .line 911
    aget-byte v9, v0, v9

    if-ne v9, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_2
    move v9, v7

    const/4 v7, 0x0

    :goto_3
    const/16 v10, 0x2d

    if-ge v7, v4, :cond_6

    add-int v11, v3, v7

    .line 918
    aget-byte v11, v0, v11

    const/16 v13, 0x20

    if-eq v11, v13, :cond_3

    if-eq v11, v10, :cond_3

    const/16 v13, 0x2f

    if-ne v11, v13, :cond_4

    :cond_3
    const/4 v9, 0x0

    :cond_4
    const/16 v13, 0x30

    if-eq v11, v13, :cond_5

    const/16 v13, 0x20

    if-eq v11, v13, :cond_5

    if-eq v11, v8, :cond_5

    if-eq v11, v10, :cond_5

    const/16 v13, 0x2f

    if-eq v11, v13, :cond_5

    const/16 v13, 0x2e

    if-eq v11, v13, :cond_5

    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x1

    :goto_4
    if-nez v9, :cond_a

    if-eqz v7, :cond_a

    const-string v3, "convertToNull"

    .line 933
    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v0, 0x0

    return-object v0

    :cond_7
    const-string v3, "exception"

    .line 936
    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 941
    iget-boolean v0, v5, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_8

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p6

    .line 942
    invoke-static/range {v3 .. v10}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p9

    move v5, v0

    .line 945
    invoke-virtual/range {v3 .. v11}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 937
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' can not be represented as java.sql.Timestamp"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "S1009"

    iget-object v4, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 947
    :cond_a
    iget-object v7, v1, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v7

    const/16 v9, 0xd

    const/4 v11, 0x4

    if-ne v7, v9, :cond_c

    .line 949
    iget-boolean v4, v5, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v4, :cond_b

    .line 950
    invoke-static {v0, v3, v11}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v16

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v15, p6

    invoke-static/range {v15 .. v22}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 953
    :cond_b
    invoke-static {v0, v3, v11}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p9

    move-object v4, v14

    move v5, v0

    invoke-virtual/range {v3 .. v11}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v16

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v17

    move-object/from16 v13, p8

    move-object/from16 v15, p5

    move-object/from16 v18, p6

    move/from16 v19, p7

    invoke-static/range {v13 .. v19}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    :cond_c
    const/4 v7, 0x0

    :goto_5
    const/4 v9, -0x1

    if-ge v7, v4, :cond_e

    add-int v13, v3, v7

    .line 970
    aget-byte v13, v0, v13

    const/16 v15, 0x2e

    if-ne v13, v15, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_e
    const/4 v7, -0x1

    :goto_6
    add-int v13, v3, v4

    add-int/lit8 v15, v13, -0x1

    if-ne v7, v15, :cond_10

    add-int/lit8 v4, v4, -0x1

    :cond_f
    const/16 v22, 0x0

    goto :goto_8

    :cond_10
    if-eq v7, v9, :cond_f

    add-int/lit8 v15, v7, 0x2

    if-gt v15, v4, :cond_12

    add-int v15, v3, v7

    add-int/2addr v15, v12

    .line 982
    invoke-static {v0, v15, v13}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v13

    add-int/lit8 v15, v7, 0x1

    sub-int/2addr v4, v15

    const/16 v15, 0x9

    if-ge v4, v15, :cond_11

    move/from16 v23, v7

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    rsub-int/lit8 v4, v4, 0x9

    int-to-double v8, v4

    .line 987
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v4, v6

    mul-int v13, v13, v4

    goto :goto_7

    :cond_11
    move/from16 v23, v7

    :goto_7
    move/from16 v22, v13

    move/from16 v4, v23

    goto :goto_8

    .line 991
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :goto_8
    const/16 v6, 0x45

    const/4 v7, 0x2

    if-eq v4, v7, :cond_25

    if-eq v4, v11, :cond_23

    const/4 v7, 0x6

    if-eq v4, v7, :cond_21

    const/16 v7, 0x8

    if-eq v4, v7, :cond_1d

    const/16 v7, 0xa

    if-eq v4, v7, :cond_17

    const/16 v7, 0xc

    if-eq v4, v7, :cond_15

    const/16 v6, 0xe

    if-eq v4, v6, :cond_14

    const/16 v6, 0x1d

    if-eq v4, v6, :cond_13

    packed-switch v4, :pswitch_data_0

    .line 1157
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad format for Timestamp \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' in column "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "S1009"

    invoke-direct {v3, v0, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_13
    :pswitch_0
    add-int/lit8 v4, v3, 0x0

    add-int/lit8 v6, v3, 0x4

    .line 1008
    invoke-static {v0, v4, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    add-int/lit8 v6, v3, 0x5

    add-int/lit8 v7, v3, 0x7

    .line 1009
    invoke-static {v0, v6, v7}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    add-int/lit8 v7, v3, 0x8

    add-int/lit8 v8, v3, 0xa

    .line 1010
    invoke-static {v0, v7, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v7

    add-int/lit8 v8, v3, 0xb

    add-int/lit8 v9, v3, 0xd

    .line 1011
    invoke-static {v0, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    add-int/lit8 v9, v3, 0xe

    add-int/lit8 v10, v3, 0x10

    .line 1012
    invoke-static {v0, v9, v10}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v9

    add-int/lit8 v10, v3, 0x11

    add-int/lit8 v3, v3, 0x13

    .line 1013
    invoke-static {v0, v10, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move/from16 v21, v0

    move/from16 v16, v4

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    goto/16 :goto_13

    :cond_14
    add-int/lit8 v4, v3, 0x0

    add-int/lit8 v7, v3, 0x4

    .line 1019
    invoke-static {v0, v4, v7}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    add-int/lit8 v8, v3, 0x6

    .line 1020
    invoke-static {v0, v7, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v7

    add-int/lit8 v9, v3, 0x8

    .line 1021
    invoke-static {v0, v8, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    add-int/lit8 v10, v3, 0xa

    .line 1022
    invoke-static {v0, v9, v10}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v9

    add-int/lit8 v11, v3, 0xc

    .line 1023
    invoke-static {v0, v10, v11}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v10

    add-int/2addr v3, v6

    .line 1024
    invoke-static {v0, v11, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move/from16 v21, v0

    move/from16 v16, v4

    move/from16 v17, v7

    move/from16 v18, v8

    :goto_9
    move/from16 v19, v9

    move/from16 v20, v10

    goto/16 :goto_13

    :cond_15
    add-int/lit8 v4, v3, 0x0

    add-int/lit8 v8, v3, 0x2

    .line 1030
    invoke-static {v0, v4, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    if-gt v4, v6, :cond_16

    add-int/lit8 v4, v4, 0x64

    :cond_16
    add-int/lit16 v4, v4, 0x76c

    add-int/lit8 v6, v3, 0x4

    .line 1038
    invoke-static {v0, v8, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    add-int/lit8 v9, v3, 0x6

    .line 1039
    invoke-static {v0, v6, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    add-int/lit8 v10, v3, 0x8

    .line 1040
    invoke-static {v0, v9, v10}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v9

    add-int/lit8 v11, v3, 0xa

    .line 1041
    invoke-static {v0, v10, v11}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v10

    add-int/2addr v3, v7

    .line 1042
    invoke-static {v0, v11, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move/from16 v21, v0

    move/from16 v16, v4

    move/from16 v18, v6

    move/from16 v17, v8

    goto :goto_9

    :cond_17
    const/4 v8, 0x0

    :goto_a
    if-ge v8, v4, :cond_19

    add-int v9, v3, v8

    .line 1051
    aget-byte v9, v0, v9

    if-ne v9, v10, :cond_18

    const/4 v4, 0x1

    goto :goto_b

    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_19
    const/4 v4, 0x0

    .line 1057
    :goto_b
    iget-object v8, v1, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v8

    if-eq v8, v7, :cond_1c

    if-eqz v4, :cond_1a

    goto :goto_c

    :cond_1a
    add-int/lit8 v4, v3, 0x0

    add-int/lit8 v8, v3, 0x2

    .line 1064
    invoke-static {v0, v4, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    if-gt v4, v6, :cond_1b

    add-int/lit8 v4, v4, 0x64

    :cond_1b
    add-int/lit8 v6, v3, 0x4

    .line 1070
    invoke-static {v0, v8, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    add-int/lit8 v9, v3, 0x6

    .line 1071
    invoke-static {v0, v6, v9}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    add-int/lit8 v10, v3, 0x8

    .line 1072
    invoke-static {v0, v9, v10}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v9

    add-int/2addr v3, v7

    .line 1073
    invoke-static {v0, v10, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    add-int/lit16 v4, v4, 0x76c

    move/from16 v20, v0

    move/from16 v16, v4

    move/from16 v18, v6

    move/from16 v17, v8

    move/from16 v19, v9

    goto/16 :goto_12

    :cond_1c
    :goto_c
    add-int/lit8 v4, v3, 0x0

    add-int/lit8 v6, v3, 0x4

    .line 1058
    invoke-static {v0, v4, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    add-int/lit8 v6, v3, 0x5

    add-int/lit8 v8, v3, 0x7

    .line 1059
    invoke-static {v0, v6, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    add-int/lit8 v8, v3, 0x8

    add-int/2addr v3, v7

    .line 1060
    invoke-static {v0, v8, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    goto :goto_f

    :cond_1d
    const/4 v6, 0x0

    :goto_d
    if-ge v6, v4, :cond_1f

    add-int v8, v3, v6

    .line 1085
    aget-byte v8, v0, v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_1e

    const/4 v4, 0x1

    goto :goto_e

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_1f
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_20

    add-int/lit8 v4, v3, 0x0

    add-int/lit8 v6, v3, 0x2

    .line 1092
    invoke-static {v0, v4, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    add-int/lit8 v6, v3, 0x3

    add-int/lit8 v8, v3, 0x5

    .line 1093
    invoke-static {v0, v6, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    add-int/lit8 v8, v3, 0x6

    add-int/2addr v3, v7

    .line 1094
    invoke-static {v0, v8, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    const/16 v3, 0x7b2

    move/from16 v21, v0

    move/from16 v19, v4

    move/from16 v20, v6

    const/16 v16, 0x7b2

    const/16 v17, 0x1

    const/16 v18, 0x1

    goto/16 :goto_13

    :cond_20
    add-int/lit8 v4, v3, 0x0

    add-int/lit8 v6, v3, 0x4

    .line 1103
    invoke-static {v0, v4, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    add-int/lit8 v8, v3, 0x6

    .line 1104
    invoke-static {v0, v6, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v6

    add-int/2addr v3, v7

    .line 1105
    invoke-static {v0, v8, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    add-int/lit16 v4, v4, -0x76c

    const/4 v3, -0x1

    add-int/2addr v6, v3

    :goto_f
    move/from16 v18, v0

    move/from16 v16, v4

    move/from16 v17, v6

    goto :goto_11

    :cond_21
    add-int/lit8 v4, v3, 0x0

    add-int/lit8 v8, v3, 0x2

    .line 1114
    invoke-static {v0, v4, v8}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    if-gt v4, v6, :cond_22

    add-int/lit8 v4, v4, 0x64

    :cond_22
    add-int/lit16 v4, v4, 0x76c

    add-int/lit8 v6, v3, 0x4

    .line 1122
    invoke-static {v0, v8, v6}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v8

    add-int/2addr v3, v7

    .line 1123
    invoke-static {v0, v6, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move/from16 v18, v0

    move/from16 v16, v4

    move/from16 v17, v8

    goto :goto_11

    :cond_23
    add-int/lit8 v4, v3, 0x0

    add-int/lit8 v7, v3, 0x2

    .line 1129
    invoke-static {v0, v4, v7}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v4

    if-gt v4, v6, :cond_24

    add-int/lit8 v4, v4, 0x64

    :cond_24
    add-int/2addr v3, v11

    .line 1135
    invoke-static {v0, v7, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    move/from16 v17, v0

    move/from16 v16, v4

    goto :goto_10

    :cond_25
    add-int/lit8 v4, v3, 0x0

    add-int/2addr v3, v7

    .line 1143
    invoke-static {v0, v4, v3}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result v0

    if-gt v0, v6, :cond_26

    add-int/lit8 v0, v0, 0x64

    :cond_26
    add-int/lit16 v0, v0, 0x76c

    move/from16 v16, v0

    const/16 v17, 0x1

    :goto_10
    const/16 v18, 0x1

    :goto_11
    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_12
    const/16 v21, 0x0

    .line 1162
    :goto_13
    iget-boolean v0, v5, Lcom/mysql/jdbc/ResultSetImpl;->useLegacyDatetimeCode:Z

    if-nez v0, :cond_27

    move-object/from16 v15, p6

    .line 1163
    invoke-static/range {v15 .. v22}, Lcom/mysql/jdbc/TimeUtil;->fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    :cond_27
    move-object/from16 v3, p9

    move-object v4, v14

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    .line 1166
    invoke-virtual/range {v3 .. v11}, Lcom/mysql/jdbc/ResultSetImpl;->fastTimestampCreate(Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;

    move-result-object v16

    invoke-interface/range {p8 .. p8}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v17

    move-object/from16 v13, p8

    move-object/from16 v15, p5

    move-object/from16 v18, p6

    move/from16 v19, p7

    invoke-static/range {v13 .. v19}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot convert value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ISO8859_1"

    move-object/from16 v5, p8

    invoke-virtual {v1, v2, v4, v5}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' from column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v12

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to TIMESTAMP."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/mysql/jdbc/ResultSetRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v4, "S1009"

    invoke-static {v2, v4, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v2

    .line 1173
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1175
    throw v2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract isFloatingPointNumber(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract isNull(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract length(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract setColumnValue(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1240
    iput-object p1, p0, Lcom/mysql/jdbc/ResultSetRow;->metadata:[Lcom/mysql/jdbc/Field;

    return-object p0
.end method
