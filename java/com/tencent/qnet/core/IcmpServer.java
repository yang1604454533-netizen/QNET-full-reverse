package com.tencent.qnet.core;

import com.tencent.qnet.net.StatManager;

/* JADX INFO: loaded from: classes.dex */
public class IcmpServer implements Runnable {
    private Thread m_thread;
    private boolean m_isRunning = false;
    int m_socket = 0;
    private int m_main_ip = 0;
    private int m_real_ping = 0;
    private int m_effective_ping = 0;
    private int m_ping_count = 0;
    private long m_last_ping_time = 0;

    public static native void icmpClose(int i);

    public static native int icmpPing(int i, int i2);

    public static native int icmpSocket();

    public static native int icmpTryGetPing(int i);

    public static native int icmpTryGetPingCount(int i);

    static {
        System.loadLibrary("native-libicmp");
    }

    class PingInfo {
        int Count;
        int Ping;
        int PingCount;
        int ToPingCount;

        PingInfo() {
        }
    }

    public void start() {
        this.m_thread = new Thread(this);
        this.m_thread.setName(IcmpServer.class.getSimpleName());
        this.m_thread.start();
    }

    public void stop() {
        this.m_isRunning = false;
        if (this.m_socket >= 0) {
            icmpClose(this.m_socket);
            this.m_socket = 0;
        }
    }

    public int get_ping() {
        return this.m_real_ping;
    }

    public int get_main_ip() {
        return this.m_main_ip;
    }

    public int get_effective_ping() {
        return this.m_effective_ping;
    }

    private void update_main_ip() {
        int i = StatManager.Instance.get_main_ip();
        if (i > 0) {
            if (this.m_main_ip != i) {
                this.m_ping_count = 0;
                this.m_real_ping = 0;
                this.m_effective_ping = 0;
                this.m_main_ip = i;
            }
            icmpPing(this.m_socket, this.m_main_ip);
            this.m_real_ping = icmpTryGetPing(this.m_main_ip);
            if (this.m_real_ping <= 0 || this.m_real_ping >= 500 || this.m_ping_count > 5) {
                return;
            }
            int i2 = (this.m_real_ping / 2) + 3 + (this.m_effective_ping * this.m_ping_count);
            int i3 = this.m_ping_count + 1;
            this.m_ping_count = i3;
            this.m_effective_ping = i2 / i3;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.m_isRunning = true;
            this.m_socket = icmpSocket();
            if (this.m_socket <= 0) {
                return;
            }
            LocalVpnService.Instance.protect(this.m_socket);
            while (this.m_isRunning) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.m_last_ping_time > 1000) {
                    update_main_ip();
                    this.m_last_ping_time = jCurrentTimeMillis;
                } else {
                    Thread.sleep(100L);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            icmpClose(this.m_socket);
        }
    }
}
