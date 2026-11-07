.class public Lcom/mysql/jdbc/Security;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static final PVERSION41_CHAR:C = '*'

.field private static final SHA1_HASH_SIZE:I = 0x14


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static charVal(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    goto :goto_0

    :cond_1
    add-int/lit8 p0, p0, -0x61

    :goto_0
    add-int/lit8 p0, p0, 0xa

    :goto_1
    return p0
.end method

.method static createKeyFromOldPassword(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 71
    invoke-static {p0}, Lcom/mysql/jdbc/Security;->makeScrambledPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-static {p0}, Lcom/mysql/jdbc/Security;->getSaltFromPassword(Ljava/lang/String;)[I

    move-result-object p0

    const/4 v0, 0x0

    .line 77
    invoke-static {p0, v0}, Lcom/mysql/jdbc/Security;->getBinaryPassword([IZ)[B

    move-result-object p0

    return-object p0
.end method

.method static getBinaryPassword([IZ)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 90
    new-array v0, v0, [B

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 96
    aget v4, p0, v3

    move v5, v4

    move v4, p1

    const/4 p1, 0x3

    :goto_1
    if-ltz p1, :cond_0

    add-int/lit8 v6, v4, 0x1

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    .line 99
    aput-byte v7, v0, v4

    shr-int/2addr v5, v2

    add-int/lit8 p1, p1, -0x1

    move v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move p1, v4

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x2

    if-ge p1, v5, :cond_4

    .line 110
    aget v5, p0, p1

    move v6, v5

    const/4 v5, 0x3

    :goto_3
    if-ltz v5, :cond_3

    add-int v7, v5, v4

    .line 113
    rem-int/lit16 v8, v6, 0x100

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    shr-int/2addr v6, v2

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    const-string p0, "SHA-1"

    .line 120
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 122
    invoke-virtual {p0, v0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 124
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method private static getSaltFromPassword(Ljava/lang/String;)[I
    .locals 8

    const/4 v0, 0x6

    .line 128
    new-array v0, v0, [I

    if-eqz p0, :cond_5

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 134
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_2

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 136
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/mysql/jdbc/Security;->charVal(C)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 149
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    move v6, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    const/16 v7, 0x8

    if-ge v3, v7, :cond_3

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v7, v6, 0x1

    .line 155
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/mysql/jdbc/Security;->charVal(C)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    move v6, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v4, 0x1

    .line 158
    aput v5, v0, v4

    move v4, v3

    move v3, v6

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    return-object v0
.end method

.method private static longToHex(J)Ljava/lang/String;
    .locals 3

    .line 165
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ge p1, v1, :cond_1

    sub-int/2addr v1, p1

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_0

    const-string v2, "0"

    .line 174
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 182
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static makeScrambledPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 199
    invoke-static {p0}, Lcom/mysql/jdbc/Util;->hashPre41Password(Ljava/lang/String;)[J

    move-result-object p0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 202
    aget-wide v1, p0, v1

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Security;->longToHex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 203
    aget-wide v1, p0, v1

    invoke-static {v1, v2}, Lcom/mysql/jdbc/Security;->longToHex(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static passwordHashStage1(Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "SHA-1"

    .line 244
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 250
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 256
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method static passwordHashStage2([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "SHA-1"

    .line 276
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 279
    invoke-virtual {v0, p1, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    const/16 p1, 0x14

    .line 281
    invoke-virtual {v0, p0, v1, p1}, Ljava/security/MessageDigest;->update([BII)V

    .line 283
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method public static scramble411(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "SHA-1"

    .line 304
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 306
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 308
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 310
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    .line 311
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    const-string v1, "ASCII"

    .line 313
    invoke-static {p1, v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 314
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 315
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 317
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 319
    array-length p2, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_2

    .line 322
    aget-byte v1, p1, v0

    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object p1
.end method

.method public static xorString([B[B[BI)V
    .locals 4

    .line 224
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    .line 227
    aget-byte v2, p0, v1

    rem-int v3, v1, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
