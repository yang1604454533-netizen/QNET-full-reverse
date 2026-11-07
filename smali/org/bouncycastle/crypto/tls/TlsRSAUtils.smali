.class public Lorg/bouncycastle/crypto/tls/TlsRSAUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateEncryptedPreMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/io/OutputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x30

    new-array v0, v0, [B

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;[BI)V

    new-instance v1, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v3, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v1, v3}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1, v3}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :try_start_0
    array-length p1, v0

    invoke-virtual {v1, v0, v2, p1}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->processBlock([BII)[B

    move-result-object p1

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isSSL(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x50

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw p1
.end method

.method public static safeDecryptPreMasterSecret(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/params/RSAKeyParameters;[B)[B
    .locals 7

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    const/16 v1, 0x30

    new-array v2, v1, [B

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v6, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v6}, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v5, v6, v2}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;[B)V

    new-instance v6, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-direct {v6, p1, p0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v5, v4, v6}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    array-length p0, p2

    invoke-virtual {v5, p2, v4, p0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->processBlock([BII)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v3

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result p1

    aget-byte p2, p0, v4

    and-int/lit16 p2, p2, 0xff

    xor-int/2addr p1, p2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result p2

    const/4 v0, 0x1

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr p2, v3

    or-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x1

    or-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x2

    or-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x4

    or-int/2addr p1, p2

    and-int/2addr p1, v0

    sub-int/2addr p1, v0

    not-int p1, p1

    :goto_1
    if-ge v4, v1, :cond_0

    aget-byte p2, p0, v4

    not-int v0, p1

    and-int/2addr p2, v0

    aget-byte v0, v2, v4

    and-int/2addr v0, p1

    or-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    return-object p0
.end method
