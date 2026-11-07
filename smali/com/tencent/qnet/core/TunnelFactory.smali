.class public Lcom/tencent/qnet/core/TunnelFactory;
.super Ljava/lang/Object;
.source "TunnelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTunnelByConfig(Ljava/net/InetSocketAddress;Ljava/nio/channels/Selector;Z)Lcom/tencent/qnet/tunnel/Tunnel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/tencent/qnet/tunnel/RawTunnel;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/qnet/tunnel/RawTunnel;-><init>(Ljava/net/InetSocketAddress;Ljava/nio/channels/Selector;Z)V

    return-object v0
.end method

.method public static wrap(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/Selector;Z)Lcom/tencent/qnet/tunnel/Tunnel;
    .locals 1

    .line 14
    new-instance v0, Lcom/tencent/qnet/tunnel/RawTunnel;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/qnet/tunnel/RawTunnel;-><init>(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/Selector;Z)V

    return-object v0
.end method
