.class public Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;
.super Ljava/lang/Object;
.source "MysqlXid.java"

# interfaces
.implements Ljavax/transaction/xa/Xid;


# instance fields
.field hash:I

.field myBqual:[B

.field myFormatId:I

.field myGtrid:[B


# direct methods
.method public constructor <init>([B[BI)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->hash:I

    .line 42
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myGtrid:[B

    .line 43
    iput-object p2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myBqual:[B

    .line 44
    iput p3, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myFormatId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 50
    instance-of v0, p1, Ljavax/transaction/xa/Xid;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 51
    check-cast p1, Ljavax/transaction/xa/Xid;

    .line 53
    iget v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myFormatId:I

    invoke-interface {p1}, Ljavax/transaction/xa/Xid;->getFormatId()I

    move-result v2

    if-eq v0, v2, :cond_0

    return v1

    .line 57
    :cond_0
    invoke-interface {p1}, Ljavax/transaction/xa/Xid;->getBranchQualifier()[B

    move-result-object v0

    .line 58
    invoke-interface {p1}, Ljavax/transaction/xa/Xid;->getGlobalTransactionId()[B

    move-result-object p1

    if-eqz p1, :cond_6

    .line 60
    array-length v2, p1

    iget-object v3, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myGtrid:[B

    array-length v3, v3

    if-ne v2, v3, :cond_6

    .line 61
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 64
    aget-byte v4, p1, v3

    iget-object v5, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myGtrid:[B

    aget-byte v5, v5, v3

    if-eq v4, v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_5

    .line 69
    array-length p1, v0

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myBqual:[B

    array-length v2, v2

    if-ne p1, v2, :cond_5

    .line 70
    array-length p1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_4

    .line 73
    aget-byte v3, v0, v2

    iget-object v4, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myBqual:[B

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    return v1

    :cond_6
    return v1
.end method

.method public getBranchQualifier()[B
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myBqual:[B

    return-object v0
.end method

.method public getFormatId()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myFormatId:I

    return v0
.end method

.method public getGlobalTransactionId()[B
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myGtrid:[B

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 3

    monitor-enter p0

    .line 102
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->hash:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myGtrid:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 104
    iget v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->hash:I

    mul-int/lit8 v1, v1, 0x21

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->myGtrid:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->hash:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;->hash:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 101
    monitor-exit p0

    throw v0
.end method
