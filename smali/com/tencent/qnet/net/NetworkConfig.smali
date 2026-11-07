.class public Lcom/tencent/qnet/net/NetworkConfig;
.super Ljava/lang/Object;
.source "NetworkConfig.java"


# static fields
.field public static final TCP:I = 0x1

.field public static final UDP:I = 0x2

.field private static s_instance:Lcom/tencent/qnet/net/NetworkConfig;


# instance fields
.field public InBandwidth:I

.field public InDelay:I

.field public InDelayBias:I

.field public InLoss:I

.field public InPass:I

.field public InRate:I

.field public OutBandwidth:I

.field public OutDelay:I

.field public OutDelayBias:I

.field public OutLoss:I

.field public OutPass:I

.field public OutRate:I

.field public Protocol:I

.field private m_downIndex:I

.field private m_downRand:[B

.field private m_rand:Ljava/util/Random;

.field private m_upIndex:I

.field private m_upRand:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/tencent/qnet/net/NetworkConfig;

    invoke-direct {v0}, Lcom/tencent/qnet/net/NetworkConfig;-><init>()V

    sput-object v0, Lcom/tencent/qnet/net/NetworkConfig;->s_instance:Lcom/tencent/qnet/net/NetworkConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_rand:Ljava/util/Random;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_upIndex:I

    const/16 v1, 0x2710

    .line 46
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_upRand:[B

    .line 47
    iput v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_downIndex:I

    .line 48
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_downRand:[B

    .line 27
    iget-object v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_rand:Ljava/util/Random;

    iget-object v1, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_upRand:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 28
    iget-object v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_rand:Ljava/util/Random;

    iget-object v1, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_downRand:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    return-void
.end method

.method public static Instnace()Lcom/tencent/qnet/net/NetworkConfig;
    .locals 1

    .line 33
    sget-object v0, Lcom/tencent/qnet/net/NetworkConfig;->s_instance:Lcom/tencent/qnet/net/NetworkConfig;

    return-object v0
.end method

.method private needDropInternal(IIII[B)Z
    .locals 5

    add-int/2addr p1, p2

    const/4 v0, 0x1

    if-lez p1, :cond_0

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    .line 109
    rem-long/2addr v1, v3

    int-to-long p1, p2

    cmp-long p1, v1, p1

    if-lez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    if-lez p3, :cond_2

    const p2, 0x3fa3d70a    # 1.28f

    int-to-float p3, p3

    mul-float p3, p3, p2

    float-to-int p2, p3

    .line 117
    aget-byte p3, p5, p4

    if-gt p3, p2, :cond_1

    aget-byte p3, p5, p4

    neg-int p2, p2

    if-lt p3, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    return v0

    :cond_2
    return p1
.end method


# virtual methods
.method public HasUpConfig()Z
    .locals 1

    .line 42
    iget v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->OutDelay:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->OutLoss:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->OutRate:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public IsDownDelay()Z
    .locals 1

    .line 37
    iget v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->InDelay:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IsUpDelay()Z
    .locals 1

    .line 36
    iget v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->OutDelay:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDelay(Z)I
    .locals 2

    .line 87
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/net/NetworkConfig;->updateIndex(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 91
    iget p1, p0, Lcom/tencent/qnet/net/NetworkConfig;->OutDelayBias:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_upRand:[B

    iget v1, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_upIndex:I

    aget-byte p1, p1, v1

    and-int/lit8 p1, p1, 0x11

    if-nez p1, :cond_0

    iget v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->OutDelayBias:I

    .line 92
    :cond_0
    iget p1, p0, Lcom/tencent/qnet/net/NetworkConfig;->OutDelay:I

    add-int/2addr p1, v0

    return p1

    .line 97
    :cond_1
    iget p1, p0, Lcom/tencent/qnet/net/NetworkConfig;->InDelayBias:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_downRand:[B

    iget v1, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_downIndex:I

    aget-byte p1, p1, v1

    and-int/lit8 p1, p1, 0x11

    if-nez p1, :cond_2

    iget v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->InDelayBias:I

    .line 98
    :cond_2
    iget p1, p0, Lcom/tencent/qnet/net/NetworkConfig;->InDelay:I

    add-int/2addr p1, v0

    return p1
.end method

.method public isTCPActive()Z
    .locals 2

    .line 40
    iget v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->Protocol:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUDPActive()Z
    .locals 1

    .line 39
    iget v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->Protocol:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needDrop(Z)Z
    .locals 6

    .line 72
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/net/NetworkConfig;->updateIndex(Z)V

    if-eqz p1, :cond_0

    .line 76
    iget v1, p0, Lcom/tencent/qnet/net/NetworkConfig;->OutLoss:I

    iget v2, p0, Lcom/tencent/qnet/net/NetworkConfig;->OutPass:I

    iget v3, p0, Lcom/tencent/qnet/net/NetworkConfig;->OutRate:I

    iget v4, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_upIndex:I

    add-int/lit8 p1, v4, 0x1

    iput p1, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_upIndex:I

    iget-object v5, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_upRand:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qnet/net/NetworkConfig;->needDropInternal(IIII[B)Z

    move-result p1

    goto :goto_0

    .line 79
    :cond_0
    iget v1, p0, Lcom/tencent/qnet/net/NetworkConfig;->InLoss:I

    iget v2, p0, Lcom/tencent/qnet/net/NetworkConfig;->InPass:I

    iget v3, p0, Lcom/tencent/qnet/net/NetworkConfig;->InRate:I

    iget v4, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_downIndex:I

    add-int/lit8 p1, v4, 0x1

    iput p1, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_downIndex:I

    iget-object v5, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_downRand:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qnet/net/NetworkConfig;->needDropInternal(IIII[B)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public updateIndex(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 54
    iget p1, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_upIndex:I

    iget-object v1, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_upRand:[B

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 56
    iput v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_upIndex:I

    .line 57
    iget-object p1, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_rand:Ljava/util/Random;

    iget-object v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_upRand:[B

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextBytes([B)V

    goto :goto_0

    .line 62
    :cond_0
    iget p1, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_downIndex:I

    iget-object v1, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_downRand:[B

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 64
    iput v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_downIndex:I

    .line 65
    iget-object p1, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_rand:Ljava/util/Random;

    iget-object v0, p0, Lcom/tencent/qnet/net/NetworkConfig;->m_downRand:[B

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextBytes([B)V

    :cond_1
    :goto_0
    return-void
.end method
