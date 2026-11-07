.class Lcom/mysql/jdbc/DatabaseMetaData$10;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mysql/jdbc/IterateBlock<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/DatabaseMetaData;

.field final synthetic val$rows:Ljava/util/ArrayList;

.field final synthetic val$stmt:Ljava/sql/Statement;

.field final synthetic val$table:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6360
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$table:Ljava/lang/String;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$stmt:Ljava/sql/Statement;

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$rows:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/mysql/jdbc/IterateBlock;-><init>(Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;)V

    return-void
.end method


# virtual methods
.method bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6360
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$10;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 6363
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v2, v2, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v2

    const/4 v5, 0x0

    .line 6366
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " Extra LIKE \'%on update CURRENT_TIMESTAMP%\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6367
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6371
    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v8, v8, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/16 v9, 0x17

    const/4 v10, 0x1

    invoke-interface {v8, v3, v10, v9}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v8

    const/4 v9, 0x2

    if-nez v8, :cond_6

    .line 6373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 6376
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "SHOW CREATE TABLE "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$table:Ljava/lang/String;

    invoke-virtual {v11, v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6378
    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$stmt:Ljava/sql/Statement;

    invoke-interface {v11, v8}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v8
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v11, 0x1

    .line 6379
    :cond_0
    :try_start_1
    invoke-interface {v8}, Ljava/sql/ResultSet;->next()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 6380
    invoke-interface {v8, v9}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 6381
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v14, "\n"

    invoke-direct {v13, v12, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6383
    :goto_0
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 6384
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v14, "on update CURRENT_TIMESTAMP"

    .line 6385
    invoke-static {v12, v14}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-le v14, v15, :cond_5

    .line 6387
    iget-object v14, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v14, v14, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ne v14, v15, :cond_1

    const-string v14, "\""

    .line 6390
    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/16 v16, 0x0

    goto :goto_1

    :cond_1
    const/16 v16, 0x1

    :goto_1
    if-eq v14, v15, :cond_5

    if-eqz v16, :cond_2

    .line 6398
    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    add-int/lit8 v9, v14, 0x1

    invoke-virtual {v12, v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_2

    :cond_2
    const-string v3, "\""

    add-int/lit8 v9, v14, 0x1

    .line 6400
    invoke-virtual {v12, v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    :goto_2
    if-eq v3, v15, :cond_5

    if-eqz v2, :cond_4

    if-nez v11, :cond_3

    const-string v9, " or"

    .line 6406
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    const-string v9, " Field=\'"

    .line 6410
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    .line 6411
    invoke-virtual {v12, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    .line 6412
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 6414
    invoke-virtual {v12, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    const/4 v3, 0x5

    const/4 v9, 0x2

    goto :goto_0

    :cond_6
    move-object v8, v5

    .line 6423
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gtz v3, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    goto :goto_5

    :cond_8
    move-object v3, v8

    goto/16 :goto_9

    .line 6424
    :cond_9
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "SHOW COLUMNS FROM "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6425
    iget-object v9, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$table:Ljava/lang/String;

    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v11, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v12, v12, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v12}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v12

    invoke-static {v9, v11, v12}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " FROM "

    .line 6426
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6427
    iget-object v9, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v9, v9, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v11, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v11}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v11

    invoke-static {v0, v9, v11}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_a

    const-string v0, " WHERE"

    .line 6429
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6430
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6433
    :cond_a
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6435
    :cond_b
    :goto_6
    :try_start_2
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez v2, :cond_c

    const-string v0, "Field"

    .line 6436
    invoke-interface {v3, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6437
    :cond_c
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;

    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v8, "Type"

    invoke-interface {v3, v8}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Null"

    invoke-interface {v3, v9}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v6, v8, v9}, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x8

    .line 6438
    new-array v6, v6, [[B

    aput-object v5, v6, v4

    const-string v8, "Field"

    .line 6442
    invoke-interface {v3, v8}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v6, v10

    .line 6444
    iget-short v8, v0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    invoke-static {v8}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v6, v9

    const/4 v8, 0x3

    .line 6446
    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v12, v0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v11

    aput-object v11, v6, v8

    const/4 v8, 0x4

    .line 6448
    iget-object v11, v0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    if-nez v11, :cond_d

    move-object v11, v5

    goto :goto_7

    :cond_d
    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v12, v0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v11

    :goto_7
    aput-object v11, v6, v8

    .line 6450
    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget v11, v0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->bufferLength:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    const/4 v11, 0x5

    aput-object v8, v6, v11

    const/4 v8, 0x6

    .line 6452
    iget-object v12, v0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    if-nez v12, :cond_e

    move-object v0, v5

    goto :goto_8

    :cond_e
    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v0, v0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    :goto_8
    aput-object v0, v6, v8

    const/4 v0, 0x7

    .line 6454
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v6, v0

    .line 6456
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->val$rows:Ljava/util/ArrayList;

    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$10;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v12}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v12

    invoke-direct {v8, v6, v12}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    :cond_f
    :goto_9
    if-eqz v3, :cond_10

    .line 6467
    :try_start_3
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v8, v3

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v5, v3

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    move-object v5, v8

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v8, v5

    goto :goto_c

    :catch_2
    move-exception v0

    :goto_a
    :try_start_4
    const-string v2, "42S02"

    .line 6461
    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_11

    if-eqz v5, :cond_10

    .line 6467
    :try_start_5
    invoke-interface {v5}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_10
    :goto_b
    return-void

    .line 6462
    :cond_11
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_c
    if-eqz v8, :cond_12

    .line 6467
    :try_start_7
    invoke-interface {v8}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 6465
    :catch_4
    :cond_12
    throw v0
.end method
