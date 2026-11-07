.class public Lcom/tencent/qnet/core/TcpProxyServer;
.super Ljava/lang/Object;
.source "TcpProxyServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public Port:S

.field public Stopped:Z

.field m_Selector:Ljava/nio/channels/Selector;

.field m_ServerSocketChannel:Ljava/nio/channels/ServerSocketChannel;

.field m_ServerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_Selector:Ljava/nio/channels/Selector;

    .line 28
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_ServerSocketChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 29
    iget-object v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_ServerSocketChannel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 30
    iget-object v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_ServerSocketChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 31
    iget-object p1, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_ServerSocketChannel:Ljava/nio/channels/ServerSocketChannel;

    iget-object v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_Selector:Ljava/nio/channels/Selector;

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v2}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 32
    iget-object p1, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_ServerSocketChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/tencent/qnet/core/TcpProxyServer;->Port:S

    .line 33
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "AsyncTcpServer listen on %d success.\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-short v3, p0, Lcom/tencent/qnet/core/TcpProxyServer;->Port:S

    const v4, 0xffff

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method getDestAddress(Ljava/nio/channels/SocketChannel;)Ljava/net/InetSocketAddress;
    .locals 4

    .line 98
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    int-to-short v0, v0

    .line 99
    invoke-static {v0}, Lcom/tencent/qnet/core/NatSessionManager;->getSession(I)Lcom/tencent/qnet/core/NatSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    sget-object v1, Lcom/tencent/qnet/core/ProxyConfig;->Instance:Lcom/tencent/qnet/core/ProxyConfig;

    iget-object v2, v0, Lcom/tencent/qnet/core/NatSession;->RemoteHost:Ljava/lang/String;

    iget v3, v0, Lcom/tencent/qnet/core/NatSession;->RemoteIP:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qnet/core/ProxyConfig;->needProxy(Ljava/lang/String;I)Z

    move-result v1

    const v2, 0xffff

    if-eqz v1, :cond_0

    .line 102
    iget-object p1, v0, Lcom/tencent/qnet/core/NatSession;->RemoteHost:Ljava/lang/String;

    iget-short v0, v0, Lcom/tencent/qnet/core/NatSession;->RemotePort:S

    and-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    iget-short v0, v0, Lcom/tencent/qnet/core/NatSession;->RemotePort:S

    and-int/2addr v0, v2

    invoke-direct {v1, p1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method onAccepted(Ljava/nio/channels/SelectionKey;)V
    .locals 3

    const/4 p1, 0x0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_ServerSocketChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_Selector:Ljava/nio/channels/Selector;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/qnet/core/TunnelFactory;->wrap(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/Selector;Z)Lcom/tencent/qnet/tunnel/Tunnel;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/core/TcpProxyServer;->getDestAddress(Ljava/nio/channels/SocketChannel;)Ljava/net/InetSocketAddress;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_Selector:Ljava/nio/channels/Selector;

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Lcom/tencent/qnet/core/TunnelFactory;->createTunnelByConfig(Ljava/net/InetSocketAddress;Ljava/nio/channels/Selector;Z)Lcom/tencent/qnet/tunnel/Tunnel;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v1}, Lcom/tencent/qnet/tunnel/Tunnel;->setBrotherTunnel(Lcom/tencent/qnet/tunnel/Tunnel;)V

    .line 120
    invoke-virtual {v1, v0}, Lcom/tencent/qnet/tunnel/Tunnel;->setBrotherTunnel(Lcom/tencent/qnet/tunnel/Tunnel;)V

    .line 121
    invoke-virtual {v0, p1}, Lcom/tencent/qnet/tunnel/Tunnel;->connect(Ljava/net/InetSocketAddress;)V

    goto :goto_1

    .line 124
    :cond_0
    invoke-virtual {v1}, Lcom/tencent/qnet/tunnel/Tunnel;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    .line 127
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {v1}, Lcom/tencent/qnet/tunnel/Tunnel;->dispose()V

    :cond_1
    :goto_1
    return-void
.end method

.method public run()V
    .locals 3

    .line 68
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_Selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    .line 69
    iget-object v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_Selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 70
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 72
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 74
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qnet/tunnel/Tunnel;

    invoke-virtual {v2, v1}, Lcom/tencent/qnet/tunnel/Tunnel;->onReadable(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qnet/tunnel/Tunnel;

    invoke-virtual {v2, v1}, Lcom/tencent/qnet/tunnel/Tunnel;->onWritable(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qnet/tunnel/Tunnel;

    invoke-virtual {v1}, Lcom/tencent/qnet/tunnel/Tunnel;->onConnectable()V

    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 81
    invoke-virtual {p0, v1}, Lcom/tencent/qnet/core/TcpProxyServer;->onAccepted(Ljava/nio/channels/SelectionKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 84
    :try_start_2
    sget-object v2, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 91
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    invoke-virtual {p0}, Lcom/tencent/qnet/core/TcpProxyServer;->stop()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/tencent/qnet/core/TcpProxyServer;->stop()V

    .line 94
    throw v0
.end method

.method public start()V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_ServerThread:Ljava/lang/Thread;

    .line 38
    iget-object v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_ServerThread:Ljava/lang/Thread;

    const-string v1, "TcpProxyServerThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_ServerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->Stopped:Z

    .line 44
    iget-object v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_Selector:Ljava/nio/channels/Selector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_Selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 47
    iput-object v1, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_Selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_ServerSocketChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_1

    .line 55
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_ServerSocketChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 56
    iput-object v1, p0, Lcom/tencent/qnet/core/TcpProxyServer;->m_ServerSocketChannel:Ljava/nio/channels/ServerSocketChannel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
