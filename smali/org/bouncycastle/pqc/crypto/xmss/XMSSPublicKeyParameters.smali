.class public final Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;
    }
.end annotation


# instance fields
.field private final params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

.field private final publicSeed:[B

.field private final root:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->access$000(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->access$100(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    add-int p1, v0, v0

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v2, p1, :cond_0

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    add-int/lit8 p1, v0, 0x0

    invoke-static {v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/text/ParseException;

    const-string v0, "public key has wrong size"

    invoke-direct {p1, v0, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->access$200(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)[B

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1

    if-ne v2, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "length of root must be equal to length of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-array v1, v0, [B

    :goto_1
    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->access$300(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)[B

    move-result-object p1

    if-eqz p1, :cond_5

    array-length v1, p1

    if-ne v1, v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "length of publicSeed must be equal to length of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-array p1, v0, [B

    goto :goto_0

    :goto_2
    return-void

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "params == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public getPublicSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v0

    add-int v1, v0, v0

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    add-int/2addr v0, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    return-object v1
.end method
