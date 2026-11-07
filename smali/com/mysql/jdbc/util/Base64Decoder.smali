.class public Lcom/mysql/jdbc/util/Base64Decoder;
.super Ljava/lang/Object;
.source "Base64Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;
    }
.end annotation


# static fields
.field private static decoderMap:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x80

    .line 37
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x2t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BII)[B
    .locals 12

    .line 62
    new-instance v0, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;

    invoke-direct {v0, p1}, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;-><init>(I)V

    const/4 p1, 0x4

    .line 63
    new-array v1, p1, [B

    mul-int/lit8 v2, p2, 0x3

    .line 65
    div-int/2addr v2, p1

    .line 66
    new-array v2, v2, [B

    .line 69
    iget v3, v0, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    add-int/2addr v3, p2

    const/4 p2, 0x1

    sub-int/2addr v3, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 70
    :cond_0
    :goto_0
    iget v6, v0, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    if-gt v6, v3, :cond_3

    .line 71
    sget-object v6, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    invoke-static {p0, v0, v3}, Lcom/mysql/jdbc/util/Base64Decoder;->getNextValidByte([BLcom/mysql/jdbc/util/Base64Decoder$IntWrapper;I)B

    move-result v7

    aget-byte v6, v6, v7

    aput-byte v6, v1, v4

    .line 72
    sget-object v6, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    invoke-static {p0, v0, v3}, Lcom/mysql/jdbc/util/Base64Decoder;->getNextValidByte([BLcom/mysql/jdbc/util/Base64Decoder$IntWrapper;I)B

    move-result v7

    aget-byte v6, v6, v7

    aput-byte v6, v1, p2

    .line 73
    sget-object v6, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    invoke-static {p0, v0, v3}, Lcom/mysql/jdbc/util/Base64Decoder;->getNextValidByte([BLcom/mysql/jdbc/util/Base64Decoder$IntWrapper;I)B

    move-result v7

    aget-byte v6, v6, v7

    const/4 v7, 0x2

    aput-byte v6, v1, v7

    .line 74
    sget-object v6, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    invoke-static {p0, v0, v3}, Lcom/mysql/jdbc/util/Base64Decoder;->getNextValidByte([BLcom/mysql/jdbc/util/Base64Decoder$IntWrapper;I)B

    move-result v8

    aget-byte v6, v6, v8

    const/4 v8, 0x3

    aput-byte v6, v1, v8

    .line 76
    aget-byte v6, v1, p2

    const/4 v9, -0x2

    if-eq v6, v9, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 77
    aget-byte v10, v1, v4

    shl-int/2addr v10, v7

    aget-byte v11, v1, p2

    ushr-int/2addr v11, p1

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v2, v5

    move v5, v6

    .line 79
    :cond_1
    aget-byte v6, v1, v7

    if-eq v6, v9, :cond_2

    add-int/lit8 v6, v5, 0x1

    .line 80
    aget-byte v10, v1, p2

    and-int/lit8 v10, v10, 0xf

    shl-int/2addr v10, p1

    aget-byte v11, v1, v7

    ushr-int/2addr v11, v7

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v2, v5

    move v5, v6

    .line 82
    :cond_2
    aget-byte v6, v1, v8

    if-eq v6, v9, :cond_0

    add-int/lit8 v6, v5, 0x1

    .line 83
    aget-byte v7, v1, v7

    and-int/2addr v7, v8

    shl-int/lit8 v7, v7, 0x6

    aget-byte v8, v1, v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v5

    move v5, v6

    goto :goto_0

    .line 87
    :cond_3
    new-array p0, v5, [B

    .line 88
    invoke-static {v2, v4, p0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private static getNextValidByte([BLcom/mysql/jdbc/util/Base64Decoder$IntWrapper;I)B
    .locals 2

    .line 51
    :goto_0
    iget v0, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    if-gt v0, p2, :cond_1

    .line 52
    iget v0, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    aget-byte v0, p0, v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/mysql/jdbc/util/Base64Decoder;->decoderMap:[B

    iget v1, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    aget-byte v1, p0, v1

    aget-byte v0, v0, v1

    if-ltz v0, :cond_0

    .line 53
    iget p2, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    aget-byte p0, p0, p2

    return p0

    .line 55
    :cond_0
    iget v0, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/mysql/jdbc/util/Base64Decoder$IntWrapper;->value:I

    goto :goto_0

    :cond_1
    const/16 p0, 0x3d

    return p0
.end method
