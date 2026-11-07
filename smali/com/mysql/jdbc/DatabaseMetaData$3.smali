.class Lcom/mysql/jdbc/DatabaseMetaData$3;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
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

.field final synthetic val$foreignCatalog:Ljava/lang/String;

.field final synthetic val$foreignSchema:Ljava/lang/String;

.field final synthetic val$foreignTable:Ljava/lang/String;

.field final synthetic val$primaryCatalog:Ljava/lang/String;

.field final synthetic val$primarySchema:Ljava/lang/String;

.field final synthetic val$primaryTable:Ljava/lang/String;

.field final synthetic val$stmt:Ljava/sql/Statement;

.field final synthetic val$tuples:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/sql/Statement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2683
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$stmt:Ljava/sql/Statement;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignTable:Ljava/lang/String;

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primaryTable:Ljava/lang/String;

    iput-object p6, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignCatalog:Ljava/lang/String;

    iput-object p7, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignSchema:Ljava/lang/String;

    iput-object p8, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primaryCatalog:Ljava/lang/String;

    iput-object p9, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primarySchema:Ljava/lang/String;

    iput-object p10, p0, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$tuples:Ljava/util/ArrayList;

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

    .line 2683
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$3;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    .line 2692
    :try_start_0
    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/16 v4, 0x17

    const/16 v5, 0x32

    const/4 v6, 0x3

    invoke-interface {v3, v6, v4, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_0

    .line 2693
    :try_start_1
    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3, v0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->extractForeignKeyFromCreateTable(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v3, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_1
    move-object v2, v0

    goto/16 :goto_c

    .line 2695
    :cond_0
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SHOW TABLE STATUS FROM "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2696
    iget-object v4, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v4, v4, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v5, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2699
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 2702
    :goto_2
    :try_start_3
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v4, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignTable:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->getTableNameWithCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2703
    iget-object v4, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primaryTable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->getTableNameWithCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2711
    :goto_3
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "Type"

    .line 2712
    invoke-interface {v3, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string v7, "innodb"

    .line 2714
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "SUPPORTS_FK"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_1
    const-string v5, "Comment"

    .line 2715
    invoke-interface {v3, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 2718
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, ";"

    const/4 v9, 0x0

    invoke-direct {v7, v5, v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2720
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2721
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 2726
    :cond_2
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2727
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 2728
    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v8, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->parseTableStatusIntoLocalAndReferencedColumns(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;

    move-result-object v8

    .line 2732
    iget-object v10, v8, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->localColumnsList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2733
    iget-object v11, v8, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedColumnsList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    .line 2735
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2736
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v14, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v14, v14, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xe

    .line 2740
    new-array v14, v14, [[B

    const/4 v15, 0x4

    .line 2741
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignCatalog:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_5

    :cond_3
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignCatalog:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    :goto_5
    aput-object v2, v14, v15

    const/4 v2, 0x5

    .line 2742
    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignSchema:Ljava/lang/String;

    if-nez v6, :cond_4

    const/4 v6, 0x0

    goto :goto_6

    :cond_4
    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v15, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$foreignSchema:Ljava/lang/String;

    invoke-virtual {v6, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    :goto_6
    aput-object v6, v14, v2

    const-string v2, "Name"

    .line 2743
    invoke-interface {v3, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2745
    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_9

    :cond_5
    const/4 v6, 0x6

    .line 2749
    iget-object v15, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v15, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v14, v6

    .line 2751
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v2, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v6, 0x7

    aput-object v2, v14, v6

    .line 2752
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primaryCatalog:Ljava/lang/String;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_7

    :cond_6
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v13, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primaryCatalog:Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    :goto_7
    aput-object v2, v14, v9

    .line 2753
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primarySchema:Ljava/lang/String;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_8

    :cond_7
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v13, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$primarySchema:Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    :goto_8
    const/4 v13, 0x1

    aput-object v2, v14, v13

    .line 2756
    iget-object v2, v8, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedTable:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8

    :goto_9
    const/4 v2, 0x0

    :goto_a
    const/4 v6, 0x3

    goto/16 :goto_4

    :cond_8
    const/4 v2, 0x2

    .line 2760
    iget-object v15, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v6, v8, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedTable:Ljava/lang/String;

    invoke-virtual {v15, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v14, v2

    .line 2761
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v15, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v15, v15, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v6, v15}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v14, v6

    const/16 v2, 0x8

    .line 2762
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    aput-object v15, v14, v2

    .line 2764
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v2, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->getForeignKeyActions(Ljava/lang/String;)[I

    move-result-object v2

    const/16 v15, 0x9

    .line 2766
    aget v13, v2, v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v14, v15

    const/16 v13, 0xa

    .line 2767
    aget v2, v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v14, v13

    const/16 v2, 0xb

    const/4 v13, 0x0

    aput-object v13, v14, v2

    const/16 v2, 0xc

    aput-object v13, v14, v2

    const/16 v2, 0xd

    const/4 v15, 0x7

    .line 2770
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    aput-object v15, v14, v2

    .line 2771
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->val$tuples:Ljava/util/ArrayList;

    new-instance v15, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$3;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v6}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-direct {v15, v14, v6}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v12, v12, 0x1

    move-object v2, v13

    goto :goto_a

    :cond_9
    move-object v13, v2

    move-object v2, v13

    const/4 v6, 0x3

    goto/16 :goto_3

    :cond_a
    if-eqz v3, :cond_b

    .line 2782
    :try_start_4
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2784
    invoke-static {v2}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    :cond_b
    :goto_b
    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    move-object v13, v2

    move-object v2, v0

    move-object v3, v13

    :goto_c
    if-eqz v3, :cond_c

    .line 2782
    :try_start_5
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 2784
    invoke-static {v3}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 2780
    :cond_c
    :goto_d
    throw v2
.end method
