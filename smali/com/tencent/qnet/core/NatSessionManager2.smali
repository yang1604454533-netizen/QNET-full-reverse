.class public Lcom/tencent/qnet/core/NatSessionManager2;
.super Ljava/lang/Object;
.source "NatSessionManager2.java"


# static fields
.field static final MAX_SESSION_COUNT:I = 0x3c

.field static final SESSION_TIMEOUT_NS:J = 0xdf8475800L

.field static final Sessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/qnet/core/NatSession2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/tencent/qnet/core/NatSessionManager2;->Sessions:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearExpiredSessions()V
    .locals 7

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 45
    sget-object v2, Lcom/tencent/qnet/core/NatSessionManager2;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 46
    sget-object v3, Lcom/tencent/qnet/core/NatSessionManager2;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qnet/core/NatSession2;

    .line 47
    iget-wide v3, v3, Lcom/tencent/qnet/core/NatSession2;->LastNanoTime:J

    sub-long v3, v0, v3

    const-wide v5, 0xdf8475800L

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 48
    sget-object v3, Lcom/tencent/qnet/core/NatSessionManager2;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static createSession(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;)Lcom/tencent/qnet/core/NatSession2;
    .locals 4

    .line 54
    sget-object v0, Lcom/tencent/qnet/core/NatSessionManager2;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_0

    .line 55
    invoke-static {}, Lcom/tencent/qnet/core/NatSessionManager2;->clearExpiredSessions()V

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/UDPHeader;->getSourcePort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 58
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/UDPHeader;->getDestinationPort()S

    move-result p1

    and-int/2addr p1, v1

    .line 60
    new-instance v1, Lcom/tencent/qnet/core/NatSession2;

    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getDestinationIP()I

    move-result p0

    invoke-direct {v1, v2, v0, p0, p1}, Lcom/tencent/qnet/core/NatSession2;-><init>(IIII)V

    .line 61
    invoke-virtual {v1}, Lcom/tencent/qnet/core/NatSession2;->getKey()I

    move-result p0

    .line 62
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/qnet/core/NatSession2;->LastNanoTime:J

    .line 64
    sget-object p1, Lcom/tencent/qnet/core/NatSessionManager2;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {p1, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public static getSession(I)Lcom/tencent/qnet/core/NatSession2;
    .locals 2

    .line 21
    sget-object v0, Lcom/tencent/qnet/core/NatSessionManager2;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qnet/core/NatSession2;

    if-eqz p0, :cond_0

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qnet/core/NatSession2;->LastNanoTime:J

    :cond_0
    return-object p0
.end method

.method public static getSession(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;)Lcom/tencent/qnet/core/NatSession2;
    .locals 4

    .line 29
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/UDPHeader;->getSourcePort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 30
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/UDPHeader;->getDestinationPort()S

    move-result p1

    and-int/2addr p1, v1

    .line 31
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result v1

    mul-int v1, v1, v0

    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getDestinationIP()I

    move-result p0

    mul-int v1, v1, p0

    mul-int v1, v1, p1

    .line 32
    sget-object p0, Lcom/tencent/qnet/core/NatSessionManager2;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qnet/core/NatSession2;

    if-eqz p0, :cond_0

    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/qnet/core/NatSession2;->LastNanoTime:J

    .line 36
    :cond_0
    sget-object p0, Lcom/tencent/qnet/core/NatSessionManager2;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qnet/core/NatSession2;

    return-object p0
.end method

.method public static getSessionCount()I
    .locals 1

    .line 40
    sget-object v0, Lcom/tencent/qnet/core/NatSessionManager2;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method
