package com.tencent.qnet.core;

import android.util.SparseArray;
import com.tencent.qnet.dns.DnsPacket;
import com.tencent.qnet.dns.Question;
import com.tencent.qnet.dns.Resource;
import com.tencent.qnet.dns.ResourcePointer;
import com.tencent.qnet.tcpip.CommonMethods;
import com.tencent.qnet.tcpip.IPHeader;
import com.tencent.qnet.tcpip.UDPHeader;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class DnsProxy implements Runnable {
    public boolean Stopped;
    private short m_QueryID;
    private Thread m_ReceivedThread;
    private static final ConcurrentHashMap<Integer, String> IPDomainMaps = new ConcurrentHashMap<>();
    private static final ConcurrentHashMap<String, Integer> DomainIPMaps = new ConcurrentHashMap<>();
    private final long QUERY_TIMEOUT_NS = 10000000000L;
    private SparseArray<QueryState> m_QueryArray = new SparseArray<>();
    private DatagramSocket m_Client = new DatagramSocket(0);

    private class QueryState {
        public int ClientIP;
        public short ClientPort;
        public short ClientQueryID;
        public long QueryNanoTime;
        public int RemoteIP;
        public short RemotePort;

        private QueryState() {
        }
    }

    public static String reverseLookup(int i) {
        return IPDomainMaps.get(Integer.valueOf(i));
    }

    public void start() {
        this.m_ReceivedThread = new Thread(this);
        this.m_ReceivedThread.setName("DnsProxyThread");
        this.m_ReceivedThread.start();
    }

    public void stop() {
        this.Stopped = true;
        if (this.m_Client != null) {
            this.m_Client.close();
            this.m_Client = null;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            byte[] bArr = new byte[2000];
            IPHeader iPHeader = new IPHeader(bArr, 0);
            iPHeader.Default();
            UDPHeader uDPHeader = new UDPHeader(bArr, 20);
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            byteBufferWrap.position(28);
            ByteBuffer byteBufferSlice = byteBufferWrap.slice();
            DatagramPacket datagramPacket = new DatagramPacket(bArr, 28, bArr.length - 28);
            while (this.m_Client != null && !this.m_Client.isClosed()) {
                datagramPacket.setLength(bArr.length - 28);
                this.m_Client.receive(datagramPacket);
                byteBufferSlice.clear();
                byteBufferSlice.limit(datagramPacket.getLength());
                try {
                    DnsPacket dnsPacketFromBytes = DnsPacket.FromBytes(byteBufferSlice);
                    if (dnsPacketFromBytes != null) {
                        OnDnsResponseReceived(iPHeader, uDPHeader, dnsPacketFromBytes);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    LocalVpnService.Instance.writeLog("Parse dns error: %s", e);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        } finally {
            stop();
        }
    }

    private int getFirstIP(DnsPacket dnsPacket) {
        for (int i = 0; i < dnsPacket.Header.ResourceCount; i++) {
            Resource resource = dnsPacket.Resources[i];
            if (resource.Type == 1) {
                return CommonMethods.readInt(resource.Data, 0);
            }
        }
        return 0;
    }

    private void tamperDnsResponse(byte[] bArr, DnsPacket dnsPacket, int i) {
        Question question = dnsPacket.Questions[0];
        dnsPacket.Header.setResourceCount((short) 1);
        dnsPacket.Header.setAResourceCount((short) 0);
        dnsPacket.Header.setEResourceCount((short) 0);
        ResourcePointer resourcePointer = new ResourcePointer(bArr, question.Offset() + question.Length());
        resourcePointer.setDomain((short) -16372);
        resourcePointer.setType(question.Type);
        resourcePointer.setClass(question.Class);
        resourcePointer.setTTL(ProxyConfig.Instance.getDnsTTL());
        resourcePointer.setDataLength((short) 4);
        resourcePointer.setIP(i);
        dnsPacket.Size = question.Length() + 12 + 16;
    }

    private int getOrCreateFakeIP(String str) {
        Integer numValueOf;
        Integer num = DomainIPMaps.get(str);
        if (num == null) {
            int iHashCode = str.hashCode();
            do {
                numValueOf = Integer.valueOf(ProxyConfig.FAKE_NETWORK_IP | (65535 & iHashCode));
                iHashCode++;
            } while (IPDomainMaps.containsKey(numValueOf));
            DomainIPMaps.put(str, numValueOf);
            IPDomainMaps.put(numValueOf, str);
            num = numValueOf;
        }
        return num.intValue();
    }

    private boolean dnsPollution(byte[] bArr, DnsPacket dnsPacket) {
        if (dnsPacket.Header.QuestionCount > 0) {
            Question question = dnsPacket.Questions[0];
            if (question.Type == 1) {
                if (ProxyConfig.Instance.needProxy(question.Domain, getFirstIP(dnsPacket))) {
                    tamperDnsResponse(bArr, dnsPacket, getOrCreateFakeIP(question.Domain));
                    return true;
                }
            }
        }
        return false;
    }

    private void OnDnsResponseReceived(IPHeader iPHeader, UDPHeader uDPHeader, DnsPacket dnsPacket) {
        QueryState queryState;
        synchronized (this.m_QueryArray) {
            queryState = this.m_QueryArray.get(dnsPacket.Header.ID);
            if (queryState != null) {
                this.m_QueryArray.remove(dnsPacket.Header.ID);
            }
        }
        if (queryState != null) {
            dnsPollution(uDPHeader.m_Data, dnsPacket);
            dnsPacket.Header.setID(queryState.ClientQueryID);
            iPHeader.setSourceIP(queryState.RemoteIP);
            iPHeader.setDestinationIP(queryState.ClientIP);
            iPHeader.setProtocol(IPHeader.UDP);
            iPHeader.setTotalLength(dnsPacket.Size + 28);
            uDPHeader.setSourcePort(queryState.RemotePort);
            uDPHeader.setDestinationPort(queryState.ClientPort);
            uDPHeader.setTotalLength(dnsPacket.Size + 8);
            LocalVpnService.Instance.sendUDPPacket(iPHeader, uDPHeader);
        }
    }

    private int getIPFromCache(String str) {
        Integer num = DomainIPMaps.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    private boolean interceptDns(IPHeader iPHeader, UDPHeader uDPHeader, DnsPacket dnsPacket) {
        Question question = dnsPacket.Questions[0];
        if (question.Type != 1 || !ProxyConfig.Instance.needProxy(question.Domain, getIPFromCache(question.Domain))) {
            return false;
        }
        tamperDnsResponse(iPHeader.m_Data, dnsPacket, getOrCreateFakeIP(question.Domain));
        int sourceIP = iPHeader.getSourceIP();
        short sourcePort = uDPHeader.getSourcePort();
        iPHeader.setSourceIP(iPHeader.getDestinationIP());
        iPHeader.setDestinationIP(sourceIP);
        iPHeader.setTotalLength(dnsPacket.Size + 28);
        uDPHeader.setSourcePort(uDPHeader.getDestinationPort());
        uDPHeader.setDestinationPort(sourcePort);
        uDPHeader.setTotalLength(dnsPacket.Size + 8);
        LocalVpnService.Instance.sendUDPPacket(iPHeader, uDPHeader);
        return true;
    }

    private void clearExpiredQueries() {
        long jNanoTime = System.nanoTime();
        for (int size = this.m_QueryArray.size() - 1; size >= 0; size--) {
            if (jNanoTime - this.m_QueryArray.valueAt(size).QueryNanoTime > 10000000000L) {
                this.m_QueryArray.removeAt(size);
            }
        }
    }

    public void onDnsRequestReceived(IPHeader iPHeader, UDPHeader uDPHeader, DnsPacket dnsPacket) {
        if (interceptDns(iPHeader, uDPHeader, dnsPacket)) {
            return;
        }
        QueryState queryState = new QueryState();
        queryState.ClientQueryID = dnsPacket.Header.ID;
        queryState.QueryNanoTime = System.nanoTime();
        queryState.ClientIP = iPHeader.getSourceIP();
        queryState.ClientPort = uDPHeader.getSourcePort();
        queryState.RemoteIP = iPHeader.getDestinationIP();
        queryState.RemotePort = uDPHeader.getDestinationPort();
        this.m_QueryID = (short) (this.m_QueryID + 1);
        dnsPacket.Header.setID(this.m_QueryID);
        synchronized (this.m_QueryArray) {
            clearExpiredQueries();
            this.m_QueryArray.put(this.m_QueryID, queryState);
        }
        InetSocketAddress inetSocketAddress = new InetSocketAddress(CommonMethods.ipIntToInet4Address(queryState.RemoteIP), queryState.RemotePort);
        DatagramPacket datagramPacket = new DatagramPacket(uDPHeader.m_Data, uDPHeader.m_Offset + 8, dnsPacket.Size);
        datagramPacket.setSocketAddress(inetSocketAddress);
        try {
            if (LocalVpnService.Instance.protect(this.m_Client)) {
                this.m_Client.send(datagramPacket);
            } else {
                System.err.println("VPN protect udp socket failed.");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
