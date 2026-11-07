.class public Lcom/tencent/qnet/core/IcmpServer;
.super Ljava/lang/Object;
.source "IcmpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qnet/core/IcmpServer$PingInfo;
    }
.end annotation


# instance fields
.field private m_effective_ping:I

.field private m_isRunning:Z

.field private m_last_ping_time:J

.field private m_main_ip:I

.field private m_ping_count:I

.field private m_real_ping:I

.field m_socket:I

.field private m_thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-libicmp"

    .line 12
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_isRunning:Z

    .line 23
    iput v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_socket:I

    .line 25
    iput v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_main_ip:I

    .line 26
    iput v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_real_ping:I

    .line 27
    iput v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_effective_ping:I

    .line 28
    iput v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_ping_count:I

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_last_ping_time:J

    return-void
.end method

.method public static native icmpClose(I)V
.end method

.method public static native icmpPing(II)I
.end method

.method public static native icmpSocket()I
.end method

.method public static native icmpTryGetPing(I)I
.end method

.method public static native icmpTryGetPingCount(I)I
.end method

.method private update_main_ip()V
    .locals 3

    .line 73
    sget-object v0, Lcom/tencent/qnet/net/StatManager;->Instance:Lcom/tencent/qnet/net/StatManager;

    invoke-virtual {v0}, Lcom/tencent/qnet/net/StatManager;->get_main_ip()I

    move-result v0

    if-lez v0, :cond_1

    .line 75
    iget v1, p0, Lcom/tencent/qnet/core/IcmpServer;->m_main_ip:I

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    .line 76
    iput v1, p0, Lcom/tencent/qnet/core/IcmpServer;->m_ping_count:I

    .line 77
    iput v1, p0, Lcom/tencent/qnet/core/IcmpServer;->m_real_ping:I

    .line 78
    iput v1, p0, Lcom/tencent/qnet/core/IcmpServer;->m_effective_ping:I

    .line 79
    iput v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_main_ip:I

    .line 82
    :cond_0
    iget v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_socket:I

    iget v1, p0, Lcom/tencent/qnet/core/IcmpServer;->m_main_ip:I

    invoke-static {v0, v1}, Lcom/tencent/qnet/core/IcmpServer;->icmpPing(II)I

    .line 83
    iget v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_main_ip:I

    invoke-static {v0}, Lcom/tencent/qnet/core/IcmpServer;->icmpTryGetPing(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_real_ping:I

    .line 85
    iget v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_real_ping:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_real_ping:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_1

    .line 86
    iget v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_ping_count:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 87
    iget v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_real_ping:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    .line 88
    iget v1, p0, Lcom/tencent/qnet/core/IcmpServer;->m_effective_ping:I

    iget v2, p0, Lcom/tencent/qnet/core/IcmpServer;->m_ping_count:I

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/qnet/core/IcmpServer;->m_ping_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/qnet/core/IcmpServer;->m_ping_count:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_effective_ping:I

    :cond_1
    return-void
.end method


# virtual methods
.method public get_effective_ping()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_effective_ping:I

    return v0
.end method

.method public get_main_ip()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_main_ip:I

    return v0
.end method

.method public get_ping()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_real_ping:I

    return v0
.end method

.method public run()V
    .locals 6

    const/4 v0, 0x1

    .line 99
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_isRunning:Z

    .line 100
    invoke-static {}, Lcom/tencent/qnet/core/IcmpServer;->icmpSocket()I

    move-result v0

    iput v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_socket:I

    .line 101
    iget v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_socket:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    .line 125
    iget v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_socket:I

    invoke-static {v0}, Lcom/tencent/qnet/core/IcmpServer;->icmpClose(I)V

    return-void

    .line 104
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/qnet/core/LocalVpnService;->Instance:Lcom/tencent/qnet/core/LocalVpnService;

    iget v1, p0, Lcom/tencent/qnet/core/IcmpServer;->m_socket:I

    invoke-virtual {v0, v1}, Lcom/tencent/qnet/core/LocalVpnService;->protect(I)Z

    .line 106
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_isRunning:Z

    if-eqz v0, :cond_2

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 109
    iget-wide v2, p0, Lcom/tencent/qnet/core/IcmpServer;->m_last_ping_time:J

    const/4 v4, 0x0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/tencent/qnet/core/IcmpServer;->update_main_ip()V

    .line 112
    iput-wide v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_last_ping_time:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x64

    .line 116
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 122
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :cond_2
    iget v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_socket:I

    invoke-static {v0}, Lcom/tencent/qnet/core/IcmpServer;->icmpClose(I)V

    return-void

    :goto_1
    iget v1, p0, Lcom/tencent/qnet/core/IcmpServer;->m_socket:I

    invoke-static {v1}, Lcom/tencent/qnet/core/IcmpServer;->icmpClose(I)V

    .line 126
    throw v0
.end method

.method public start()V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_thread:Ljava/lang/Thread;

    .line 43
    iget-object v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_thread:Ljava/lang/Thread;

    const-class v1, Lcom/tencent/qnet/core/IcmpServer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_isRunning:Z

    .line 50
    iget v1, p0, Lcom/tencent/qnet/core/IcmpServer;->m_socket:I

    if-ltz v1, :cond_0

    .line 52
    iget v1, p0, Lcom/tencent/qnet/core/IcmpServer;->m_socket:I

    invoke-static {v1}, Lcom/tencent/qnet/core/IcmpServer;->icmpClose(I)V

    .line 53
    iput v0, p0, Lcom/tencent/qnet/core/IcmpServer;->m_socket:I

    :cond_0
    return-void
.end method
