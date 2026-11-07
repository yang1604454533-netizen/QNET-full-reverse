.class Lcom/mysql/jdbc/DatabaseMetaData$1;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getBestRowIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/sql/ResultSet;
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

    .line 1455
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->val$table:Ljava/lang/String;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->val$stmt:Ljava/sql/Statement;

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->val$rows:Ljava/util/ArrayList;

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

    .line 1455
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$1;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1459
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SHOW COLUMNS FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1460
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->val$table:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v4, v4, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM "

    .line 1461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v2, v2, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1466
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Key"

    .line 1467
    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PRI"

    .line 1470
    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 1471
    new-array v0, v0, [[B

    const/4 v1, 0x2

    .line 1472
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "Field"

    .line 1473
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-string v2, "Type"

    .line 1475
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1476
    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v5

    const-string v6, "enum"

    .line 1482
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    const-string v5, "("

    .line 1483
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1484
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v5, v2, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1487
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1488
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_1
    const-string v5, "enum"

    move-object v8, v5

    move v5, v2

    move-object v2, v8

    goto :goto_3

    :cond_2
    const-string v6, "("

    .line 1494
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v7, :cond_4

    const-string v5, ","

    .line 1495
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_3

    const-string v5, "("

    .line 1496
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, ","

    .line 1497
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v4

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    :cond_3
    const-string v5, "("

    .line 1499
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    const-string v7, "("

    .line 1502
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v3, v6

    .line 1505
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v0, v1

    const/4 v1, 0x3

    .line 1506
    iget-object v6, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v6, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    add-int/2addr v5, v3

    .line 1507
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 1508
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 1509
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 1510
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 1512
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->val$rows:Ljava/util/ArrayList;

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$1;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :cond_5
    if-eqz p1, :cond_6

    .line 1523
    :goto_4
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_7

    :catch_1
    move-exception p1

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    :goto_5
    :try_start_3
    const-string v1, "42S02"

    .line 1517
    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    goto :goto_4

    :catch_2
    :cond_6
    :goto_6
    return-void

    .line 1518
    :cond_7
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :goto_7
    if-eqz p1, :cond_8

    .line 1523
    :try_start_4
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1521
    :catch_3
    :cond_8
    throw v0
.end method
