.class public final Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;
    }
.end annotation


# instance fields
.field private final bdsState:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

.field private final index:I

.field private final params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

.field private final publicSeed:[B

.field private final root:[B

.field private final secretKeyPRF:[B

.field private final secretKeySeed:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$000(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$100(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$200(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v4

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->index:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->index:I

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->isIndexValid(IJ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeySeed:[B

    add-int/2addr v2, v0

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeyPRF:[B

    add-int/2addr v2, v0

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->publicSeed:[B

    add-int/2addr v2, v0

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->root:[B

    add-int/2addr v2, v0

    array-length v0, v1

    sub-int/2addr v0, v2

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$200(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->setXMSS(Lorg/bouncycastle/pqc/crypto/xmss/XMSS;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->validate()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->bdsState:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/text/ParseException;

    const-string v0, "index out of bounds"

    invoke-direct {p1, v0, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "xmss == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$300(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->index:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$400(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)[B

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    if-ne v2, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of secretKeySeed needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-array v1, v0, [B

    :goto_0
    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeySeed:[B

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$500(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)[B

    move-result-object v1

    if-eqz v1, :cond_6

    array-length v2, v1

    if-ne v2, v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of secretKeyPRF needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-array v1, v0, [B

    :goto_1
    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeyPRF:[B

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$600(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)[B

    move-result-object v1

    if-eqz v1, :cond_8

    array-length v2, v1

    if-ne v2, v0, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of publicSeed needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-array v1, v0, [B

    :goto_2
    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->publicSeed:[B

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$700(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)[B

    move-result-object v1

    if-eqz v1, :cond_a

    array-length v2, v1

    if-ne v2, v0, :cond_9

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->root:[B

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of root needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->root:[B

    :goto_3
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$800(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object p1

    if-eqz p1, :cond_b

    :goto_4
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->bdsState:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    goto :goto_5

    :cond_b
    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSS;)V

    goto :goto_4

    :goto_5
    return-void

    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "params == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public getBDSState()Lorg/bouncycastle/pqc/crypto/xmss/BDS;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->bdsState:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->index:I

    return v0
.end method

.method public getPublicSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->publicSeed:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->root:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSecretKeyPRF()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeyPRF:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSecretKeySeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeySeed:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v0

    add-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    new-array v1, v1, [B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->index:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->intToBytesBigEndianOffset([BII)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeySeed:[B

    const/4 v4, 0x4

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    add-int/2addr v4, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeyPRF:[B

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    add-int/2addr v4, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->publicSeed:[B

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    add-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->root:[B

    invoke-static {v1, v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->bdsState:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->serialize(Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    new-array v2, v2, [[B

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->concat([[B)[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "error serializing bds state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
