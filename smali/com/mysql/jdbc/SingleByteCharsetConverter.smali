.class public Lcom/mysql/jdbc/SingleByteCharsetConverter;
.super Ljava/lang/Object;
.source "SingleByteCharsetConverter.java"


# static fields
.field private static final BYTE_RANGE:I = 0x100

.field private static final CONVERTER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/SingleByteCharsetConverter;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static allBytes:[B

.field private static unknownCharsMap:[B


# instance fields
.field private byteToChars:[C

.field private charToByteMap:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x100

    .line 37
    new-array v0, v0, [B

    sput-object v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->allBytes:[B

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->CONVERTER_MAP:Ljava/util/Map;

    const/4 v0, 0x0

    .line 40
    new-array v1, v0, [B

    sput-object v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->EMPTY_BYTE_ARRAY:[B

    const/high16 v1, 0x10000

    .line 44
    new-array v1, v1, [B

    sput-object v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->unknownCharsMap:[B

    const/16 v1, -0x80

    :goto_0
    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    .line 48
    sget-object v2, Lcom/mysql/jdbc/SingleByteCharsetConverter;->allBytes:[B

    add-int/lit16 v3, v1, 0x80

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    :goto_1
    sget-object v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->unknownCharsMap:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 52
    sget-object v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->unknownCharsMap:[B

    const/16 v2, 0x3f

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 121
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->byteToChars:[C

    const/high16 v1, 0x10000

    .line 123
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    .line 134
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/mysql/jdbc/SingleByteCharsetConverter;->allBytes:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 135
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    .line 137
    sget-object v2, Lcom/mysql/jdbc/SingleByteCharsetConverter;->unknownCharsMap:[B

    iget-object v4, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    iget-object v5, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    array-length v5, v5

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v3, v0, :cond_0

    if-ge v3, p1, :cond_0

    .line 140
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 141
    iget-object v4, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->byteToChars:[C

    aput-char v2, v4, v3

    .line 142
    iget-object v4, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    sget-object v5, Lcom/mysql/jdbc/SingleByteCharsetConverter;->allBytes:[B

    aget-byte v5, v5, v3

    aput-byte v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    const-class p1, Lcom/mysql/jdbc/SingleByteCharsetConverter;

    monitor-enter p1

    .line 68
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->CONVERTER_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;

    if-nez v0, :cond_0

    .line 71
    invoke-static {p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->initCharset(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p0

    .line 67
    monitor-exit p1

    throw p0
.end method

.method public static initCharset(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    :try_start_0
    invoke-static {p0}, Lcom/mysql/jdbc/CharsetMapping;->isMultibyteCharset(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/SingleByteCharsetConverter;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;-><init>(Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->CONVERTER_MAP:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 95
    throw v0
.end method

.method public static toStringDefaultEncoding([BII)Ljava/lang/String;
    .locals 1

    .line 118
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public final toBytes(Ljava/lang/String;)[B
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 211
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 212
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 215
    iget-object v3, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final toBytes(Ljava/lang/String;II)[B
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p3, :cond_1

    .line 261
    sget-object p1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    .line 264
    :cond_1
    new-array v0, p3, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    add-int v2, v1, p2

    .line 267
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 268
    iget-object v3, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-byte v2, v3, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final toBytes([C)[B
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 151
    :cond_0
    array-length v0, p1

    .line 152
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 155
    iget-object v3, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-char v4, p1, v2

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final toBytes([CII)[B
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p3, :cond_1

    .line 187
    sget-object p1, Lcom/mysql/jdbc/SingleByteCharsetConverter;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    .line 190
    :cond_1
    new-array v0, p3, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 193
    iget-object v2, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    add-int v3, v1, p2

    aget-char v3, p1, v3

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final toBytesWrapped(Ljava/lang/String;CC)[B
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 226
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    .line 230
    new-array v2, v1, [B

    .line 232
    iget-object v3, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-byte p2, v3, p2

    const/4 v3, 0x0

    aput-byte p2, v2, v3

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 p2, v3, 0x1

    .line 235
    iget-object v4, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v4, v3

    aput-byte v3, v2, p2

    move v3, p2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 238
    iget-object p1, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-byte p1, p1, p3

    aput-byte p1, v2, v1

    return-object v2
.end method

.method public final toBytesWrapped([CCC)[B
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 166
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    .line 167
    array-length v1, p1

    .line 169
    new-array v2, v0, [B

    .line 170
    iget-object v3, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-byte p2, v3, p2

    const/4 v3, 0x0

    aput-byte p2, v2, v3

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 p2, v3, 0x1

    .line 173
    iget-object v4, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-char v3, p1, v3

    aget-byte v3, v4, v3

    aput-byte v3, v2, p2

    move v3, p2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 176
    iget-object p1, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->charToByteMap:[B

    aget-byte p1, p1, p3

    aput-byte p1, v2, v0

    return-object v2
.end method

.method public final toString([B)Ljava/lang/String;
    .locals 2

    .line 283
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toString([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString([BII)Ljava/lang/String;
    .locals 4

    .line 299
    new-array v0, p3, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    .line 303
    iget-object v2, p0, Lcom/mysql/jdbc/SingleByteCharsetConverter;->byteToChars:[C

    aget-byte v3, p1, p2

    add-int/lit16 v3, v3, 0x80

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method
