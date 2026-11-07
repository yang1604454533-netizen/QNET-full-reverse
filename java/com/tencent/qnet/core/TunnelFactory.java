package com.tencent.qnet.core;

import com.tencent.qnet.tunnel.RawTunnel;
import com.tencent.qnet.tunnel.Tunnel;
import java.net.InetSocketAddress;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;

/* JADX INFO: loaded from: classes.dex */
public class TunnelFactory {
    public static Tunnel wrap(SocketChannel socketChannel, Selector selector, boolean z) {
        return new RawTunnel(socketChannel, selector, z);
    }

    public static Tunnel createTunnelByConfig(InetSocketAddress inetSocketAddress, Selector selector, boolean z) throws Exception {
        return new RawTunnel(inetSocketAddress, selector, z);
    }
}
