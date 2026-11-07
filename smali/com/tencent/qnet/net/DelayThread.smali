.class public Lcom/tencent/qnet/net/DelayThread;
.super Ljava/lang/Object;
.source "DelayThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static Instance:Lcom/tencent/qnet/net/DelayThread;


# instance fields
.field dateformat:Ljava/text/SimpleDateFormat;

.field protected m_downQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/tencent/qnet/net/DelayPacket;",
            ">;"
        }
    .end annotation
.end field

.field protected m_downThread:Ljava/lang/Thread;

.field protected m_isRunning:Z

.field protected m_upQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/tencent/qnet/net/DelayPacket;",
            ">;"
        }
    .end annotation
.end field

.field protected m_upThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/tencent/qnet/net/DelayThread;

    invoke-direct {v0}, Lcom/tencent/qnet/net/DelayThread;-><init>()V

    sput-object v0, Lcom/tencent/qnet/net/DelayThread;->Instance:Lcom/tencent/qnet/net/DelayThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/net/DelayThread;->m_upQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 48
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/net/DelayThread;->m_downQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/tencent/qnet/net/DelayThread;->m_isRunning:Z

    .line 187
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qnet/net/DelayThread;->dateformat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private write_log(Lcom/tencent/qnet/net/NetLog;[B)V
    .locals 4

    .line 190
    new-instance v0, Lcom/tencent/qnet/tcpip/IPHeader;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/tencent/qnet/tcpip/IPHeader;-><init>([BI)V

    .line 192
    invoke-virtual {v0}, Lcom/tencent/qnet/tcpip/IPHeader;->getProtocol()B

    move-result v1

    const/16 v2, 0x14

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    .line 194
    new-instance v1, Lcom/tencent/qnet/tcpip/TCPHeader;

    invoke-direct {v1, p2, v2}, Lcom/tencent/qnet/tcpip/TCPHeader;-><init>([BI)V

    .line 195
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/qnet/net/DelayThread;->write_tcp(Lcom/tencent/qnet/net/NetLog;Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/TCPHeader;)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qnet/tcpip/IPHeader;->getProtocol()B

    move-result v1

    const/16 v3, 0x11

    if-ne v1, v3, :cond_1

    .line 199
    new-instance v1, Lcom/tencent/qnet/tcpip/UDPHeader;

    invoke-direct {v1, p2, v2}, Lcom/tencent/qnet/tcpip/UDPHeader;-><init>([BI)V

    .line 201
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/qnet/net/DelayThread;->write_udp(Lcom/tencent/qnet/net/NetLog;Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private write_tcp(Lcom/tencent/qnet/net/NetLog;Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/TCPHeader;)V
    .locals 7

    .line 206
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/IPHeader;->getDataLength()I

    move-result v0

    invoke-virtual {p3}, Lcom/tencent/qnet/tcpip/TCPHeader;->getHeaderLength()I

    move-result v1

    sub-int/2addr v0, v1

    const-string v1, "%s,TCP,%s,%s,%d,%d,%d,%s,%d,%d"

    const/16 v2, 0x9

    .line 207
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/qnet/net/DelayThread;->dateformat:Ljava/text/SimpleDateFormat;

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 209
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipIntToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 210
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/IPHeader;->getDestinationIP()I

    move-result p2

    invoke-static {p2}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipIntToString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 212
    invoke-virtual {p3}, Lcom/tencent/qnet/tcpip/TCPHeader;->getSourcePort()S

    move-result p2

    const v3, 0xffff

    and-int/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x3

    aput-object p2, v2, v4

    .line 213
    invoke-virtual {p3}, Lcom/tencent/qnet/tcpip/TCPHeader;->getDestinationPort()S

    move-result p2

    and-int/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x4

    aput-object p2, v2, v3

    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x5

    aput-object p2, v2, v0

    .line 217
    invoke-virtual {p3}, Lcom/tencent/qnet/tcpip/TCPHeader;->getTypeStr()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    aput-object p2, v2, v0

    .line 219
    invoke-virtual {p3}, Lcom/tencent/qnet/tcpip/TCPHeader;->getSeqID()I

    move-result p2

    int-to-long v3, p2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x7

    aput-object p2, v2, v0

    .line 220
    invoke-virtual {p3}, Lcom/tencent/qnet/tcpip/TCPHeader;->getAckID()I

    move-result p2

    int-to-long p2, p2

    and-long/2addr p2, v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/16 p3, 0x8

    aput-object p2, v2, p3

    .line 207
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 223
    invoke-virtual {p1, p2}, Lcom/tencent/qnet/net/NetLog;->write(Ljava/lang/String;)V

    return-void
.end method

.method private write_udp(Lcom/tencent/qnet/net/NetLog;Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;)V
    .locals 7

    .line 228
    invoke-virtual {p3}, Lcom/tencent/qnet/tcpip/UDPHeader;->getTotalLength()I

    move-result v0

    const/16 v1, 0x8

    sub-int/2addr v0, v1

    const-string v2, "%s,UDP,%s,%s,%d,%d,%d,%s,%d,%d"

    const/16 v3, 0x9

    .line 230
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/qnet/net/DelayThread;->dateformat:Ljava/text/SimpleDateFormat;

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 232
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result v4

    invoke-static {v4}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipIntToString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 233
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/IPHeader;->getDestinationIP()I

    move-result p2

    invoke-static {p2}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipIntToString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x2

    aput-object p2, v3, v4

    .line 235
    invoke-virtual {p3}, Lcom/tencent/qnet/tcpip/UDPHeader;->getSourcePort()S

    move-result p2

    const v4, 0xffff

    and-int/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v6, 0x3

    aput-object p2, v3, v6

    .line 236
    invoke-virtual {p3}, Lcom/tencent/qnet/tcpip/UDPHeader;->getDestinationPort()S

    move-result p2

    and-int/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x4

    aput-object p2, v3, p3

    .line 238
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x5

    aput-object p2, v3, p3

    const-string p2, ""

    const/4 p3, 0x6

    aput-object p2, v3, p3

    .line 241
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x7

    aput-object p2, v3, p3

    .line 242
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    .line 230
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 245
    invoke-virtual {p1, p2}, Lcom/tencent/qnet/net/NetLog;->write(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Send([BIIZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-static {}, Lcom/tencent/qnet/net/NetworkConfig;->Instnace()Lcom/tencent/qnet/net/NetworkConfig;

    move-result-object p5

    .line 58
    invoke-virtual {p5, p4}, Lcom/tencent/qnet/net/NetworkConfig;->needDrop(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 61
    iget-object v0, p0, Lcom/tencent/qnet/net/DelayThread;->m_upQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qnet/net/DelayThread;->m_downQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 62
    :goto_0
    invoke-virtual {p5, p4}, Lcom/tencent/qnet/net/NetworkConfig;->getDelay(Z)I

    move-result p4

    .line 63
    sget-object p5, Lcom/tencent/qnet/core/LocalVpnService;->Instance:Lcom/tencent/qnet/core/LocalVpnService;

    invoke-virtual {p5}, Lcom/tencent/qnet/core/LocalVpnService;->getPing()I

    move-result p5

    const/4 v1, 0x0

    if-gt p4, p5, :cond_2

    const/4 p4, 0x0

    goto :goto_1

    :cond_2
    sub-int/2addr p4, p5

    .line 72
    :goto_1
    new-array p5, p3, [B

    .line 73
    invoke-static {p1, p2, p5, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    int-to-long p3, p4

    add-long/2addr p1, p3

    .line 76
    new-instance p3, Lcom/tencent/qnet/net/DelayPacket;

    invoke-direct {p3, p5, p1, p2}, Lcom/tencent/qnet/net/DelayPacket;-><init>([BJ)V

    invoke-virtual {v0, p3}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Start()V
    .locals 2

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/tencent/qnet/net/DelayThread;->m_isRunning:Z

    .line 85
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/qnet/net/DelayThread;->m_upThread:Ljava/lang/Thread;

    .line 86
    iget-object v0, p0, Lcom/tencent/qnet/net/DelayThread;->m_upThread:Ljava/lang/Thread;

    const-string v1, "UpwardThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/tencent/qnet/net/DelayThread;->m_upThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/qnet/net/DelayThread;->m_downThread:Ljava/lang/Thread;

    .line 89
    iget-object v0, p0, Lcom/tencent/qnet/net/DelayThread;->m_downThread:Ljava/lang/Thread;

    const-string v1, "DownwardThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/tencent/qnet/net/DelayThread;->m_downThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public Stop()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/tencent/qnet/net/DelayThread;->m_isRunning:Z

    return-void
.end method

.method public run()V
    .locals 15

    .line 100
    invoke-static {}, Lcom/tencent/qnet/net/NetworkConfig;->Instnace()Lcom/tencent/qnet/net/NetworkConfig;

    move-result-object v0

    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpwardThread"

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 103
    iget-object v2, p0, Lcom/tencent/qnet/net/DelayThread;->m_upQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/tencent/qnet/net/DelayThread;->m_downQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    :goto_1
    const/16 v4, 0x64

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v6, v5

    const/4 v5, 0x0

    .line 117
    :goto_2
    iget-boolean v8, p0, Lcom/tencent/qnet/net/DelayThread;->m_isRunning:Z

    if-eqz v8, :cond_a

    .line 120
    :cond_2
    :goto_3
    :try_start_0
    iget-boolean v8, p0, Lcom/tencent/qnet/net/DelayThread;->m_isRunning:Z

    if-eqz v8, :cond_9

    if-eqz v1, :cond_3

    .line 122
    iget v8, v0, Lcom/tencent/qnet/net/NetworkConfig;->OutBandwidth:I

    if-lez v8, :cond_3

    .line 123
    iget v8, v0, Lcom/tencent/qnet/net/NetworkConfig;->OutBandwidth:I

    mul-int/lit16 v8, v8, 0x80

    mul-int/lit8 v8, v8, 0x64

    div-int/lit16 v8, v8, 0x3e8

    goto :goto_4

    :cond_3
    if-nez v1, :cond_4

    .line 124
    iget v8, v0, Lcom/tencent/qnet/net/NetworkConfig;->InBandwidth:I

    if-lez v8, :cond_4

    .line 125
    iget v8, v0, Lcom/tencent/qnet/net/NetworkConfig;->InBandwidth:I

    mul-int/lit16 v8, v8, 0x80

    mul-int/lit8 v8, v8, 0x64

    div-int/lit16 v8, v8, 0x3e8

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    .line 130
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    :goto_5
    const/4 v11, 0x0

    sub-long v11, v9, v6

    int-to-long v13, v4

    cmp-long v11, v11, v13

    if-lez v11, :cond_6

    add-long/2addr v6, v13

    if-gtz v5, :cond_5

    if-lez v8, :cond_5

    add-int/2addr v5, v8

    goto :goto_5

    :cond_5
    move v5, v8

    goto :goto_5

    :cond_6
    if-lez v8, :cond_7

    if-gtz v5, :cond_7

    goto :goto_8

    .line 145
    :cond_7
    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tencent/qnet/net/DelayPacket;

    if-eqz v11, :cond_9

    .line 147
    iget-object v12, v11, Lcom/tencent/qnet/net/DelayPacket;->Packet:[B

    array-length v12, v12

    .line 148
    iget-wide v13, v11, Lcom/tencent/qnet/net/DelayPacket;->SendTime:J

    cmp-long v9, v9, v13

    if-ltz v9, :cond_9

    .line 149
    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/qnet/net/DelayPacket;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_8

    .line 155
    :try_start_1
    sget-boolean v10, Lcom/tencent/qnet/pcap/PcapDump;->DUMP:Z

    if-eqz v10, :cond_8

    .line 157
    sget-object v10, Lcom/tencent/qnet/core/LocalVpnService;->Instance:Lcom/tencent/qnet/core/LocalVpnService;

    new-instance v11, Lcom/tencent/qnet/tcpip/IPHeader;

    iget-object v13, v9, Lcom/tencent/qnet/net/DelayPacket;->Packet:[B

    invoke-direct {v11, v13, v3}, Lcom/tencent/qnet/tcpip/IPHeader;-><init>([BI)V

    invoke-virtual {v10, v11}, Lcom/tencent/qnet/core/LocalVpnService;->dumpIp(Lcom/tencent/qnet/tcpip/IPHeader;)V

    goto :goto_6

    :catch_0
    move-exception v8

    goto :goto_7

    .line 159
    :cond_8
    :goto_6
    sget-object v10, Lcom/tencent/qnet/core/LocalVpnService;->Instance:Lcom/tencent/qnet/core/LocalVpnService;

    invoke-virtual {v10}, Lcom/tencent/qnet/core/LocalVpnService;->getVPNOutputStream()Ljava/io/FileOutputStream;

    move-result-object v10

    iget-object v9, v9, Lcom/tencent/qnet/net/DelayPacket;->Packet:[B

    invoke-virtual {v10, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    if-lez v8, :cond_2

    sub-int/2addr v5, v12

    goto :goto_3

    .line 161
    :goto_7
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_8
    const-wide/16 v8, 0x1

    .line 174
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 177
    sget-object v1, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DelayThread : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method
