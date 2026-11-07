package com.tencent.qnet.core;

import android.util.SparseArray;
import com.tencent.qnet.tcpip.CommonMethods;
import java.io.FileOutputStream;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class UdpProxyServer2 implements Runnable {
    public static final ByteBuffer GL_BUFFER = ByteBuffer.allocate(20000);
    public static boolean GL_UDP_PACKET_INITED = false;
    public static int LOCAL_PORT = 0;
    public static final SparseArray<UdpTunnel2> Tunnels = new SparseArray<>();
    public boolean Stopped;
    FileOutputStream m_outputStream;
    Selector m_selector;
    DatagramChannel m_serverChannel;
    Thread m_thread;

    public UdpProxyServer2(FileOutputStream fileOutputStream) {
        try {
            this.m_selector = Selector.open();
            this.m_serverChannel = DatagramChannel.open();
            this.m_serverChannel.configureBlocking(false);
            this.m_serverChannel.socket().bind(new InetSocketAddress(0));
            this.m_serverChannel.register(this.m_selector, 1, this.m_serverChannel);
            LOCAL_PORT = this.m_serverChannel.socket().getLocalPort();
            this.m_outputStream = fileOutputStream;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.Stopped = false;
        ByteBuffer byteBuffer = GL_BUFFER;
        while (!this.Stopped) {
            try {
                try {
                    this.m_selector.select();
                    Iterator<SelectionKey> it = this.m_selector.selectedKeys().iterator();
                    while (it.hasNext()) {
                        SelectionKey next = it.next();
                        if (next.isValid()) {
                            try {
                                if (next.isReadable()) {
                                    DatagramChannel datagramChannel = (DatagramChannel) next.channel();
                                    if (datagramChannel.socket().getLocalPort() == LOCAL_PORT) {
                                        byteBuffer.clear();
                                        int iIpBytesToint = CommonMethods.ipBytesToint(((InetSocketAddress) datagramChannel.receive(byteBuffer)).getAddress().getAddress());
                                        NatSession2 session = NatSessionManager2.getSession(iIpBytesToint);
                                        UdpTunnel2 udpTunnel2 = Tunnels.get(iIpBytesToint);
                                        if (udpTunnel2 == null) {
                                            udpTunnel2 = new UdpTunnel2(session, this.m_serverChannel);
                                            udpTunnel2.connect(this.m_selector);
                                            Tunnels.put(iIpBytesToint, udpTunnel2);
                                        }
                                        byteBuffer.flip();
                                        udpTunnel2.write(byteBuffer, true);
                                    } else {
                                        ((UdpTunnel2) next.attachment()).onReadable(next);
                                    }
                                } else if (next.isWritable()) {
                                    ((UdpTunnel2) next.attachment()).onWritable(next);
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        it.remove();
                    }
                } catch (Throwable th) {
                    stop();
                    throw th;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        stop();
    }

    public void start() {
        this.m_thread = new Thread(this);
        this.m_thread.setName(UdpProxyServer2.class.getSimpleName());
        this.m_thread.start();
    }

    public void stop() {
        this.Stopped = true;
        if (this.m_selector != null) {
            try {
                this.m_selector.close();
                this.m_selector = null;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (this.m_serverChannel != null) {
            try {
                this.m_serverChannel.close();
                this.m_serverChannel = null;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
