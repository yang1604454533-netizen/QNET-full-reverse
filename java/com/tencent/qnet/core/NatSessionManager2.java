package com.tencent.qnet.core;

import android.util.SparseArray;
import com.tencent.qnet.tcpip.IPHeader;
import com.tencent.qnet.tcpip.UDPHeader;

/* JADX INFO: loaded from: classes.dex */
public class NatSessionManager2 {
    static final int MAX_SESSION_COUNT = 60;
    static final long SESSION_TIMEOUT_NS = 60000000000L;
    static final SparseArray<NatSession2> Sessions = new SparseArray<>();

    public static NatSession2 getSession(int i) {
        NatSession2 natSession2 = Sessions.get(i);
        if (natSession2 != null) {
            natSession2.LastNanoTime = System.nanoTime();
        }
        return natSession2;
    }

    public static NatSession2 getSession(IPHeader iPHeader, UDPHeader uDPHeader) {
        int sourcePort = uDPHeader.getSourcePort() & 65535;
        int sourceIP = iPHeader.getSourceIP() * sourcePort * iPHeader.getDestinationIP() * (uDPHeader.getDestinationPort() & 65535);
        NatSession2 natSession2 = Sessions.get(sourceIP);
        if (natSession2 != null) {
            natSession2.LastNanoTime = System.nanoTime();
        }
        return Sessions.get(sourceIP);
    }

    public static int getSessionCount() {
        return Sessions.size();
    }

    static void clearExpiredSessions() {
        long jNanoTime = System.nanoTime();
        for (int size = Sessions.size() - 1; size >= 0; size--) {
            if (jNanoTime - Sessions.valueAt(size).LastNanoTime > SESSION_TIMEOUT_NS) {
                Sessions.removeAt(size);
            }
        }
    }

    public static NatSession2 createSession(IPHeader iPHeader, UDPHeader uDPHeader) {
        if (Sessions.size() > 60) {
            clearExpiredSessions();
        }
        NatSession2 natSession2 = new NatSession2(iPHeader.getSourceIP(), uDPHeader.getSourcePort() & 65535, iPHeader.getDestinationIP(), uDPHeader.getDestinationPort() & 65535);
        int key = natSession2.getKey();
        natSession2.LastNanoTime = System.nanoTime();
        Sessions.put(key, natSession2);
        return natSession2;
    }
}
