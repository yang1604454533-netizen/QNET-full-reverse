.class public final Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;
.super Ljava/lang/Object;


# instance fields
.field private khf:Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

.field private params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

.field private privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

.field private prng:Ljava/security/SecureRandom;

.field private publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

.field private xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getXMSS()Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getXMSS()Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getPRNG()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->prng:Ljava/security/SecureRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getKhf()Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->khf:Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    :try_start_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;
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

.method private generatePrivateKey()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->prng:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v2, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->prng:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v0, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->prng:Ljava/security/SecureRandom;

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_0
    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getBDSState()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withBDSState(Ljava/util/Map;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

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

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public exportPublicKey()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public generateKeys()V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->generatePrivateKey()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeyPRF()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSS;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withBDSState(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getPublicSeed()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    move-result-object v2
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v1, v0

    :goto_2
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    :goto_3
    :try_start_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->importState([B[B)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_4

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_4

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_4
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSS;)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->initialize(Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getBDSState()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->setRoot([B)V

    :try_start_3
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeyPRF()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getRoot()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getBDSState()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withBDSState(Ljava/util/Map;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getPublicSeed()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    goto :goto_5

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_5

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_5
    return-void
.end method

.method protected getBDSState()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/pqc/crypto/xmss/BDS;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getBDSState()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()J
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    return-object v0
.end method

.method public getPublicSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v0

    return-object v0
.end method

.method protected getXMSS()Lorg/bouncycastle/pqc/crypto/xmss/XMSS;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    return-object v0
.end method

.method public importState([B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withPrivateKey([BLorg/bouncycastle/pqc/crypto/xmss/XMSS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->withPublicKey([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getRoot()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getRoot()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->compareByteArray([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getPublicSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->compareByteArray([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeyPRF()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getRoot()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSS;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withBDSState(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getRoot()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getPublicSeed()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->importState([B[B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->publicKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

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

.method public sign([B)[B
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getBDSState()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getIndex()J

    move-result-wide v2

    iget-object v4, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v4

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v5

    invoke-static {v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->isIndexValid(IJ)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->khf:Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    iget-object v6, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeyPRF()[B

    move-result-object v6

    const/16 v7, 0x20

    invoke-static {v2, v3, v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object v4

    const/4 v6, 0x3

    new-array v6, v6, [[B

    const/4 v7, 0x0

    aput-object v4, v6, v7

    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getRoot()[B

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const/4 v8, 0x2

    iget-object v10, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigestSize()I

    move-result v10

    invoke-static {v2, v3, v10}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v10

    aput-object v10, v6, v8

    invoke-static {v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->concat([[B)[B

    move-result-object v6

    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->khf:Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {v8, v6, v0}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->HMsg([B[B)[B

    move-result-object v6

    :try_start_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    iget-object v10, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-direct {v0, v10}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->withIndex(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->withRandom([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v4, 0x0

    :goto_0
    invoke-static {v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getTreeIndex(JI)J

    move-result-wide v10

    invoke-static {v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getLeafIndex(JI)I

    move-result v12

    iget-object v0, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v0, v12}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->setIndex(I)V

    iget-object v0, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getPublicSeed()[B

    move-result-object v13

    invoke-virtual {v0, v13}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->setPublicSeed([B)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v0, v10, v11}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {v0, v12}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;

    iget-object v0, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v0, v6, v13}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->wotsSign([BLorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getBDSState()Ljava/util/Map;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    if-nez v12, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getBDSState()Ljava/util/Map;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-direct {v15, v8}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSS;)V

    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getBDSState()Ljava/util/Map;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v6, v13}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->initialize(Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    :cond_1
    :try_start_1
    new-instance v6, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v6, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->withWOTSPlusSignature(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getBDSState()Ljava/util/Map;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getAuthenticationPath()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->withAuthPath(Ljava/util/List;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;

    move-result-object v8
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->getReducedSignatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    shl-int v0, v9, v5

    add-int/lit8 v6, v0, -0x1

    if-ge v12, v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getBDSState()Ljava/util/Map;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v0, v13}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->nextAuthenticationPath(Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)V

    :cond_2
    :goto_2
    iget-object v0, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v0

    if-ge v9, v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getBDSState()Ljava/util/Map;

    move-result-object v0

    add-int/lit8 v7, v9, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getRoot()Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v0

    invoke-static {v10, v11, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getLeafIndex(JI)I

    move-result v7

    invoke-static {v10, v11, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getTreeIndex(JI)J

    move-result-wide v10

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v12, v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->setIndex(I)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v12}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v12, v9}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {v12, v10, v11}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {v12, v7}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;

    iget-object v13, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v0

    invoke-virtual {v13, v0, v12}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->wotsSign([BLorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getBDSState()Ljava/util/Map;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-static {v2, v3, v5, v9}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->isNewBDSInitNeeded(JII)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v16, v8

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getBDSState()Ljava/util/Map;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-object/from16 v16, v8

    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-direct {v15, v8}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSS;)V

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getBDSState()Ljava/util/Map;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v8, v12}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->initialize(Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    :goto_4
    :try_start_2
    new-instance v8, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    iget-object v13, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v13

    invoke-direct {v8, v13}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v8, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->withWOTSPlusSignature(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getBDSState()Ljava/util/Map;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getAuthenticationPath()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->withAuthPath(Ljava/util/List;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;

    move-result-object v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v0

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move-object/from16 v8, v16

    :goto_5
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->getReducedSignatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge v7, v6, :cond_5

    invoke-static {v2, v3, v5, v9}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->isNewAuthenticationPathNeeded(JII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->getBDSState()Ljava/util/Map;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v0, v12}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->nextAuthenticationPath(Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)V

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_6
    :try_start_3
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-direct {v0, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withIndex(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeyPRF()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getRoot()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withRoot([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getBDSState()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withBDSState(Ljava/util/Map;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-result-object v0

    iput-object v0, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->privateKey:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_6
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "index out of bounds"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "not initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "message == null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifySignature([B[B[B)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->withSignature([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    invoke-virtual {v0, p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->withPublicKey([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [[B

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->getRandom()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getRoot()[B

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->getIndex()J

    move-result-wide v4

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigestSize()I

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->concat([[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->khf:Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->HMsg([B[B)[B

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->getIndex()J

    move-result-wide v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v4

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getTreeIndex(JI)J

    move-result-wide v5

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getLeafIndex(JI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->setIndex(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getPublicSeed()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->setPublicSeed([B)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v1, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->getReducedSignatures()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v2, p1, v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getRootNodeFromSignature([BLorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->getReducedSignatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;

    invoke-static {v5, v6, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getLeafIndex(JI)I

    move-result v1

    invoke-static {v5, v6, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->getTreeIndex(JI)J

    move-result-wide v5

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->setIndex(I)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMT;->xmss:Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getRootNodeFromSignature([BLorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object p1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getRoot()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->compareByteArray([B[B)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "publicKey == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "signature == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "message == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
