.class Lcom/tencent/qnet/net/DelayPacket;
.super Ljava/lang/Object;
.source "DelayThread.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/qnet/net/DelayPacket;",
        ">;"
    }
.end annotation


# instance fields
.field public Packet:[B

.field public SendTime:J


# direct methods
.method public constructor <init>([BJ)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tencent/qnet/net/DelayPacket;->Packet:[B

    .line 28
    iput-wide p2, p0, Lcom/tencent/qnet/net/DelayPacket;->SendTime:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tencent/qnet/net/DelayPacket;)I
    .locals 4

    .line 33
    iget-wide v0, p0, Lcom/tencent/qnet/net/DelayPacket;->SendTime:J

    iget-wide v2, p1, Lcom/tencent/qnet/net/DelayPacket;->SendTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 36
    :cond_0
    iget-wide v0, p0, Lcom/tencent/qnet/net/DelayPacket;->SendTime:J

    iget-wide v2, p1, Lcom/tencent/qnet/net/DelayPacket;->SendTime:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/tencent/qnet/net/DelayPacket;

    invoke-virtual {p0, p1}, Lcom/tencent/qnet/net/DelayPacket;->compareTo(Lcom/tencent/qnet/net/DelayPacket;)I

    move-result p1

    return p1
.end method
