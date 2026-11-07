package com.tencent.qnet.core;

import android.util.Log;
import com.tencent.qnet.global.GlobalSettings;
import com.tencent.qnet.tunnel.Tunnel;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class TcpProxyServer implements Runnable {
    public short Port;
    public boolean Stopped;
    Selector m_Selector = Selector.open();
    ServerSocketChannel m_ServerSocketChannel = ServerSocketChannel.open();
    Thread m_ServerThread;

    public TcpProxyServer(int i) throws IOException {
        this.m_ServerSocketChannel.configureBlocking(false);
        this.m_ServerSocketChannel.socket().bind(new InetSocketAddress(i));
        this.m_ServerSocketChannel.register(this.m_Selector, 16);
        this.Port = (short) this.m_ServerSocketChannel.socket().getLocalPort();
        System.out.printf("AsyncTcpServer listen on %d success.\n", Integer.valueOf(this.Port & 65535));
    }

    public void start() {
        this.m_ServerThread = new Thread(this);
        this.m_ServerThread.setName("TcpProxyServerThread");
        this.m_ServerThread.start();
    }

    public void stop() {
        this.Stopped = true;
        if (this.m_Selector != null) {
            try {
                this.m_Selector.close();
                this.m_Selector = null;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (this.m_ServerSocketChannel != null) {
            try {
                this.m_ServerSocketChannel.close();
                this.m_ServerSocketChannel = null;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                try {
                    this.m_Selector.select();
                    Iterator<SelectionKey> it = this.m_Selector.selectedKeys().iterator();
                    while (it.hasNext()) {
                        SelectionKey next = it.next();
                        if (next.isValid()) {
                            try {
                                if (next.isReadable()) {
                                    ((Tunnel) next.attachment()).onReadable(next);
                                } else if (next.isWritable()) {
                                    ((Tunnel) next.attachment()).onWritable(next);
                                } else if (next.isConnectable()) {
                                    ((Tunnel) next.attachment()).onConnectable();
                                } else if (next.isAcceptable()) {
                                    onAccepted(next);
                                }
                            } catch (Exception e) {
                                Log.e(GlobalSettings.LOG_TAG, e.toString());
                            }
                        }
                        it.remove();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    stop();
                    return;
                }
            } catch (Throwable th) {
                stop();
                throw th;
            }
        }
    }

    InetSocketAddress getDestAddress(SocketChannel socketChannel) {
        NatSession session = NatSessionManager.getSession((short) socketChannel.socket().getPort());
        if (session == null) {
            return null;
        }
        if (ProxyConfig.Instance.needProxy(session.RemoteHost, session.RemoteIP)) {
            return InetSocketAddress.createUnresolved(session.RemoteHost, session.RemotePort & 65535);
        }
        return new InetSocketAddress(socketChannel.socket().getInetAddress(), session.RemotePort & 65535);
    }

    void onAccepted(SelectionKey selectionKey) {
        Tunnel tunnelWrap;
        Exception e;
        try {
            SocketChannel socketChannelAccept = this.m_ServerSocketChannel.accept();
            tunnelWrap = TunnelFactory.wrap(socketChannelAccept, this.m_Selector, false);
            try {
                InetSocketAddress destAddress = getDestAddress(socketChannelAccept);
                if (destAddress != null) {
                    Tunnel tunnelCreateTunnelByConfig = TunnelFactory.createTunnelByConfig(destAddress, this.m_Selector, true);
                    tunnelCreateTunnelByConfig.setBrotherTunnel(tunnelWrap);
                    tunnelWrap.setBrotherTunnel(tunnelCreateTunnelByConfig);
                    tunnelCreateTunnelByConfig.connect(destAddress);
                } else {
                    tunnelWrap.dispose();
                }
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                if (tunnelWrap != null) {
                    tunnelWrap.dispose();
                }
            }
        } catch (Exception e3) {
            tunnelWrap = null;
            e = e3;
        }
    }
}
