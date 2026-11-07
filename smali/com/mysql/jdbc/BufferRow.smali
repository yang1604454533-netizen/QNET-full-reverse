.class public Lcom/mysql/jdbc/BufferRow;
.super Lcom/mysql/jdbc/ResultSetRow;
.source "BufferRow.java"


# instance fields
.field private homePosition:I

.field private isBinaryEncoded:Z

.field private isNull:[Z

.field private lastRequestedIndex:I

.field private lastRequestedPos:I

.field private metadata:[Lcom/mysql/jdbc/Field;

.field private openStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private preNullBitmaskHomePosition:I

.field private rowFromServer:Lcom/mysql/jdbc/Buffer;


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;ZLcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 92
    invoke-direct {p0, p4}, Lcom/mysql/jdbc/ResultSetRow;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    const/4 p4, 0x0

    .line 55
    iput p4, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    .line 60
    iput p4, p0, Lcom/mysql/jdbc/BufferRow;->preNullBitmaskHomePosition:I

    const/4 p4, -0x1

    .line 66
    iput p4, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 94
    iput-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    .line 95
    iput-object p2, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    .line 96
    iput-boolean p3, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    .line 97
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p1

    iput p1, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    .line 98
    iget p1, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    iput p1, p0, Lcom/mysql/jdbc/BufferRow;->preNullBitmaskHomePosition:I

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/BufferRow;->setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;

    :cond_0
    return-void
.end method

.method private findAndSeekToOffset(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    if-nez v0, :cond_5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 130
    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 131
    iget p1, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    iput p1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    .line 132
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    return v0

    .line 137
    :cond_0
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    if-ne p1, v1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 140
    iget p1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    return p1

    .line 145
    :cond_1
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    if-le p1, v1, :cond_3

    .line 146
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    if-ltz v1, :cond_2

    .line 147
    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v2, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_0

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v2, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    :goto_0
    if-ge v0, p1, :cond_4

    .line 158
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenByteArray()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_4
    iput p1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 162
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p1

    iput p1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    .line 164
    iget p1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    return p1

    .line 167
    :cond_5
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffsetForBinaryEncoding(I)I

    move-result p1

    return p1
.end method

.method private findAndSeekToOffsetForBinaryEncoding(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 172
    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 173
    iget p1, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    iput p1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    .line 174
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    return v0

    .line 179
    :cond_0
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    if-ne p1, v1, :cond_1

    .line 180
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 182
    iget p1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    return p1

    .line 187
    :cond_1
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    if-le p1, v1, :cond_3

    .line 188
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    if-ltz v1, :cond_2

    .line 189
    iget v0, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    goto :goto_0

    .line 193
    :cond_2
    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    iput v1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v2, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_1

    .line 198
    :cond_3
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v2, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    :goto_1
    if-ge v0, p1, :cond_5

    .line 202
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_4

    goto/16 :goto_2

    .line 206
    :cond_4
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    .line 208
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.97"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MysqlIO.98"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "MysqlIO.99"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "MysqlIO.100"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v1, "S1000"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 240
    :pswitch_0
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenByteArray()V

    goto :goto_2

    .line 245
    :pswitch_1
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenByteArray()V

    goto :goto_2

    .line 228
    :pswitch_2
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_2

    .line 250
    :pswitch_3
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenByteArray()V

    goto :goto_2

    .line 236
    :pswitch_4
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_2

    .line 232
    :pswitch_5
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_2

    .line 224
    :pswitch_6
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_2

    .line 219
    :pswitch_7
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_2

    .line 214
    :pswitch_8
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_2

    .line 265
    :pswitch_9
    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenByteArray()V

    :goto_2
    :pswitch_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 277
    :cond_5
    iput p1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedIndex:I

    .line 278
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p1

    iput p1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    .line 280
    iget p1, p0, Lcom/mysql/jdbc/BufferRow;->lastRequestedPos:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf5
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private setupIsNullBitmask()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    if-eqz v0, :cond_0

    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    iget v1, p0, Lcom/mysql/jdbc/BufferRow;->preNullBitmaskHomePosition:I

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 654
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x8

    .line 656
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 659
    iget-object v4, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/BufferRow;->homePosition:I

    .line 664
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    const/4 v0, 0x4

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 669
    :goto_1
    iget-object v5, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 671
    iget-object v5, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    aget-byte v6, v1, v3

    and-int/2addr v6, v4

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    aput-boolean v6, v5, v0

    shl-int/lit8 v4, v4, 0x1

    and-int/lit16 v5, v4, 0xff

    if-nez v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public declared-synchronized closeOpenStreams()V
    .locals 2

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->openStreams:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->openStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 113
    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 116
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->openStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 106
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBinaryInputStream(I)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 285
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 287
    monitor-exit p0

    return-object v1

    .line 291
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 293
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v2

    .line 295
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 298
    monitor-exit p0

    return-object v1

    .line 301
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    long-to-int v2, v2

    invoke-direct {v0, v1, p1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 303
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->openStreams:Ljava/util/List;

    if-nez p1, :cond_2

    .line 304
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/mysql/jdbc/BufferRow;->openStreams:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 284
    monitor-exit p0

    throw p1
.end method

.method public getBytesSize()I
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    return v0
.end method

.method public getColumnValue(I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 312
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 314
    iget-boolean v0, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 315
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->readLenByteArray(I)[B

    move-result-object p1

    return-object p1

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    aget-boolean v0, v0, p1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return-object v2

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v0

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.97"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MysqlIO.98"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v5

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "MysqlIO.99"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "MysqlIO.100"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v1, "S1000"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 338
    :pswitch_0
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object p1

    return-object p1

    :pswitch_1
    return-object v2

    .line 344
    :pswitch_2
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object p1

    return-object p1

    .line 341
    :pswitch_3
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object p1

    return-object p1

    .line 335
    :pswitch_4
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object p1

    return-object p1

    .line 331
    :pswitch_5
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object p1

    return-object p1

    .line 327
    :pswitch_6
    new-array p1, v5, [B

    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v0

    aput-byte v0, p1, v1

    return-object p1

    .line 362
    :pswitch_7
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->readLenByteArray(I)[B

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf5
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf9
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getDateFast(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 683
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 687
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 689
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 691
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v6

    .line 693
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v5

    long-to-int v7, v0

    move-object v3, p0

    move v4, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-virtual/range {v3 .. v10}, Lcom/mysql/jdbc/BufferRow;->getDateFast(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getInt(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 375
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 377
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 379
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p1

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 385
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    long-to-int v0, v0

    add-int/2addr v0, p1

    invoke-static {v2, p1, v0}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 390
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 392
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 394
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p1

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 400
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    long-to-int v0, v0

    add-int/2addr v0, p1

    invoke-static {v2, p1, v0}, Lcom/mysql/jdbc/StringUtils;->getLong([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeDate(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 698
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 702
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 704
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 706
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v6

    .line 708
    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v5

    long-to-int v7, v0

    move-object v3, p0

    move v4, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-virtual/range {v3 .. v10}, Lcom/mysql/jdbc/BufferRow;->getNativeDate(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v12, p0

    .line 714
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 718
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 720
    iget-object v0, v12, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 722
    iget-object v2, v12, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    .line 724
    iget-object v2, v12, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    long-to-int v4, v0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lcom/mysql/jdbc/BufferRow;->getNativeDateTimeValue(I[BIILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNativeDouble(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 405
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 409
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 411
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p1

    .line 413
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mysql/jdbc/BufferRow;->getNativeDouble([BI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeFloat(I)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 418
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 422
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 424
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p1

    .line 426
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mysql/jdbc/BufferRow;->getNativeFloat([BI)F

    move-result p1

    return p1
.end method

.method public getNativeInt(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 431
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 435
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 437
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p1

    .line 439
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mysql/jdbc/BufferRow;->getNativeInt([BI)I

    move-result p1

    return p1
.end method

.method public getNativeLong(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 444
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 448
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 450
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p1

    .line 452
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mysql/jdbc/BufferRow;->getNativeLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeShort(I)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 457
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 461
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 463
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p1

    .line 465
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mysql/jdbc/BufferRow;->getNativeShort([BI)S

    move-result p1

    return p1
.end method

.method public getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v10, p0

    .line 731
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 735
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 737
    iget-object v0, v10, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 739
    iget-object v2, v10, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    .line 741
    iget-object v2, v10, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    long-to-int v4, v0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mysql/jdbc/BufferRow;->getNativeTime(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v9, p0

    .line 471
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 475
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 477
    iget-object v0, v9, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 479
    iget-object v2, v9, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    .line 481
    iget-object v3, v9, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v3

    long-to-int v4, v0

    move-object v0, p0

    move-object v1, v3

    move v3, v4

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/BufferRow;->getNativeTimestamp([BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getReader(I)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 486
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->getBinaryInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 493
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object p1, v2, p1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 495
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 497
    invoke-virtual {v0, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 499
    throw v0
.end method

.method public getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 505
    iget-boolean v0, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 511
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 513
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-nez p1, :cond_2

    const-string p1, ""

    return-object p1

    .line 525
    :cond_2
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v8

    .line 527
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v7

    long-to-int v9, v2

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v4 .. v9}, Lcom/mysql/jdbc/BufferRow;->getString(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;[BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTimeFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v10, p0

    .line 533
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 537
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 539
    iget-object v0, v10, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 541
    iget-object v2, v10, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    .line 543
    iget-object v2, v10, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    long-to-int v4, v0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mysql/jdbc/BufferRow;->getTimeFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v10, p0

    .line 549
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/BufferRow;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 553
    :cond_0
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 555
    iget-object v0, v10, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 557
    iget-object v2, v10, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    .line 559
    iget-object v2, v10, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    long-to-int v4, v0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mysql/jdbc/BufferRow;->getTimestampFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public isFloatingPointNumber(I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 564
    iget-boolean v0, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return v2

    :cond_0
    :pswitch_0
    return v1

    .line 576
    :cond_1
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 578
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v2

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    return v2

    .line 588
    :cond_3
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p1

    .line 589
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v0

    const/4 v5, 0x0

    :goto_0
    long-to-int v6, v3

    if-ge v5, v6, :cond_6

    add-int v6, p1, v5

    .line 592
    aget-byte v6, v0, v6

    int-to-char v6, v6

    const/16 v7, 0x65

    if-eq v6, v7, :cond_5

    const/16 v7, 0x45

    if-ne v6, v7, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v1

    :cond_6
    return v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 604
    iget-boolean v0, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    if-nez v0, :cond_1

    .line 605
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 607
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/BufferRow;->isNull:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public length(I)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 615
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/BufferRow;->findAndSeekToOffset(I)I

    .line 617
    iget-object p1, p0, Lcom/mysql/jdbc/BufferRow;->rowFromServer:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    return-wide v0
.end method

.method public setColumnValue(I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 628
    new-instance p1, Lcom/mysql/jdbc/OperationNotSupportedException;

    invoke-direct {p1}, Lcom/mysql/jdbc/OperationNotSupportedException;-><init>()V

    throw p1
.end method

.method public setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 633
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ResultSetRow;->setMetadata([Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetRow;

    .line 635
    iget-boolean p1, p0, Lcom/mysql/jdbc/BufferRow;->isBinaryEncoded:Z

    if-eqz p1, :cond_0

    .line 636
    invoke-direct {p0}, Lcom/mysql/jdbc/BufferRow;->setupIsNullBitmask()V

    :cond_0
    return-object p0
.end method
