.class public abstract Lcom/tencent/qnet/tunnel/Tunnel;
.super Ljava/lang/Object;
.source "Tunnel.java"


# static fields
.field static final GL_BUFFER:Ljava/nio/ByteBuffer;

.field public static SessionCount:J


# instance fields
.field private m_BrotherTunnel:Lcom/tencent/qnet/tunnel/Tunnel;

.field protected m_DestAddress:Ljava/net/InetSocketAddress;

.field private m_Disposed:Z

.field private m_InnerChannel:Ljava/nio/channels/SocketChannel;

.field private m_Selector:Ljava/nio/channels/Selector;

.field private m_SendRemainBuffer:Ljava/nio/ByteBuffer;

.field private m_ServerEP:Ljava/net/InetSocketAddress;

.field private m_remote:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4e20

    .line 19
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/tencent/qnet/tunnel/Tunnel;->GL_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/nio/channels/Selector;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_remote:Z

    .line 50
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 52
    iput-object v1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    .line 53
    iput-object p2, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_Selector:Ljava/nio/channels/Selector;

    .line 54
    iput-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_ServerEP:Ljava/net/InetSocketAddress;

    .line 55
    iput-boolean p3, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_remote:Z

    .line 56
    sget-wide p1, Lcom/tencent/qnet/tunnel/Tunnel;->SessionCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    sput-wide p1, Lcom/tencent/qnet/tunnel/Tunnel;->SessionCount:J

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/Selector;Z)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_remote:Z

    .line 42
    iput-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    .line 43
    iput-object p2, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_Selector:Ljava/nio/channels/Selector;

    .line 44
    iput-boolean p3, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_remote:Z

    .line 45
    sget-wide p1, Lcom/tencent/qnet/tunnel/Tunnel;->SessionCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    sput-wide p1, Lcom/tencent/qnet/tunnel/Tunnel;->SessionCount:J

    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 214
    sget-object v0, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[TCP] [%s] [%s=>%s] [%d=>%d] [%s]"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    .line 216
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    .line 217
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    .line 218
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    .line 219
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x4

    aput-object p1, v2, v3

    const/4 p1, 0x5

    aput-object p2, v2, p1

    .line 214
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected abstract afterReceived(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract beforeSend(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected beginReceive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_Selector:Ljava/nio/channels/Selector;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method public connect(Ljava/net/InetSocketAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/tencent/qnet/core/LocalVpnService;->Instance:Lcom/tencent/qnet/core/LocalVpnService;

    iget-object v1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qnet/core/LocalVpnService;->protect(Ljava/net/Socket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iput-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_DestAddress:Ljava/net/InetSocketAddress;

    .line 79
    iget-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    iget-object v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_Selector:Ljava/nio/channels/Selector;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, p0}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    .line 80
    iget-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    iget-object v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_ServerEP:Ljava/net/InetSocketAddress;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "VPN protect socket failed."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 184
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/tunnel/Tunnel;->disposeInternal(Z)V

    return-void
.end method

.method disposeInternal(Z)V
    .locals 4

    .line 188
    iget-boolean v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_Disposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :catch_0
    iget-object v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_BrotherTunnel:Lcom/tencent/qnet/tunnel/Tunnel;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_BrotherTunnel:Lcom/tencent/qnet/tunnel/Tunnel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/qnet/tunnel/Tunnel;->disposeInternal(Z)V

    :cond_1
    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    .line 202
    iput-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_SendRemainBuffer:Ljava/nio/ByteBuffer;

    .line 203
    iput-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_Selector:Ljava/nio/channels/Selector;

    .line 204
    iput-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_BrotherTunnel:Lcom/tencent/qnet/tunnel/Tunnel;

    const/4 p1, 0x1

    .line 205
    iput-boolean p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_Disposed:Z

    .line 206
    sget-wide v0, Lcom/tencent/qnet/tunnel/Tunnel;->SessionCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/tencent/qnet/tunnel/Tunnel;->SessionCount:J

    .line 208
    invoke-virtual {p0}, Lcom/tencent/qnet/tunnel/Tunnel;->onDispose()V

    return-void
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_Disposed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    :goto_0
    return-object v0
.end method

.method public getM_DestAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_DestAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public isRemote()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_remote:Z

    return v0
.end method

.method protected abstract isTunnelEstablished()Z
.end method

.method public onConnectable()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/tencent/qnet/tunnel/Tunnel;->GL_BUFFER:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/tencent/qnet/tunnel/Tunnel;->onConnected(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qnet/tunnel/Tunnel;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    invoke-virtual {p0}, Lcom/tencent/qnet/tunnel/Tunnel;->dispose()V

    :goto_0
    return-void
.end method

.method protected abstract onConnected(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract onDispose()V
.end method

.method public onReadable(Ljava/nio/channels/SelectionKey;)V
    .locals 3

    .line 144
    :try_start_0
    sget-object v0, Lcom/tencent/qnet/tunnel/Tunnel;->GL_BUFFER:Ljava/nio/ByteBuffer;

    .line 145
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 146
    iget-object v1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-lez v1, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 149
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/tunnel/Tunnel;->afterReceived(Ljava/nio/ByteBuffer;)V

    .line 150
    invoke-virtual {p0}, Lcom/tencent/qnet/tunnel/Tunnel;->isTunnelEstablished()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_BrotherTunnel:Lcom/tencent/qnet/tunnel/Tunnel;

    invoke-virtual {v1, v0}, Lcom/tencent/qnet/tunnel/Tunnel;->beforeSend(Ljava/nio/ByteBuffer;)V

    .line 152
    iget-object v1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_BrotherTunnel:Lcom/tencent/qnet/tunnel/Tunnel;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qnet/tunnel/Tunnel;->write(Ljava/nio/ByteBuffer;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/tencent/qnet/tunnel/Tunnel;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    invoke-virtual {p0}, Lcom/tencent/qnet/tunnel/Tunnel;->dispose()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onTunnelEstablished()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/tencent/qnet/tunnel/Tunnel;->beginReceive()V

    .line 124
    iget-object v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_BrotherTunnel:Lcom/tencent/qnet/tunnel/Tunnel;

    invoke-virtual {v0}, Lcom/tencent/qnet/tunnel/Tunnel;->beginReceive()V

    return-void
.end method

.method public onWritable(Ljava/nio/channels/SelectionKey;)V
    .locals 2

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_SendRemainBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/tencent/qnet/tunnel/Tunnel;->beforeSend(Ljava/nio/ByteBuffer;)V

    .line 170
    iget-object v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_SendRemainBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qnet/tunnel/Tunnel;->write(Ljava/nio/ByteBuffer;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 172
    invoke-virtual {p0}, Lcom/tencent/qnet/tunnel/Tunnel;->isTunnelEstablished()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_BrotherTunnel:Lcom/tencent/qnet/tunnel/Tunnel;

    invoke-virtual {p1}, Lcom/tencent/qnet/tunnel/Tunnel;->beginReceive()V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qnet/tunnel/Tunnel;->beginReceive()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    invoke-virtual {p0}, Lcom/tencent/qnet/tunnel/Tunnel;->dispose()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBrotherTunnel(Lcom/tencent/qnet/tunnel/Tunnel;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_BrotherTunnel:Lcom/tencent/qnet/tunnel/Tunnel;

    return-void
.end method

.method protected write(Ljava/nio/ByteBuffer;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 108
    iget-object p2, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_SendRemainBuffer:Ljava/nio/ByteBuffer;

    if-nez p2, :cond_2

    .line 109
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_SendRemainBuffer:Ljava/nio/ByteBuffer;

    .line 111
    :cond_2
    iget-object p2, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_SendRemainBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 112
    iget-object p2, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_SendRemainBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 113
    iget-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_SendRemainBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 114
    iget-object p1, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_InnerChannel:Ljava/nio/channels/SocketChannel;

    iget-object p2, p0, Lcom/tencent/qnet/tunnel/Tunnel;->m_Selector:Ljava/nio/channels/Selector;

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0, p0}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method
