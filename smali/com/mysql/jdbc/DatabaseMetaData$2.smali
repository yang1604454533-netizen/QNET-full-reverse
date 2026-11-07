.class Lcom/mysql/jdbc/DatabaseMetaData$2;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
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

.field final synthetic val$colPattern:Ljava/lang/String;

.field final synthetic val$rows:Ljava/util/ArrayList;

.field final synthetic val$schemaPattern:Ljava/lang/String;

.field final synthetic val$stmt:Ljava/sql/Statement;

.field final synthetic val$tableNamePattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2339
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$tableNamePattern:Ljava/lang/String;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$schemaPattern:Ljava/lang/String;

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$colPattern:Ljava/lang/String;

    iput-object p6, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$stmt:Ljava/sql/Statement;

    iput-object p7, p0, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$rows:Ljava/util/ArrayList;

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

    .line 2339
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$2;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2341
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2343
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$tableNamePattern:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_2

    .line 2348
    :try_start_0
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$schemaPattern:Ljava/lang/String;

    const-string v7, "%"

    new-array v8, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v6, v7, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2350
    :goto_0
    :try_start_1
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TABLE_NAME"

    .line 2351
    invoke-interface {v6, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2352
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_4

    .line 2357
    :try_start_2
    invoke-interface {v6}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 2359
    invoke-static {v6}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v5, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :goto_1
    if-eqz v5, :cond_1

    .line 2357
    :try_start_3
    invoke-interface {v5}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 2359
    invoke-static {v3}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 2355
    :cond_1
    :goto_2
    throw v2

    .line 2369
    :cond_2
    :try_start_4
    iget-object v0, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$schemaPattern:Ljava/lang/String;

    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$tableNamePattern:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v6, v7, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 2371
    :goto_3
    :try_start_5
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "TABLE_NAME"

    .line 2372
    invoke-interface {v6, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2373
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_4

    .line 2378
    :try_start_6
    invoke-interface {v6}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v6, v0

    .line 2380
    invoke-static {v6}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 2388
    :cond_4
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2393
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SHOW "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2395
    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v7, v7, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v8, 0x4

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v7, :cond_5

    :try_start_8
    const-string v7, "FULL "

    .line 2396
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v6, v5

    goto/16 :goto_15

    :cond_5
    :goto_6
    :try_start_9
    const-string v7, "COLUMNS FROM "

    .line 2399
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v7, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v10, v10, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v10}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v10

    invoke-static {v3, v7, v10}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " FROM "

    .line 2401
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2402
    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v7, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v10, v10, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v10}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v10

    invoke-static {v2, v7, v10}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " LIKE "

    .line 2403
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2404
    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$colPattern:Ljava/lang/String;

    const-string v10, "\'"

    invoke-static {v7, v10, v9}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2412
    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$colPattern:Ljava/lang/String;

    const-string v10, "%"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-nez v7, :cond_8

    .line 2415
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "SHOW "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2417
    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v10, v10, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v10, v8, v9, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "FULL "

    .line 2418
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v10, "COLUMNS FROM "

    .line 2421
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2422
    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v10, v10, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v11, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v11}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v11

    invoke-static {v3, v10, v11}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " FROM "

    .line 2424
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2425
    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v10, v10, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v11, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v11}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v11

    invoke-static {v2, v10, v11}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2428
    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2430
    :try_start_b
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const/4 v11, 0x1

    .line 2434
    :goto_7
    invoke-interface {v7}, Ljava/sql/ResultSet;->next()Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "Field"

    .line 2435
    invoke-interface {v7, v12}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v13, v11, 0x1

    .line 2437
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move v11, v13

    goto :goto_7

    :cond_7
    move-object v11, v7

    const/4 v7, 0x1

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v6, v7

    goto/16 :goto_15

    :cond_8
    move-object v10, v5

    move-object v11, v10

    const/4 v7, 0x0

    .line 2441
    :goto_8
    :try_start_c
    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    const/4 v11, 0x1

    .line 2445
    :goto_9
    :try_start_d
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v12

    if-eqz v12, :cond_18

    const/16 v12, 0x18

    .line 2446
    new-array v12, v12, [[B

    .line 2447
    iget-object v13, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v13, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    aput-object v5, v12, v9

    .line 2451
    iget-object v13, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v13, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const/4 v13, 0x3

    const-string v15, "Field"

    .line 2452
    invoke-interface {v6, v15}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v12, v13

    .line 2454
    new-instance v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;

    iget-object v15, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v14, "Type"

    invoke-interface {v6, v14}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "Null"

    invoke-interface {v6, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v15, v14, v4}, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    iget-short v4, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    invoke-static {v4}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v12, v8

    const/4 v4, 0x5

    .line 2459
    iget-object v14, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v15, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v4

    .line 2461
    iget-object v4, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    const/4 v14, 0x6

    const/4 v15, -0x1

    if-nez v4, :cond_9

    aput-object v5, v12, v14

    goto :goto_d

    :cond_9
    const-string v4, "Collation"

    .line 2464
    invoke-interface {v6, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    const-string v5, "TEXT"

    .line 2466
    iget-object v8, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "TINYTEXT"

    iget-object v8, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "MEDIUMTEXT"

    iget-object v8, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_a
    const-string v5, "ucs2"

    .line 2468
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gt v5, v15, :cond_c

    const-string v5, "utf16"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v5, v15, :cond_b

    goto :goto_a

    :cond_b
    const-string v5, "utf32"

    .line 2470
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v15, :cond_d

    const/4 v4, 0x4

    goto :goto_b

    :cond_c
    :goto_a
    const/4 v4, 0x2

    goto :goto_b

    :cond_d
    const/4 v4, 0x1

    :goto_b
    if-ne v4, v9, :cond_e

    .line 2474
    iget-object v4, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_c

    :cond_e
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v8, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    div-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    :goto_c
    aput-object v4, v12, v14

    :goto_d
    const/4 v4, 0x7

    .line 2477
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget v8, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->bufferLength:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v12, v4

    const/16 v4, 0x8

    .line 2478
    iget-object v5, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    if-nez v5, :cond_f

    const/4 v5, 0x0

    goto :goto_e

    :cond_f
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v8, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    :goto_e
    aput-object v5, v12, v4

    const/16 v4, 0x9

    .line 2479
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget v8, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->numPrecRadix:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v12, v4

    const/16 v4, 0xa

    .line 2480
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget v8, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->nullability:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v12, v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    const/16 v4, 0xb

    .line 2489
    :try_start_e
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v5, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    const/4 v8, 0x0

    const/4 v14, 0x4

    :try_start_f
    invoke-interface {v5, v14, v9, v8}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "Comment"

    .line 2490
    invoke-interface {v6, v5}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v12, v4

    goto :goto_f

    :cond_10
    const-string v5, "Extra"

    .line 2492
    invoke-interface {v6, v5}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v12, v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_f

    :catch_3
    const/4 v14, 0x4

    :catch_4
    const/4 v5, 0x0

    .line 2495
    :try_start_10
    new-array v8, v5, [B

    aput-object v8, v12, v4

    :goto_f
    const/16 v4, 0xc

    const-string v5, "Default"

    .line 2499
    invoke-interface {v6, v5}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v12, v4

    const/16 v4, 0xd

    .line 2501
    new-array v5, v9, [B

    const/16 v8, 0x30

    const/16 v16, 0x0

    aput-byte v8, v5, v16

    aput-object v5, v12, v4

    const/16 v4, 0xe

    .line 2502
    new-array v5, v9, [B

    aput-byte v8, v5, v16

    aput-object v5, v12, v4

    .line 2504
    iget-object v4, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    const-string v5, "CHAR"

    invoke-static {v4, v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v15, :cond_12

    iget-object v4, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    const-string v8, "BLOB"

    invoke-static {v4, v8}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v15, :cond_12

    iget-object v4, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    const-string v8, "TEXT"

    invoke-static {v4, v8}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v15, :cond_12

    iget-object v4, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    const-string v8, "BINARY"

    invoke-static {v4, v8}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v4, v15, :cond_11

    goto :goto_10

    :cond_11
    const/4 v4, 0x0

    aput-object v4, v12, v5

    goto :goto_11

    :cond_12
    :goto_10
    const/4 v4, 0x6

    .line 2508
    aget-object v4, v12, v4

    aput-object v4, v12, v5

    :goto_11
    const/16 v4, 0x10

    if-nez v7, :cond_13

    add-int/lit8 v5, v11, 0x1

    .line 2515
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    aput-object v8, v12, v4

    move v11, v5

    goto :goto_12

    :cond_13
    const-string v5, "Field"

    .line 2517
    invoke-interface {v6, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2518
    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_17

    .line 2521
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v12, v4

    :goto_12
    const/16 v4, 0x11

    .line 2528
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v8, v13, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v12, v4

    const/16 v4, 0x12

    const/4 v5, 0x0

    aput-object v5, v12, v4

    const/16 v4, 0x13

    aput-object v5, v12, v4

    const/16 v4, 0x14

    aput-object v5, v12, v4

    const/16 v4, 0x15

    aput-object v5, v12, v4

    .line 2536
    iget-object v4, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v8, ""

    invoke-virtual {v4, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v8, 0x16

    aput-object v4, v12, v8

    const-string v4, "Extra"

    .line 2538
    invoke-interface {v6, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 2541
    iget-object v13, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v5, "auto_increment"

    invoke-static {v4, v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v15, :cond_14

    const-string v5, "YES"

    goto :goto_13

    :cond_14
    const-string v5, "NO"

    :goto_13
    invoke-virtual {v13, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v12, v8

    const/16 v5, 0x17

    .line 2542
    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v13, "generated"

    invoke-static {v4, v13}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v4, v15, :cond_15

    const-string v4, "YES"

    goto :goto_14

    :cond_15
    const-string v4, "NO"

    :goto_14
    invoke-virtual {v8, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v12, v5

    .line 2545
    :cond_16
    iget-object v4, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->val$rows:Ljava/util/ArrayList;

    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    iget-object v8, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v8}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    invoke-direct {v5, v12, v8}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x4

    goto/16 :goto_9

    :cond_17
    const-string v0, "Can not find column in full column list to determine true ordinal position."

    const-string v2, "S1000"

    .line 2523
    iget-object v3, v1, Lcom/mysql/jdbc/DatabaseMetaData$2;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :cond_18
    const/16 v16, 0x0

    if-eqz v6, :cond_19

    .line 2550
    :try_start_11
    invoke-interface {v6}, Ljava/sql/ResultSet;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    :catch_5
    :cond_19
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    goto :goto_15

    :catchall_5
    move-exception v0

    move-object v6, v11

    goto :goto_15

    :catchall_6
    move-exception v0

    const/4 v6, 0x0

    :goto_15
    if-eqz v6, :cond_1a

    :try_start_12
    invoke-interface {v6}, Ljava/sql/ResultSet;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    .line 2548
    :catch_6
    :cond_1a
    throw v0

    :cond_1b
    return-void

    :catchall_7
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v6

    goto :goto_16

    :catchall_8
    move-exception v0

    move-object v2, v0

    const/16 v17, 0x0

    :goto_16
    if-eqz v17, :cond_1c

    .line 2378
    :try_start_13
    invoke-interface/range {v17 .. v17}, Ljava/sql/ResultSet;->close()V
    :try_end_13
    .catch Ljava/sql/SQLException; {:try_start_13 .. :try_end_13} :catch_7

    goto :goto_17

    :catch_7
    move-exception v0

    move-object v3, v0

    .line 2380
    invoke-static {v3}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 2376
    :cond_1c
    :goto_17
    throw v2
.end method
