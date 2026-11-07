.class public Lcom/mysql/jdbc/BlobFromLocator;
.super Ljava/lang/Object;
.source "BlobFromLocator.java"

# interfaces
.implements Ljava/sql/Blob;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;
    }
.end annotation


# instance fields
.field private blobColumnName:Ljava/lang/String;

.field private creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private numColsInResultSet:I

.field private numPrimaryKeys:I

.field private primaryKeyColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private primaryKeyValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private quotedId:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ResultSetImpl;ILcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    .line 50
    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->tableName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->numColsInResultSet:I

    .line 56
    iput v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    .line 66
    iput-object p3, p0, Lcom/mysql/jdbc/BlobFromLocator;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 67
    iput-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    .line 69
    iget-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object p1, p1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    array-length p1, p1

    iput p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->numColsInResultSet:I

    .line 70
    iget-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object p1, p1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    .line 72
    iget p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->numColsInResultSet:I

    const/4 p3, 0x1

    if-le p1, p3, :cond_2

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    const/4 p1, 0x0

    .line 76
    :goto_0
    iget p3, p0, Lcom/mysql/jdbc/BlobFromLocator;->numColsInResultSet:I

    if-ge p1, p3, :cond_3

    .line 77
    iget-object p3, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object p3, p3, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object p3, p3, p1

    invoke-virtual {p3}, Lcom/mysql/jdbc/Field;->isPrimaryKey()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 78
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v1, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getOriginalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 84
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v1, v1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :goto_1
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p3, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 96
    :cond_2
    invoke-direct {p0}, Lcom/mysql/jdbc/BlobFromLocator;->notEnoughInformationInQuery()V

    .line 99
    :cond_3
    iget-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    .line 101
    iget p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-nez p1, :cond_4

    .line 102
    invoke-direct {p0}, Lcom/mysql/jdbc/BlobFromLocator;->notEnoughInformationInQuery()V

    .line 105
    :cond_4
    iget-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object p1, p1, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    iget-object p3, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object p3, p3, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object p3, p3, v0

    invoke-virtual {p3}, Lcom/mysql/jdbc/Field;->getDatabaseName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 110
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 111
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object p3, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    .line 114
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    :cond_5
    iget-object p3, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object p3, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object p3, p3, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object p3, p3, v0

    invoke-virtual {p3}, Lcom/mysql/jdbc/Field;->getOriginalTableName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object p3, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->tableName:Ljava/lang/String;

    goto :goto_2

    .line 123
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    iget-object p3, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object p3, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object p3, p3, Lcom/mysql/jdbc/ResultSetImpl;->fields:[Lcom/mysql/jdbc/Field;

    aget-object p3, p3, v0

    invoke-virtual {p3}, Lcom/mysql/jdbc/Field;->getTableName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object p3, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->tableName:Ljava/lang/String;

    .line 132
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {p3, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mysql/jdbc/BlobFromLocator;->quotedId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/mysql/jdbc/BlobFromLocator;)Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/mysql/jdbc/BlobFromLocator;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object p0
.end method

.method private notEnoughInformationInQuery()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v1, "Emulated BLOB locators must come from a ResultSet with only one table selected, and all primary keys selected"

    const-string v2, "S1000"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method createGetBytesStatement()Ljava/sql/PreparedStatement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT SUBSTRING("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") FROM "

    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 484
    :goto_0
    iget v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge v1, v2, :cond_0

    const-string v2, " AND "

    .line 485
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    .line 487
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v1, v1, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    return-object v0
.end method

.method public free()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 656
    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    .line 657
    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    .line 658
    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    return-void
.end method

.method public getBinaryStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;

    invoke-direct {v1, p0}, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;-><init>(Lcom/mysql/jdbc/BlobFromLocator;)V

    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v2, v2, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getLocatorFetchBufferSize()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public getBinaryStream(JJ)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 662
    new-instance v6, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;-><init>(Lcom/mysql/jdbc/BlobFromLocator;JJ)V

    return-object v6
.end method

.method public getBytes(JI)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 251
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/BlobFromLocator;->createGetBytesStatement()Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 253
    :try_start_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mysql/jdbc/BlobFromLocator;->getBytesInternal(Ljava/sql/PreparedStatement;JI)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 257
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 255
    :catch_1
    :cond_1
    throw p1
.end method

.method getBytesInternal(Ljava/sql/PreparedStatement;JI)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 499
    :try_start_0
    invoke-interface {p1, v0, p2, p3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    const/4 p2, 0x2

    .line 500
    invoke-interface {p1, p2, p4}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p2, 0x0

    .line 502
    :goto_0
    iget p3, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge p2, p3, :cond_0

    add-int/lit8 p3, p2, 0x3

    .line 503
    iget-object p4, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p1, p3, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 506
    :cond_0
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 508
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 509
    move-object p2, p1

    check-cast p2, Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {p2, v0, v0}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(IZ)[B

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 516
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object p2

    :cond_2
    :try_start_3
    const-string p2, "BLOB data not found! Did primary keys change?"

    const-string p3, "S1000"

    .line 512
    iget-object p4, p0, Lcom/mysql/jdbc/BlobFromLocator;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p2, p3, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p2

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v1, :cond_3

    .line 516
    :try_start_4
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 514
    :catch_1
    :cond_3
    throw p1
.end method

.method public length()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT LENGTH("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") FROM "

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v3, 0x1

    .line 290
    :goto_0
    iget v4, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge v3, v4, :cond_0

    const-string v4, " AND "

    .line 291
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v4, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ?"

    .line 293
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 298
    :try_start_0
    iget-object v4, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v4, v4, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 300
    :goto_1
    :try_start_1
    iget v4, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 301
    iget-object v5, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    move v2, v4

    goto :goto_1

    .line 304
    :cond_1
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 306
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 307
    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 314
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_2
    if-eqz v0, :cond_3

    .line 324
    :try_start_4
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_3
    return-wide v3

    :cond_4
    :try_start_5
    const-string v1, "BLOB data not found! Did primary keys change?"

    const-string v3, "S1000"

    .line 310
    iget-object v4, p0, Lcom/mysql/jdbc/BlobFromLocator;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v1, v3, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v1

    move-object v3, v2

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v0, v3

    :goto_2
    if-eqz v3, :cond_5

    .line 314
    :try_start_6
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :cond_5
    if-eqz v0, :cond_6

    .line 324
    :try_start_7
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_3

    .line 312
    :catch_3
    :cond_6
    throw v1
.end method

.method public position(Ljava/sql/Blob;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 349
    invoke-interface {p1}, Ljava/sql/Blob;->length()J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/16 v1, 0x0

    invoke-interface {p1, v1, v2, v0}, Ljava/sql/Blob;->getBytes(JI)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/BlobFromLocator;->position([BJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public position([BJ)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT LOCATE("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?, "

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ") FROM "

    .line 365
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object p2, p0, Lcom/mysql/jdbc/BlobFromLocator;->tableName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " WHERE "

    .line 367
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object p2, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = ?"

    .line 370
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    const/4 v1, 0x1

    .line 372
    :goto_0
    iget v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge v1, v2, :cond_0

    const-string v2, " AND "

    .line 373
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    .line 375
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 380
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v2, v2, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 381
    :try_start_1
    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 383
    :goto_1
    iget p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge p3, p1, :cond_1

    add-int/lit8 p1, p3, 0x2

    .line 384
    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 387
    :cond_1
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 389
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 390
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    .line 397
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_2
    if-eqz v0, :cond_3

    .line 407
    :try_start_4
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_3
    return-wide p2

    :cond_4
    :try_start_5
    const-string p2, "BLOB data not found! Did primary keys change?"

    const-string p3, "S1000"

    .line 393
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p2, p3, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p2

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v0, v1

    :goto_2
    if-eqz v1, :cond_5

    .line 397
    :try_start_6
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :cond_5
    if-eqz v0, :cond_6

    .line 407
    :try_start_7
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_3

    .line 395
    :catch_3
    :cond_6
    throw p1
.end method

.method public setBinaryStream(J)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 144
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setBytes(J[B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 229
    array-length v5, p3

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mysql/jdbc/BlobFromLocator;->setBytes(J[BII)I

    move-result p1

    return p1
.end method

.method public setBytes(J[BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    add-int v0, p4, p5

    .line 166
    array-length v1, p3

    if-le v0, v1, :cond_0

    .line 167
    array-length p5, p3

    sub-int/2addr p5, p4

    .line 170
    :cond_0
    new-array v0, p5, [B

    const/4 v1, 0x0

    .line 171
    invoke-static {p3, p4, v0, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "UPDATE "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    iget-object p4, p0, Lcom/mysql/jdbc/BlobFromLocator;->tableName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " SET "

    .line 176
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object p4, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " = INSERT("

    .line 178
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object p4, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", "

    .line 180
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    .line 182
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ?) WHERE "

    .line 184
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = ?"

    .line 187
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    const/4 p2, 0x1

    .line 189
    :goto_0
    iget p4, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge p2, p4, :cond_1

    const-string p4, " AND "

    .line 190
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object p4, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " = ?"

    .line 192
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 197
    :try_start_0
    iget-object p4, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object p4, p4, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    :try_start_1
    invoke-interface {p3, p1, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 201
    :goto_1
    iget p2, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge v1, p2, :cond_2

    add-int/lit8 p2, v1, 0x2

    .line 202
    iget-object p4, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p3, p2, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 205
    :cond_2
    invoke-interface {p3}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p2, p1, :cond_4

    if-eqz p3, :cond_3

    .line 213
    :try_start_2
    invoke-interface {p3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 222
    :catch_0
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/BlobFromLocator;->length()J

    move-result-wide p1

    long-to-int p1, p1

    return p1

    :cond_4
    :try_start_3
    const-string p1, "BLOB data not found! Did primary keys change?"

    const-string p2, "S1000"

    .line 208
    iget-object p4, p0, Lcom/mysql/jdbc/BlobFromLocator;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p3, p2

    :goto_2
    if-eqz p3, :cond_5

    .line 213
    :try_start_4
    invoke-interface {p3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 211
    :catch_1
    :cond_5
    throw p1
.end method

.method public truncate(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SET "

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = LEFT("

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->blobColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") WHERE "

    .line 432
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = ?"

    .line 435
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    const/4 v1, 0x1

    .line 437
    :goto_0
    iget v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge v1, v2, :cond_0

    const-string v2, " AND "

    .line 438
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyColumns:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    .line 440
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 445
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->creatorResultSet:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v2, v2, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 447
    :goto_1
    :try_start_1
    iget v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->numPrimaryKeys:I

    if-ge p2, v1, :cond_1

    add-int/lit8 v1, p2, 0x1

    .line 448
    iget-object v2, p0, Lcom/mysql/jdbc/BlobFromLocator;->primaryKeyValues:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    move p2, v1

    goto :goto_1

    .line 451
    :cond_1
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p2, p1, :cond_3

    if-eqz v0, :cond_2

    .line 459
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    return-void

    :cond_3
    :try_start_3
    const-string p1, "BLOB data not found! Did primary keys change?"

    const-string p2, "S1000"

    .line 454
    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_4

    .line 459
    :try_start_4
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 457
    :catch_1
    :cond_4
    throw p1
.end method
