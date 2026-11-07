.class public Lcom/tencent/qnet/tunnel/RawTunnel;
.super Lcom/tencent/qnet/tunnel/Tunnel;
.source "RawTunnel.java"


# direct methods
.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/nio/channels/Selector;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qnet/tunnel/Tunnel;-><init>(Ljava/net/InetSocketAddress;Ljava/nio/channels/Selector;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/Selector;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qnet/tunnel/Tunnel;-><init>(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/Selector;Z)V

    return-void
.end method


# virtual methods
.method protected afterReceived(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected beforeSend(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected isTunnelEstablished()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onConnected(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/tencent/qnet/tunnel/RawTunnel;->onTunnelEstablished()V

    return-void
.end method

.method protected onDispose()V
    .locals 0

    return-void
.end method
