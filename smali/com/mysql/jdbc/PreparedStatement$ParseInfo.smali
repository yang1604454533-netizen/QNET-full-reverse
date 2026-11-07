.class public final Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
.super Ljava/lang/Object;
.source "PreparedStatement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/PreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseInfo"
.end annotation


# instance fields
.field private batchHead:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

.field private batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

.field private batchValues:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

.field canRewriteAsMultiValueInsert:Z

.field charEncoding:Ljava/lang/String;

.field firstStmtChar:C

.field foundLoadData:Z

.field isOnDuplicateKeyUpdate:Z

.field lastUsed:J

.field locationOfOnDuplicateKeyUpdate:I

.field parametersInDuplicateKeyClause:Z

.field statementLength:I

.field statementStartPos:I

.field staticSql:[[B

.field valuesClause:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 174
    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p4

    .line 178
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v11, 0x0

    .line 145
    iput-char v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    .line 147
    iput-boolean v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    const-wide/16 v2, 0x0

    .line 149
    iput-wide v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->lastUsed:J

    .line 151
    iput v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    .line 153
    iput v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    .line 155
    iput-boolean v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->canRewriteAsMultiValueInsert:Z

    const/4 v2, 0x0

    .line 157
    check-cast v2, [[B

    iput-object v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 159
    iput-boolean v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    const/4 v2, -0x1

    .line 161
    iput v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    .line 165
    iput-boolean v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->parametersInDuplicateKeyClause:Z

    if-eqz v10, :cond_1f

    .line 185
    :try_start_0
    iput-object v0, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->charEncoding:Ljava/lang/String;

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->lastUsed:J

    .line 188
    invoke-interface/range {p3 .. p3}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, " "

    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 193
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 196
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    .line 198
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v4

    .line 210
    invoke-static/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->findStartOfStatement(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    .line 212
    iget v5, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    iget v13, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v5, v13, :cond_15

    .line 213
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 215
    iget-char v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    if-nez v11, :cond_2

    invoke-static {v13}, Ljava/lang/Character;->isLetter(C)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 217
    invoke-static {v13}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    iput-char v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    .line 220
    iget-char v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    const/16 v14, 0x49

    if-ne v11, v14, :cond_2

    .line 221
    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getDontCheckOnDuplicateKeyUpdateInSQL()Z

    move-result v11

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v14

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v15

    invoke-static {v10, v11, v14, v15}, Lcom/mysql/jdbc/StatementImpl;->getOnDuplicateKeyLocation(Ljava/lang/String;ZZZ)I

    move-result v11

    iput v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    .line 223
    iget v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    if-eq v11, v2, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    iput-boolean v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    :cond_2
    if-nez v4, :cond_3

    const/16 v11, 0x5c

    if-ne v13, v11, :cond_3

    .line 227
    iget v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    const/4 v14, 0x1

    sub-int/2addr v11, v14

    if-ge v5, v11, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    :cond_3
    if-nez v7, :cond_4

    if-eqz v3, :cond_4

    if-ne v13, v3, :cond_4

    xor-int/lit8 v9, v9, 0x1

    goto/16 :goto_8

    :cond_4
    if-nez v9, :cond_12

    const/16 v11, 0x22

    const/16 v14, 0x27

    if-eqz v7, :cond_a

    if-eq v13, v14, :cond_5

    if-ne v13, v11, :cond_8

    :cond_5
    if-ne v13, v8, :cond_8

    .line 240
    iget v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    const/4 v14, 0x1

    sub-int/2addr v11, v14

    if-ge v5, v11, :cond_6

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v8, :cond_6

    move v5, v11

    goto/16 :goto_9

    :cond_6
    if-nez v7, :cond_7

    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    goto :goto_3

    :cond_8
    if-eq v13, v14, :cond_9

    if-ne v13, v11, :cond_12

    :cond_9
    if-ne v13, v8, :cond_12

    xor-int/lit8 v7, v7, 0x1

    :goto_3
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_a
    const/16 v15, 0x23

    if-eq v13, v15, :cond_10

    const/16 v15, 0x2d

    if-ne v13, v15, :cond_b

    add-int/lit8 v2, v5, 0x1

    .line 252
    iget v11, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v2, v11, :cond_b

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v15, :cond_b

    goto :goto_6

    :cond_b
    const/16 v2, 0x2f

    if-ne v13, v2, :cond_e

    add-int/lit8 v11, v5, 0x1

    .line 265
    iget v15, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v11, v15, :cond_e

    .line 267
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v14, 0x2a

    if-ne v11, v14, :cond_12

    add-int/lit8 v5, v5, 0x2

    move v11, v5

    .line 272
    :goto_4
    iget v15, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v5, v15, :cond_d

    add-int/lit8 v11, v11, 0x1

    .line 274
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v14, :cond_c

    add-int/lit8 v15, v5, 0x1

    .line 276
    iget v14, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v15, v14, :cond_c

    .line 277
    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v2, :cond_c

    add-int/lit8 v11, v11, 0x1

    .line 280
    iget v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    if-ge v11, v2, :cond_d

    .line 281
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v13, v2

    goto :goto_5

    :cond_c
    add-int/lit8 v5, v5, 0x1

    const/16 v14, 0x2a

    goto :goto_4

    :cond_d
    :goto_5
    move v5, v11

    goto :goto_8

    :cond_e
    if-eq v13, v14, :cond_f

    const/16 v2, 0x22

    if-ne v13, v2, :cond_12

    :cond_f
    move v8, v13

    const/4 v7, 0x1

    goto :goto_8

    .line 254
    :cond_10
    :goto_6
    iget v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    const/4 v11, 0x1

    sub-int/2addr v2, v11

    :goto_7
    if-ge v5, v2, :cond_14

    .line 257
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v13, 0xd

    if-eq v11, v13, :cond_14

    const/16 v13, 0xa

    if-ne v11, v13, :cond_11

    goto :goto_9

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_12
    :goto_8
    const/16 v2, 0x3f

    if-ne v13, v2, :cond_14

    if-nez v7, :cond_14

    if-nez v9, :cond_14

    const/4 v2, 0x2

    .line 297
    new-array v2, v2, [I

    const/4 v11, 0x0

    aput v6, v2, v11

    const/4 v6, 0x1

    aput v5, v2, v6

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    .line 300
    iget-boolean v6, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    if-eqz v6, :cond_13

    iget v6, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    if-le v5, v6, :cond_13

    const/4 v6, 0x1

    .line 301
    iput-boolean v6, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->parametersInDuplicateKeyClause:Z

    :cond_13
    move v6, v2

    :cond_14
    :goto_9
    const/4 v2, 0x1

    add-int/2addr v5, v2

    const/4 v2, -0x1

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 306
    :cond_15
    iget-char v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_17

    const-string v2, "LOAD DATA"

    .line 307
    invoke-static {v10, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    .line 308
    iput-boolean v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    const/4 v2, 0x0

    goto :goto_a

    :cond_16
    const/4 v2, 0x0

    .line 310
    iput-boolean v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    .line 313
    iput-boolean v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    :goto_a
    const/4 v3, 0x2

    .line 316
    new-array v3, v3, [I

    aput v6, v3, v2

    iget v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    const/4 v4, 0x1

    aput v2, v3, v4

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[B

    iput-object v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    const/4 v11, 0x0

    .line 319
    :goto_b
    iget-object v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    array-length v2, v2

    if-ge v11, v2, :cond_1c

    .line 320
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v14, 0x1

    .line 321
    aget v3, v2, v14

    const/16 v16, 0x0

    .line 322
    aget v6, v2, v16

    sub-int v7, v3, v6

    .line 325
    iget-boolean v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    if-eqz v2, :cond_18

    .line 326
    iget-object v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    invoke-static {v10, v6, v7}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;II)[B

    move-result-object v3

    aput-object v3, v2, v11

    goto :goto_d

    :cond_18
    if-nez v0, :cond_1a

    .line 328
    new-array v2, v7, [B

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v7, :cond_19

    add-int v4, v6, v3

    .line 331
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 334
    :cond_19
    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    aput-object v2, v3, v11

    goto :goto_d

    :cond_1a
    if-eqz p5, :cond_1b

    .line 337
    iget-object v15, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v8

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    invoke-static/range {v2 .. v9}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v2

    aput-object v2, v15, v11

    goto :goto_d

    .line 340
    :cond_1b
    iget-object v15, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v8

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move v5, v6

    move v6, v7

    move v7, v8

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v9}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v2

    aput-object v2, v15, v11
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_1c
    const/4 v14, 0x1

    const/16 v16, 0x0

    if-eqz p6, :cond_1e

    .line 353
    iget-boolean v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    iget v3, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    iget v4, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    invoke-static {v10, v2, v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->canRewrite(Ljava/lang/String;ZII)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-boolean v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->parametersInDuplicateKeyClause:Z

    if-nez v2, :cond_1d

    goto :goto_e

    :cond_1d
    const/4 v14, 0x0

    :goto_e
    iput-boolean v14, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->canRewriteAsMultiValueInsert:Z

    .line 356
    iget-boolean v2, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->canRewriteAsMultiValueInsert:Z

    if-eqz v2, :cond_1e

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 357
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->buildRewriteBatchedParams(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;)V

    :cond_1e
    return-void

    :cond_1f
    :try_start_1
    const-string v0, "PreparedStatement.61"

    .line 181
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "S1009"

    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 346
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse error for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v2, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 349
    throw v2
.end method

.method private constructor <init>([[BCZZIII)V
    .locals 3

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 145
    iput-char v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    .line 147
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    const-wide/16 v1, 0x0

    .line 149
    iput-wide v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->lastUsed:J

    .line 151
    iput v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    .line 153
    iput v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    .line 155
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->canRewriteAsMultiValueInsert:Z

    const/4 v1, 0x0

    .line 157
    check-cast v1, [[B

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 159
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    const/4 v1, -0x1

    .line 161
    iput v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    .line 165
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->parametersInDuplicateKeyClause:Z

    .line 556
    iput-char p2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    .line 557
    iput-boolean p3, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    .line 558
    iput-boolean p4, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    .line 559
    iput p5, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    .line 560
    iput p6, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    .line 561
    iput p7, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    .line 562
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    return-void
.end method

.method private buildInfoForBatch(ILcom/mysql/jdbc/PreparedStatement$BatchVisitor;)V
    .locals 10

    .line 502
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchHead:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v0, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 503
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_0

    .line 507
    aget-object v5, v0, v4

    invoke-interface {p2, v5}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v5

    invoke-interface {v5}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v3

    .line 512
    aget-object v0, v0, v1

    .line 513
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchValues:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v1, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 514
    aget-object v4, v1, v2

    .line 516
    invoke-interface {p2, v0, v4}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->merge([B[B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    add-int/lit8 v0, p1, -0x1

    .line 520
    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    if-eqz v5, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 524
    :cond_1
    array-length v5, v1

    sub-int/2addr v5, v3

    .line 525
    aget-object v6, v1, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_3

    const/4 v8, 0x1

    :goto_2
    if-ge v8, v5, :cond_2

    .line 529
    aget-object v9, v1, v8

    invoke-interface {p2, v9}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v9

    invoke-interface {v9}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 531
    :cond_2
    invoke-interface {p2, v6, v4}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->merge([B[B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v8

    invoke-interface {v8}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 534
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    if-eqz v0, :cond_5

    .line 535
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v0, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 536
    aget-object v1, v0, v2

    .line 537
    invoke-interface {p2}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->decrement()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v2

    invoke-interface {v2, v6, v1}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->merge([B[B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    .line 539
    array-length v1, v0

    if-le p1, v3, :cond_4

    :goto_3
    if-ge v3, v1, :cond_6

    .line 543
    aget-object p1, v0, v3

    invoke-interface {p2, p1}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object p1

    invoke-interface {p1}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 546
    :cond_4
    invoke-interface {p2}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->decrement()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object p1

    sub-int/2addr v1, v3

    aget-object p2, v0, v1

    invoke-interface {p1, p2}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    goto :goto_4

    .line 550
    :cond_5
    invoke-interface {p2}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->decrement()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    move-result-object p1

    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    array-length v0, v0

    sub-int/2addr v0, v3

    aget-object p2, p2, v0

    invoke-interface {p1, p2}, Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;->append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;

    :cond_6
    :goto_4
    return-void
.end method

.method private buildRewriteBatchedParams(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 370
    invoke-interface/range {p2 .. p2}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->extractValuesClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->valuesClause:Ljava/lang/String;

    .line 371
    iget-boolean v2, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 375
    :goto_0
    iget-boolean v4, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 376
    iget v5, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v5, v1

    .line 381
    new-instance v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    const/4 v10, 0x0

    move-object v4, v1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Z)V

    iput-object v1, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchHead:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 382
    new-instance v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->valuesClause:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    move-object v11, v1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v17}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Z)V

    iput-object v1, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchValues:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 383
    iput-object v3, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    if-eqz v2, :cond_2

    .line 385
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 386
    new-instance v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->valuesClause:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    move-object v3, v1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Z)V

    iput-object v1, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->batchODKUClause:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    :cond_2
    return-void
.end method

.method private extractValuesClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 392
    iget v0, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    const/4 v1, -0x1

    :goto_0
    move v8, v0

    :goto_1
    const/4 v0, -0x1

    :cond_0
    const/16 v9, 0x29

    const/16 v10, 0x28

    if-ne v0, v1, :cond_3

    .line 395
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v4, "VALUES"

    .line 396
    sget-object v7, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    move v2, v8

    move-object v3, p1

    move-object v5, p2

    move-object v6, p2

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    goto :goto_2

    :cond_1
    const-string v0, "VALUES"

    .line 399
    invoke-static {v8, p1, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_2
    if-lez v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    .line 404
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 405
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    if-eq v2, v9, :cond_2

    const/16 v3, 0x60

    if-eq v2, v3, :cond_2

    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, 0x6

    .line 410
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 411
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-eq v3, v10, :cond_0

    move v8, v2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    if-ne v0, v1, :cond_4

    return-object p2

    :cond_4
    add-int/lit8 v0, v0, 0x6

    .line 425
    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v1, :cond_5

    return-object p2

    .line 431
    :cond_5
    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ne v2, v1, :cond_6

    return-object p2

    .line 437
    :cond_6
    iget-boolean p2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    if-eqz p2, :cond_7

    .line 438
    iget p2, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    add-int/lit8 v2, p2, -0x1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 441
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method declared-synchronized getParseInfoForBatch(I)Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    .locals 9

    monitor-enter p0

    .line 448
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;

    invoke-direct {v0}, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;-><init>()V

    .line 449
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->buildInfoForBatch(ILcom/mysql/jdbc/PreparedStatement$BatchVisitor;)V

    .line 451
    new-instance p1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->getStaticSqlStrings()[[B

    move-result-object v2

    iget-char v3, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    iget-boolean v4, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    iget-boolean v5, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    iget v6, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    iget v7, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementLength:I

    iget v8, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->statementStartPos:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>([[BCZZIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 447
    monitor-exit p0

    throw p1
.end method

.method getSqlForBatch(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 463
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->getParseInfoForBatch(I)Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    move-result-object p1

    .line 465
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->getSqlForBatch(Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getSqlForBatch(Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 473
    iget-object p1, p1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    .line 474
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 477
    aget-object v4, p1, v2

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_1

    .line 484
    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->charEncoding:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    .line 485
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 488
    :cond_1
    aget-object p1, p1, v3

    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
