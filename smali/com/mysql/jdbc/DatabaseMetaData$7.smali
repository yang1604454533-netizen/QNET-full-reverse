.class Lcom/mysql/jdbc/DatabaseMetaData$7;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
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

    .line 3727
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->val$table:Ljava/lang/String;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->val$stmt:Ljava/sql/Statement;

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->val$rows:Ljava/util/ArrayList;

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

    .line 3727
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$7;->forEach(Ljava/lang/String;)V

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

    .line 3732
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SHOW KEYS FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3733
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->val$table:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v4, v4, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM "

    .line 3734
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3735
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v2, v2, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3737
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3739
    :try_start_1
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 3741
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Key_name"

    .line 3742
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "PRIMARY"

    .line 3745
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "PRI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    const/4 v4, 0x6

    .line 3746
    new-array v4, v4, [[B

    const/4 v5, 0x0

    if-nez p1, :cond_2

    .line 3747
    new-array v6, v5, [B

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v6, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    :goto_1
    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    .line 3749
    iget-object v6, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v7, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->val$table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Column_name"

    .line 3751
    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 3752
    iget-object v7, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v7, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x4

    .line 3753
    iget-object v7, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v8, "Seq_in_index"

    invoke-interface {v1, v8}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x5

    .line 3754
    iget-object v7, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v7, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v4, v6

    .line 3755
    invoke-virtual {v2, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3761
    :cond_3
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3763
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3764
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->val$rows:Ljava/util/ArrayList;

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$7;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v4}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 3770
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_5
    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_6

    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3768
    :catch_1
    :cond_6
    throw p1
.end method
