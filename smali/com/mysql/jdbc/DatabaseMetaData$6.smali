.class Lcom/mysql/jdbc/DatabaseMetaData$6;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
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

.field final synthetic val$sortedRows:Ljava/util/SortedMap;

.field final synthetic val$stmt:Ljava/sql/Statement;

.field final synthetic val$table:Ljava/lang/String;

.field final synthetic val$unique:Z


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;ZLjava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3343
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$table:Ljava/lang/String;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$stmt:Ljava/sql/Statement;

    iput-boolean p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$unique:Z

    iput-object p6, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$sortedRows:Ljava/util/SortedMap;

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

    .line 3343
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$6;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3348
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SHOW INDEX FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3349
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$table:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v4, v4, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM "

    .line 3350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3351
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v2, v2, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3354
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 3356
    :try_start_2
    invoke-virtual {v1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    const-string v3, "42S02"

    .line 3359
    invoke-virtual {v1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x47a

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 3362
    :cond_0
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_0
    move-object v1, v0

    :cond_2
    :goto_1
    if-eqz v1, :cond_8

    .line 3367
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0xe

    .line 3368
    new-array v2, v2, [[B

    const/4 v3, 0x0

    if-nez p1, :cond_3

    .line 3369
    new-array v4, v3, [B

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v4, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    :goto_2
    aput-object v4, v2, v3

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const/4 v5, 0x2

    const-string v6, "Table"

    .line 3371
    invoke-interface {v1, v6}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v2, v5

    const-string v5, "Non_unique"

    .line 3373
    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_5

    .line 3375
    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v6, "true"

    :goto_4
    invoke-virtual {v5, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_5

    :cond_5
    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v6, "false"

    goto :goto_4

    :goto_5
    const/4 v6, 0x3

    aput-object v5, v2, v6

    const/4 v5, 0x4

    .line 3376
    new-array v3, v3, [B

    aput-object v3, v2, v5

    const/4 v3, 0x5

    const-string v5, "Key_name"

    .line 3377
    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    .line 3379
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x7

    const-string v5, "Seq_in_index"

    .line 3380
    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x8

    const-string v5, "Column_name"

    .line 3381
    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x9

    const-string v5, "Collation"

    .line 3382
    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "Cardinality"

    .line 3384
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 3387
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v3

    const-wide/32 v7, 0x7fffffff

    if-nez v3, :cond_6

    cmp-long v3, v5, v7

    if-lez v3, :cond_6

    move-wide v5, v7

    :cond_6
    const/16 v3, 0xa

    .line 3391
    iget-object v7, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0xb

    .line 3392
    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0xc

    aput-object v0, v2, v3

    .line 3395
    new-instance v3, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;

    iget-object v6, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    xor-int/lit8 v7, v4, 0x1

    const-string v5, "Key_name"

    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v5, "Seq_in_index"

    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getShort(Ljava/lang/String;)S

    move-result v10

    const/4 v8, 0x3

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;ZSLjava/lang/String;S)V

    .line 3398
    iget-boolean v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$unique:Z

    if-eqz v5, :cond_7

    if-eqz v4, :cond_2

    .line 3400
    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$sortedRows:Ljava/util/SortedMap;

    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v6, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v6}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v4, v3, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3404
    :cond_7
    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->val$sortedRows:Ljava/util/SortedMap;

    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v6, p0, Lcom/mysql/jdbc/DatabaseMetaData$6;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v6}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v4, v3, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_8
    if-eqz v1, :cond_9

    .line 3410
    :try_start_4
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_9
    return-void

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_6
    if-eqz v1, :cond_a

    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 3408
    :catch_2
    :cond_a
    throw p1
.end method
