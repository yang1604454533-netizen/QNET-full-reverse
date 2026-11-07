package com.tencent.qnet.tunnel;

import android.annotation.SuppressLint;
import android.util.Log;
import com.tencent.qnet.core.LocalVpnService;
import com.tencent.qnet.global.GlobalSettings;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;

/* JADX INFO: loaded from: classes.dex */
public abstract class Tunnel {
    static final ByteBuffer GL_BUFFER = ByteBuffer.allocate(20000);
    public static long SessionCount;
    private Tunnel m_BrotherTunnel;
    protected InetSocketAddress m_DestAddress;
    private boolean m_Disposed;
    private SocketChannel m_InnerChannel;
    private Selector m_Selector;
    private ByteBuffer m_SendRemainBuffer;
    private InetSocketAddress m_ServerEP;
    private boolean m_remote;

    protected abstract void afterReceived(ByteBuffer byteBuffer) throws Exception;

    protected abstract void beforeSend(ByteBuffer byteBuffer) throws Exception;

    protected abstract boolean isTunnelEstablished();

    protected abstract void onConnected(ByteBuffer byteBuffer) throws Exception;

    protected abstract void onDispose();

    public Tunnel(SocketChannel socketChannel, Selector selector, boolean z) {
        this.m_remote = false;
        this.m_InnerChannel = socketChannel;
        this.m_Selector = selector;
        this.m_remote = z;
        SessionCount++;
    }

    public Tunnel(InetSocketAddress inetSocketAddress, Selector selector, boolean z) throws IOException {
        this.m_remote = false;
        SocketChannel socketChannelOpen = SocketChannel.open();
        socketChannelOpen.configureBlocking(false);
        this.m_InnerChannel = socketChannelOpen;
        this.m_Selector = selector;
        this.m_ServerEP = inetSocketAddress;
        this.m_remote = z;
        SessionCount++;
    }

    public InetSocketAddress getM_DestAddress() {
        return this.m_DestAddress;
    }

    public SocketChannel getChannel() {
        if (this.m_Disposed) {
            return null;
        }
        return this.m_InnerChannel;
    }

    public boolean isRemote() {
        return this.m_remote;
    }

    public void setBrotherTunnel(Tunnel tunnel) {
        this.m_BrotherTunnel = tunnel;
    }

    public void connect(InetSocketAddress inetSocketAddress) throws Exception {
        if (LocalVpnService.Instance.protect(this.m_InnerChannel.socket())) {
            this.m_DestAddress = inetSocketAddress;
            this.m_InnerChannel.register(this.m_Selector, 8, this);
            this.m_InnerChannel.connect(this.m_ServerEP);
            return;
        }
        throw new Exception("VPN protect socket failed.");
    }

    protected void beginReceive() throws Exception {
        if (this.m_InnerChannel.isBlocking()) {
            this.m_InnerChannel.configureBlocking(false);
        }
        this.m_InnerChannel.register(this.m_Selector, 1, this);
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

    protected void onTunnelEstablished() throws Exception {
        beginReceive();
        this.m_BrotherTunnel.beginReceive();
    }

    @SuppressLint({"DefaultLocale"})
    public void onConnectable() {
        try {
            if (this.m_InnerChannel.finishConnect()) {
                onConnected(GL_BUFFER);
            } else {
                dispose();
            }
        } catch (Exception unused) {
            dispose();
        }
    }

    public void onReadable(SelectionKey selectionKey) {
        try {
            ByteBuffer byteBuffer = GL_BUFFER;
            byteBuffer.clear();
            int i = this.m_InnerChannel.read(byteBuffer);
            if (i > 0) {
                byteBuffer.flip();
                afterReceived(byteBuffer);
                if (isTunnelEstablished() && byteBuffer.hasRemaining()) {
                    this.m_BrotherTunnel.beforeSend(byteBuffer);
                    if (!this.m_BrotherTunnel.write(byteBuffer, true)) {
                        selectionKey.cancel();
                    }
                }
            } else if (i < 0) {
                dispose();
            }
        } catch (Exception e) {
            e.printStackTrace();
            dispose();
        }
    }

    public void onWritable(SelectionKey selectionKey) {
        try {
            beforeSend(this.m_SendRemainBuffer);
            if (write(this.m_SendRemainBuffer, false)) {
                selectionKey.cancel();
                if (isTunnelEstablished()) {
                    this.m_BrotherTunnel.beginReceive();
                } else {
                    beginReceive();
                }
            }
        } catch (Exception unused) {
            dispose();
        }
    }

    public void dispose() {
        disposeInternal(true);
    }

    void disposeInternal(boolean z) {
        if (this.m_Disposed) {
            return;
        }
        try {
            this.m_InnerChannel.close();
        } catch (Exception unused) {
        }
        if (this.m_BrotherTunnel != null && z) {
            this.m_BrotherTunnel.disposeInternal(false);
        }
        this.m_InnerChannel = null;
        this.m_SendRemainBuffer = null;
        this.m_Selector = null;
        this.m_BrotherTunnel = null;
        this.m_Disposed = true;
        SessionCount--;
        onDispose();
    }

    private void log(String str, String str2) {
        Log.d(GlobalSettings.LOG_TAG, String.format("[TCP] [%s] [%s=>%s] [%d=>%d] [%s]", str, this.m_InnerChannel.socket().getLocalAddress().getHostAddress().toString(), ((InetSocketAddress) this.m_InnerChannel.socket().getRemoteSocketAddress()).getHostString(), Integer.valueOf(this.m_InnerChannel.socket().getLocalPort()), Integer.valueOf(this.m_InnerChannel.socket().getPort()), str2));
    }
}
