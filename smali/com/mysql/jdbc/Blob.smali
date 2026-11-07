.class public Lcom/mysql/jdbc/Blob;
.super Ljava/lang/Object;
.source "Blob.java"

# interfaces
.implements Ljava/sql/Blob;
.implements Lcom/mysql/jdbc/OutputStreamWatcher;


# instance fields
.field private binaryData:[B

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private isClosed:Z


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/mysql/jdbc/Blob;->isClosed:Z

    .line 56
    sget-object v0, Lcom/mysql/jdbc/Constants;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/Blob;->setBinaryData([B)V

    .line 57
    iput-object p1, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-void
.end method

.method constructor <init>([BLcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/mysql/jdbc/Blob;->isClosed:Z

    .line 66
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/Blob;->setBinaryData([B)V

    .line 67
    iput-object p2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-void
.end method

.method constructor <init>([BLcom/mysql/jdbc/ResultSetInternalMethods;I)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 48
    iput-object p2, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    const/4 p2, 0x0

    .line 49
    iput-boolean p2, p0, Lcom/mysql/jdbc/Blob;->isClosed:Z

    .line 78
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/Blob;->setBinaryData([B)V

    return-void
.end method

.method private declared-synchronized checkClosed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 359
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/Blob;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 362
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Invalid operation on closed BLOB"

    const-string v1, "S1009"

    .line 360
    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 358
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getBinaryData()[B
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setBinaryData([B)V
    .locals 0

    monitor-enter p0

    .line 181
    :try_start_0
    iput-object p1, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 180
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized free()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 312
    :try_start_0
    iput-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lcom/mysql/jdbc/Blob;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 311
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBinaryStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 96
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->getBinaryData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 93
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBinaryStream(JJ)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 337
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    sub-long/2addr p1, v0

    .line 345
    iget-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    add-long v0, p1, p3

    .line 350
    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 355
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->getBinaryData()[B

    move-result-object v1

    long-to-int p1, p1

    long-to-int p2, p3

    invoke-direct {v0, v1, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string p1, "\"pos\" + \"length\" arguments can not be larger than the BLOB\'s length."

    const-string p2, "S1009"

    .line 351
    iget-object p3, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "\"pos\" argument can not be larger than the BLOB\'s length."

    const-string p2, "S1009"

    .line 346
    iget-object p3, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_2
    const-string p1, "\"pos\" argument can not be < 1."

    const-string p2, "S1009"

    .line 340
    iget-object p3, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 336
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBytes(JI)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    sub-long/2addr p1, v0

    .line 122
    iget-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    int-to-long v0, p3

    add-long/2addr v0, p1

    .line 127
    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 132
    new-array v0, p3, [B

    .line 133
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->getBinaryData()[B

    move-result-object v1

    long-to-int p1, p1

    const/4 p2, 0x0

    invoke-static {v1, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string p1, "\"pos\" + \"length\" arguments can not be larger than the BLOB\'s length."

    const-string p2, "S1009"

    .line 128
    iget-object p3, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "\"pos\" argument can not be larger than the BLOB\'s length."

    const-string p2, "S1009"

    .line 123
    iget-object p3, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_2
    const-string p1, "Blob.2"

    .line 117
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    iget-object p3, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 113
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 150
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->getBinaryData()[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 147
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized position(Ljava/sql/Blob;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    const-wide/16 v0, 0x0

    .line 177
    invoke-interface {p1}, Ljava/sql/Blob;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Ljava/sql/Blob;->getBytes(JI)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/Blob;->position([BJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 174
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized position([BJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string p1, "Not implemented"

    .line 157
    iget-object p2, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBinaryStream(J)Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 188
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 194
    new-instance v2, Lcom/mysql/jdbc/WatchableOutputStream;

    invoke-direct {v2}, Lcom/mysql/jdbc/WatchableOutputStream;-><init>()V

    .line 195
    invoke-virtual {v2, p0}, Lcom/mysql/jdbc/WatchableOutputStream;->setWatcher(Lcom/mysql/jdbc/OutputStreamWatcher;)V

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 198
    iget-object v3, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    const/4 v4, 0x0

    sub-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {v2, v3, v4, p1}, Lcom/mysql/jdbc/WatchableOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_0
    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_1
    const-string p1, "Blob.0"

    .line 191
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    iget-object v0, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 187
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBytes(J[B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 208
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    const/4 v4, 0x0

    .line 210
    array-length v5, p3

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mysql/jdbc/Blob;->setBytes(J[BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 207
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBytes(J[BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 217
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/Blob;->setBinaryStream(J)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 222
    :try_start_1
    invoke-virtual {p1, p3, p4, p5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 236
    :catch_0
    monitor-exit p0

    return p5

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    :try_start_3
    const-string p3, "Blob.1"

    .line 224
    invoke-static {p3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "S1000"

    iget-object p5, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p3, p4, p5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p3

    .line 225
    invoke-virtual {p3, p2}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 227
    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 229
    :catch_2
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 216
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized streamClosed(Lcom/mysql/jdbc/WatchableOutputStream;)V
    .locals 3

    monitor-enter p0

    .line 250
    :try_start_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableOutputStream;->size()I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    iget-object v2, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/mysql/jdbc/WatchableOutputStream;->write([BII)V

    .line 256
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 249
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized streamClosed([B)V
    .locals 0

    monitor-enter p0

    .line 243
    :try_start_0
    iput-object p1, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 242
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized truncate(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 276
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->checkClosed()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    long-to-int p1, p1

    .line 289
    new-array p2, p1, [B

    .line 290
    invoke-direct {p0}, Lcom/mysql/jdbc/Blob;->getBinaryData()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    iput-object p2, p0, Lcom/mysql/jdbc/Blob;->binaryData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "\"len\" argument can not be larger than the BLOB\'s length."

    const-string p2, "S1009"

    .line 283
    iget-object v0, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "\"len\" argument can not be < 1."

    const-string p2, "S1009"

    .line 279
    iget-object v0, p0, Lcom/mysql/jdbc/Blob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 275
    monitor-exit p0

    throw p1
.end method
