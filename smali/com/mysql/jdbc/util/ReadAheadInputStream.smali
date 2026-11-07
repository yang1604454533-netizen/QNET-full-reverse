.class public Lcom/mysql/jdbc/util/ReadAheadInputStream;
.super Ljava/io/InputStream;
.source "ReadAheadInputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# instance fields
.field private buf:[B

.field protected currentPosition:I

.field protected doDebug:Z

.field protected endOfCurrentData:I

.field protected log:Lcom/mysql/jdbc/log/Log;

.field private underlyingStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IZLcom/mysql/jdbc/log/Log;)V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->doDebug:Z

    .line 234
    iput-object p1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->underlyingStream:Ljava/io/InputStream;

    .line 235
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->buf:[B

    .line 236
    iput-boolean p3, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->doDebug:Z

    .line 237
    iput-object p4, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->log:Lcom/mysql/jdbc/log/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZLcom/mysql/jdbc/log/Log;)V
    .locals 1

    const/16 v0, 0x1000

    .line 230
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/mysql/jdbc/util/ReadAheadInputStream;-><init>(Ljava/io/InputStream;IZLcom/mysql/jdbc/log/Log;)V

    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->buf:[B

    if-eqz v0, :cond_0

    return-void

    .line 225
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fill(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/mysql/jdbc/util/ReadAheadInputStream;->checkClosed()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    .line 56
    iget v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    iput v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->endOfCurrentData:I

    .line 60
    iget-object v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->underlyingStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->buf:[B

    array-length v0, v0

    iget v2, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    sub-int/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 71
    :cond_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->doDebug:Z

    if-eqz v2, :cond_3

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ReadAheadInputStream.fill("

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), buffer_size="

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v3, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->buf:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", current_position="

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v3, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", need to read "

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v3, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->buf:[B

    array-length v3, v3

    iget v4, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    sub-int/2addr v3, v4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes to fill request,"

    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v1, :cond_1

    const-string p1, " underlying InputStream reports "

    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " total bytes available,"

    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, " attempting to read "

    .line 90
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes."

    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object p1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->log:Lcom/mysql/jdbc/log/Log;

    if-eqz p1, :cond_2

    .line 95
    iget-object p1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->log:Lcom/mysql/jdbc/log/Log;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_2
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->underlyingStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->buf:[B

    iget v2, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_4

    .line 104
    iget v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->endOfCurrentData:I

    :cond_4
    return-void
.end method

.method private readFromUnderlyingStreamIfNecessary([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/mysql/jdbc/util/ReadAheadInputStream;->checkClosed()V

    .line 111
    iget v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->endOfCurrentData:I

    iget v1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    sub-int/2addr v0, v1

    .line 113
    iget-boolean v1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->doDebug:Z

    if-eqz v1, :cond_2

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadAheadInputStream.readIfNecessary("

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gtz v0, :cond_0

    const-string v2, " not all data available in buffer, must read from stream"

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v2, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->buf:[B

    array-length v2, v2

    if-lt p3, v2, :cond_0

    const-string v2, ", amount requested > buffer, returning direct read() from stream"

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->log:Lcom/mysql/jdbc/log/Log;

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->log:Lcom/mysql/jdbc/log/Log;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    :cond_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-gtz v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->buf:[B

    array-length v0, v0

    if-lt p3, v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->underlyingStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    .line 144
    :cond_3
    invoke-direct {p0, p3}, Lcom/mysql/jdbc/util/ReadAheadInputStream;->fill(I)V

    .line 146
    iget v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->endOfCurrentData:I

    iget v1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    if-ge v0, p3, :cond_5

    move p3, v0

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->buf:[B

    iget v1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget p1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    return p3
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Lcom/mysql/jdbc/util/ReadAheadInputStream;->checkClosed()V

    .line 219
    iget-object v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->underlyingStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->endOfCurrentData:I

    iget v2, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->underlyingStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->underlyingStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iput-object v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->underlyingStream:Ljava/io/InputStream;

    .line 252
    iput-object v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->buf:[B

    .line 253
    iput-object v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->log:Lcom/mysql/jdbc/log/Log;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->underlyingStream:Ljava/io/InputStream;

    .line 252
    iput-object v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->buf:[B

    .line 253
    iput-object v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->log:Lcom/mysql/jdbc/log/Log;

    .line 251
    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/mysql/jdbc/util/ReadAheadInputStream;->checkClosed()V

    .line 205
    iget v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    iget v1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->endOfCurrentData:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 206
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/util/ReadAheadInputStream;->fill(I)V

    .line 207
    iget v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    iget v1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->endOfCurrentData:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->buf:[B

    iget v1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 164
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/util/ReadAheadInputStream;->checkClosed()V

    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    .line 165
    array-length v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v1

    or-int/2addr v0, v2

    if-ltz v0, :cond_4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 168
    monitor-exit p0

    return v0

    :cond_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 174
    :try_start_1
    invoke-direct {p0, p1, v1, v2}, Lcom/mysql/jdbc/util/ReadAheadInputStream;->readFromUnderlyingStreamIfNecessary([BII)I

    move-result v1

    if-gtz v1, :cond_1

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v1

    if-lt v0, p3, :cond_2

    goto :goto_0

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->underlyingStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v1, :cond_0

    .line 198
    :cond_3
    :goto_0
    monitor-exit p0

    return v0

    .line 166
    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 163
    monitor-exit p0

    throw p1
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Lcom/mysql/jdbc/util/ReadAheadInputStream;->checkClosed()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    .line 280
    :cond_0
    iget v2, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->endOfCurrentData:I

    iget v3, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    long-to-int v2, p1

    .line 284
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/util/ReadAheadInputStream;->fill(I)V

    .line 285
    iget v2, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->endOfCurrentData:I

    iget v3, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    return-wide v0

    :cond_1
    cmp-long v0, v2, p1

    if-gez v0, :cond_2

    move-wide p1, v2

    .line 292
    :cond_2
    iget v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/mysql/jdbc/util/ReadAheadInputStream;->currentPosition:I

    return-wide p1
.end method
