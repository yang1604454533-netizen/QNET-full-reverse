.class public Lcom/tencent/qnet/core/NatSessionManager;
.super Ljava/lang/Object;
.source "NatSessionManager.java"


# static fields
.field static final MAX_SESSION_COUNT:I = 0x3c

.field static final SESSION_TIMEOUT_NS:J = 0xdf8475800L

.field static final Sessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/qnet/core/NatSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/tencent/qnet/core/NatSessionManager;->Sessions:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearExpiredSessions()V
    .locals 7

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 29
    sget-object v2, Lcom/tencent/qnet/core/NatSessionManager;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 30
    sget-object v3, Lcom/tencent/qnet/core/NatSessionManager;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qnet/core/NatSession;

    .line 31
    iget-wide v3, v3, Lcom/tencent/qnet/core/NatSession;->LastNanoTime:J

    sub-long v3, v0, v3

    const-wide v5, 0xdf8475800L

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 32
    sget-object v3, Lcom/tencent/qnet/core/NatSessionManager;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static createSession(IIS)Lcom/tencent/qnet/core/NatSession;
    .locals 3

    .line 38
    sget-object v0, Lcom/tencent/qnet/core/NatSessionManager;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_0

    .line 39
    invoke-static {}, Lcom/tencent/qnet/core/NatSessionManager;->clearExpiredSessions()V

    .line 42
    :cond_0
    new-instance v0, Lcom/tencent/qnet/core/NatSession;

    invoke-direct {v0}, Lcom/tencent/qnet/core/NatSession;-><init>()V

    .line 43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/qnet/core/NatSession;->LastNanoTime:J

    .line 44
    iput p1, v0, Lcom/tencent/qnet/core/NatSession;->RemoteIP:I

    .line 45
    iput-short p2, v0, Lcom/tencent/qnet/core/NatSession;->RemotePort:S

    .line 47
    invoke-static {p1}, Lcom/tencent/qnet/core/ProxyConfig;->isFakeIP(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 48
    invoke-static {p1}, Lcom/tencent/qnet/core/DnsProxy;->reverseLookup(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/tencent/qnet/core/NatSession;->RemoteHost:Ljava/lang/String;

    .line 51
    :cond_1
    iget-object p2, v0, Lcom/tencent/qnet/core/NatSession;->RemoteHost:Ljava/lang/String;

    if-nez p2, :cond_2

    .line 52
    invoke-static {p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipIntToString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/qnet/core/NatSession;->RemoteHost:Ljava/lang/String;

    .line 55
    :cond_2
    sget-object p1, Lcom/tencent/qnet/core/NatSessionManager;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static getSession(I)Lcom/tencent/qnet/core/NatSession;
    .locals 3

    .line 16
    sget-object v0, Lcom/tencent/qnet/core/NatSessionManager;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qnet/core/NatSession;

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/qnet/core/NatSession;->LastNanoTime:J

    .line 20
    :cond_0
    sget-object v0, Lcom/tencent/qnet/core/NatSessionManager;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qnet/core/NatSession;

    return-object p0
.end method

.method public static getSessionCount()I
    .locals 1

    .line 24
    sget-object v0, Lcom/tencent/qnet/core/NatSessionManager;->Sessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method
