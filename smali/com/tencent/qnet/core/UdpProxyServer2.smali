.class public Lcom/tencent/qnet/core/UdpProxyServer2;
.super Ljava/lang/Object;
.source "UdpProxyServer2.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final GL_BUFFER:Ljava/nio/ByteBuffer;

.field public static GL_UDP_PACKET_INITED:Z

.field public static LOCAL_PORT:I

.field public static final Tunnels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/qnet/core/UdpTunnel2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Stopped:Z

.field m_outputStream:Ljava/io/FileOutputStream;

.field m_selector:Ljava/nio/channels/Selector;

.field m_serverChannel:Ljava/nio/channels/DatagramChannel;

.field m_thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4e20

    .line 18
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/tencent/qnet/core/UdpProxyServer2;->GL_BUFFER:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/tencent/qnet/core/UdpProxyServer2;->GL_UDP_PACKET_INITED:Z

    .line 20
    sput v0, Lcom/tencent/qnet/core/UdpProxyServer2;->LOCAL_PORT:I

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/tencent/qnet/core/UdpProxyServer2;->Tunnels:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileOutputStream;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_selector:Ljava/nio/channels/Selector;

    .line 33
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_serverChannel:Ljava/nio/channels/DatagramChannel;

    .line 34
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_serverChannel:Ljava/nio/channels/DatagramChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 35
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_serverChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 36
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_serverChannel:Ljava/nio/channels/DatagramChannel;

    iget-object v1, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_selector:Ljava/nio/channels/Selector;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_serverChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    .line 37
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_serverChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    sput v0, Lcom/tencent/qnet/core/UdpProxyServer2;->LOCAL_PORT:I

    .line 38
    iput-object p1, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_outputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->Stopped:Z

    .line 48
    sget-object v0, Lcom/tencent/qnet/core/UdpProxyServer2;->GL_BUFFER:Ljava/nio/ByteBuffer;

    .line 50
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->Stopped:Z

    if-nez v1, :cond_5

    .line 51
    iget-object v1, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->select()I

    .line 52
    iget-object v1, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 53
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 55
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    .line 57
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 58
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/DatagramChannel;

    .line 59
    invoke-virtual {v3}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v4

    .line 60
    sget v5, Lcom/tencent/qnet/core/UdpProxyServer2;->LOCAL_PORT:I

    if-ne v4, v5, :cond_2

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 62
    invoke-virtual {v3, v0}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 63
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipBytesToint([B)I

    move-result v2

    .line 64
    invoke-static {v2}, Lcom/tencent/qnet/core/NatSessionManager2;->getSession(I)Lcom/tencent/qnet/core/NatSession2;

    move-result-object v3

    .line 65
    sget-object v4, Lcom/tencent/qnet/core/UdpProxyServer2;->Tunnels:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qnet/core/UdpTunnel2;

    if-nez v4, :cond_1

    .line 68
    new-instance v4, Lcom/tencent/qnet/core/UdpTunnel2;

    iget-object v5, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_serverChannel:Ljava/nio/channels/DatagramChannel;

    invoke-direct {v4, v3, v5}, Lcom/tencent/qnet/core/UdpTunnel2;-><init>(Lcom/tencent/qnet/core/NatSession2;Ljava/nio/channels/DatagramChannel;)V

    .line 69
    iget-object v3, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4, v3}, Lcom/tencent/qnet/core/UdpTunnel2;->connect(Ljava/nio/channels/Selector;)V

    .line 71
    sget-object v3, Lcom/tencent/qnet/core/UdpProxyServer2;->Tunnels:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v2, 0x1

    .line 75
    invoke-virtual {v4, v0, v2}, Lcom/tencent/qnet/core/UdpTunnel2;->write(Ljava/nio/ByteBuffer;Z)Z

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qnet/core/UdpTunnel2;

    .line 80
    invoke-virtual {v3, v2}, Lcom/tencent/qnet/core/UdpTunnel2;->onReadable(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qnet/core/UdpTunnel2;

    .line 84
    invoke-virtual {v3, v2}, Lcom/tencent/qnet/core/UdpTunnel2;->onWritable(Ljava/nio/channels/SelectionKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 87
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 96
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/qnet/core/UdpProxyServer2;->stop()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 94
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_3
    return-void

    .line 96
    :goto_4
    invoke-virtual {p0}, Lcom/tencent/qnet/core/UdpProxyServer2;->stop()V

    .line 97
    throw v0
.end method

.method public start()V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_thread:Ljava/lang/Thread;

    .line 102
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_thread:Ljava/lang/Thread;

    const-class v1, Lcom/tencent/qnet/core/UdpProxyServer2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->Stopped:Z

    .line 108
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_selector:Ljava/nio/channels/Selector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 111
    iput-object v1, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_serverChannel:Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_1

    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_serverChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V

    .line 120
    iput-object v1, p0, Lcom/tencent/qnet/core/UdpProxyServer2;->m_serverChannel:Ljava/nio/channels/DatagramChannel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
