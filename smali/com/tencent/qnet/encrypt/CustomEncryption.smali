.class public Lcom/tencent/qnet/encrypt/CustomEncryption;
.super Ljava/lang/Object;
.source "CustomEncryption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEncInfoSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_qnet_sign"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "%X%X"

    const/4 p2, 0x2

    .line 55
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/tencent/qnet/encrypt/CommonEncryption;->getCrc32(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p0}, Lcom/tencent/qnet/encrypt/CommonEncryption;->getCrc32(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, p2, v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAESKey()[B
    .locals 8

    const/16 v0, 0x28

    .line 15
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/16 v1, 0x10

    .line 23
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x39

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x25

    if-ge v2, v5, :cond_3

    const/16 v5, 0x1b

    const/16 v6, 0xa

    if-le v2, v6, :cond_1

    if-ge v2, v5, :cond_1

    .line 27
    rem-int/lit8 v7, v2, 0x2

    if-nez v7, :cond_0

    .line 28
    aget-byte v7, v0, v2

    xor-int/lit8 v7, v7, 0x19

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    goto :goto_1

    .line 30
    :cond_0
    aget-byte v7, v0, v2

    xor-int/lit8 v7, v7, 0x63

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 32
    :cond_1
    :goto_1
    aget-byte v7, v0, v2

    xor-int/2addr v3, v7

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 33
    aget-byte v3, v0, v2

    if-le v2, v6, :cond_2

    if-ge v2, v5, :cond_2

    .line 35
    aget-byte v5, v0, v2

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :array_0
    .array-data 1
        -0x19t
        0x48t
        0x6t
        0x29t
        0x24t
        0x2ct
        -0x72t
        -0x7t
        -0x16t
        -0xet
        0x70t
        -0x44t
        0x1bt
        0x74t
        0x1bt
        0x34t
        0x1at
        0x23t
        0x1ft
        0x6et
        0x15t
        0x2ft
        0x10t
        0x64t
        0x16t
        0x6at
        0x1et
        0x7ct
        0xdt
        -0x7dt
        -0x5ct
        0x6ct
        0x61t
        -0x22t
        -0x40t
        0x27t
        -0x5dt
        -0x68t
        -0x23t
        -0x7t
    .end array-data
.end method

.method public static getRandom20bytesSalt()Ljava/lang/String;
    .locals 5

    const-string v0, "abcdefghijklkopqrstuwxyzQWERTUYANBVDINHY!@#$%^&*()_+-=<>?,.ABCDREFGHJJKLAETGTGV"

    const-string v1, ""

    .line 45
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x14

    if-ge v3, v4, :cond_0

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
