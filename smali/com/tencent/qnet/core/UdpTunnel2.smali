.class public Lcom/tencent/qnet/core/UdpTunnel2;
.super Ljava/lang/Object;
.source "UdpTunnel2.java"


# static fields
.field public static SessionCount:J


# instance fields
.field private m_DestAddress:Ljava/net/InetSocketAddress;

.field private m_Disposed:Z

.field private m_InnerChannel:Ljava/nio/channels/DatagramChannel;

.field private m_KeyAddress:Ljava/net/InetSocketAddress;

.field private m_LocalAddress:Ljava/net/InetSocketAddress;

.field private m_Selector:Ljava/nio/channels/Selector;

.field private m_SendRemainBuffer:Ljava/nio/ByteBuffer;

.field private m_localChannel:Ljava/nio/channels/DatagramChannel;

.field private m_session:Lcom/tencent/qnet/core/NatSession2;


# direct methods
.method public constructor <init>(Lcom/tencent/qnet/core/NatSession2;Ljava/nio/channels/DatagramChannel;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    :try_start_0
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 34
    iput-object p1, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_session:Lcom/tencent/qnet/core/NatSession2;

    .line 35
    iput-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    .line 37
    iput-object p2, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_localChannel:Ljava/nio/channels/DatagramChannel;

    .line 39
    new-instance p2, Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_session:Lcom/tencent/qnet/core/NatSession2;

    iget v0, v0, Lcom/tencent/qnet/core/NatSession2;->RemoteIP:I

    invoke-static {v0}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipIntToString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_session:Lcom/tencent/qnet/core/NatSession2;

    iget v1, v1, Lcom/tencent/qnet/core/NatSession2;->RemotePort:I

    invoke-direct {p2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_DestAddress:Ljava/net/InetSocketAddress;

    .line 40
    new-instance p2, Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_session:Lcom/tencent/qnet/core/NatSession2;

    iget v0, v0, Lcom/tencent/qnet/core/NatSession2;->LocalIP:I

    invoke-static {v0}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipIntToString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_session:Lcom/tencent/qnet/core/NatSession2;

    iget v1, v1, Lcom/tencent/qnet/core/NatSession2;->LocalPort:I

    invoke-direct {p2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_LocalAddress:Ljava/net/InetSocketAddress;

    .line 41
    new-instance p2, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Lcom/tencent/qnet/core/NatSession2;->getKey()I

    move-result p1

    invoke-static {p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipIntToString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_session:Lcom/tencent/qnet/core/NatSession2;

    iget v0, v0, Lcom/tencent/qnet/core/NatSession2;->RemotePort:I

    invoke-direct {p2, p1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_KeyAddress:Ljava/net/InetSocketAddress;

    .line 44
    sget-wide p1, Lcom/tencent/qnet/core/UdpTunnel2;->SessionCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    sput-wide p1, Lcom/tencent/qnet/core/UdpTunnel2;->SessionCount:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 169
    sget-object v0, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[UDP] [%s] [%s=>%s] [%d=>%d] [%s]"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    .line 171
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    .line 172
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    .line 173
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    .line 174
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x4

    aput-object p1, v2, v3

    const/4 p1, 0x5

    aput-object p2, v2, p1

    .line 169
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected beginReceive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    iget-object v1, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_Selector:Ljava/nio/channels/Selector;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method public connect(Ljava/nio/channels/Selector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_Selector:Ljava/nio/channels/Selector;

    .line 55
    sget-object p1, Lcom/tencent/qnet/core/LocalVpnService;->Instance:Lcom/tencent/qnet/core/LocalVpnService;

    iget-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qnet/core/LocalVpnService;->protect(Ljava/net/DatagramSocket;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    iget-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_Selector:Ljava/nio/channels/Selector;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p0}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    .line 57
    iget-object p1, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    iget-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_DestAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {p1, v0}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    const-string p1, "create tunnel"

    const-string v0, ""

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/tencent/qnet/core/UdpTunnel2;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "VPN protect socket failed."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose()V
    .locals 0

    .line 136
    invoke-virtual {p0}, Lcom/tencent/qnet/core/UdpTunnel2;->disposeInternal()V

    return-void
.end method

.method disposeInternal()V
    .locals 4

    .line 141
    iget-boolean v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_Disposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 145
    :cond_0
    sget-object v0, Lcom/tencent/qnet/core/UdpProxyServer2;->Tunnels:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_session:Lcom/tencent/qnet/core/NatSession2;

    invoke-virtual {v1}, Lcom/tencent/qnet/core/NatSession2;->getKey()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    .line 154
    iput-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_SendRemainBuffer:Ljava/nio/ByteBuffer;

    .line 155
    iput-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_Selector:Ljava/nio/channels/Selector;

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_Disposed:Z

    .line 157
    sget-wide v0, Lcom/tencent/qnet/core/UdpTunnel2;->SessionCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/tencent/qnet/core/UdpTunnel2;->SessionCount:J

    return-void
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    return-object v0
.end method

.method public onReadable(Ljava/nio/channels/SelectionKey;)V
    .locals 2

    .line 115
    :try_start_0
    sget-object p1, Lcom/tencent/qnet/core/UdpProxyServer2;->GL_BUFFER:Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 117
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_localChannel:Ljava/nio/channels/DatagramChannel;

    iget-object v1, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_KeyAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, p1, v1}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/tencent/qnet/core/UdpTunnel2;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    invoke-virtual {p0}, Lcom/tencent/qnet/core/UdpTunnel2;->dispose()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onWritable(Ljava/nio/channels/SelectionKey;)V
    .locals 2

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_SendRemainBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qnet/core/UdpTunnel2;->write(Ljava/nio/ByteBuffer;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    invoke-virtual {p0}, Lcom/tencent/qnet/core/UdpTunnel2;->dispose()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected write(Ljava/nio/ByteBuffer;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 82
    iget-object p2, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_SendRemainBuffer:Ljava/nio/ByteBuffer;

    if-nez p2, :cond_2

    .line 83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_SendRemainBuffer:Ljava/nio/ByteBuffer;

    .line 85
    :cond_2
    iget-object p2, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_SendRemainBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 86
    iget-object p2, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_SendRemainBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 87
    iget-object p1, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_SendRemainBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 88
    iget-object p1, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_InnerChannel:Ljava/nio/channels/DatagramChannel;

    iget-object p2, p0, Lcom/tencent/qnet/core/UdpTunnel2;->m_Selector:Ljava/nio/channels/Selector;

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0, p0}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method
