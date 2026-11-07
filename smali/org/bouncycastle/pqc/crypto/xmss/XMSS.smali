.class public Lorg/bouncycastle/pqc/crypto/xmss/XMSS;
.super Ljava/lang/Object;


# instance fields
.field private khf:Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

.field private params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

.field private privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

.field private prng:Ljava/security/SecureRandom;

.field private publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

.field private wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getPRNG()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->prng:Ljava/security/SecureRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getKhf()Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->khf:Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    :try_start_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSS;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withBDSState(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "params == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private generatePrivateKey()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->prng:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v2, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->prng:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v0, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->prng:Ljava/security/SecureRandom;

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_0
    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getBDSState()Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withBDSState(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public exportPrivateKey()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public exportPublicKey()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public generateKeys()V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->generatePrivateKey()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getBDSState()Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->initialize(Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getSecretKeyPRF()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getBDSState()Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withBDSState(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getPublicSeed()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected getBDSState()Lorg/bouncycastle/pqc/crypto/xmss/BDS;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getBDSState()Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getIndex()I

    move-result v0

    return v0
.end method

.method protected getKhf()Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->khf:Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    return-object v0
.end method

.method public getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    return-object v0
.end method

.method public getPublicSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getRoot()[B

    move-result-object v0

    return-object v0
.end method

.method protected getRootNodeFromSignature([BLorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;
    .locals 9

    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v1

    if-ne v0, v1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getOTSAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLTreeAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getOTSAddress()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->getWOTSPlusSignature()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p3}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getPublicKeyFromSignature([BLorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;

    move-result-object p1

    const/4 p3, 0x2

    new-array v2, p3, [Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->lTree(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v3

    if-ge p1, v3, :cond_1

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getKeyAndMask()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getIndex()I

    move-result v3

    const/4 v4, 0x1

    shl-int v5, v4, p1

    div-int/2addr v3, v5

    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    rem-double/2addr v5, v7

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-nez v3, :cond_0

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v5

    div-int/2addr v5, p3

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getKeyAndMask()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    aget-object v3, v2, v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->getAuthPath()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {p0, v3, v5, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->randomizeHash(Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    aget-object v6, v2, v4

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    aput-object v3, v2, v4

    goto :goto_1

    :cond_0
    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v5

    sub-int/2addr v5, v4

    div-int/2addr v5, p3

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getKeyAndMask()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->getAuthPath()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    aget-object v5, v2, v0

    invoke-virtual {p0, v3, v5, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->randomizeHash(Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    aget-object v6, v2, v4

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    aput-object v3, v2, v4

    :goto_1
    aget-object v3, v2, v4

    aput-object v3, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_1
    aget-object p1, v2, v0

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "otsHashAddress == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "signature == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getWOTSPlus()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    return-object v0
.end method

.method protected getWOTSPlusSecretKey(Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)[B
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getOTSAddress()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->khf:Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public importState([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v0, p1, p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withPrivateKey([BLorg/bouncycastle/pqc/crypto/xmss/XMSS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->withPublicKey([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getRoot()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getRoot()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->compareByteArray([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getPublicSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->compareByteArray([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result p2

    new-array p2, p2, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->importKeys([B[B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "public seed of private key and public key do not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "root of private key and public key do not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "publicKey == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "privateKey == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected lTree(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;
    .locals 8

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;->toByteArray()[[B

    move-result-object p1

    array-length v1, p1

    new-array v1, v1, [Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    aget-object v5, p1, v3

    invoke-direct {v4, v2, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getLayerAddress()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getTreeAddress()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getLTreeAddress()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLTreeAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getTreeIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getKeyAndMask()I

    move-result p2

    :goto_1
    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    const/4 p2, 0x1

    if-le v0, p2, :cond_3

    move-object v3, p1

    const/4 p1, 0x0

    :goto_2
    div-int/lit8 v4, v0, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    if-ge p1, v6, :cond_1

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getLayerAddress()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getTreeAddress()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getLTreeAddress()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLTreeAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getTreeHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getKeyAndMask()I

    move-result v3

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    mul-int/lit8 v4, p1, 0x2

    aget-object v5, v1, v4

    add-int/2addr v4, p2

    aget-object v4, v1, v4

    invoke-virtual {p0, v5, v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->randomizeHash(Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v4

    aput-object v4, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_1
    rem-int/lit8 p1, v0, 0x2

    if-ne p1, p2, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p1, v4

    add-int/lit8 v4, v0, -0x1

    aget-object v4, v1, v4

    aput-object v4, v1, p1

    :cond_2
    int-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getLayerAddress()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getTreeAddress()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getLTreeAddress()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLTreeAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object p1

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getTreeHeight()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {p1, v4}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object p1

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getTreeIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object p1

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getKeyAndMask()I

    move-result p2

    goto/16 :goto_1

    :cond_3
    aget-object p1, v1, v2

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "address == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "publicKey == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected randomizeHash(Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;
    .locals 8

    if-eqz p1, :cond_b

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_9

    if-eqz p3, :cond_8

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getPublicSeed()[B

    move-result-object v0

    instance-of v1, p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getLayerAddress()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getTreeAddress()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getLTreeAddress()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLTreeAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getTreeHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getTreeIndex()I

    move-result p3

    invoke-virtual {v1, p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object p3

    invoke-virtual {p3, v2}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    goto :goto_0

    :cond_0
    instance-of v1, p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    if-eqz v1, :cond_1

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result p3

    invoke-virtual {v1, p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object p3

    invoke-virtual {p3, v2}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->khf:Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object v1

    instance-of v3, p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getLayerAddress()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getTreeAddress()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getLTreeAddress()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLTreeAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getTreeHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getTreeIndex()I

    move-result p3

    invoke-virtual {v3, p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object p3

    invoke-virtual {p3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    goto :goto_1

    :cond_2
    instance-of v3, p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    if-eqz v3, :cond_3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result p3

    invoke-virtual {v3, p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object p3

    invoke-virtual {p3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    :cond_3
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->khf:Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object v3

    instance-of v4, p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    const/4 v5, 0x2

    if-eqz v4, :cond_4

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getLayerAddress()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getTreeAddress()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getLTreeAddress()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLTreeAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v4

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getTreeHeight()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v4

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->getTreeIndex()I

    move-result p3

    invoke-virtual {v4, p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object p3

    invoke-virtual {p3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    goto :goto_2

    :cond_4
    instance-of v4, p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    if-eqz v4, :cond_5

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v4

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result p3

    invoke-virtual {v4, p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object p3

    invoke-virtual {p3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    :cond_5
    :goto_2
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->khf:Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->toByteArray()[B

    move-result-object p3

    invoke-virtual {v4, v0, p3}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object p3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v0

    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [B

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v6

    aget-byte v6, v6, v5

    aget-byte v7, v3, v5

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ge v2, v0, :cond_7

    add-int v3, v2, v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v5

    aget-byte v5, v5, v2

    aget-byte v6, p3, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->khf:Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {p2, v1, v4}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->H([B[B)[B

    move-result-object p2

    new-instance p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result p1

    invoke-direct {p3, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    return-object p3

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "address == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "height of both nodes must be equal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "right == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "left == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setIndex(I)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getSecretKeyPRF()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getRoot()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getBDSState()Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withBDSState(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected setPublicSeed([B)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getSecretKeyPRF()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getRoot()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getBDSState()Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withBDSState(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getRoot()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->importKeys([B[B)V

    return-void
.end method

.method protected setRoot([B)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getSecretKeyPRF()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getPublicSeed()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getBDSState()Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withBDSState(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getPublicSeed()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sign([B)[B
    .locals 8

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getBDSState()Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getAuthenticationPath()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->isIndexValid(IJ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->khf:Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getSecretKeyPRF()[B

    move-result-object v4

    const/16 v5, 0x20

    invoke-static {v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [[B

    const/4 v5, 0x0

    aput-object v1, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getRoot()[B

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v7

    invoke-static {v2, v3, v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->concat([[B)[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->khf:Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {v3, v2, p1}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->HMsg([B[B)[B

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->wotsSign([BLorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object p1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;->withIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;->withRandom([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;->withWOTSPlusSignature(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getBDSState()Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getAuthenticationPath()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->withAuthPath(Ljava/util/List;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    move-object p1, v2

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v1

    shl-int v1, v6, v1

    sub-int/2addr v1, v6

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getBDSState()Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->nextAuthenticationPath(Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)V

    :cond_0
    add-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->setIndex(I)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "message == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public verifySignature([B[B[B)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;->withSignature([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v0, p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->withPublicKey([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    move-result-object p3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getIndex()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->getIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->setIndex(I)V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getPublicSeed()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->setPublicSeed([B)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getPublicSeed()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->importKeys([B[B)V

    const/4 v3, 0x3

    new-array v3, v3, [[B

    const/4 v4, 0x0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSignature;->getRandom()[B

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getRoot()[B

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    int-to-long v5, v2

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v7

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->concat([[B)[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->khf:Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {v4, v3, p1}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->HMsg([B[B)[B

    move-result-object p1

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-virtual {p0, p1, p2, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getRootNodeFromSignature([BLorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->setIndex(I)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->setPublicSeed([B)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object p1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getRoot()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->compareByteArray([B[B)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "publicKey == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "signature == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "message == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected wotsSign([BLorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getWOTSPlusSecretKey(Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getPublicSeed()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->importKeys([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->wotsPlus:Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->sign([BLorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "otsHashAddress == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
