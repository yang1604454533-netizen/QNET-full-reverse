package com.tencent.qnet.core;

import android.util.Log;
import com.tencent.qnet.global.GlobalSettings;
import com.tencent.qnet.tcpip.CommonMethods;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;

/* JADX INFO: loaded from: classes.dex */
public class UdpTunnel2 {
    public static long SessionCount;
    private InetSocketAddress m_DestAddress;
    private boolean m_Disposed;
    private DatagramChannel m_InnerChannel;
    private InetSocketAddress m_KeyAddress;
    private InetSocketAddress m_LocalAddress;
    private Selector m_Selector;
    private ByteBuffer m_SendRemainBuffer;
    private DatagramChannel m_localChannel;
    private NatSession2 m_session;

    public UdpTunnel2(NatSession2 natSession2, DatagramChannel datagramChannel) {
        try {
            DatagramChannel datagramChannelOpen = DatagramChannel.open();
            datagramChannelOpen.configureBlocking(false);
            this.m_session = natSession2;
            this.m_InnerChannel = datagramChannelOpen;
            this.m_localChannel = datagramChannel;
            this.m_DestAddress = new InetSocketAddress(CommonMethods.ipIntToString(this.m_session.RemoteIP), this.m_session.RemotePort);
            this.m_LocalAddress = new InetSocketAddress(CommonMethods.ipIntToString(this.m_session.LocalIP), this.m_session.LocalPort);
            this.m_KeyAddress = new InetSocketAddress(CommonMethods.ipIntToString(natSession2.getKey()), this.m_session.RemotePort);
            SessionCount++;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void connect(Selector selector) throws Exception {
        this.m_Selector = selector;
        if (LocalVpnService.Instance.protect(this.m_InnerChannel.socket())) {
            this.m_InnerChannel.register(this.m_Selector, 1, this);
            this.m_InnerChannel.connect(this.m_DestAddress);
            log("create tunnel", "");
            return;
        }
        throw new Exception("VPN protect socket failed.");
    }

    protected boolean write(ByteBuffer byteBuffer, boolean z) throws Exception {
        while (byteBuffer.hasRemaining() && this.m_InnerChannel.write(byteBuffer) != 0) {
        }
        if (!byteBuffer.hasRemaining()) {
            return true;
        }
        if (!z) {
            return false;
        }
        if (this.m_SendRemainBuffer == null) {
            this.m_SendRemainBuffer = ByteBuffer.allocate(byteBuffer.capacity());
        }
        this.m_SendRemainBuffer.clear();
        this.m_SendRemainBuffer.put(byteBuffer);
        this.m_SendRemainBuffer.flip();
        this.m_InnerChannel.register(this.m_Selector, 4, this);
        return false;
    }

    public void onWritable(SelectionKey selectionKey) {
        try {
            if (write(this.m_SendRemainBuffer, false)) {
                selectionKey.cancel();
            }
        } catch (Exception unused) {
            dispose();
        }
    }

    protected void beginReceive() throws Exception {
        if (this.m_InnerChannel.isBlocking()) {
            this.m_InnerChannel.configureBlocking(false);
        }
        this.m_InnerChannel.register(this.m_Selector, 1, this);
    }

    public void onReadable(SelectionKey selectionKey) {
        try {
            ByteBuffer byteBuffer = UdpProxyServer2.GL_BUFFER;
            byteBuffer.clear();
            int i = this.m_InnerChannel.read(byteBuffer);
            if (i > 0) {
                byteBuffer.flip();
                if (byteBuffer.hasRemaining()) {
                    this.m_localChannel.send(byteBuffer, this.m_KeyAddress);
                }
            } else if (i < 0) {
                dispose();
            }
        } catch (Exception unused) {
            dispose();
        }
    }

    public void dispose() {
        disposeInternal();
    }

    void disposeInternal() {
        if (this.m_Disposed) {
            return;
        }
        UdpProxyServer2.Tunnels.remove(this.m_session.getKey());
        try {
            this.m_InnerChannel.close();
        } catch (Exception unused) {
        }
        this.m_InnerChannel = null;
        this.m_SendRemainBuffer = null;
        this.m_Selector = null;
        this.m_Disposed = true;
        SessionCount--;
    }

    public DatagramChannel getChannel() {
        return this.m_InnerChannel;
    }

    private void log(String str, String str2) {
        Log.d(GlobalSettings.LOG_TAG, String.format("[UDP] [%s] [%s=>%s] [%d=>%d] [%s]", str, this.m_InnerChannel.socket().getLocalAddress().getHostAddress().toString(), ((InetSocketAddress) this.m_InnerChannel.socket().getRemoteSocketAddress()).getHostString(), Integer.valueOf(this.m_InnerChannel.socket().getLocalPort()), Integer.valueOf(this.m_InnerChannel.socket().getPort()), str2));
    }
}
