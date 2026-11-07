.class public Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;
.super Lorg/bouncycastle/crypto/engines/Salsa20Engine;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>()V

    return-void
.end method


# virtual methods
.method protected advanceCounter()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xc

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to increase counter past 2^32."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected advanceCounter(J)V
    .locals 3

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    long-to-int p1, p1

    if-gtz v0, :cond_2

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v0, 0xc

    aget p2, p2, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v2, v1, v0

    add-int/2addr v2, p1

    aput v2, v1, v0

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget p1, p1, v0

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to increase counter past 2^32."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to increase counter past 2^32."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateKeyStream([B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->rounds:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->chachaCore(I[I[I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChaCha7539-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->rounds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCounter()J
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected getNonceSize()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method protected resetCounter()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method protected retreatCounter()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected retreatCounter(J)V
    .locals 7

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    long-to-int p1, p1

    if-nez v0, :cond_1

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v0, 0xc

    aget p2, p2, v0

    int-to-long v1, p2

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v3, v5

    cmp-long p2, v1, v3

    if-ltz p2, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v1, p2, v0

    sub-int/2addr v1, p1

    aput v1, p2, v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to reduce counter past zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to reduce counter past zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setKey([B[B)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    array-length v1, p1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    invoke-virtual {p0, v1, v2, v0}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->packTauOrSigma(I[II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/4 v2, 0x4

    const/16 v3, 0x8

    invoke-static {p1, v0, v1, v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires 256 bit key"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xd

    const/4 v2, 0x3

    invoke-static {p2, v0, p1, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    return-void
.end method
