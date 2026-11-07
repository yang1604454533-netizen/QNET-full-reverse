package com.tencent.qnet.tunnel;

import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;

/* JADX INFO: loaded from: classes.dex */
public class RawTunnel extends Tunnel {
    @Override // com.tencent.qnet.tunnel.Tunnel
    protected void afterReceived(ByteBuffer byteBuffer) throws Exception {
    }

    @Override // com.tencent.qnet.tunnel.Tunnel
    protected void beforeSend(ByteBuffer byteBuffer) throws Exception {
    }

    @Override // com.tencent.qnet.tunnel.Tunnel
    protected boolean isTunnelEstablished() {
        return true;
    }

    @Override // com.tencent.qnet.tunnel.Tunnel
    protected void onDispose() {
    }

    public RawTunnel(InetSocketAddress inetSocketAddress, Selector selector, boolean z) throws Exception {
        super(inetSocketAddress, selector, z);
    }

    public RawTunnel(SocketChannel socketChannel, Selector selector, boolean z) {
        super(socketChannel, selector, z);
    }

    @Override // com.tencent.qnet.tunnel.Tunnel
    protected void onConnected(ByteBuffer byteBuffer) throws Exception {
        onTunnelEstablished();
    }
}
