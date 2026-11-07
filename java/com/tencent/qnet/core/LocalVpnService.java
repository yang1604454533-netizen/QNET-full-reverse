package com.tencent.qnet.core;

import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.VpnService;
import android.os.Build;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.tencent.qim.R;
import com.tencent.qnet.dns.DnsPacket;
import com.tencent.qnet.global.GlobalSettings;
import com.tencent.qnet.global.ServerHelper;
import com.tencent.qnet.net.DelayThread;
import com.tencent.qnet.net.NetConfigChange;
import com.tencent.qnet.net.NetLog;
import com.tencent.qnet.net.NetworkConfig;
import com.tencent.qnet.net.StatManager;
import com.tencent.qnet.pcap.EthernetHeader;
import com.tencent.qnet.pcap.PcapDataHeader;
import com.tencent.qnet.pcap.PcapDump;
import com.tencent.qnet.tcpip.CommonMethods;
import com.tencent.qnet.tcpip.IPHeader;
import com.tencent.qnet.tcpip.TCPHeader;
import com.tencent.qnet.tcpip.UDPHeader;
import com.tencent.qnet.ui.AppInfo;
import com.tencent.qnet.ui.AppProxyManager;
import com.tencent.qnet.ui.MainActivity;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public class LocalVpnService extends VpnService implements Runnable {
    private static int ID = 0;
    public static LocalVpnService Instance = null;
    public static boolean IsActive = true;
    public static boolean IsRunning;
    public static int LOCAL_IP;
    public static String ProxyUrl;
    private static ConcurrentHashMap<onStatusChangedListener, Object> m_OnStatusChangedListeners = new ConcurrentHashMap<>();
    SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
    private ByteBuffer m_DNSBuffer;
    private DnsProxy m_DnsProxy;
    private Handler m_Handler;
    private IPHeader m_IPHeader;
    private byte[] m_Packet;
    private long m_ReceivedBytes;
    private long m_SentBytes;
    private TCPHeader m_TCPHeader;
    private TcpProxyServer m_TcpProxyServer;
    private UDPHeader m_UDPHeader;
    private UdpProxyServer2 m_UdpProxyServer;
    private ParcelFileDescriptor m_VPNInterface;
    private FileOutputStream m_VPNOutputStream;
    private Thread m_VPNThread;
    private IcmpServer m_icmpServer;
    private NetLog m_log;
    private PcapDump m_pcap;

    public interface onStatusChangedListener {
        void onLogReceived(String str);

        void onStatusChanged(String str, Boolean bool);
    }

    public LocalVpnService() {
        ID++;
        this.m_Handler = new Handler();
        this.m_Packet = new byte[20000];
        this.m_IPHeader = new IPHeader(this.m_Packet, 0);
        this.m_TCPHeader = new TCPHeader(this.m_Packet, 20);
        this.m_UDPHeader = new UDPHeader(this.m_Packet, 20);
        this.m_DNSBuffer = ((ByteBuffer) ByteBuffer.wrap(this.m_Packet).position(28)).slice();
        Instance = this;
        System.out.printf("New VPNService(%d)\n", Integer.valueOf(ID));
    }

    public boolean isWhiteIP(IPHeader iPHeader) {
        if (ServerHelper.QNET_SERVER_IP == null) {
            return false;
        }
        for (int i : ServerHelper.QNET_SERVER_IP) {
            if (i == iPHeader.getSourceIP()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Service
    public void onCreate() {
        System.out.printf("VPNService(%s) created.\n", Integer.valueOf(ID));
        this.m_VPNThread = new Thread(this, "VPNServiceThread");
        this.m_VPNThread.start();
        super.onCreate();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        IsRunning = true;
        return super.onStartCommand(intent, i, i2);
    }

    public static void addOnStatusChangedListener(onStatusChangedListener onstatuschangedlistener) {
        if (m_OnStatusChangedListeners.containsKey(onstatuschangedlistener)) {
            return;
        }
        m_OnStatusChangedListeners.put(onstatuschangedlistener, 1);
    }

    public static void removeOnStatusChangedListener(onStatusChangedListener onstatuschangedlistener) {
        if (m_OnStatusChangedListeners.containsKey(onstatuschangedlistener)) {
            m_OnStatusChangedListeners.remove(onstatuschangedlistener);
        }
    }

    private void onStatusChanged(final String str, final boolean z) {
        this.m_Handler.post(new Runnable() { // from class: com.tencent.qnet.core.LocalVpnService.1
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = LocalVpnService.m_OnStatusChangedListeners.entrySet().iterator();
                while (it.hasNext()) {
                    ((onStatusChangedListener) ((Map.Entry) it.next()).getKey()).onStatusChanged(str, Boolean.valueOf(z));
                }
            }
        });
    }

    public void writeLog(String str, Object... objArr) {
        final String str2 = String.format(str, objArr);
        this.m_Handler.post(new Runnable() { // from class: com.tencent.qnet.core.LocalVpnService.2
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = LocalVpnService.m_OnStatusChangedListeners.entrySet().iterator();
                while (it.hasNext()) {
                    ((onStatusChangedListener) ((Map.Entry) it.next()).getKey()).onLogReceived(str2);
                }
            }
        });
    }

    public void sendUDPPacket(IPHeader iPHeader, UDPHeader uDPHeader) {
        try {
            CommonMethods.ComputeUDPChecksum(iPHeader, uDPHeader);
            if (PcapDump.DUMP) {
                dumpIp(iPHeader);
            }
            this.m_VPNOutputStream.write(iPHeader.m_Data, iPHeader.m_Offset, iPHeader.getTotalLength());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    String getAppInstallID() {
        SharedPreferences sharedPreferences = getSharedPreferences("SmartProxy", 0);
        String string = sharedPreferences.getString("AppInstallID", null);
        if (string != null && !string.isEmpty()) {
            return string;
        }
        String string2 = UUID.randomUUID().toString();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("AppInstallID", string2);
        editorEdit.apply();
        return string2;
    }

    String getVersionName() {
        try {
            return getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return "0.0";
        }
    }

    public FileOutputStream getVPNOutputStream() {
        return this.m_VPNOutputStream;
    }

    public int getPing() {
        if (this.m_icmpServer != null) {
            return this.m_icmpServer.get_effective_ping();
        }
        return 0;
    }

    public int getRealPing() {
        if (this.m_icmpServer != null) {
            return this.m_icmpServer.get_ping();
        }
        return 0;
    }

    public int getMainIP() {
        if (this.m_icmpServer != null) {
            return this.m_icmpServer.get_main_ip();
        }
        return 0;
    }

    @Override // java.lang.Runnable
    public synchronized void run() {
        try {
            try {
                try {
                    System.out.printf("VPNService(%s) work thread is runing...\n", Integer.valueOf(ID));
                    ProxyConfig.AppInstallID = getAppInstallID();
                    ProxyConfig.AppVersion = getVersionName();
                    System.out.printf("AppInstallID: %s\n", ProxyConfig.AppInstallID);
                    writeLog("Android version: %s", Build.VERSION.RELEASE);
                    writeLog("App version: %s", ProxyConfig.AppVersion);
                    waitUntilPreapred();
                    try {
                        ProxyConfig.Instance.loadFromFile(getResources().openRawResource(R.raw.config));
                        while (true) {
                            if (IsRunning) {
                                runVPN();
                            } else {
                                Thread.sleep(100L);
                            }
                        }
                    } catch (Exception e) {
                        String message = e.getMessage();
                        if (message == null || message.isEmpty()) {
                            message = e.toString();
                        }
                        writeLog("Load failed with error: %s", message);
                    }
                    this.m_TcpProxyServer = new TcpProxyServer(0);
                    this.m_TcpProxyServer.start();
                    writeLog("LocalTcpServer started.", new Object[0]);
                    this.m_UdpProxyServer = new UdpProxyServer2(this.m_VPNOutputStream);
                    this.m_UdpProxyServer.start();
                    writeLog("LocalUdpServer started.", new Object[0]);
                    this.m_DnsProxy = new DnsProxy();
                    this.m_DnsProxy.start();
                    writeLog("LocalDnsProxy started.", new Object[0]);
                    this.m_icmpServer = new IcmpServer();
                    this.m_icmpServer.start();
                    writeLog("IcmpServer started.", new Object[0]);
                } catch (InterruptedException unused) {
                    writeLog("App terminated.", new Object[0]);
                    dispose();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                writeLog("Fatal error: %s", e2.toString());
                writeLog("App terminated.", new Object[0]);
                dispose();
            }
        } catch (Throwable th) {
            writeLog("App terminated.", new Object[0]);
            dispose();
            throw th;
        }
    }

    private void runVPN() throws Exception {
        this.m_VPNInterface = establishVPN();
        this.m_VPNOutputStream = new FileOutputStream(this.m_VPNInterface.getFileDescriptor());
        DelayThread.Instance.Start();
        NetConfigChange.Instance.start();
        StatManager.Instance.reset();
        FileInputStream fileInputStream = new FileInputStream(this.m_VPNInterface.getFileDescriptor());
        PcapDump.DUMP = GlobalSettings.getInstance().dumpPcap();
        if (PcapDump.DUMP) {
            this.m_pcap = new PcapDump(AppProxyManager.Instance.getProxyApp() != null ? AppProxyManager.Instance.getProxyApp().getPkgName() : "null");
            this.m_pcap.open();
        }
        int i = 0;
        while (i != -1 && IsRunning) {
            while (true) {
                i = fileInputStream.read(this.m_Packet);
                if (i <= 0 || !IsRunning) {
                    break;
                }
                if (this.m_DnsProxy.Stopped || this.m_TcpProxyServer.Stopped || this.m_UdpProxyServer.Stopped) {
                    fileInputStream.close();
                    throw new Exception("LocalServer stopped.");
                }
                onIPPacketReceived(this.m_IPHeader, i);
            }
            Thread.sleep(1L);
        }
        if (PcapDump.DUMP && this.m_pcap != null) {
            this.m_pcap.close();
            this.m_pcap = null;
        }
        DelayThread.Instance.Stop();
        NetConfigChange.Instance.stop();
        fileInputStream.close();
        disconnectVPN();
    }

    void onIPPacketReceived(IPHeader iPHeader, int i) throws IOException {
        NetworkConfig networkConfigInstnace = NetworkConfig.Instnace();
        byte protocol = iPHeader.getProtocol();
        if (protocol != 6) {
            if (protocol != 17) {
                return;
            }
            UDPHeader uDPHeader = this.m_UDPHeader;
            if (iPHeader.getSourceIP() == LOCAL_IP && uDPHeader.getSourcePort() == ((short) UdpProxyServer2.LOCAL_PORT)) {
                NatSession2 session = NatSessionManager2.getSession(iPHeader.getDestinationIP());
                if (session != null) {
                    iPHeader.setSourceIP(session.RemoteIP);
                    uDPHeader.setSourcePort((short) session.RemotePort);
                    iPHeader.setDestinationIP(LOCAL_IP);
                    uDPHeader.setDestinationPort((short) session.LocalPort);
                    CommonMethods.ComputeUDPChecksum(iPHeader, uDPHeader);
                    uDPHeader.getTotalLength();
                    if (IsActive && networkConfigInstnace.isUDPActive()) {
                        DelayThread.Instance.Send(iPHeader.m_Data, iPHeader.m_Offset, i, false, iPHeader.getSourceIP());
                    } else {
                        this.m_VPNOutputStream.write(iPHeader.m_Data, iPHeader.m_Offset, i);
                        if (PcapDump.DUMP) {
                            dumpIp(iPHeader);
                        }
                    }
                    StatManager.Instance.InPackage(iPHeader.getSourceIP(), i);
                    this.m_ReceivedBytes += (long) i;
                    return;
                }
                System.out.printf("NoSession: %s %s\n", iPHeader.toString(), uDPHeader.toString());
                return;
            }
            if (iPHeader.getSourceIP() == LOCAL_IP && uDPHeader.getDestinationPort() == 53) {
                uDPHeader.m_Offset = iPHeader.getHeaderLength();
                this.m_DNSBuffer.clear();
                this.m_DNSBuffer.limit(iPHeader.getDataLength() - 8);
                DnsPacket dnsPacketFromBytes = DnsPacket.FromBytes(this.m_DNSBuffer);
                if (dnsPacketFromBytes == null || dnsPacketFromBytes.Header.QuestionCount <= 0) {
                    return;
                }
                if (PcapDump.DUMP) {
                    dumpIp(iPHeader);
                }
                this.m_DnsProxy.onDnsRequestReceived(iPHeader, uDPHeader, dnsPacketFromBytes);
                return;
            }
            NatSession2 session2 = NatSessionManager2.getSession(iPHeader, uDPHeader);
            if (session2 == null) {
                session2 = NatSessionManager2.createSession(iPHeader, uDPHeader);
            }
            session2.LastNanoTime = System.nanoTime();
            session2.PacketSent++;
            int destinationIP = iPHeader.getDestinationIP();
            int totalLength = uDPHeader.getTotalLength() - 8;
            if (PcapDump.DUMP) {
                dumpIp(iPHeader);
            }
            iPHeader.setSourceIP(session2.getKey());
            iPHeader.setDestinationIP(LOCAL_IP);
            uDPHeader.setDestinationPort((short) UdpProxyServer2.LOCAL_PORT);
            CommonMethods.ComputeUDPChecksum(iPHeader, uDPHeader);
            if (IsActive && networkConfigInstnace.isUDPActive()) {
                DelayThread.Instance.Send(iPHeader.m_Data, iPHeader.m_Offset, i, true, destinationIP);
            } else {
                this.m_VPNOutputStream.write(iPHeader.m_Data, iPHeader.m_Offset, i);
            }
            StatManager.Instance.OutPackage(destinationIP, i);
            session2.BytesSent += totalLength;
            this.m_SentBytes += (long) i;
            return;
        }
        TCPHeader tCPHeader = this.m_TCPHeader;
        tCPHeader.m_Offset = iPHeader.getHeaderLength();
        if (iPHeader.getSourceIP() == LOCAL_IP) {
            if (tCPHeader.getSourcePort() == this.m_TcpProxyServer.Port) {
                NatSession session3 = NatSessionManager.getSession(tCPHeader.getDestinationPort());
                if (session3 != null) {
                    iPHeader.setSourceIP(iPHeader.getDestinationIP());
                    tCPHeader.setSourcePort(session3.RemotePort);
                    iPHeader.setDestinationIP(LOCAL_IP);
                    CommonMethods.ComputeTCPChecksum(iPHeader, tCPHeader);
                    iPHeader.getDataLength();
                    tCPHeader.getHeaderLength();
                    if (isWhiteIP(iPHeader)) {
                        this.m_VPNOutputStream.write(iPHeader.m_Data, iPHeader.m_Offset, i);
                    } else if (!IsActive || !networkConfigInstnace.isTCPActive()) {
                        this.m_VPNOutputStream.write(iPHeader.m_Data, iPHeader.m_Offset, i);
                        if (PcapDump.DUMP) {
                            dumpIp(iPHeader);
                        }
                    } else {
                        DelayThread.Instance.Send(iPHeader.m_Data, iPHeader.m_Offset, i, false, iPHeader.getSourceIP());
                    }
                    StatManager.Instance.InPackage(iPHeader.getSourceIP(), i);
                    this.m_ReceivedBytes += (long) i;
                    return;
                }
                Log.e(GlobalSettings.LOG_TAG, "NoSession:  " + iPHeader.toString() + " ," + tCPHeader.toString());
                return;
            }
            short sourcePort = tCPHeader.getSourcePort();
            NatSession session4 = NatSessionManager.getSession(sourcePort);
            if (session4 == null || session4.RemoteIP != iPHeader.getDestinationIP() || session4.RemotePort != tCPHeader.getDestinationPort()) {
                session4 = NatSessionManager.createSession(sourcePort, iPHeader.getDestinationIP(), tCPHeader.getDestinationPort());
            }
            session4.LastNanoTime = System.nanoTime();
            session4.PacketSent++;
            int dataLength = iPHeader.getDataLength() - tCPHeader.getHeaderLength();
            if (session4.PacketSent == 2 && dataLength == 0) {
                return;
            }
            if (session4.BytesSent == 0 && dataLength > 10) {
                String host = HttpHostHeaderParser.parseHost(tCPHeader.m_Data, tCPHeader.m_Offset + tCPHeader.getHeaderLength(), dataLength);
                if (host != null) {
                    session4.RemoteHost = host;
                } else {
                    System.out.printf("No host name found: %s", session4.RemoteHost);
                }
            }
            if (PcapDump.DUMP) {
                dumpIp(iPHeader);
            }
            iPHeader.setSourceIP(iPHeader.getDestinationIP());
            iPHeader.setDestinationIP(LOCAL_IP);
            tCPHeader.setDestinationPort(this.m_TcpProxyServer.Port);
            CommonMethods.ComputeTCPChecksum(iPHeader, tCPHeader);
            if (isWhiteIP(iPHeader) || !IsActive || !networkConfigInstnace.isTCPActive()) {
                this.m_VPNOutputStream.write(iPHeader.m_Data, iPHeader.m_Offset, i);
            } else {
                DelayThread.Instance.Send(iPHeader.m_Data, iPHeader.m_Offset, i, true, iPHeader.getSourceIP());
            }
            StatManager.Instance.OutPackage(iPHeader.getSourceIP(), i);
            session4.BytesSent += dataLength;
            this.m_SentBytes += (long) i;
        }
    }

    private void logTcp(IPHeader iPHeader, TCPHeader tCPHeader) {
        this.m_log.write(String.format("%s,TCP,%s,%s,%d,%d,%d,%s,%d,%d", this.dateformat.format(Long.valueOf(System.currentTimeMillis())), CommonMethods.ipIntToString(iPHeader.getSourceIP()), CommonMethods.ipIntToString(iPHeader.getDestinationIP()), Integer.valueOf(tCPHeader.getSourcePort() & 65535), Integer.valueOf(tCPHeader.getDestinationPort() & 65535), Integer.valueOf(iPHeader.getDataLength() - tCPHeader.getHeaderLength()), tCPHeader.getTypeStr(), Long.valueOf(((long) tCPHeader.getSeqID()) & BodyPartID.bodyIdMax), Long.valueOf(((long) tCPHeader.getAckID()) & BodyPartID.bodyIdMax)));
    }

    public void dumpIp(IPHeader iPHeader) {
        PcapDataHeader pcapDataHeader = new PcapDataHeader();
        pcapDataHeader.writeTimestamp();
        pcapDataHeader.writeLen(iPHeader.getTotalLength());
        synchronized (this.m_pcap) {
            this.m_pcap.write(pcapDataHeader.getBuff());
            this.m_pcap.write(EthernetHeader.getDefault().getBuff());
            this.m_pcap.write(iPHeader.m_Data, iPHeader.m_Offset, iPHeader.getTotalLength());
        }
    }

    private void logUdp(IPHeader iPHeader, UDPHeader uDPHeader) {
        this.m_log.write(String.format("%s,UDP,%s,%s,%d,%d,%d,%s,%d,%d", this.dateformat.format(Long.valueOf(System.currentTimeMillis())), CommonMethods.ipIntToString(iPHeader.getSourceIP()), CommonMethods.ipIntToString(iPHeader.getDestinationIP()), Integer.valueOf(uDPHeader.getSourcePort() & 65535), Integer.valueOf(uDPHeader.getDestinationPort() & 65535), Integer.valueOf(uDPHeader.getTotalLength() - 8), "", 0, 0));
    }

    private void waitUntilPreapred() {
        while (prepare(this) != null) {
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    private ParcelFileDescriptor establishVPN() throws Exception {
        VpnService.Builder builder = new VpnService.Builder(this);
        builder.setMtu(ProxyConfig.Instance.getMTU());
        ProxyConfig.IPAddress defaultLocalIP = ProxyConfig.Instance.getDefaultLocalIP();
        LOCAL_IP = CommonMethods.ipStringToInt(defaultLocalIP.Address);
        builder.addAddress(defaultLocalIP.Address, defaultLocalIP.PrefixLength);
        Iterator<ProxyConfig.IPAddress> it = ProxyConfig.Instance.getDnsList().iterator();
        while (it.hasNext()) {
            builder.addDnsServer(it.next().Address);
        }
        if (ProxyConfig.Instance.getRouteList().size() > 0) {
            for (ProxyConfig.IPAddress iPAddress : ProxyConfig.Instance.getRouteList()) {
                builder.addRoute(iPAddress.Address, iPAddress.PrefixLength);
            }
            builder.addRoute(CommonMethods.ipIntToString(ProxyConfig.FAKE_NETWORK_IP), 16);
        } else {
            builder.addRoute("0.0.0.0", 0);
        }
        Method method = Class.forName("android.os.SystemProperties").getMethod("get", String.class);
        ArrayList arrayList = new ArrayList();
        for (String str : new String[]{"net.dns1", "net.dns2", "net.dns3", "net.dns4"}) {
            String str2 = (String) method.invoke(null, str);
            if (str2 != null && !"".equals(str2) && !arrayList.contains(str2)) {
                arrayList.add(str2);
                if (str2.replaceAll("\\d", "").length() == 3) {
                    builder.addRoute(str2, 32);
                } else {
                    builder.addRoute(str2, 128);
                }
            }
        }
        if (AppProxyManager.isLollipopOrAbove) {
            if (AppProxyManager.Instance.proxyAppInfo.size() == 0) {
                writeLog("Proxy All Apps", new Object[0]);
            }
            for (AppInfo appInfo : AppProxyManager.Instance.proxyAppInfo) {
                builder.addAllowedApplication(getApplicationContext().getPackageName());
                try {
                    builder.addAllowedApplication(appInfo.getPkgName());
                    writeLog(getString(R.string.log_test_program) + ": " + appInfo.getAppLabel(), new Object[0]);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        builder.setConfigureIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) MainActivity.class), 0));
        builder.setSession(ProxyConfig.Instance.getSessionName());
        ParcelFileDescriptor parcelFileDescriptorEstablish = builder.establish();
        onStatusChanged(ProxyConfig.Instance.getSessionName() + " " + getString(R.string.vpn_connected_status), true);
        return parcelFileDescriptorEstablish;
    }

    public void disconnectVPN() {
        try {
            if (this.m_VPNInterface != null) {
                this.m_VPNInterface.close();
                this.m_VPNInterface = null;
            }
        } catch (Exception unused) {
        }
        onStatusChanged(ProxyConfig.Instance.getSessionName() + " " + getString(R.string.vpn_disconnected_status), false);
        this.m_VPNOutputStream = null;
    }

    private synchronized void dispose() {
        disconnectVPN();
        if (this.m_log != null) {
            this.m_log.close();
        }
        if (this.m_TcpProxyServer != null) {
            this.m_TcpProxyServer.stop();
            this.m_TcpProxyServer = null;
            writeLog("LocalTcpServer stopped.", new Object[0]);
        }
        if (this.m_UdpProxyServer != null) {
            this.m_UdpProxyServer.stop();
            this.m_UdpProxyServer = null;
            writeLog("LocalUdpServer stopped.", new Object[0]);
        }
        if (this.m_DnsProxy != null) {
            this.m_DnsProxy.stop();
            this.m_DnsProxy = null;
            writeLog("LocalDnsProxy stopped.", new Object[0]);
        }
        if (this.m_icmpServer != null) {
            this.m_icmpServer.stop();
            this.m_icmpServer = null;
            writeLog("IcmpServer stopped.", new Object[0]);
        }
        stopSelf();
        IsActive = false;
        IsRunning = false;
    }

    @Override // android.app.Service
    public void onDestroy() {
        System.out.printf("VPNService(%s) destroied.\n", Integer.valueOf(ID));
        if (this.m_VPNThread != null) {
            this.m_VPNThread.interrupt();
        }
    }
}
