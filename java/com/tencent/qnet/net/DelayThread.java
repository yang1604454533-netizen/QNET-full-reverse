package com.tencent.qnet.net;

import android.util.Log;
import com.tencent.qnet.core.LocalVpnService;
import com.tencent.qnet.global.GlobalSettings;
import com.tencent.qnet.pcap.PcapDump;
import com.tencent.qnet.tcpip.CommonMethods;
import com.tencent.qnet.tcpip.IPHeader;
import com.tencent.qnet.tcpip.TCPHeader;
import com.tencent.qnet.tcpip.UDPHeader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.concurrent.PriorityBlockingQueue;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public class DelayThread implements Runnable {
    public static DelayThread Instance = new DelayThread();
    protected Thread m_downThread;
    protected Thread m_upThread;
    protected PriorityBlockingQueue<DelayPacket> m_upQueue = new PriorityBlockingQueue<>();
    protected PriorityBlockingQueue<DelayPacket> m_downQueue = new PriorityBlockingQueue<>();
    protected boolean m_isRunning = true;
    SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");

    public void Send(byte[] bArr, int i, int i2, boolean z, int i3) throws IOException {
        NetworkConfig networkConfigInstnace = NetworkConfig.Instnace();
        if (networkConfigInstnace.needDrop(z)) {
            return;
        }
        PriorityBlockingQueue<DelayPacket> priorityBlockingQueue = z ? this.m_upQueue : this.m_downQueue;
        int delay = networkConfigInstnace.getDelay(z);
        int ping = LocalVpnService.Instance.getPing();
        int i4 = delay <= ping ? 0 : delay - ping;
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        priorityBlockingQueue.add(new DelayPacket(bArr2, System.currentTimeMillis() + ((long) i4)));
    }

    private DelayThread() {
    }

    public void Start() {
        this.m_isRunning = true;
        this.m_upThread = new Thread(this);
        this.m_upThread.setName("UpwardThread");
        this.m_upThread.start();
        this.m_downThread = new Thread(this);
        this.m_downThread.setName("DownwardThread");
        this.m_downThread.start();
    }

    public void Stop() {
        this.m_isRunning = false;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        DelayPacket delayPacketPeek;
        NetworkConfig networkConfigInstnace = NetworkConfig.Instnace();
        boolean z = Thread.currentThread().getName() == "UpwardThread";
        PriorityBlockingQueue<DelayPacket> priorityBlockingQueue = z ? this.m_upQueue : this.m_downQueue;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i2 = 0;
        while (this.m_isRunning) {
            while (this.m_isRunning) {
                try {
                    if (z && networkConfigInstnace.OutBandwidth > 0) {
                        i = ((networkConfigInstnace.OutBandwidth * 128) * 100) / 1000;
                    } else {
                        i = (z || networkConfigInstnace.InBandwidth <= 0) ? 0 : ((networkConfigInstnace.InBandwidth * 128) * 100) / 1000;
                    }
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    while (true) {
                        long j = 100;
                        if (jCurrentTimeMillis2 - jCurrentTimeMillis <= j) {
                            break;
                        }
                        jCurrentTimeMillis += j;
                        i2 = (i2 > 0 || i <= 0) ? i : i2 + i;
                    }
                    if ((i > 0 && i2 <= 0) || (delayPacketPeek = priorityBlockingQueue.peek()) == null) {
                        break;
                        break;
                    }
                    int length = delayPacketPeek.Packet.length;
                    if (jCurrentTimeMillis2 < delayPacketPeek.SendTime) {
                        break;
                    }
                    DelayPacket delayPacketPoll = priorityBlockingQueue.poll();
                    if (!z) {
                        try {
                            if (PcapDump.DUMP) {
                                LocalVpnService.Instance.dumpIp(new IPHeader(delayPacketPoll.Packet, 0));
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    LocalVpnService.Instance.getVPNOutputStream().write(delayPacketPoll.Packet);
                    if (i > 0) {
                        i2 -= length;
                    }
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                    Log.e(GlobalSettings.LOG_TAG, "DelayThread : " + e2.getMessage());
                    return;
                }
            }
            Thread.sleep(1L);
        }
    }

    private void write_log(NetLog netLog, byte[] bArr) {
        IPHeader iPHeader = new IPHeader(bArr, 0);
        if (iPHeader.getProtocol() == 6) {
            write_tcp(netLog, iPHeader, new TCPHeader(bArr, 20));
        } else if (iPHeader.getProtocol() == 17) {
            write_udp(netLog, iPHeader, new UDPHeader(bArr, 20));
        }
    }

    private void write_tcp(NetLog netLog, IPHeader iPHeader, TCPHeader tCPHeader) {
        netLog.write(String.format("%s,TCP,%s,%s,%d,%d,%d,%s,%d,%d", this.dateformat.format(Long.valueOf(System.currentTimeMillis())), CommonMethods.ipIntToString(iPHeader.getSourceIP()), CommonMethods.ipIntToString(iPHeader.getDestinationIP()), Integer.valueOf(tCPHeader.getSourcePort() & 65535), Integer.valueOf(tCPHeader.getDestinationPort() & 65535), Integer.valueOf(iPHeader.getDataLength() - tCPHeader.getHeaderLength()), tCPHeader.getTypeStr(), Long.valueOf(((long) tCPHeader.getSeqID()) & BodyPartID.bodyIdMax), Long.valueOf(((long) tCPHeader.getAckID()) & BodyPartID.bodyIdMax)));
    }

    private void write_udp(NetLog netLog, IPHeader iPHeader, UDPHeader uDPHeader) {
        netLog.write(String.format("%s,UDP,%s,%s,%d,%d,%d,%s,%d,%d", this.dateformat.format(Long.valueOf(System.currentTimeMillis())), CommonMethods.ipIntToString(iPHeader.getSourceIP()), CommonMethods.ipIntToString(iPHeader.getDestinationIP()), Integer.valueOf(uDPHeader.getSourcePort() & 65535), Integer.valueOf(uDPHeader.getDestinationPort() & 65535), Integer.valueOf(uDPHeader.getTotalLength() - 8), "", 0, 0));
    }
}
