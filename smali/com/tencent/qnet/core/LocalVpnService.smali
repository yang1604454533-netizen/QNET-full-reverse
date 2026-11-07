.class public Lcom/tencent/qnet/core/LocalVpnService;
.super Landroid/net/VpnService;
.source "LocalVpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qnet/core/LocalVpnService$onStatusChangedListener;
    }
.end annotation


# static fields
.field private static ID:I = 0x0

.field public static Instance:Lcom/tencent/qnet/core/LocalVpnService; = null

.field public static IsActive:Z = true

.field public static IsRunning:Z

.field public static LOCAL_IP:I

.field public static ProxyUrl:Ljava/lang/String;

.field private static m_OnStatusChangedListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/tencent/qnet/core/LocalVpnService$onStatusChangedListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dateformat:Ljava/text/SimpleDateFormat;

.field private m_DNSBuffer:Ljava/nio/ByteBuffer;

.field private m_DnsProxy:Lcom/tencent/qnet/core/DnsProxy;

.field private m_Handler:Landroid/os/Handler;

.field private m_IPHeader:Lcom/tencent/qnet/tcpip/IPHeader;

.field private m_Packet:[B

.field private m_ReceivedBytes:J

.field private m_SentBytes:J

.field private m_TCPHeader:Lcom/tencent/qnet/tcpip/TCPHeader;

.field private m_TcpProxyServer:Lcom/tencent/qnet/core/TcpProxyServer;

.field private m_UDPHeader:Lcom/tencent/qnet/tcpip/UDPHeader;

.field private m_UdpProxyServer:Lcom/tencent/qnet/core/UdpProxyServer2;

.field private m_VPNInterface:Landroid/os/ParcelFileDescriptor;

.field private m_VPNOutputStream:Ljava/io/FileOutputStream;

.field private m_VPNThread:Ljava/lang/Thread;

.field private m_icmpServer:Lcom/tencent/qnet/core/IcmpServer;

.field private m_log:Lcom/tencent/qnet/net/NetLog;

.field private m_pcap:Lcom/tencent/qnet/pcap/PcapDump;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qnet/core/LocalVpnService;->m_OnStatusChangedListeners:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 79
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 505
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->dateformat:Ljava/text/SimpleDateFormat;

    .line 80
    sget v0, Lcom/tencent/qnet/core/LocalVpnService;->ID:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/tencent/qnet/core/LocalVpnService;->ID:I

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_Handler:Landroid/os/Handler;

    const/16 v0, 0x4e20

    .line 82
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_Packet:[B

    .line 83
    new-instance v0, Lcom/tencent/qnet/tcpip/IPHeader;

    iget-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_Packet:[B

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/tencent/qnet/tcpip/IPHeader;-><init>([BI)V

    iput-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_IPHeader:Lcom/tencent/qnet/tcpip/IPHeader;

    .line 84
    new-instance v0, Lcom/tencent/qnet/tcpip/TCPHeader;

    iget-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_Packet:[B

    const/16 v4, 0x14

    invoke-direct {v0, v2, v4}, Lcom/tencent/qnet/tcpip/TCPHeader;-><init>([BI)V

    iput-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_TCPHeader:Lcom/tencent/qnet/tcpip/TCPHeader;

    .line 85
    new-instance v0, Lcom/tencent/qnet/tcpip/UDPHeader;

    iget-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_Packet:[B

    invoke-direct {v0, v2, v4}, Lcom/tencent/qnet/tcpip/UDPHeader;-><init>([BI)V

    iput-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_UDPHeader:Lcom/tencent/qnet/tcpip/UDPHeader;

    .line 86
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_Packet:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_DNSBuffer:Ljava/nio/ByteBuffer;

    .line 87
    sput-object p0, Lcom/tencent/qnet/core/LocalVpnService;->Instance:Lcom/tencent/qnet/core/LocalVpnService;

    .line 94
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "New VPNService(%d)\n"

    new-array v1, v1, [Ljava/lang/Object;

    sget v4, Lcom/tencent/qnet/core/LocalVpnService;->ID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 48
    sget-object v0, Lcom/tencent/qnet/core/LocalVpnService;->m_OnStatusChangedListeners:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static addOnStatusChangedListener(Lcom/tencent/qnet/core/LocalVpnService$onStatusChangedListener;)V
    .locals 2

    .line 132
    sget-object v0, Lcom/tencent/qnet/core/LocalVpnService;->m_OnStatusChangedListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    sget-object v0, Lcom/tencent/qnet/core/LocalVpnService;->m_OnStatusChangedListeners:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private declared-synchronized dispose()V
    .locals 4

    monitor-enter p0

    .line 666
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qnet/core/LocalVpnService;->disconnectVPN()V

    .line 668
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_log:Lcom/tencent/qnet/net/NetLog;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_log:Lcom/tencent/qnet/net/NetLog;

    invoke-virtual {v0}, Lcom/tencent/qnet/net/NetLog;->close()V

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_TcpProxyServer:Lcom/tencent/qnet/core/TcpProxyServer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_TcpProxyServer:Lcom/tencent/qnet/core/TcpProxyServer;

    invoke-virtual {v0}, Lcom/tencent/qnet/core/TcpProxyServer;->stop()V

    .line 676
    iput-object v1, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_TcpProxyServer:Lcom/tencent/qnet/core/TcpProxyServer;

    const-string v0, "LocalTcpServer stopped."

    .line 677
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_UdpProxyServer:Lcom/tencent/qnet/core/UdpProxyServer2;

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_UdpProxyServer:Lcom/tencent/qnet/core/UdpProxyServer2;

    invoke-virtual {v0}, Lcom/tencent/qnet/core/UdpProxyServer2;->stop()V

    .line 683
    iput-object v1, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_UdpProxyServer:Lcom/tencent/qnet/core/UdpProxyServer2;

    const-string v0, "LocalUdpServer stopped."

    .line 684
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    :cond_2
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_DnsProxy:Lcom/tencent/qnet/core/DnsProxy;

    if-eqz v0, :cond_3

    .line 689
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_DnsProxy:Lcom/tencent/qnet/core/DnsProxy;

    invoke-virtual {v0}, Lcom/tencent/qnet/core/DnsProxy;->stop()V

    .line 690
    iput-object v1, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_DnsProxy:Lcom/tencent/qnet/core/DnsProxy;

    const-string v0, "LocalDnsProxy stopped."

    .line 691
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    :cond_3
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_icmpServer:Lcom/tencent/qnet/core/IcmpServer;

    if-eqz v0, :cond_4

    .line 696
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_icmpServer:Lcom/tencent/qnet/core/IcmpServer;

    invoke-virtual {v0}, Lcom/tencent/qnet/core/IcmpServer;->stop()V

    .line 697
    iput-object v1, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_icmpServer:Lcom/tencent/qnet/core/IcmpServer;

    const-string v0, "IcmpServer stopped."

    .line 698
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/qnet/core/LocalVpnService;->stopSelf()V

    .line 702
    sput-boolean v2, Lcom/tencent/qnet/core/LocalVpnService;->IsActive:Z

    .line 703
    sput-boolean v2, Lcom/tencent/qnet/core/LocalVpnService;->IsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 665
    monitor-exit p0

    throw v0
.end method

.method private establishVPN()Landroid/os/ParcelFileDescriptor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 573
    new-instance v0, Landroid/net/VpnService$Builder;

    invoke-direct {v0, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 574
    sget-object v1, Lcom/tencent/qnet/core/ProxyConfig;->Instance:Lcom/tencent/qnet/core/ProxyConfig;

    invoke-virtual {v1}, Lcom/tencent/qnet/core/ProxyConfig;->getMTU()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    .line 578
    sget-object v1, Lcom/tencent/qnet/core/ProxyConfig;->Instance:Lcom/tencent/qnet/core/ProxyConfig;

    invoke-virtual {v1}, Lcom/tencent/qnet/core/ProxyConfig;->getDefaultLocalIP()Lcom/tencent/qnet/core/ProxyConfig$IPAddress;

    move-result-object v1

    .line 579
    iget-object v2, v1, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;->Address:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipStringToInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/tencent/qnet/core/LocalVpnService;->LOCAL_IP:I

    .line 580
    iget-object v2, v1, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;->Address:Ljava/lang/String;

    iget v1, v1, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;->PrefixLength:I

    invoke-virtual {v0, v2, v1}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 584
    sget-object v1, Lcom/tencent/qnet/core/ProxyConfig;->Instance:Lcom/tencent/qnet/core/ProxyConfig;

    invoke-virtual {v1}, Lcom/tencent/qnet/core/ProxyConfig;->getDnsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;

    .line 585
    iget-object v2, v2, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;->Address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    goto :goto_0

    .line 590
    :cond_0
    sget-object v1, Lcom/tencent/qnet/core/ProxyConfig;->Instance:Lcom/tencent/qnet/core/ProxyConfig;

    invoke-virtual {v1}, Lcom/tencent/qnet/core/ProxyConfig;->getRouteList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 591
    sget-object v1, Lcom/tencent/qnet/core/ProxyConfig;->Instance:Lcom/tencent/qnet/core/ProxyConfig;

    invoke-virtual {v1}, Lcom/tencent/qnet/core/ProxyConfig;->getRouteList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;

    .line 592
    iget-object v4, v3, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;->Address:Ljava/lang/String;

    iget v3, v3, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;->PrefixLength:I

    invoke-virtual {v0, v4, v3}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    goto :goto_1

    .line 596
    :cond_1
    sget v1, Lcom/tencent/qnet/core/ProxyConfig;->FAKE_NETWORK_IP:I

    invoke-static {v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipIntToString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    goto :goto_2

    :cond_2
    const-string v1, "0.0.0.0"

    .line 601
    invoke-virtual {v0, v1, v2}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    :goto_2
    const-string v1, "android.os.SystemProperties"

    .line 606
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "get"

    const/4 v4, 0x1

    .line 607
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 608
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "net.dns1"

    const-string v6, "net.dns2"

    const-string v7, "net.dns3"

    const-string v8, "net.dns4"

    .line 609
    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    const/4 v9, 0x0

    .line 610
    new-array v10, v4, [Ljava/lang/Object;

    aput-object v8, v10, v2

    invoke-virtual {v1, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_4

    const-string v9, ""

    .line 611
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 612
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "\\d"

    const-string v10, ""

    .line 613
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    const/16 v9, 0x20

    .line 614
    invoke-virtual {v0, v8, v9}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    goto :goto_4

    :cond_3
    const/16 v9, 0x80

    .line 616
    invoke-virtual {v0, v8, v9}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 623
    :cond_5
    sget-boolean v1, Lcom/tencent/qnet/ui/AppProxyManager;->isLollipopOrAbove:Z

    if-eqz v1, :cond_7

    .line 624
    sget-object v1, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    iget-object v1, v1, Lcom/tencent/qnet/ui/AppProxyManager;->proxyAppInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Proxy All Apps"

    .line 625
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    :cond_6
    sget-object v1, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    iget-object v1, v1, Lcom/tencent/qnet/ui/AppProxyManager;->proxyAppInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qnet/ui/AppInfo;

    .line 628
    invoke-virtual {p0}, Lcom/tencent/qnet/core/LocalVpnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 630
    :try_start_0
    invoke-virtual {v3}, Lcom/tencent/qnet/ui/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 631
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f100058

    invoke-virtual {p0, v6}, Lcom/tencent/qnet/core/LocalVpnService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/tencent/qnet/ui/AppInfo;->getAppLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v5}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v3

    .line 633
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 639
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/tencent/qnet/ui/MainActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 640
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 641
    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->setConfigureIntent(Landroid/app/PendingIntent;)Landroid/net/VpnService$Builder;

    .line 643
    sget-object v1, Lcom/tencent/qnet/core/ProxyConfig;->Instance:Lcom/tencent/qnet/core/ProxyConfig;

    invoke-virtual {v1}, Lcom/tencent/qnet/core/ProxyConfig;->getSessionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 644
    invoke-virtual {v0}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/qnet/core/ProxyConfig;->Instance:Lcom/tencent/qnet/core/ProxyConfig;

    invoke-virtual {v2}, Lcom/tencent/qnet/core/ProxyConfig;->getSessionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f1000bd

    invoke-virtual {p0, v2}, Lcom/tencent/qnet/core/LocalVpnService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/tencent/qnet/core/LocalVpnService;->onStatusChanged(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private logTcp(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/TCPHeader;)V
    .locals 7

    .line 508
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getDataLength()I

    move-result v0

    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/TCPHeader;->getHeaderLength()I

    move-result v1

    sub-int/2addr v0, v1

    const-string v1, "%s,TCP,%s,%s,%d,%d,%d,%s,%d,%d"

    const/16 v2, 0x9

    .line 509
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/qnet/core/LocalVpnService;->dateformat:Ljava/text/SimpleDateFormat;

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 511
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipIntToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 512
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getDestinationIP()I

    move-result p1

    invoke-static {p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipIntToString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 514
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/TCPHeader;->getSourcePort()S

    move-result p1

    const v3, 0xffff

    and-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x3

    aput-object p1, v2, v4

    .line 515
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/TCPHeader;->getDestinationPort()S

    move-result p1

    and-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x4

    aput-object p1, v2, v3

    .line 517
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x5

    aput-object p1, v2, v0

    .line 519
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/TCPHeader;->getTypeStr()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    aput-object p1, v2, v0

    .line 521
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/TCPHeader;->getSeqID()I

    move-result p1

    int-to-long v3, p1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x7

    aput-object p1, v2, v0

    .line 522
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/TCPHeader;->getAckID()I

    move-result p1

    int-to-long p1, p1

    and-long/2addr p1, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x8

    aput-object p1, v2, p2

    .line 509
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 525
    iget-object p2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_log:Lcom/tencent/qnet/net/NetLog;

    invoke-virtual {p2, p1}, Lcom/tencent/qnet/net/NetLog;->write(Ljava/lang/String;)V

    return-void
.end method

.method private logUdp(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;)V
    .locals 7

    .line 542
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/UDPHeader;->getTotalLength()I

    move-result v0

    const/16 v1, 0x8

    sub-int/2addr v0, v1

    const-string v2, "%s,UDP,%s,%s,%d,%d,%d,%s,%d,%d"

    const/16 v3, 0x9

    .line 544
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/qnet/core/LocalVpnService;->dateformat:Ljava/text/SimpleDateFormat;

    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 546
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result v4

    invoke-static {v4}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipIntToString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 547
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getDestinationIP()I

    move-result p1

    invoke-static {p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipIntToString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 549
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/UDPHeader;->getSourcePort()S

    move-result p1

    const v4, 0xffff

    and-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x3

    aput-object p1, v3, v6

    .line 550
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/UDPHeader;->getDestinationPort()S

    move-result p1

    and-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v3, p2

    .line 552
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v3, p2

    const-string p1, ""

    const/4 p2, 0x6

    aput-object p1, v3, p2

    .line 555
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v3, p2

    .line 556
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    .line 544
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 559
    iget-object p2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_log:Lcom/tencent/qnet/net/NetLog;

    invoke-virtual {p2, p1}, Lcom/tencent/qnet/net/NetLog;->write(Ljava/lang/String;)V

    return-void
.end method

.method private onStatusChanged(Ljava/lang/String;Z)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/qnet/core/LocalVpnService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/qnet/core/LocalVpnService$1;-><init>(Lcom/tencent/qnet/core/LocalVpnService;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static removeOnStatusChangedListener(Lcom/tencent/qnet/core/LocalVpnService$onStatusChangedListener;)V
    .locals 1

    .line 138
    sget-object v0, Lcom/tencent/qnet/core/LocalVpnService;->m_OnStatusChangedListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/tencent/qnet/core/LocalVpnService;->m_OnStatusChangedListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private runVPN()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 289
    invoke-direct {p0}, Lcom/tencent/qnet/core/LocalVpnService;->establishVPN()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNInterface:Landroid/os/ParcelFileDescriptor;

    .line 290
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNInterface:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNOutputStream:Ljava/io/FileOutputStream;

    .line 291
    sget-object v0, Lcom/tencent/qnet/net/DelayThread;->Instance:Lcom/tencent/qnet/net/DelayThread;

    invoke-virtual {v0}, Lcom/tencent/qnet/net/DelayThread;->Start()V

    .line 292
    sget-object v0, Lcom/tencent/qnet/net/NetConfigChange;->Instance:Lcom/tencent/qnet/net/NetConfigChange;

    invoke-virtual {v0}, Lcom/tencent/qnet/net/NetConfigChange;->start()V

    .line 293
    sget-object v0, Lcom/tencent/qnet/net/StatManager;->Instance:Lcom/tencent/qnet/net/StatManager;

    invoke-virtual {v0}, Lcom/tencent/qnet/net/StatManager;->reset()V

    .line 294
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNInterface:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 297
    invoke-static {}, Lcom/tencent/qnet/global/GlobalSettings;->getInstance()Lcom/tencent/qnet/global/GlobalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qnet/global/GlobalSettings;->dumpPcap()Z

    move-result v1

    sput-boolean v1, Lcom/tencent/qnet/pcap/PcapDump;->DUMP:Z

    .line 299
    sget-boolean v1, Lcom/tencent/qnet/pcap/PcapDump;->DUMP:Z

    if-eqz v1, :cond_1

    .line 300
    sget-object v1, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/AppProxyManager;->getProxyApp()Lcom/tencent/qnet/ui/AppInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/AppProxyManager;->getProxyApp()Lcom/tencent/qnet/ui/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    .line 301
    :goto_0
    new-instance v2, Lcom/tencent/qnet/pcap/PcapDump;

    invoke-direct {v2, v1}, Lcom/tencent/qnet/pcap/PcapDump;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_pcap:Lcom/tencent/qnet/pcap/PcapDump;

    .line 302
    iget-object v1, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_pcap:Lcom/tencent/qnet/pcap/PcapDump;

    invoke-virtual {v1}, Lcom/tencent/qnet/pcap/PcapDump;->open()Z

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 306
    sget-boolean v1, Lcom/tencent/qnet/core/LocalVpnService;->IsRunning:Z

    if-eqz v1, :cond_4

    .line 307
    :goto_2
    iget-object v1, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_Packet:[B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_3

    sget-boolean v2, Lcom/tencent/qnet/core/LocalVpnService;->IsRunning:Z

    if-eqz v2, :cond_3

    .line 308
    iget-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_DnsProxy:Lcom/tencent/qnet/core/DnsProxy;

    iget-boolean v2, v2, Lcom/tencent/qnet/core/DnsProxy;->Stopped:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_TcpProxyServer:Lcom/tencent/qnet/core/TcpProxyServer;

    iget-boolean v2, v2, Lcom/tencent/qnet/core/TcpProxyServer;->Stopped:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_UdpProxyServer:Lcom/tencent/qnet/core/UdpProxyServer2;

    iget-boolean v2, v2, Lcom/tencent/qnet/core/UdpProxyServer2;->Stopped:Z

    if-nez v2, :cond_2

    .line 312
    iget-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_IPHeader:Lcom/tencent/qnet/tcpip/IPHeader;

    invoke-virtual {p0, v2, v1}, Lcom/tencent/qnet/core/LocalVpnService;->onIPPacketReceived(Lcom/tencent/qnet/tcpip/IPHeader;I)V

    goto :goto_2

    .line 309
    :cond_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 310
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "LocalServer stopped."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-wide/16 v2, 0x1

    .line 314
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 317
    :cond_4
    sget-boolean v1, Lcom/tencent/qnet/pcap/PcapDump;->DUMP:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_pcap:Lcom/tencent/qnet/pcap/PcapDump;

    if-eqz v1, :cond_5

    .line 318
    iget-object v1, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_pcap:Lcom/tencent/qnet/pcap/PcapDump;

    invoke-virtual {v1}, Lcom/tencent/qnet/pcap/PcapDump;->close()V

    const/4 v1, 0x0

    .line 319
    iput-object v1, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_pcap:Lcom/tencent/qnet/pcap/PcapDump;

    .line 322
    :cond_5
    sget-object v1, Lcom/tencent/qnet/net/DelayThread;->Instance:Lcom/tencent/qnet/net/DelayThread;

    invoke-virtual {v1}, Lcom/tencent/qnet/net/DelayThread;->Stop()V

    .line 323
    sget-object v1, Lcom/tencent/qnet/net/NetConfigChange;->Instance:Lcom/tencent/qnet/net/NetConfigChange;

    invoke-virtual {v1}, Lcom/tencent/qnet/net/NetConfigChange;->stop()V

    .line 325
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 326
    invoke-virtual {p0}, Lcom/tencent/qnet/core/LocalVpnService;->disconnectVPN()V

    return-void
.end method

.method private waitUntilPreapred()V
    .locals 2

    .line 563
    :goto_0
    invoke-static {p0}, Lcom/tencent/qnet/core/LocalVpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    .line 565
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 567
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public disconnectVPN()V
    .locals 3

    const/4 v0, 0x0

    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNInterface:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNInterface:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 653
    iput-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNInterface:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :catch_0
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/qnet/core/ProxyConfig;->Instance:Lcom/tencent/qnet/core/ProxyConfig;

    invoke-virtual {v2}, Lcom/tencent/qnet/core/ProxyConfig;->getSessionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f1000be

    invoke-virtual {p0, v2}, Lcom/tencent/qnet/core/LocalVpnService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/tencent/qnet/core/LocalVpnService;->onStatusChanged(Ljava/lang/String;Z)V

    .line 659
    iput-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNOutputStream:Ljava/io/FileOutputStream;

    return-void
.end method

.method public dumpIp(Lcom/tencent/qnet/tcpip/IPHeader;)V
    .locals 4

    .line 530
    new-instance v0, Lcom/tencent/qnet/pcap/PcapDataHeader;

    invoke-direct {v0}, Lcom/tencent/qnet/pcap/PcapDataHeader;-><init>()V

    .line 531
    invoke-virtual {v0}, Lcom/tencent/qnet/pcap/PcapDataHeader;->writeTimestamp()V

    .line 532
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getTotalLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qnet/pcap/PcapDataHeader;->writeLen(I)V

    .line 533
    iget-object v1, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_pcap:Lcom/tencent/qnet/pcap/PcapDump;

    monitor-enter v1

    .line 534
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_pcap:Lcom/tencent/qnet/pcap/PcapDump;

    invoke-virtual {v0}, Lcom/tencent/qnet/pcap/PcapDataHeader;->getBuff()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/qnet/pcap/PcapDump;->write([B)V

    .line 535
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_pcap:Lcom/tencent/qnet/pcap/PcapDump;

    invoke-static {}, Lcom/tencent/qnet/pcap/EthernetHeader;->getDefault()Lcom/tencent/qnet/pcap/EthernetHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qnet/pcap/EthernetHeader;->getBuff()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qnet/pcap/PcapDump;->write([B)V

    .line 536
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_pcap:Lcom/tencent/qnet/pcap/PcapDump;

    iget-object v2, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v3, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getTotalLength()I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lcom/tencent/qnet/pcap/PcapDump;->write([BII)V

    .line 537
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getAppInstallID()Ljava/lang/String;
    .locals 3

    const-string v0, "SmartProxy"

    const/4 v1, 0x0

    .line 181
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qnet/core/LocalVpnService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AppInstallID"

    const/4 v2, 0x0

    .line 182
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "AppInstallID"

    .line 186
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-object v1
.end method

.method public getMainIP()I
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_icmpServer:Lcom/tencent/qnet/core/IcmpServer;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_icmpServer:Lcom/tencent/qnet/core/IcmpServer;

    invoke-virtual {v0}, Lcom/tencent/qnet/core/IcmpServer;->get_main_ip()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPing()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_icmpServer:Lcom/tencent/qnet/core/IcmpServer;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_icmpServer:Lcom/tencent/qnet/core/IcmpServer;

    invoke-virtual {v0}, Lcom/tencent/qnet/core/IcmpServer;->get_effective_ping()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRealPing()I
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_icmpServer:Lcom/tencent/qnet/core/IcmpServer;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_icmpServer:Lcom/tencent/qnet/core/IcmpServer;

    invoke-virtual {v0}, Lcom/tencent/qnet/core/IcmpServer;->get_ping()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVPNOutputStream()Ljava/io/FileOutputStream;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method getVersionName()Ljava/lang/String;
    .locals 3

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qnet/core/LocalVpnService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lcom/tencent/qnet/core/LocalVpnService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 197
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "0.0"

    return-object v0
.end method

.method public isWhiteIP(Lcom/tencent/qnet/tcpip/IPHeader;)Z
    .locals 6

    .line 99
    sget-object v0, Lcom/tencent/qnet/global/ServerHelper;->QNET_SERVER_IP:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lcom/tencent/qnet/global/ServerHelper;->QNET_SERVER_IP:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 101
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public onCreate()V
    .locals 5

    .line 112
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "VPNService(%s) created.\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/tencent/qnet/core/LocalVpnService;->ID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 114
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "VPNServiceThread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNThread:Ljava/lang/Thread;

    .line 115
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    invoke-super {p0}, Landroid/net/VpnService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 708
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "VPNService(%s) destroied.\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/tencent/qnet/core/LocalVpnService;->ID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 709
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method onIPPacketReceived(Lcom/tencent/qnet/tcpip/IPHeader;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    invoke-static {}, Lcom/tencent/qnet/net/NetworkConfig;->Instnace()Lcom/tencent/qnet/net/NetworkConfig;

    move-result-object v0

    .line 331
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getProtocol()B

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_a

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    goto/16 :goto_7

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_UDPHeader:Lcom/tencent/qnet/tcpip/UDPHeader;

    .line 420
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result v2

    sget v6, Lcom/tencent/qnet/core/LocalVpnService;->LOCAL_IP:I

    if-ne v2, v6, :cond_4

    invoke-virtual {v1}, Lcom/tencent/qnet/tcpip/UDPHeader;->getSourcePort()S

    move-result v2

    sget v6, Lcom/tencent/qnet/core/UdpProxyServer2;->LOCAL_PORT:I

    int-to-short v6, v6

    if-ne v2, v6, :cond_4

    .line 422
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getDestinationIP()I

    move-result v2

    .line 423
    invoke-static {v2}, Lcom/tencent/qnet/core/NatSessionManager2;->getSession(I)Lcom/tencent/qnet/core/NatSession2;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 425
    iget v3, v2, Lcom/tencent/qnet/core/NatSession2;->RemoteIP:I

    invoke-virtual {p1, v3}, Lcom/tencent/qnet/tcpip/IPHeader;->setSourceIP(I)V

    .line 426
    iget v3, v2, Lcom/tencent/qnet/core/NatSession2;->RemotePort:I

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Lcom/tencent/qnet/tcpip/UDPHeader;->setSourcePort(S)V

    .line 427
    sget v3, Lcom/tencent/qnet/core/LocalVpnService;->LOCAL_IP:I

    invoke-virtual {p1, v3}, Lcom/tencent/qnet/tcpip/IPHeader;->setDestinationIP(I)V

    .line 428
    iget v2, v2, Lcom/tencent/qnet/core/NatSession2;->LocalPort:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Lcom/tencent/qnet/tcpip/UDPHeader;->setDestinationPort(S)V

    .line 431
    invoke-static {p1, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->ComputeUDPChecksum(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;)Z

    .line 433
    invoke-virtual {v1}, Lcom/tencent/qnet/tcpip/UDPHeader;->getTotalLength()I

    .line 438
    sget-boolean v1, Lcom/tencent/qnet/core/LocalVpnService;->IsActive:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/qnet/net/NetworkConfig;->isUDPActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    sget-object v1, Lcom/tencent/qnet/net/DelayThread;->Instance:Lcom/tencent/qnet/net/DelayThread;

    iget-object v2, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v3, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result v6

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/qnet/net/DelayThread;->Send([BIIZI)V

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNOutputStream:Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v2, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    invoke-virtual {v0, v1, v2, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 442
    sget-boolean v0, Lcom/tencent/qnet/pcap/PcapDump;->DUMP:Z

    if-eqz v0, :cond_2

    .line 443
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/core/LocalVpnService;->dumpIp(Lcom/tencent/qnet/tcpip/IPHeader;)V

    .line 446
    :cond_2
    :goto_0
    sget-object v0, Lcom/tencent/qnet/net/StatManager;->Instance:Lcom/tencent/qnet/net/StatManager;

    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qnet/net/StatManager;->InPackage(II)V

    .line 447
    iget-wide v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_ReceivedBytes:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_ReceivedBytes:J

    goto/16 :goto_7

    .line 449
    :cond_3
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "NoSession: %s %s\n"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v1}, Lcom/tencent/qnet/tcpip/UDPHeader;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {p2, v0, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_7

    .line 452
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result v2

    sget v3, Lcom/tencent/qnet/core/LocalVpnService;->LOCAL_IP:I

    if-ne v2, v3, :cond_6

    invoke-virtual {v1}, Lcom/tencent/qnet/tcpip/UDPHeader;->getDestinationPort()S

    move-result v2

    const/16 v3, 0x35

    if-ne v2, v3, :cond_6

    .line 453
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getHeaderLength()I

    move-result p2

    iput p2, v1, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Offset:I

    .line 454
    iget-object p2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_DNSBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 455
    iget-object p2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_DNSBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getDataLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 456
    iget-object p2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_DNSBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p2}, Lcom/tencent/qnet/dns/DnsPacket;->FromBytes(Ljava/nio/ByteBuffer;)Lcom/tencent/qnet/dns/DnsPacket;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 457
    iget-object v0, p2, Lcom/tencent/qnet/dns/DnsPacket;->Header:Lcom/tencent/qnet/dns/DnsHeader;

    iget-short v0, v0, Lcom/tencent/qnet/dns/DnsHeader;->QuestionCount:S

    if-lez v0, :cond_19

    .line 459
    sget-boolean v0, Lcom/tencent/qnet/pcap/PcapDump;->DUMP:Z

    if-eqz v0, :cond_5

    .line 460
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/core/LocalVpnService;->dumpIp(Lcom/tencent/qnet/tcpip/IPHeader;)V

    .line 462
    :cond_5
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_DnsProxy:Lcom/tencent/qnet/core/DnsProxy;

    invoke-virtual {v0, p1, v1, p2}, Lcom/tencent/qnet/core/DnsProxy;->onDnsRequestReceived(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;Lcom/tencent/qnet/dns/DnsPacket;)V

    goto/16 :goto_7

    .line 468
    :cond_6
    invoke-static {p1, v1}, Lcom/tencent/qnet/core/NatSessionManager2;->getSession(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;)Lcom/tencent/qnet/core/NatSession2;

    move-result-object v2

    if-nez v2, :cond_7

    .line 471
    invoke-static {p1, v1}, Lcom/tencent/qnet/core/NatSessionManager2;->createSession(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;)Lcom/tencent/qnet/core/NatSession2;

    move-result-object v2

    .line 474
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/qnet/core/NatSession2;->LastNanoTime:J

    .line 475
    iget v3, v2, Lcom/tencent/qnet/core/NatSession2;->PacketSent:I

    add-int/2addr v3, v5

    iput v3, v2, Lcom/tencent/qnet/core/NatSession2;->PacketSent:I

    .line 477
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getDestinationIP()I

    move-result v3

    .line 478
    invoke-virtual {v1}, Lcom/tencent/qnet/tcpip/UDPHeader;->getTotalLength()I

    move-result v4

    add-int/lit8 v10, v4, -0x8

    .line 483
    sget-boolean v4, Lcom/tencent/qnet/pcap/PcapDump;->DUMP:Z

    if-eqz v4, :cond_8

    .line 484
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/core/LocalVpnService;->dumpIp(Lcom/tencent/qnet/tcpip/IPHeader;)V

    .line 487
    :cond_8
    invoke-virtual {v2}, Lcom/tencent/qnet/core/NatSession2;->getKey()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/tencent/qnet/tcpip/IPHeader;->setSourceIP(I)V

    .line 488
    sget v4, Lcom/tencent/qnet/core/LocalVpnService;->LOCAL_IP:I

    invoke-virtual {p1, v4}, Lcom/tencent/qnet/tcpip/IPHeader;->setDestinationIP(I)V

    .line 489
    sget v4, Lcom/tencent/qnet/core/UdpProxyServer2;->LOCAL_PORT:I

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Lcom/tencent/qnet/tcpip/UDPHeader;->setDestinationPort(S)V

    .line 491
    invoke-static {p1, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->ComputeUDPChecksum(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;)Z

    .line 492
    sget-boolean v1, Lcom/tencent/qnet/core/LocalVpnService;->IsActive:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/tencent/qnet/net/NetworkConfig;->isUDPActive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 493
    sget-object v4, Lcom/tencent/qnet/net/DelayThread;->Instance:Lcom/tencent/qnet/net/DelayThread;

    iget-object v5, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v6, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    const/4 v8, 0x1

    move v7, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/qnet/net/DelayThread;->Send([BIIZI)V

    goto :goto_1

    .line 495
    :cond_9
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNOutputStream:Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget p1, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    invoke-virtual {v0, v1, p1, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 497
    :goto_1
    sget-object p1, Lcom/tencent/qnet/net/StatManager;->Instance:Lcom/tencent/qnet/net/StatManager;

    invoke-virtual {p1, v3, p2}, Lcom/tencent/qnet/net/StatManager;->OutPackage(II)V

    .line 498
    iget p1, v2, Lcom/tencent/qnet/core/NatSession2;->BytesSent:I

    add-int/2addr p1, v10

    iput p1, v2, Lcom/tencent/qnet/core/NatSession2;->BytesSent:I

    .line 499
    iget-wide v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_SentBytes:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_SentBytes:J

    goto/16 :goto_7

    .line 333
    :cond_a
    iget-object v1, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_TCPHeader:Lcom/tencent/qnet/tcpip/TCPHeader;

    .line 334
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getHeaderLength()I

    move-result v2

    iput v2, v1, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Offset:I

    .line 335
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result v2

    sget v6, Lcom/tencent/qnet/core/LocalVpnService;->LOCAL_IP:I

    if-ne v2, v6, :cond_19

    .line 336
    invoke-virtual {v1}, Lcom/tencent/qnet/tcpip/TCPHeader;->getSourcePort()S

    move-result v2

    iget-object v6, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_TcpProxyServer:Lcom/tencent/qnet/core/TcpProxyServer;

    iget-short v6, v6, Lcom/tencent/qnet/core/TcpProxyServer;->Port:S

    if-ne v2, v6, :cond_10

    .line 337
    invoke-virtual {v1}, Lcom/tencent/qnet/tcpip/TCPHeader;->getDestinationPort()S

    move-result v2

    invoke-static {v2}, Lcom/tencent/qnet/core/NatSessionManager;->getSession(I)Lcom/tencent/qnet/core/NatSession;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 339
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getDestinationIP()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/tencent/qnet/tcpip/IPHeader;->setSourceIP(I)V

    .line 340
    iget-short v2, v2, Lcom/tencent/qnet/core/NatSession;->RemotePort:S

    invoke-virtual {v1, v2}, Lcom/tencent/qnet/tcpip/TCPHeader;->setSourcePort(S)V

    .line 341
    sget v2, Lcom/tencent/qnet/core/LocalVpnService;->LOCAL_IP:I

    invoke-virtual {p1, v2}, Lcom/tencent/qnet/tcpip/IPHeader;->setDestinationIP(I)V

    .line 343
    invoke-static {p1, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->ComputeTCPChecksum(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/TCPHeader;)Z

    .line 345
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getDataLength()I

    invoke-virtual {v1}, Lcom/tencent/qnet/tcpip/TCPHeader;->getHeaderLength()I

    .line 349
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/core/LocalVpnService;->isWhiteIP(Lcom/tencent/qnet/tcpip/IPHeader;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 350
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNOutputStream:Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v2, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    invoke-virtual {v0, v1, v2, p2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 351
    :cond_b
    sget-boolean v1, Lcom/tencent/qnet/core/LocalVpnService;->IsActive:Z

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/tencent/qnet/net/NetworkConfig;->isTCPActive()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2

    .line 357
    :cond_c
    sget-object v1, Lcom/tencent/qnet/net/DelayThread;->Instance:Lcom/tencent/qnet/net/DelayThread;

    iget-object v2, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v3, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result v6

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/qnet/net/DelayThread;->Send([BIIZI)V

    goto :goto_3

    .line 352
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNOutputStream:Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v2, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    invoke-virtual {v0, v1, v2, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 353
    sget-boolean v0, Lcom/tencent/qnet/pcap/PcapDump;->DUMP:Z

    if-eqz v0, :cond_e

    .line 354
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/core/LocalVpnService;->dumpIp(Lcom/tencent/qnet/tcpip/IPHeader;)V

    .line 359
    :cond_e
    :goto_3
    sget-object v0, Lcom/tencent/qnet/net/StatManager;->Instance:Lcom/tencent/qnet/net/StatManager;

    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qnet/net/StatManager;->InPackage(II)V

    .line 360
    iget-wide v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_ReceivedBytes:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_ReceivedBytes:J

    goto/16 :goto_7

    .line 362
    :cond_f
    sget-object p2, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoSession:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/qnet/tcpip/TCPHeader;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 367
    :cond_10
    invoke-virtual {v1}, Lcom/tencent/qnet/tcpip/TCPHeader;->getSourcePort()S

    move-result v2

    .line 368
    invoke-static {v2}, Lcom/tencent/qnet/core/NatSessionManager;->getSession(I)Lcom/tencent/qnet/core/NatSession;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 369
    iget v7, v6, Lcom/tencent/qnet/core/NatSession;->RemoteIP:I

    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getDestinationIP()I

    move-result v8

    if-ne v7, v8, :cond_11

    iget-short v7, v6, Lcom/tencent/qnet/core/NatSession;->RemotePort:S

    invoke-virtual {v1}, Lcom/tencent/qnet/tcpip/TCPHeader;->getDestinationPort()S

    move-result v8

    if-eq v7, v8, :cond_12

    .line 370
    :cond_11
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getDestinationIP()I

    move-result v6

    invoke-virtual {v1}, Lcom/tencent/qnet/tcpip/TCPHeader;->getDestinationPort()S

    move-result v7

    invoke-static {v2, v6, v7}, Lcom/tencent/qnet/core/NatSessionManager;->createSession(IIS)Lcom/tencent/qnet/core/NatSession;

    move-result-object v6

    .line 373
    :cond_12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/tencent/qnet/core/NatSession;->LastNanoTime:J

    .line 374
    iget v2, v6, Lcom/tencent/qnet/core/NatSession;->PacketSent:I

    add-int/2addr v2, v5

    iput v2, v6, Lcom/tencent/qnet/core/NatSession;->PacketSent:I

    .line 376
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getDataLength()I

    move-result v2

    invoke-virtual {v1}, Lcom/tencent/qnet/tcpip/TCPHeader;->getHeaderLength()I

    move-result v7

    sub-int/2addr v2, v7

    .line 377
    iget v7, v6, Lcom/tencent/qnet/core/NatSession;->PacketSent:I

    if-ne v7, v4, :cond_13

    if-nez v2, :cond_13

    return-void

    .line 382
    :cond_13
    iget v4, v6, Lcom/tencent/qnet/core/NatSession;->BytesSent:I

    if-nez v4, :cond_15

    const/16 v4, 0xa

    if-le v2, v4, :cond_15

    .line 383
    iget v4, v1, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Offset:I

    invoke-virtual {v1}, Lcom/tencent/qnet/tcpip/TCPHeader;->getHeaderLength()I

    move-result v7

    add-int/2addr v4, v7

    .line 384
    iget-object v7, v1, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Data:[B

    invoke-static {v7, v4, v2}, Lcom/tencent/qnet/core/HttpHostHeaderParser;->parseHost([BII)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 386
    iput-object v4, v6, Lcom/tencent/qnet/core/NatSession;->RemoteHost:Ljava/lang/String;

    goto :goto_4

    .line 388
    :cond_14
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "No host name found: %s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, v6, Lcom/tencent/qnet/core/NatSession;->RemoteHost:Ljava/lang/String;

    aput-object v8, v5, v3

    invoke-virtual {v4, v7, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 394
    :cond_15
    :goto_4
    sget-boolean v3, Lcom/tencent/qnet/pcap/PcapDump;->DUMP:Z

    if-eqz v3, :cond_16

    .line 395
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/core/LocalVpnService;->dumpIp(Lcom/tencent/qnet/tcpip/IPHeader;)V

    .line 398
    :cond_16
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getDestinationIP()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/tencent/qnet/tcpip/IPHeader;->setSourceIP(I)V

    .line 399
    sget v3, Lcom/tencent/qnet/core/LocalVpnService;->LOCAL_IP:I

    invoke-virtual {p1, v3}, Lcom/tencent/qnet/tcpip/IPHeader;->setDestinationIP(I)V

    .line 400
    iget-object v3, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_TcpProxyServer:Lcom/tencent/qnet/core/TcpProxyServer;

    iget-short v3, v3, Lcom/tencent/qnet/core/TcpProxyServer;->Port:S

    invoke-virtual {v1, v3}, Lcom/tencent/qnet/tcpip/TCPHeader;->setDestinationPort(S)V

    .line 402
    invoke-static {p1, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->ComputeTCPChecksum(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/TCPHeader;)Z

    .line 403
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/core/LocalVpnService;->isWhiteIP(Lcom/tencent/qnet/tcpip/IPHeader;)Z

    move-result v1

    if-nez v1, :cond_18

    sget-boolean v1, Lcom/tencent/qnet/core/LocalVpnService;->IsActive:Z

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/tencent/qnet/net/NetworkConfig;->isTCPActive()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_5

    .line 407
    :cond_17
    sget-object v7, Lcom/tencent/qnet/net/DelayThread;->Instance:Lcom/tencent/qnet/net/DelayThread;

    iget-object v8, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v9, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    const/4 v11, 0x1

    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result v12

    move v10, p2

    invoke-virtual/range {v7 .. v12}, Lcom/tencent/qnet/net/DelayThread;->Send([BIIZI)V

    goto :goto_6

    .line 404
    :cond_18
    :goto_5
    iget-object v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNOutputStream:Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v3, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    invoke-virtual {v0, v1, v3, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 410
    :goto_6
    sget-object v0, Lcom/tencent/qnet/net/StatManager;->Instance:Lcom/tencent/qnet/net/StatManager;

    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qnet/net/StatManager;->OutPackage(II)V

    .line 412
    iget p1, v6, Lcom/tencent/qnet/core/NatSession;->BytesSent:I

    add-int/2addr p1, v2

    iput p1, v6, Lcom/tencent/qnet/core/NatSession;->BytesSent:I

    .line 413
    iget-wide v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_SentBytes:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_SentBytes:J

    :cond_19
    :goto_7
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    .line 121
    sput-boolean v0, Lcom/tencent/qnet/core/LocalVpnService;->IsRunning:Z

    .line 122
    invoke-super {p0, p1, p2, p3}, Landroid/net/VpnService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public declared-synchronized run()V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "VPNService(%s) work thread is runing...\n"

    new-array v4, v0, [Ljava/lang/Object;

    sget v5, Lcom/tencent/qnet/core/LocalVpnService;->ID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 237
    invoke-virtual {p0}, Lcom/tencent/qnet/core/LocalVpnService;->getAppInstallID()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/qnet/core/ProxyConfig;->AppInstallID:Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Lcom/tencent/qnet/core/LocalVpnService;->getVersionName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/qnet/core/ProxyConfig;->AppVersion:Ljava/lang/String;

    .line 239
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "AppInstallID: %s\n"

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v5, Lcom/tencent/qnet/core/ProxyConfig;->AppInstallID:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const-string v2, "Android version: %s"

    .line 240
    new-array v3, v0, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "App version: %s"

    .line 241
    new-array v3, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/tencent/qnet/core/ProxyConfig;->AppVersion:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-direct {p0}, Lcom/tencent/qnet/core/LocalVpnService;->waitUntilPreapred()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :try_start_1
    sget-object v2, Lcom/tencent/qnet/core/ProxyConfig;->Instance:Lcom/tencent/qnet/core/ProxyConfig;

    invoke-virtual {p0}, Lcom/tencent/qnet/core/LocalVpnService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0f0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qnet/core/ProxyConfig;->loadFromFile(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 248
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 249
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 250
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v2, "Load failed with error: %s"

    .line 252
    new-array v4, v0, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-virtual {p0, v2, v4}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :goto_0
    new-instance v2, Lcom/tencent/qnet/core/TcpProxyServer;

    invoke-direct {v2, v1}, Lcom/tencent/qnet/core/TcpProxyServer;-><init>(I)V

    iput-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_TcpProxyServer:Lcom/tencent/qnet/core/TcpProxyServer;

    .line 256
    iget-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_TcpProxyServer:Lcom/tencent/qnet/core/TcpProxyServer;

    invoke-virtual {v2}, Lcom/tencent/qnet/core/TcpProxyServer;->start()V

    const-string v2, "LocalTcpServer started."

    .line 257
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    new-instance v2, Lcom/tencent/qnet/core/UdpProxyServer2;

    iget-object v3, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Lcom/tencent/qnet/core/UdpProxyServer2;-><init>(Ljava/io/FileOutputStream;)V

    iput-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_UdpProxyServer:Lcom/tencent/qnet/core/UdpProxyServer2;

    .line 260
    iget-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_UdpProxyServer:Lcom/tencent/qnet/core/UdpProxyServer2;

    invoke-virtual {v2}, Lcom/tencent/qnet/core/UdpProxyServer2;->start()V

    const-string v2, "LocalUdpServer started."

    .line 261
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    new-instance v2, Lcom/tencent/qnet/core/DnsProxy;

    invoke-direct {v2}, Lcom/tencent/qnet/core/DnsProxy;-><init>()V

    iput-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_DnsProxy:Lcom/tencent/qnet/core/DnsProxy;

    .line 264
    iget-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_DnsProxy:Lcom/tencent/qnet/core/DnsProxy;

    invoke-virtual {v2}, Lcom/tencent/qnet/core/DnsProxy;->start()V

    const-string v2, "LocalDnsProxy started."

    .line 265
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    new-instance v2, Lcom/tencent/qnet/core/IcmpServer;

    invoke-direct {v2}, Lcom/tencent/qnet/core/IcmpServer;-><init>()V

    iput-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_icmpServer:Lcom/tencent/qnet/core/IcmpServer;

    .line 268
    iget-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_icmpServer:Lcom/tencent/qnet/core/IcmpServer;

    invoke-virtual {v2}, Lcom/tencent/qnet/core/IcmpServer;->start()V

    const-string v2, "IcmpServer started."

    .line 269
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    :goto_1
    sget-boolean v2, Lcom/tencent/qnet/core/LocalVpnService;->IsRunning:Z

    if-eqz v2, :cond_2

    .line 273
    invoke-direct {p0}, Lcom/tencent/qnet/core/LocalVpnService;->runVPN()V

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x64

    .line 275
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    .line 280
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "Fatal error: %s"

    .line 281
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v0, "App terminated."

    .line 283
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :goto_2
    invoke-direct {p0}, Lcom/tencent/qnet/core/LocalVpnService;->dispose()V

    goto :goto_4

    :goto_3
    const-string v2, "App terminated."

    .line 283
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    invoke-direct {p0}, Lcom/tencent/qnet/core/LocalVpnService;->dispose()V

    .line 285
    throw v0

    :catch_2
    const-string v0, "App terminated."

    .line 283
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 286
    :goto_4
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 234
    monitor-exit p0

    throw v0
.end method

.method public sendUDPPacket(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;)V
    .locals 2

    .line 168
    :try_start_0
    invoke-static {p1, p2}, Lcom/tencent/qnet/tcpip/CommonMethods;->ComputeUDPChecksum(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;)Z

    .line 170
    sget-boolean p2, Lcom/tencent/qnet/pcap/PcapDump;->DUMP:Z

    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/core/LocalVpnService;->dumpIp(Lcom/tencent/qnet/tcpip/IPHeader;)V

    .line 174
    :cond_0
    iget-object p2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_VPNOutputStream:Ljava/io/FileOutputStream;

    iget-object v0, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getTotalLength()I

    move-result p1

    invoke-virtual {p2, v0, v1, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 176
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public varargs writeLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 155
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object p2, p0, Lcom/tencent/qnet/core/LocalVpnService;->m_Handler:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/qnet/core/LocalVpnService$2;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qnet/core/LocalVpnService$2;-><init>(Lcom/tencent/qnet/core/LocalVpnService;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
