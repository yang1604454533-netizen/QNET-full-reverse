.class public Lcom/tencent/qnet/core/NatSession2;
.super Ljava/lang/Object;
.source "NatSession2.java"


# instance fields
.field public BytesSent:I

.field public LastNanoTime:J

.field public LocalIP:I

.field public LocalPort:I

.field public PacketSent:I

.field public RemoteIP:I

.field public RemotePort:I

.field private m_key:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/tencent/qnet/core/NatSession2;->LocalIP:I

    .line 20
    iput p2, p0, Lcom/tencent/qnet/core/NatSession2;->LocalPort:I

    .line 21
    iput p3, p0, Lcom/tencent/qnet/core/NatSession2;->RemoteIP:I

    .line 22
    iput p4, p0, Lcom/tencent/qnet/core/NatSession2;->RemotePort:I

    .line 23
    iget p1, p0, Lcom/tencent/qnet/core/NatSession2;->LocalIP:I

    iget p2, p0, Lcom/tencent/qnet/core/NatSession2;->LocalPort:I

    mul-int p1, p1, p2

    iget p2, p0, Lcom/tencent/qnet/core/NatSession2;->RemoteIP:I

    mul-int p1, p1, p2

    iget p2, p0, Lcom/tencent/qnet/core/NatSession2;->RemotePort:I

    mul-int p1, p1, p2

    iput p1, p0, Lcom/tencent/qnet/core/NatSession2;->m_key:I

    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/tencent/qnet/core/NatSession2;->m_key:I

    return v0
.end method
