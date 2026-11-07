.class Lcom/mysql/jdbc/DatabaseMetaData$5;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
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

    .line 3188
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->val$table:Ljava/lang/String;

    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->val$stmt:Ljava/sql/Statement;

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->val$rows:Ljava/util/ArrayList;

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

    .line 3188
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$5;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3196
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v1, v1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x3

    const/16 v3, 0x17

    const/16 v4, 0x32

    invoke-interface {v1, v2, v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3199
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->val$table:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->extractForeignKeyFromCreateTable(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 3201
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SHOW TABLE STATUS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " FROM "

    .line 3202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3203
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v2, v2, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v3, v3, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LIKE "

    .line 3205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3206
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->val$table:Ljava/lang/String;

    const-string v3, "\'"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3208
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->val$stmt:Ljava/sql/Statement;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    goto :goto_0

    .line 3215
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Type"

    .line 3216
    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "innodb"

    .line 3218
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SUPPORTS_FK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    const-string v1, "Comment"

    .line 3219
    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3222
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ";"

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3224
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3225
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 3227
    :goto_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3228
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 3229
    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->val$table:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$5;->val$rows:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v4, v1, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->getImportKeyResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 3238
    :try_start_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 3240
    invoke-static {p1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    :cond_4
    :goto_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_5

    .line 3238
    :try_start_2
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 3240
    invoke-static {v0}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 3236
    :cond_5
    :goto_4
    throw p1
.end method
