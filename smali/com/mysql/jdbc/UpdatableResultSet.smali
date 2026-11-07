.class public Lcom/mysql/jdbc/UpdatableResultSet;
.super Lcom/mysql/jdbc/ResultSetImpl;
.source "UpdatableResultSet.java"


# static fields
.field static final STREAM_DATA_MARKER:[B


# instance fields
.field protected charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

.field private charEncoding:Ljava/lang/String;

.field private databasesUsedToTablesUsed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private defaultColumnValue:[[B

.field private deleteSQL:Ljava/lang/String;

.field private deleter:Lcom/mysql/jdbc/PreparedStatement;

.field private initializedCharConverter:Z

.field private insertSQL:Ljava/lang/String;

.field protected inserter:Lcom/mysql/jdbc/PreparedStatement;

.field private isUpdatable:Z

.field private notUpdatableReason:Ljava/lang/String;

.field private populateInserterWithDefaultValues:Z

.field private primaryKeyIndicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qualifiedAndQuotedTableName:Ljava/lang/String;

.field private quotedIdChar:Ljava/lang/String;

.field private refreshSQL:Ljava/lang/String;

.field private refresher:Lcom/mysql/jdbc/PreparedStatement;

.field private savedCurrentRow:Lcom/mysql/jdbc/ResultSetRow;

.field private updateSQL:Ljava/lang/String;

.field protected updater:Lcom/mysql/jdbc/PreparedStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "** STREAM DATA **"

    .line 42
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/UpdatableResultSet;->STREAM_DATA_MARKER:[B

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 110
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/ResultSetImpl;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    .line 54
    iput-object p1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleteSQL:Ljava/lang/String;

    const/4 p2, 0x0

    .line 56
    iput-boolean p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->initializedCharConverter:Z

    .line 59
    iput-object p1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    .line 61
    iput-object p1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->insertSQL:Ljava/lang/String;

    .line 64
    iput-boolean p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 67
    iput-object p1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->quotedIdChar:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refreshSQL:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    .line 88
    iput-object p1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updateSQL:Ljava/lang/String;

    .line 90
    iput-boolean p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->populateInserterWithDefaultValues:Z

    .line 92
    iput-object p1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    .line 111
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkUpdatability()V

    .line 112
    iget-object p1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getPopulateInsertRowWithDefaultValues()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->populateInserterWithDefaultValues:Z

    return-void
.end method

.method private extractDefaultValues()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v1, v1

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    .line 528
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 530
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 531
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 532
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 535
    :try_start_0
    iget-object v7, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    const-string v8, "%"

    invoke-interface {v0, v7, v2, v6, v8}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 537
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "COLUMN_NAME"

    .line 538
    invoke-interface {v6, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "COLUMN_DEF"

    .line 539
    invoke-interface {v6, v7}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 541
    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 542
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 544
    iget-object v8, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aput-object v7, v8, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    .line 549
    invoke-interface {v6}, Ljava/sql/ResultSet;->close()V

    move-object v3, v2

    goto :goto_0

    :cond_3
    move-object v3, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v6, v3

    :goto_2
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/sql/ResultSet;->close()V

    .line 548
    :cond_4
    throw v0

    :cond_5
    return-void
.end method

.method private getCharConverter()Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 784
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->initializedCharConverter:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 785
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->initializedCharConverter:Z

    .line 787
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charEncoding:Ljava/lang/String;

    .line 789
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charEncoding:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    return-object v0
.end method

.method private getColumnsToIndexMapForTableAndDB(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 761
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    goto :goto_0

    .line 767
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 770
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_2

    .line 776
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 777
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method

.method private getQuotedIdChar()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->quotedIdChar:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsQuotedIdentifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    .line 818
    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->quotedIdChar:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 820
    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->quotedIdChar:Ljava/lang/String;

    .line 824
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->quotedIdChar:Ljava/lang/String;

    return-object v0
.end method

.method private refreshRow(Lcom/mysql/jdbc/PreparedStatement;Lcom/mysql/jdbc/ResultSetRow;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1261
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v0, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refreshSQL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1263
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->generateStatements()V

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refreshSQL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    .line 1269
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    .line 1271
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 1275
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1277
    iget-boolean v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v3, :cond_2

    .line 1278
    invoke-virtual {p2, v0}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object p1

    goto :goto_1

    .line 1280
    :cond_2
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v3

    .line 1283
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->isNull(I)Z

    move-result p1

    if-nez p1, :cond_4

    array-length p1, v3

    if-nez p1, :cond_3

    goto :goto_0

    .line 1286
    :cond_3
    invoke-direct {p0, v3}, Lcom/mysql/jdbc/UpdatableResultSet;->stripBinaryPrefix([B)[B

    move-result-object p1

    goto :goto_1

    .line 1284
    :cond_4
    :goto_0
    invoke-virtual {p2, v0}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object p1

    .line 1290
    :goto_1
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getvalueNeedsQuoting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1291
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, v2, p1}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscape(I[B)V

    goto :goto_5

    .line 1293
    :cond_5
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0, v2, p1}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_a

    .line 1299
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1301
    iget-boolean v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v4, :cond_7

    .line 1302
    invoke-virtual {p2, v3}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v3

    goto :goto_4

    .line 1304
    :cond_7
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v4

    .line 1307
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_9

    array-length v5, v4

    if-nez v5, :cond_8

    goto :goto_3

    .line 1310
    :cond_8
    invoke-direct {p0, v4}, Lcom/mysql/jdbc/UpdatableResultSet;->stripBinaryPrefix([B)[B

    move-result-object v3

    goto :goto_4

    .line 1308
    :cond_9
    :goto_3
    invoke-virtual {p2, v3}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v3

    .line 1314
    :goto_4
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2, v3}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscape(I[B)V

    goto :goto_2

    :cond_a
    :goto_5
    const/4 p1, 0x0

    .line 1321
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1323
    :try_start_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v2

    .line 1325
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_f

    :goto_6
    if-ge v1, v2, :cond_d

    add-int/lit8 v3, v1, 0x1

    .line 1327
    invoke-interface {v0, v3}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v4

    if-eqz v4, :cond_c

    .line 1329
    invoke-interface {v0}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_7

    .line 1332
    :cond_b
    invoke-interface {v0, v3}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_8

    .line 1330
    :cond_c
    :goto_7
    invoke-virtual {p2, v1, p1}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_8
    move v1, v3

    goto :goto_6

    :cond_d
    if-eqz v0, :cond_e

    .line 1341
    :try_start_2
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_e
    return-void

    :cond_f
    :try_start_3
    const-string p1, "UpdatableResultSet.12"

    .line 1336
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_9

    :catchall_1
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    :goto_9
    if-eqz v0, :cond_10

    .line 1341
    :try_start_4
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1339
    :catch_1
    :cond_10
    throw p1
.end method

.method private resetInserter()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1376
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1378
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1379
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setParamValue(Lcom/mysql/jdbc/PreparedStatement;ILcom/mysql/jdbc/ResultSetRow;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 471
    invoke-virtual {p3, p4}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p1, p2, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    return-void

    :cond_0
    const/16 v2, 0xc

    if-eq p5, v2, :cond_2

    const/16 v2, 0x10

    if-eq p5, v2, :cond_1

    packed-switch p5, :pswitch_data_0

    packed-switch p5, :pswitch_data_1

    packed-switch p5, :pswitch_data_2

    .line 516
    invoke-virtual {p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    goto :goto_0

    .line 499
    :pswitch_0
    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fastDefaultCal:Ljava/util/Calendar;

    iget-object p5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v3, p3

    move v4, p4

    move-object v9, p0

    invoke-virtual/range {v3 .. v9}, Lcom/mysql/jdbc/ResultSetRow;->getTimestampFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto :goto_0

    .line 502
    :pswitch_1
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fastDefaultCal:Ljava/util/Calendar;

    iget-object p5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v0, p3

    move v1, p4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/ResultSetRow;->getTimeFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    goto :goto_0

    .line 496
    :pswitch_2
    iget-object p5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fastDefaultCal:Ljava/util/Calendar;

    invoke-virtual {p3, p4, p5, p0, v0}, Lcom/mysql/jdbc/ResultSetRow;->getDateFast(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object p3

    iget-object p4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fastDefaultCal:Ljava/util/Calendar;

    invoke-virtual {p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    goto :goto_0

    .line 478
    :pswitch_3
    invoke-virtual {p1, p2, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 486
    :pswitch_4
    invoke-virtual {p3, p4}, Lcom/mysql/jdbc/ResultSetRow;->getLong(I)J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    goto :goto_0

    .line 483
    :pswitch_5
    invoke-virtual {p3, p4}, Lcom/mysql/jdbc/ResultSetRow;->getInt(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    goto :goto_0

    .line 508
    :cond_1
    :pswitch_6
    invoke-virtual {p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    goto :goto_0

    .line 493
    :cond_2
    :pswitch_7
    iget-object p5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charEncoding:Ljava/lang/String;

    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p3, p4, p5, v0}, Lcom/mysql/jdbc/ResultSetRow;->getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stripBinaryPrefix([B)[B
    .locals 2

    const-string v0, "_binary\'"

    const-string v1, "\'"

    .line 1460
    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/StringUtils;->stripEnclosure([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public absolute(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 149
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->absolute(I)Z

    move-result p1

    return p1
.end method

.method public afterLast()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 165
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->afterLast()V

    return-void
.end method

.method public beforeFirst()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 181
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->beforeFirst()V

    return-void
.end method

.method public cancelRowUpdates()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 197
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 198
    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 199
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    .line 201
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected checkRowPos()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 212
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_0

    .line 213
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->checkRowPos()V

    .line 215
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected checkUpdatability()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    if-nez v1, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 248
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v1, v1

    if-lez v1, :cond_19

    .line 249
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v1

    .line 250
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_3

    .line 253
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    :cond_3
    if-eqz v1, :cond_4

    .line 257
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 258
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    const-string v1, "NotUpdatableReason.3"

    .line 259
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    return-void

    .line 264
    :cond_4
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->isPrimaryKey()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    move v5, v3

    const/4 v3, 0x1

    .line 271
    :goto_1
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v6, v6

    if-ge v3, v6, :cond_d

    .line 272
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v6

    .line 273
    iget-object v7, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_6

    .line 276
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v6

    .line 277
    iget-object v7, p0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    :cond_6
    if-eqz v6, :cond_7

    .line 280
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    .line 281
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    const-string v1, "NotUpdatableReason.3"

    .line 282
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    return-void

    :cond_7
    if-eqz v1, :cond_c

    .line 287
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_b

    .line 295
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_2

    .line 302
    :cond_9
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->isPrimaryKey()Z

    move-result v6

    if-eqz v6, :cond_a

    add-int/lit8 v5, v5, 0x1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 296
    :cond_b
    :goto_2
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    const-string v1, "NotUpdatableReason.1"

    .line 297
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    return-void

    .line 288
    :cond_c
    :goto_3
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    const-string v1, "NotUpdatableReason.0"

    .line 289
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    return-void

    :cond_d
    if-eqz v1, :cond_18

    .line 307
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_a

    .line 320
    :cond_e
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getStrictUpdates()Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_16

    .line 321
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v3

    .line 324
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 327
    :try_start_1
    invoke-interface {v3, v2, v6, v1}, Ljava/sql/DatabaseMetaData;->getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 329
    :goto_4
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x4

    .line 330
    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-virtual {v7, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_f
    if-eqz v1, :cond_10

    .line 337
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_0
    move-exception v1

    .line 339
    :try_start_4
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 346
    :cond_10
    :goto_5
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_11

    .line 349
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    const-string v1, "NotUpdatableReason.5"

    .line 350
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    return-void

    :cond_11
    const/4 v2, 0x0

    .line 358
    :goto_6
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v3, v3

    if-ge v2, v3, :cond_13

    .line 359
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->isPrimaryKey()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 360
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_12

    .line 364
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 367
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_12

    .line 369
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    const-string v1, "NotUpdatableReason.6"

    .line 370
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    return-void

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 379
    :cond_13
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 381
    iget-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-nez v2, :cond_16

    if-le v1, v4, :cond_14

    const-string v1, "NotUpdatableReason.7"

    .line 383
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    goto :goto_7

    :cond_14
    const-string v1, "NotUpdatableReason.4"

    .line 385
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_7
    return-void

    :catchall_0
    move-exception v2

    goto :goto_8

    :catchall_1
    move-exception v2

    move-object v1, v6

    :goto_8
    if-eqz v1, :cond_15

    .line 337
    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_9

    :catch_1
    move-exception v1

    .line 339
    :try_start_6
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 335
    :cond_15
    :goto_9
    throw v2

    :cond_16
    if-nez v5, :cond_17

    .line 396
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    const-string v1, "NotUpdatableReason.4"

    .line 397
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    return-void

    .line 402
    :cond_17
    iput-boolean v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 403
    iput-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    return-void

    .line 308
    :cond_18
    :goto_a
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    const-string v1, "NotUpdatableReason.2"

    .line 309
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    return-void

    .line 314
    :cond_19
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    const-string v1, "NotUpdatableReason.3"

    .line 315
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    return-void

    :cond_1a
    const-string v1, "UpdatableResultSet.43"

    .line 243
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v1

    .line 407
    iput-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    .line 408
    invoke-virtual {v1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    return-void
.end method

.method public deleteRow()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 424
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 425
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-eqz v1, :cond_8

    .line 429
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_7

    .line 431
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 433
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_5

    .line 435
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 439
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleteSQL:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->generateStatements()V

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleteSQL:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    .line 449
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 452
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 453
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/mysql/jdbc/UpdatableResultSet;->setParamValue(Lcom/mysql/jdbc/PreparedStatement;ILcom/mysql/jdbc/ResultSetRow;II)V

    goto :goto_1

    :cond_2
    :goto_0
    if-ge v2, v1, :cond_3

    .line 456
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 457
    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v2, v2, 0x1

    iget-object v7, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v9

    move-object v4, p0

    move v6, v2

    invoke-direct/range {v4 .. v9}, Lcom/mysql/jdbc/UpdatableResultSet;->setParamValue(Lcom/mysql/jdbc/PreparedStatement;ILcom/mysql/jdbc/ResultSetRow;II)V

    goto :goto_0

    .line 462
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdate()I

    .line 463
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->rowData:Lcom/mysql/jdbc/RowData;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2}, Lcom/mysql/jdbc/RowData;->getCurrentRowNumber()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/RowData;->removeRow(I)V

    .line 466
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->previous()Z

    .line 467
    monitor-exit v0

    return-void

    :cond_4
    const-string v1, "UpdatableResultSet.4"

    .line 436
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    :cond_5
    const-string v1, "UpdatableResultSet.3"

    .line 434
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    :cond_6
    const-string v1, "UpdatableResultSet.2"

    .line 432
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    :cond_7
    const-string v1, "UpdatableResultSet.1"

    .line 430
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 426
    :cond_8
    new-instance v1, Lcom/mysql/jdbc/NotUpdatable;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/NotUpdatable;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 467
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public first()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 573
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->first()Z

    move-result v0

    return v0
.end method

.method protected generateStatements()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 584
    iget-boolean v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 591
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getQuotedIdChar()Ljava/lang/String;

    move-result-object v1

    .line 595
    iget-object v3, v0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 596
    new-instance v3, Ljava/util/TreeMap;

    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 597
    new-instance v4, Ljava/util/TreeMap;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v4, v0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    goto :goto_0

    .line 599
    :cond_0
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 600
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, v0, Lcom/mysql/jdbc/UpdatableResultSet;->databasesUsedToTablesUsed:Ljava/util/Map;

    .line 603
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    .line 605
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 615
    iget-object v10, v0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v11, 0x3

    const/16 v12, 0x17

    invoke-interface {v10, v11, v12, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "<=>"

    goto :goto_1

    :cond_1
    const-string v10, "="

    :goto_1
    const/4 v11, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    .line 617
    :goto_2
    iget-object v14, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v14, v14

    if-ge v11, v14, :cond_10

    .line 618
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    iget-object v15, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v15, v15, v11

    invoke-virtual {v15}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v15

    const/16 v2, 0x2e

    if-eqz v15, :cond_5

    .line 624
    iget-object v15, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v15, v15, v11

    invoke-virtual {v15}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 626
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_2

    .line 627
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 633
    :cond_2
    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v2

    .line 635
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 641
    invoke-interface {v3, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 642
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_3

    move-object/from16 v17, v7

    const/16 v7, 0x2c

    .line 643
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    move-object/from16 v17, v7

    .line 646
    :goto_3
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-interface {v3, v14, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    move-object/from16 v17, v7

    .line 650
    :goto_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-direct {v0, v15, v2}, Lcom/mysql/jdbc/UpdatableResultSet;->getColumnsToIndexMapForTableAndDB(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    goto :goto_5

    :cond_5
    move-object/from16 v17, v7

    .line 654
    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 657
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 663
    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 664
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    const/16 v14, 0x2c

    .line 665
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 668
    :cond_6
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-interface {v3, v7, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    :cond_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget-object v7, v0, Lcom/mysql/jdbc/UpdatableResultSet;->catalog:Ljava/lang/String;

    invoke-direct {v0, v7, v2}, Lcom/mysql/jdbc/UpdatableResultSet;->getColumnsToIndexMapForTableAndDB(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    goto :goto_5

    :cond_8
    const/4 v15, 0x0

    .line 678
    :goto_5
    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v2

    .line 681
    iget-object v7, v0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo()Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_9

    goto :goto_6

    .line 684
    :cond_9
    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_6
    if-eqz v15, :cond_a

    if-eqz v2, :cond_a

    .line 688
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v15, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    :cond_a
    iget-object v7, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object v7

    .line 694
    iget-object v14, v0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v14

    invoke-virtual {v14}, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo()Z

    move-result v14

    if-eqz v14, :cond_b

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_b

    goto :goto_7

    .line 697
    :cond_b
    iget-object v7, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object v7

    .line 700
    :goto_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    iget-object v15, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v15, v15, v11

    invoke-virtual {v15}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 703
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_c

    .line 704
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x2e

    .line 707
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_c
    const/16 v15, 0x2e

    .line 710
    :goto_8
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 720
    iget-object v7, v0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Lcom/mysql/jdbc/Field;->isPrimaryKey()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 721
    iget-object v7, v0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v12, :cond_d

    const-string v7, " AND "

    .line 724
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_d
    const/4 v12, 0x0

    .line 729
    :goto_9
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "?"

    .line 731
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    if-eqz v13, :cond_f

    const-string v7, "SET "

    .line 736
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v17

    const/4 v13, 0x0

    goto :goto_a

    :cond_f
    const-string v7, ","

    .line 738
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    .line 739
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    move-object/from16 v14, v17

    .line 740
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    const-string v7, "?"

    .line 743
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    .line 748
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    move-object v7, v14

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_10
    move-object v14, v7

    .line 751
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->qualifiedAndQuotedTableName:Ljava/lang/String;

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->qualifiedAndQuotedTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->updateSQL:Ljava/lang/String;

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->qualifiedAndQuotedTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->insertSQL:Ljava/lang/String;

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->qualifiedAndQuotedTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->refreshSQL:Ljava/lang/String;

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->qualifiedAndQuotedTableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->deleteSQL:Ljava/lang/String;

    return-void

    :cond_11
    const/4 v1, 0x0

    .line 585
    iput-boolean v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 586
    iput-boolean v1, v0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    .line 588
    new-instance v1, Lcom/mysql/jdbc/NotUpdatable;

    iget-object v2, v0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/NotUpdatable;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getConcurrency()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 807
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 808
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x3f0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3ef

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 809
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public insertRow()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 838
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 839
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-eqz v1, :cond_3

    .line 843
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdate()I

    .line 845
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->getLastInsertID()J

    move-result-wide v1

    .line 846
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v3, v3

    .line 847
    new-array v4, v3, [[B

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 850
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v6, v5}, Lcom/mysql/jdbc/PreparedStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    .line 851
    aput-object v6, v4, v5

    goto :goto_1

    .line 853
    :cond_0
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v6, v5}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v6

    aput-object v6, v4, v5

    .line 859
    :goto_1
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->isAutoIncrement()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    .line 860
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v4, v5

    .line 861
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v7, v5, 0x1

    aget-object v8, v4, v5

    invoke-virtual {v6, v7, v8}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 865
    :cond_2
    new-instance v1, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 867
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {p0, v2, v1}, Lcom/mysql/jdbc/UpdatableResultSet;->refreshRow(Lcom/mysql/jdbc/PreparedStatement;Lcom/mysql/jdbc/ResultSetRow;)V

    .line 869
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/RowData;->addRow(Lcom/mysql/jdbc/ResultSetRow;)V

    .line 870
    invoke-direct {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->resetInserter()V

    .line 871
    monitor-exit v0

    return-void

    :cond_3
    const-string v1, "UpdatableResultSet.7"

    .line 840
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    :catchall_0
    move-exception v1

    .line 871
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAfterLast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 889
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 907
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 924
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 942
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->isLast()Z

    move-result v0

    return v0
.end method

.method isUpdatable()Z
    .locals 1

    .line 946
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    return v0
.end method

.method public last()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 964
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->last()Z

    move-result v0

    return v0
.end method

.method public moveToCurrentRow()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 979
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 980
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-eqz v1, :cond_1

    .line 984
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 985
    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    .line 986
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->savedCurrentRow:Lcom/mysql/jdbc/ResultSetRow;

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 988
    :cond_0
    monitor-exit v0

    return-void

    .line 981
    :cond_1
    new-instance v1, Lcom/mysql/jdbc/NotUpdatable;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/NotUpdatable;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 988
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public moveToInsertRow()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1009
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1010
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-eqz v1, :cond_8

    .line 1014
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v1, :cond_2

    .line 1015
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->insertSQL:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1016
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->generateStatements()V

    .line 1019
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->insertSQL:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;

    iput-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    .line 1020
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->populateInserterWithDefaultValues:Z

    if-eqz v1, :cond_1

    .line 1021
    invoke-direct {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->extractDefaultValues()V

    .line 1024
    :cond_1
    invoke-direct {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->resetInserter()V

    goto :goto_0

    .line 1026
    :cond_2
    invoke-direct {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->resetInserter()V

    .line 1029
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v1, v1

    const/4 v2, 0x1

    .line 1031
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v3, 0x0

    .line 1032
    iput-boolean v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1033
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iput-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->savedCurrentRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 1034
    new-array v4, v1, [[B

    .line 1035
    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    iput-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 1036
    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    invoke-virtual {v5, v6}, Lcom/mysql/jdbc/ResultSetRow;->setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;

    move-object v5, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_7

    .line 1039
    iget-boolean v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->populateInserterWithDefaultValues:Z

    const/4 v7, 0x0

    if-nez v6, :cond_3

    .line 1040
    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v6, v4, 0x1

    const-string v8, "DEFAULT"

    invoke-static {v8}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    .line 1041
    check-cast v7, [[B

    move-object v5, v7

    goto/16 :goto_3

    .line 1043
    :cond_3
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v6, v6, v4

    if-eqz v6, :cond_6

    .line 1044
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v4

    .line 1046
    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_4

    const/16 v8, 0xe

    if-eq v6, v8, :cond_4

    packed-switch v6, :pswitch_data_0

    .line 1066
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v8, v8, v4

    invoke-virtual {v6, v7, v8, v3, v3}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[BZZ)V

    goto :goto_2

    .line 1053
    :cond_4
    :pswitch_0
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v6, v6, v4

    array-length v6, v6

    if-le v6, v7, :cond_5

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v6, v6, v4

    aget-byte v6, v6, v3

    const/16 v8, 0x43

    if-ne v6, v8, :cond_5

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v6, v6, v4

    aget-byte v6, v6, v2

    const/16 v8, 0x55

    if-ne v6, v8, :cond_5

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v6, v6, v4

    const/4 v8, 0x2

    aget-byte v6, v6, v8

    const/16 v8, 0x52

    if-ne v6, v8, :cond_5

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v6, v6, v4

    const/4 v9, 0x3

    aget-byte v6, v6, v9

    if-ne v6, v8, :cond_5

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v6, v6, v4

    const/4 v8, 0x4

    aget-byte v6, v6, v8

    const/16 v8, 0x45

    if-ne v6, v8, :cond_5

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v6, v6, v4

    const/4 v8, 0x5

    aget-byte v6, v6, v8

    const/16 v8, 0x4e

    if-ne v6, v8, :cond_5

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v6, v6, v4

    const/4 v8, 0x6

    aget-byte v6, v6, v8

    const/16 v8, 0x54

    if-ne v6, v8, :cond_5

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v6, v6, v4

    aget-byte v6, v6, v7

    const/16 v7, 0x5f

    if-ne v6, v7, :cond_5

    .line 1058
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v8, v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    goto :goto_2

    .line 1062
    :cond_5
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v8, v8, v4

    invoke-virtual {v6, v7, v8, v3, v3}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[BZZ)V

    .line 1070
    :goto_2
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v6, v6, v4

    array-length v6, v6

    new-array v6, v6, [B

    .line 1071
    iget-object v7, p0, Lcom/mysql/jdbc/UpdatableResultSet;->defaultColumnValue:[[B

    aget-object v7, v7, v4

    array-length v8, v6

    invoke-static {v7, v3, v6, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1072
    aput-object v6, v5, v4

    goto :goto_3

    .line 1074
    :cond_6
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8, v3}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 1075
    aput-object v7, v5, v4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1079
    :cond_7
    monitor-exit v0

    return-void

    .line 1011
    :cond_8
    new-instance v1, Lcom/mysql/jdbc/NotUpdatable;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/NotUpdatable;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 1079
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public next()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1102
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->next()Z

    move-result v0

    return v0
.end method

.method public prev()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1121
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->prev()Z

    move-result v0

    return v0
.end method

.method public previous()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1143
    invoke-super {p0}, Lcom/mysql/jdbc/ResultSetImpl;->previous()Z

    move-result v0

    return v0
.end method

.method public realClose(Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1158
    iget-object v0, v1, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v0, :cond_0

    return-void

    .line 1164
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1167
    :try_start_0
    iget-boolean v3, v1, Lcom/mysql/jdbc/UpdatableResultSet;->useUsageAdvisor:Z

    if-eqz v3, :cond_3

    .line 1168
    iget-object v3, v1, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v3, :cond_3

    .line 1169
    iget-object v3, v1, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v3}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v3

    iput-object v3, v1, Lcom/mysql/jdbc/UpdatableResultSet;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    const-string v3, "UpdatableResultSet.34"

    .line 1171
    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1173
    iget-object v3, v1, Lcom/mysql/jdbc/UpdatableResultSet;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    new-instance v14, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v5, 0x0

    const-string v6, ""

    iget-object v4, v1, Lcom/mysql/jdbc/UpdatableResultSet;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v4, :cond_1

    const-string v4, "N/A"

    :goto_0
    move-object v7, v4

    goto :goto_1

    :cond_1
    iget-object v4, v1, Lcom/mysql/jdbc/UpdatableResultSet;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    iget-object v4, v4, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    goto :goto_0

    :goto_1
    iget-wide v8, v1, Lcom/mysql/jdbc/UpdatableResultSet;->connectionId:J

    iget-object v4, v1, Lcom/mysql/jdbc/UpdatableResultSet;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v4, :cond_2

    const/4 v4, -0x1

    const/4 v10, -0x1

    goto :goto_2

    :cond_2
    iget-object v4, v1, Lcom/mysql/jdbc/UpdatableResultSet;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v4}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v4

    move v10, v4

    :goto_2
    iget v11, v1, Lcom/mysql/jdbc/UpdatableResultSet;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v15, 0x0

    sget-object v17, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/16 v18, 0x0

    iget-object v4, v1, Lcom/mysql/jdbc/UpdatableResultSet;->pointOfOrigin:Ljava/lang/String;

    move-object/from16 v20, v4

    move-object v4, v14

    move-object v0, v14

    move-wide v14, v15

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v20

    invoke-direct/range {v4 .. v19}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    :cond_3
    :try_start_1
    iget-object v0, v1, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    if-eqz v0, :cond_4

    .line 1182
    iget-object v0, v1, Lcom/mysql/jdbc/UpdatableResultSet;->deleter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v0}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1189
    :goto_3
    :try_start_2
    iget-object v3, v1, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    if-eqz v3, :cond_5

    .line 1190
    iget-object v3, v1, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v3}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 1197
    :cond_5
    :goto_4
    :try_start_3
    iget-object v3, v1, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    if-eqz v3, :cond_6

    .line 1198
    iget-object v3, v1, Lcom/mysql/jdbc/UpdatableResultSet;->refresher:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v3}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 1205
    :cond_6
    :goto_5
    :try_start_4
    iget-object v3, v1, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    if-eqz v3, :cond_7

    .line 1206
    iget-object v3, v1, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v3}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catch_3
    move-exception v0

    .line 1212
    :cond_7
    :goto_6
    :try_start_5
    invoke-super/range {p0 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->realClose(Z)V

    if-nez v0, :cond_8

    .line 1217
    monitor-exit v2

    return-void

    .line 1215
    :cond_8
    throw v0

    :catchall_0
    move-exception v0

    .line 1217
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public refreshRow()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1241
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1242
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-eqz v1, :cond_4

    .line 1246
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_3

    .line 1248
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->rowData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v1}, Lcom/mysql/jdbc/RowData;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1250
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1252
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1256
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-direct {p0, v1, v2}, Lcom/mysql/jdbc/UpdatableResultSet;->refreshRow(Lcom/mysql/jdbc/PreparedStatement;Lcom/mysql/jdbc/ResultSetRow;)V

    .line 1257
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "UpdatableResultSet.11"

    .line 1253
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    :cond_1
    const-string v1, "UpdatableResultSet.10"

    .line 1251
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    :cond_2
    const-string v1, "UpdatableResultSet.9"

    .line 1249
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    :cond_3
    const-string v1, "UpdatableResultSet.8"

    .line 1247
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 1243
    :cond_4
    new-instance v1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {v1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 1257
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public relative(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1372
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->relative(I)Z

    move-result p1

    return p1
.end method

.method public rowDeleted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1399
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowInserted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1417
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public rowUpdated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1435
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected setResultSetConcurrency(I)V
    .locals 0

    .line 1446
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->setResultSetConcurrency(I)V

    return-void
.end method

.method protected syncUpdate()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1470
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    if-nez v0, :cond_1

    .line 1471
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updateSQL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1472
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->generateStatements()V

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updateSQL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/PreparedStatement;

    iput-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    .line 1478
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    .line 1479
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1482
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v3, v2}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1484
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/mysql/jdbc/Field;->getvalueNeedsQuoting()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1485
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v5, v2}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v5

    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/mysql/jdbc/Field;->isBinary()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[BZZ)V

    goto :goto_1

    .line 1487
    :cond_2
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    invoke-virtual {v5, v2}, Lcom/mysql/jdbc/ResultSetRow;->getColumnValue(I)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    goto :goto_1

    .line 1490
    :cond_3
    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1494
    :cond_4
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1497
    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1498
    iget-object v5, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v9

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/mysql/jdbc/UpdatableResultSet;->setParamValue(Lcom/mysql/jdbc/PreparedStatement;ILcom/mysql/jdbc/ResultSetRow;II)V

    goto :goto_3

    :cond_5
    :goto_2
    if-ge v1, v2, :cond_6

    .line 1501
    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->primaryKeyIndicies:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1502
    iget-object v6, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    add-int v4, v0, v1

    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v10

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/mysql/jdbc/UpdatableResultSet;->setParamValue(Lcom/mysql/jdbc/PreparedStatement;ILcom/mysql/jdbc/ResultSetRow;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public updateAsciiStream(ILjava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1526
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1527
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1528
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1529
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1530
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1533
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    goto :goto_0

    .line 1535
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    .line 1536
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    sget-object p3, Lcom/mysql/jdbc/UpdatableResultSet;->STREAM_DATA_MARKER:[B

    invoke-virtual {p2, p1, p3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1538
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1560
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateAsciiStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public updateBigDecimal(ILjava/math/BigDecimal;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1579
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1580
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1581
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1582
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1583
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1586
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    goto :goto_0

    .line 1588
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    if-nez p2, :cond_2

    .line 1591
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1593
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1596
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateBigDecimal(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1615
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateBigDecimal(ILjava/math/BigDecimal;)V

    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1637
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1638
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1639
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1640
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1641
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1644
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    goto :goto_0

    .line 1646
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    if-nez p2, :cond_2

    .line 1649
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1651
    :cond_2
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    sget-object p3, Lcom/mysql/jdbc/UpdatableResultSet;->STREAM_DATA_MARKER:[B

    invoke-virtual {p2, p1, p3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1654
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1676
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateBinaryStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public updateBlob(ILjava/sql/Blob;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1684
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1685
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1686
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1687
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1688
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1691
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBlob(ILjava/sql/Blob;)V

    goto :goto_0

    .line 1693
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBlob(ILjava/sql/Blob;)V

    if-nez p2, :cond_2

    .line 1696
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1698
    :cond_2
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    sget-object v1, Lcom/mysql/jdbc/UpdatableResultSet;->STREAM_DATA_MARKER:[B

    invoke-virtual {p2, p1, v1}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1701
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateBlob(Ljava/lang/String;Ljava/sql/Blob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1709
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateBlob(ILjava/sql/Blob;)V

    return-void
.end method

.method public updateBoolean(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1728
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1729
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1730
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1731
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1732
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1735
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    goto :goto_0

    .line 1737
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    .line 1739
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1741
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateBoolean(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1760
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateBoolean(IZ)V

    return-void
.end method

.method public updateByte(IB)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1779
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1780
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1781
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1782
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1783
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1786
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setByte(IB)V

    goto :goto_0

    .line 1788
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setByte(IB)V

    .line 1790
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1792
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateByte(Ljava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1811
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateByte(IB)V

    return-void
.end method

.method public updateBytes(I[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1830
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1831
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1832
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1833
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1834
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1837
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    goto :goto_0

    .line 1839
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    .line 1841
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1843
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateBytes(Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1862
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateBytes(I[B)V

    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1884
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1885
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1886
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1887
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1888
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1891
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    goto :goto_0

    .line 1893
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    if-nez p2, :cond_2

    .line 1896
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 1898
    :cond_2
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    sget-object p3, Lcom/mysql/jdbc/UpdatableResultSet;->STREAM_DATA_MARKER:[B

    invoke-virtual {p2, p1, p3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1901
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1923
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateCharacterStream(ILjava/io/Reader;I)V

    return-void
.end method

.method public updateClob(ILjava/sql/Clob;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1931
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p2, :cond_0

    .line 1933
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->updateNull(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1935
    :cond_0
    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    invoke-interface {p2}, Ljava/sql/Clob;->length()J

    move-result-wide v2

    long-to-int p2, v2

    invoke-virtual {p0, p1, v1, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateCharacterStream(ILjava/io/Reader;I)V

    .line 1937
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateDate(ILjava/sql/Date;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1956
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1957
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1958
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 1959
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 1960
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 1963
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;)V

    goto :goto_0

    .line 1965
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;)V

    .line 1967
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 1969
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateDate(Ljava/lang/String;Ljava/sql/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1988
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateDate(ILjava/sql/Date;)V

    return-void
.end method

.method public updateDouble(ID)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2007
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2008
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2009
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2010
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2011
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2014
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setDouble(ID)V

    goto :goto_0

    .line 2016
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setDouble(ID)V

    .line 2018
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    iget-object p3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {p3, p1}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2020
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateDouble(Ljava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2039
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateDouble(ID)V

    return-void
.end method

.method public updateFloat(IF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2058
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2059
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2060
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2061
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2062
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2065
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setFloat(IF)V

    goto :goto_0

    .line 2067
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setFloat(IF)V

    .line 2069
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2071
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateFloat(Ljava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2090
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateFloat(IF)V

    return-void
.end method

.method public updateInt(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2109
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2110
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2111
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2112
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2113
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2116
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    goto :goto_0

    .line 2118
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    .line 2120
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2122
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateInt(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2141
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateInt(II)V

    return-void
.end method

.method public updateLong(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2160
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2161
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2162
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2163
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2164
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2167
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    goto :goto_0

    .line 2169
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    .line 2171
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    iget-object p3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {p3, p1}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2173
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateLong(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2192
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateLong(IJ)V

    return-void
.end method

.method public updateNull(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2209
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2210
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 2211
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2212
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2213
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2216
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 2218
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 2220
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2222
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateNull(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2239
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->updateNull(I)V

    return-void
.end method

.method public updateObject(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2258
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mysql/jdbc/UpdatableResultSet;->updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V

    return-void
.end method

.method public updateObject(ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2281
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mysql/jdbc/UpdatableResultSet;->updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V

    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2335
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateObject(ILjava/lang/Object;)V

    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2358
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateObject(ILjava/lang/Object;)V

    return-void
.end method

.method protected updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2295
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object p4

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object p4

    monitor-enter p4

    .line 2296
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2297
    iget-boolean v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v0, :cond_0

    .line 2298
    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2299
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    :cond_0
    if-nez p3, :cond_1

    .line 2303
    iget-object p3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {p3, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;)V

    goto :goto_1

    .line 2305
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;I)V

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    .line 2309
    iget-object p3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {p3, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;)V

    goto :goto_0

    .line 2311
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;I)V

    .line 2314
    :goto_0
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v1

    iget-object p3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {p3, p1}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2316
    :goto_1
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateRow()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2372
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2373
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->isUpdatable:Z

    if-eqz v1, :cond_2

    .line 2377
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-eqz v1, :cond_0

    .line 2378
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdate()I

    .line 2379
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->refreshRow()V

    const/4 v1, 0x0

    .line 2380
    iput-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    goto :goto_0

    .line 2381
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 2388
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2389
    monitor-exit v0

    return-void

    :cond_1
    const-string v1, "UpdatableResultSet.44"

    .line 2382
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 2374
    :cond_2
    new-instance v1, Lcom/mysql/jdbc/NotUpdatable;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->notUpdatableReason:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/NotUpdatable;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 2389
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateShort(IS)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2408
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2409
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2410
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2411
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2412
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2415
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setShort(IS)V

    goto :goto_0

    .line 2417
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setShort(IS)V

    .line 2419
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2421
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateShort(Ljava/lang/String;S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2440
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateShort(IS)V

    return-void
.end method

.method public updateString(ILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2459
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2460
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2461
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2462
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2463
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2466
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 2468
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    if-nez p2, :cond_2

    .line 2471
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 2473
    :cond_2
    invoke-direct {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getCharConverter()Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2474
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    iget-object v3, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v4, p0, Lcom/mysql/jdbc/UpdatableResultSet;->charEncoding:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v6

    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 2477
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2481
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2500
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateString(ILjava/lang/String;)V

    return-void
.end method

.method public updateTime(ILjava/sql/Time;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2519
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2520
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2521
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2522
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2523
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2526
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    goto :goto_0

    .line 2528
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    .line 2530
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2532
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateTime(Ljava/lang/String;Ljava/sql/Time;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2551
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateTime(ILjava/sql/Time;)V

    return-void
.end method

.method public updateTimestamp(ILjava/sql/Timestamp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2570
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2571
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->onInsertRow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2572
    iget-boolean v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    .line 2573
    iput-boolean v2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->doingUpdates:Z

    .line 2574
    invoke-virtual {p0}, Lcom/mysql/jdbc/UpdatableResultSet;->syncUpdate()V

    .line 2577
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto :goto_0

    .line 2579
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    .line 2581
    iget-object p2, p0, Lcom/mysql/jdbc/UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sub-int/2addr p1, v2

    iget-object v1, p0, Lcom/mysql/jdbc/UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 2583
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateTimestamp(Ljava/lang/String;Ljava/sql/Timestamp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2602
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/UpdatableResultSet;->updateTimestamp(ILjava/sql/Timestamp;)V

    return-void
.end method
