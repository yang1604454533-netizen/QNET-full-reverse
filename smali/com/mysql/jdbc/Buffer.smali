.class public Lcom/mysql/jdbc/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# static fields
.field static final MAX_BYTES_TO_DUMP:I = 0x200

.field static final NO_LENGTH_LIMIT:I = -0x1

.field static final NULL_LENGTH:J = -0x1L

.field public static final TYPE_ID_AUTH_SWITCH:S = 0xfes

.field public static final TYPE_ID_EOF:S = 0xfes

.field public static final TYPE_ID_ERROR:S = 0xffs

.field public static final TYPE_ID_LOCAL_INFILE:S = 0xfbs

.field public static final TYPE_ID_OK:S


# instance fields
.field private bufLength:I

.field private byteBuffer:[B

.field private position:I

.field protected wasMultiPacket:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/mysql/jdbc/Buffer;->bufLength:I

    .line 44
    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 46
    iput-boolean v0, p0, Lcom/mysql/jdbc/Buffer;->wasMultiPacket:Z

    .line 62
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 63
    iget-object p1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    const/4 p1, 0x4

    .line 64
    iput p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/mysql/jdbc/Buffer;->bufLength:I

    .line 44
    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 46
    iput-boolean v0, p0, Lcom/mysql/jdbc/Buffer;->wasMultiPacket:Z

    .line 57
    iput-object p1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 58
    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    return-void
.end method


# virtual methods
.method final clear()V
    .locals 1

    const/4 v0, 0x4

    .line 68
    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return-void
.end method

.method final dump(I)Ljava/lang/String;
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    if-le p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result p1

    :cond_1
    invoke-static {v0, p1}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final dump()V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    return-void
.end method

.method final dumpClampedBytes(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x200

    if-ge p1, v0, :cond_0

    move v0, p1

    :cond_0
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    if-le v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-static {v1, v2}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v1

    if-ge v0, p1, :cond_3

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ....(packet exceeds max. dump length)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method final dumpHeader()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 94
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final dumpNBytes(II)V
    .locals 5

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 108
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v2

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_1

    .line 117
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "."

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v2, " "

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method final ensureCapacity(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 129
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 130
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v0, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 141
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v1, v1

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v0, v0

    int-to-double v4, p1

    mul-double v4, v4, v2

    double-to-int v1, v4

    add-int/2addr v0, v1

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 146
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v0, v0

    add-int/2addr v0, p1

    .line 149
    :cond_2
    new-array p1, v0, [B

    .line 151
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iput-object p1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 153
    iget-object p1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public fastSkipLenByteArray()V
    .locals 4

    .line 172
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public fastSkipLenString()I
    .locals 4

    .line 164
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    .line 166
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    long-to-int v0, v0

    return v0
.end method

.method public getBufLength()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->bufLength:I

    return v0
.end method

.method protected final getBufferSource()[B
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    return-object v0
.end method

.method public getByteBuffer()[B
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    return-object v0
.end method

.method final getBytes(I)[B
    .locals 4

    .line 199
    new-array v0, p1, [B

    .line 200
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return-object v0
.end method

.method getBytes(II)[B
    .locals 3

    .line 212
    new-array v0, p2, [B

    .line 213
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method getCapacity()I
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    array-length v0, v0

    return v0
.end method

.method public getNioBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteArrayBuffer.0"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPosition()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return v0
.end method

.method final isAuthMethodSwitchRequestPacket()Z
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method final isEOFPacket()Z
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method final isOKPacket()Z
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method final isRawPacket()Z
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method final isResultSetOKPacket()Z
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    const v2, 0xffffff

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method final newReadLength()J
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    int-to-long v0, v0

    return-wide v0

    .line 269
    :pswitch_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongLong()J

    move-result-wide v0

    return-wide v0

    .line 266
    :pswitch_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongInt()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 263
    :pswitch_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_3
    const-wide/16 v0, 0x0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final readByte()B
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v1

    return v0
.end method

.method final readByte(I)B
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method final readFieldLength()J
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    int-to-long v0, v0

    return-wide v0

    .line 298
    :pswitch_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongLong()J

    move-result-wide v0

    return-wide v0

    .line 295
    :pswitch_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongInt()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 292
    :pswitch_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_3
    const-wide/16 v0, -0x1

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final readInt()I
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 308
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method final readIntAsLong()I
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 314
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method final readLenByteArray(I)[B
    .locals 4

    .line 318
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 325
    sget-object p1, Lcom/mysql/jdbc/Constants;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    .line 328
    :cond_1
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    long-to-int p1, v0

    .line 330
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object p1

    return-object p1
.end method

.method final readLength()J
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    int-to-long v0, v0

    return-wide v0

    .line 347
    :pswitch_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0

    .line 344
    :pswitch_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongInt()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 341
    :pswitch_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_3
    const-wide/16 v0, 0x0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final readLong()J
    .locals 7

    .line 355
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 357
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    iget v5, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v3, v5

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    const/16 v0, 0x18

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method final readLongInt()I
    .locals 4

    .line 362
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 364
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method final readLongLong()J
    .locals 6

    .line 368
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 370
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x28

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    const/16 v5, 0x30

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    iget v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    const/16 v0, 0x38

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 4

    .line 402
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 404
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 406
    iget-object v3, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/StringUtils;->toString([BII)Ljava/lang/String;

    move-result-object v0

    .line 412
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return-object v0
.end method

.method final readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 425
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    .line 427
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 429
    iget-object v3, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {v0, v1, v2, p1}, Lcom/mysql/jdbc/StringUtils;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    iget p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 437
    :catch_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteArrayBuffer.1"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    :goto_1
    iget p2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr p2, v2

    iput p2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    throw p1
.end method

.method final readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 448
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr v0, p3

    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {v0, v1, p3, p1}, Lcom/mysql/jdbc/StringUtils;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    iget p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 455
    :catch_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteArrayBuffer.1"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    :goto_0
    iget p2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    throw p1

    :cond_0
    const-string p1, "ByteArrayBuffer.2"

    .line 449
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "S1009"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method final readnBytes()I
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v1

    const/16 v1, 0xff

    and-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    return v1

    .line 389
    :pswitch_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 386
    :pswitch_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readLongInt()I

    move-result v0

    return v0

    .line 383
    :pswitch_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    return v0

    .line 380
    :pswitch_3
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aget-byte v0, v0, v2

    and-int/2addr v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBufLength(I)V
    .locals 0

    .line 463
    iput p1, p0, Lcom/mysql/jdbc/Buffer;->bufLength:I

    return-void
.end method

.method public setByteBuffer([B)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 483
    iput p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return-void
.end method

.method public setWasMultiPacket(Z)V
    .locals 0

    .line 493
    iput-boolean p1, p0, Lcom/mysql/jdbc/Buffer;->wasMultiPacket:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->dumpClampedBytes(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSuperString()Ljava/lang/String;
    .locals 1

    .line 502
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasMultiPacket()Z
    .locals 1

    .line 511
    iget-boolean v0, p0, Lcom/mysql/jdbc/Buffer;->wasMultiPacket:Z

    return v0
.end method

.method public final writeByte(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 515
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 517
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final writeBytesNoNull([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 522
    array-length v0, p1

    .line 523
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 524
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    iget p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return-void
.end method

.method final writeBytesNoNull([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 530
    invoke-virtual {p0, p3}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 531
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 532
    iget p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return-void
.end method

.method final writeDouble(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 536
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    .line 537
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/Buffer;->writeLongLong(J)V

    return-void
.end method

.method final writeFieldLength(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, 0xfb

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 542
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x10000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x3

    .line 544
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    const/4 v0, -0x4

    .line 545
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    long-to-int p1, p1

    .line 546
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    const/4 v0, 0x4

    .line 548
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    const/4 v0, -0x3

    .line 549
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    long-to-int p1, p1

    .line 550
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    .line 552
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    const/4 v0, -0x2

    .line 553
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 554
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/Buffer;->writeLongLong(J)V

    :goto_0
    return-void
.end method

.method final writeFloat(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 559
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 561
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 562
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 563
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 564
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 565
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 566
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method final writeInt(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 570
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 572
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 573
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 574
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method final writeLenBytes([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 579
    array-length v0, p1

    add-int/lit8 v1, v0, 0x9

    .line 580
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    int-to-long v1, v0

    .line 581
    invoke-virtual {p0, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeFieldLength(J)V

    .line 582
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    iget p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return-void
.end method

.method final writeLenString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;ZLcom/mysql/jdbc/MySQLConnection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 592
    invoke-virtual {p4, p1}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    .line 594
    :cond_0
    invoke-interface {p6}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p5

    move-object v4, p6

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object p1

    .line 597
    :goto_0
    array-length p2, p1

    add-int/lit8 p3, p2, 0x9

    .line 598
    invoke-virtual {p0, p3}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    int-to-long p3, p2

    .line 599
    invoke-virtual {p0, p3, p4}, Lcom/mysql/jdbc/Buffer;->writeFieldLength(J)V

    const/4 p3, 0x0

    .line 600
    iget-object p4, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget p5, p0, Lcom/mysql/jdbc/Buffer;->position:I

    invoke-static {p1, p3, p4, p5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    iget p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return-void
.end method

.method final writeLong(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 605
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 607
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 608
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 609
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x8

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 610
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 611
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x18

    ushr-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method final writeLongInt(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 615
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 616
    iget-object v0, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 617
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 618
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 619
    iget v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method final writeLongLong(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 623
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 624
    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    .line 625
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const-wide/16 v3, 0xff

    and-long/2addr v3, p1

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 626
    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    ushr-long v3, p1, v0

    long-to-int v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 627
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 628
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 629
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 630
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x28

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 631
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x30

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 632
    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/16 v2, 0x38

    ushr-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void
.end method

.method final writeString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 637
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 638
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;)V

    .line 639
    iget-object p1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v0, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    return-void
.end method

.method final writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 644
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p2

    move-object v6, p3

    .line 646
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    iget-object p1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget p2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/4 p3, 0x0

    aput-byte p3, p1, p2

    return-void

    :catch_0
    move-exception p1

    .line 648
    new-instance p2, Ljava/sql/SQLException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "S1000"

    invoke-direct {p2, p1, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2
.end method

.method final writeStringNoNull(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 656
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    .line 657
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 658
    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v1, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget v2, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    iget p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return-void
.end method

.method final writeStringNoNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 670
    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object p1

    .line 672
    array-length p2, p1

    .line 673
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    .line 674
    iget-object p3, p0, Lcom/mysql/jdbc/Buffer;->byteBuffer:[B

    iget p4, p0, Lcom/mysql/jdbc/Buffer;->position:I

    const/4 p5, 0x0

    invoke-static {p1, p5, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    iget p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/mysql/jdbc/Buffer;->position:I

    return-void
.end method
