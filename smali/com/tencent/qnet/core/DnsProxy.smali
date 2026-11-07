.class public Lcom/tencent/qnet/core/DnsProxy;
.super Ljava/lang/Object;
.source "DnsProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qnet/core/DnsProxy$QueryState;
    }
.end annotation


# static fields
.field private static final DomainIPMaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IPDomainMaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final QUERY_TIMEOUT_NS:J

.field public Stopped:Z

.field private m_Client:Ljava/net/DatagramSocket;

.field private m_QueryArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/qnet/core/DnsProxy$QueryState;",
            ">;"
        }
    .end annotation
.end field

.field private m_QueryID:S

.field private m_ReceivedThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qnet/core/DnsProxy;->IPDomainMaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/qnet/core/DnsProxy;->DomainIPMaps:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x2540be400L

    .line 37
    iput-wide v0, p0, Lcom/tencent/qnet/core/DnsProxy;->QUERY_TIMEOUT_NS:J

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/core/DnsProxy;->m_QueryArray:Landroid/util/SparseArray;

    .line 45
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qnet/core/DnsProxy;->m_Client:Ljava/net/DatagramSocket;

    return-void
.end method

.method private OnDnsResponseReceived(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;Lcom/tencent/qnet/dns/DnsPacket;)V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/tencent/qnet/core/DnsProxy;->m_QueryArray:Landroid/util/SparseArray;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qnet/core/DnsProxy;->m_QueryArray:Landroid/util/SparseArray;

    iget-object v2, p3, Lcom/tencent/qnet/dns/DnsPacket;->Header:Lcom/tencent/qnet/dns/DnsHeader;

    iget-short v2, v2, Lcom/tencent/qnet/dns/DnsHeader;->ID:S

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qnet/core/DnsProxy$QueryState;

    if-eqz v1, :cond_0

    .line 170
    iget-object v2, p0, Lcom/tencent/qnet/core/DnsProxy;->m_QueryArray:Landroid/util/SparseArray;

    iget-object v3, p3, Lcom/tencent/qnet/dns/DnsPacket;->Header:Lcom/tencent/qnet/dns/DnsHeader;

    iget-short v3, v3, Lcom/tencent/qnet/dns/DnsHeader;->ID:S

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 172
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 176
    iget-object v0, p2, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Data:[B

    invoke-direct {p0, v0, p3}, Lcom/tencent/qnet/core/DnsProxy;->dnsPollution([BLcom/tencent/qnet/dns/DnsPacket;)Z

    .line 178
    iget-object v0, p3, Lcom/tencent/qnet/dns/DnsPacket;->Header:Lcom/tencent/qnet/dns/DnsHeader;

    iget-short v2, v1, Lcom/tencent/qnet/core/DnsProxy$QueryState;->ClientQueryID:S

    invoke-virtual {v0, v2}, Lcom/tencent/qnet/dns/DnsHeader;->setID(S)V

    .line 179
    iget v0, v1, Lcom/tencent/qnet/core/DnsProxy$QueryState;->RemoteIP:I

    invoke-virtual {p1, v0}, Lcom/tencent/qnet/tcpip/IPHeader;->setSourceIP(I)V

    .line 180
    iget v0, v1, Lcom/tencent/qnet/core/DnsProxy$QueryState;->ClientIP:I

    invoke-virtual {p1, v0}, Lcom/tencent/qnet/tcpip/IPHeader;->setDestinationIP(I)V

    const/16 v0, 0x11

    .line 181
    invoke-virtual {p1, v0}, Lcom/tencent/qnet/tcpip/IPHeader;->setProtocol(B)V

    .line 182
    iget v0, p3, Lcom/tencent/qnet/dns/DnsPacket;->Size:I

    add-int/lit8 v0, v0, 0x1c

    invoke-virtual {p1, v0}, Lcom/tencent/qnet/tcpip/IPHeader;->setTotalLength(I)V

    .line 183
    iget-short v0, v1, Lcom/tencent/qnet/core/DnsProxy$QueryState;->RemotePort:S

    invoke-virtual {p2, v0}, Lcom/tencent/qnet/tcpip/UDPHeader;->setSourcePort(S)V

    .line 184
    iget-short v0, v1, Lcom/tencent/qnet/core/DnsProxy$QueryState;->ClientPort:S

    invoke-virtual {p2, v0}, Lcom/tencent/qnet/tcpip/UDPHeader;->setDestinationPort(S)V

    .line 185
    iget p3, p3, Lcom/tencent/qnet/dns/DnsPacket;->Size:I

    add-int/lit8 p3, p3, 0x8

    invoke-virtual {p2, p3}, Lcom/tencent/qnet/tcpip/UDPHeader;->setTotalLength(I)V

    .line 187
    sget-object p3, Lcom/tencent/qnet/core/LocalVpnService;->Instance:Lcom/tencent/qnet/core/LocalVpnService;

    invoke-virtual {p3, p1, p2}, Lcom/tencent/qnet/core/LocalVpnService;->sendUDPPacket(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 172
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private clearExpiredQueries()V
    .locals 7

    .line 223
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 224
    iget-object v2, p0, Lcom/tencent/qnet/core/DnsProxy;->m_QueryArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 225
    iget-object v3, p0, Lcom/tencent/qnet/core/DnsProxy;->m_QueryArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qnet/core/DnsProxy$QueryState;

    .line 226
    iget-wide v3, v3, Lcom/tencent/qnet/core/DnsProxy$QueryState;->QueryNanoTime:J

    sub-long v3, v0, v3

    const-wide v5, 0x2540be400L

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/tencent/qnet/core/DnsProxy;->m_QueryArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dnsPollution([BLcom/tencent/qnet/dns/DnsPacket;)Z
    .locals 6

    .line 149
    iget-object v0, p2, Lcom/tencent/qnet/dns/DnsPacket;->Header:Lcom/tencent/qnet/dns/DnsHeader;

    iget-short v0, v0, Lcom/tencent/qnet/dns/DnsHeader;->QuestionCount:S

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 150
    iget-object v0, p2, Lcom/tencent/qnet/dns/DnsPacket;->Questions:[Lcom/tencent/qnet/dns/Question;

    aget-object v0, v0, v1

    .line 151
    iget-short v2, v0, Lcom/tencent/qnet/dns/Question;->Type:S

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 152
    invoke-direct {p0, p2}, Lcom/tencent/qnet/core/DnsProxy;->getFirstIP(Lcom/tencent/qnet/dns/DnsPacket;)I

    move-result v2

    .line 153
    sget-object v4, Lcom/tencent/qnet/core/ProxyConfig;->Instance:Lcom/tencent/qnet/core/ProxyConfig;

    iget-object v5, v0, Lcom/tencent/qnet/dns/Question;->Domain:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lcom/tencent/qnet/core/ProxyConfig;->needProxy(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    iget-object v0, v0, Lcom/tencent/qnet/dns/Question;->Domain:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/qnet/core/DnsProxy;->getOrCreateFakeIP(Ljava/lang/String;)I

    move-result v0

    .line 155
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qnet/core/DnsProxy;->tamperDnsResponse([BLcom/tencent/qnet/dns/DnsPacket;I)V

    return v3

    :cond_0
    return v1
.end method

.method private getFirstIP(Lcom/tencent/qnet/dns/DnsPacket;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 105
    :goto_0
    iget-object v2, p1, Lcom/tencent/qnet/dns/DnsPacket;->Header:Lcom/tencent/qnet/dns/DnsHeader;

    iget-short v2, v2, Lcom/tencent/qnet/dns/DnsHeader;->ResourceCount:S

    if-ge v1, v2, :cond_1

    .line 106
    iget-object v2, p1, Lcom/tencent/qnet/dns/DnsPacket;->Resources:[Lcom/tencent/qnet/dns/Resource;

    aget-object v2, v2, v1

    .line 107
    iget-short v3, v2, Lcom/tencent/qnet/dns/Resource;->Type:S

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 108
    iget-object p1, v2, Lcom/tencent/qnet/dns/Resource;->Data:[B

    invoke-static {p1, v0}, Lcom/tencent/qnet/tcpip/CommonMethods;->readInt([BI)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getIPFromCache(Ljava/lang/String;)I
    .locals 1

    .line 192
    sget-object v0, Lcom/tencent/qnet/core/DnsProxy;->DomainIPMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 196
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private getOrCreateFakeIP(Ljava/lang/String;)I
    .locals 3

    .line 134
    sget-object v0, Lcom/tencent/qnet/core/DnsProxy;->DomainIPMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 138
    :cond_0
    sget v1, Lcom/tencent/qnet/core/ProxyConfig;->FAKE_NETWORK_IP:I

    const v2, 0xffff

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 140
    sget-object v2, Lcom/tencent/qnet/core/DnsProxy;->IPDomainMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    sget-object v0, Lcom/tencent/qnet/core/DnsProxy;->DomainIPMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/tencent/qnet/core/DnsProxy;->IPDomainMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 145
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private interceptDns(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;Lcom/tencent/qnet/dns/DnsPacket;)Z
    .locals 6

    .line 201
    iget-object v0, p3, Lcom/tencent/qnet/dns/DnsPacket;->Questions:[Lcom/tencent/qnet/dns/Question;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 202
    iget-short v2, v0, Lcom/tencent/qnet/dns/Question;->Type:S

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 203
    sget-object v2, Lcom/tencent/qnet/core/ProxyConfig;->Instance:Lcom/tencent/qnet/core/ProxyConfig;

    iget-object v4, v0, Lcom/tencent/qnet/dns/Question;->Domain:Ljava/lang/String;

    iget-object v5, v0, Lcom/tencent/qnet/dns/Question;->Domain:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/tencent/qnet/core/DnsProxy;->getIPFromCache(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/tencent/qnet/core/ProxyConfig;->needProxy(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v0, v0, Lcom/tencent/qnet/dns/Question;->Domain:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/qnet/core/DnsProxy;->getOrCreateFakeIP(Ljava/lang/String;)I

    move-result v0

    .line 205
    iget-object v1, p1, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    invoke-direct {p0, v1, p3, v0}, Lcom/tencent/qnet/core/DnsProxy;->tamperDnsResponse([BLcom/tencent/qnet/dns/DnsPacket;I)V

    .line 207
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result v0

    .line 208
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/UDPHeader;->getSourcePort()S

    move-result v1

    .line 209
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getDestinationIP()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/tencent/qnet/tcpip/IPHeader;->setSourceIP(I)V

    .line 210
    invoke-virtual {p1, v0}, Lcom/tencent/qnet/tcpip/IPHeader;->setDestinationIP(I)V

    .line 211
    iget v0, p3, Lcom/tencent/qnet/dns/DnsPacket;->Size:I

    add-int/lit8 v0, v0, 0x1c

    invoke-virtual {p1, v0}, Lcom/tencent/qnet/tcpip/IPHeader;->setTotalLength(I)V

    .line 212
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/UDPHeader;->getDestinationPort()S

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tencent/qnet/tcpip/UDPHeader;->setSourcePort(S)V

    .line 213
    invoke-virtual {p2, v1}, Lcom/tencent/qnet/tcpip/UDPHeader;->setDestinationPort(S)V

    .line 214
    iget p3, p3, Lcom/tencent/qnet/dns/DnsPacket;->Size:I

    add-int/lit8 p3, p3, 0x8

    invoke-virtual {p2, p3}, Lcom/tencent/qnet/tcpip/UDPHeader;->setTotalLength(I)V

    .line 215
    sget-object p3, Lcom/tencent/qnet/core/LocalVpnService;->Instance:Lcom/tencent/qnet/core/LocalVpnService;

    invoke-virtual {p3, p1, p2}, Lcom/tencent/qnet/core/LocalVpnService;->sendUDPPacket(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;)V

    return v3

    :cond_0
    return v1
.end method

.method public static reverseLookup(I)Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/tencent/qnet/core/DnsProxy;->IPDomainMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private tamperDnsResponse([BLcom/tencent/qnet/dns/DnsPacket;I)V
    .locals 4

    .line 116
    iget-object v0, p2, Lcom/tencent/qnet/dns/DnsPacket;->Questions:[Lcom/tencent/qnet/dns/Question;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 118
    iget-object v2, p2, Lcom/tencent/qnet/dns/DnsPacket;->Header:Lcom/tencent/qnet/dns/DnsHeader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/qnet/dns/DnsHeader;->setResourceCount(S)V

    .line 119
    iget-object v2, p2, Lcom/tencent/qnet/dns/DnsPacket;->Header:Lcom/tencent/qnet/dns/DnsHeader;

    invoke-virtual {v2, v1}, Lcom/tencent/qnet/dns/DnsHeader;->setAResourceCount(S)V

    .line 120
    iget-object v2, p2, Lcom/tencent/qnet/dns/DnsPacket;->Header:Lcom/tencent/qnet/dns/DnsHeader;

    invoke-virtual {v2, v1}, Lcom/tencent/qnet/dns/DnsHeader;->setEResourceCount(S)V

    .line 122
    new-instance v1, Lcom/tencent/qnet/dns/ResourcePointer;

    invoke-virtual {v0}, Lcom/tencent/qnet/dns/Question;->Offset()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/qnet/dns/Question;->Length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, p1, v2}, Lcom/tencent/qnet/dns/ResourcePointer;-><init>([BI)V

    const/16 p1, -0x3ff4

    .line 123
    invoke-virtual {v1, p1}, Lcom/tencent/qnet/dns/ResourcePointer;->setDomain(S)V

    .line 124
    iget-short p1, v0, Lcom/tencent/qnet/dns/Question;->Type:S

    invoke-virtual {v1, p1}, Lcom/tencent/qnet/dns/ResourcePointer;->setType(S)V

    .line 125
    iget-short p1, v0, Lcom/tencent/qnet/dns/Question;->Class:S

    invoke-virtual {v1, p1}, Lcom/tencent/qnet/dns/ResourcePointer;->setClass(S)V

    .line 126
    sget-object p1, Lcom/tencent/qnet/core/ProxyConfig;->Instance:Lcom/tencent/qnet/core/ProxyConfig;

    invoke-virtual {p1}, Lcom/tencent/qnet/core/ProxyConfig;->getDnsTTL()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/tencent/qnet/dns/ResourcePointer;->setTTL(I)V

    const/4 p1, 0x4

    .line 127
    invoke-virtual {v1, p1}, Lcom/tencent/qnet/dns/ResourcePointer;->setDataLength(S)V

    .line 128
    invoke-virtual {v1, p3}, Lcom/tencent/qnet/dns/ResourcePointer;->setIP(I)V

    .line 130
    invoke-virtual {v0}, Lcom/tencent/qnet/dns/Question;->Length()I

    move-result p1

    add-int/lit8 p1, p1, 0xc

    add-int/lit8 p1, p1, 0x10

    iput p1, p2, Lcom/tencent/qnet/dns/DnsPacket;->Size:I

    return-void
.end method


# virtual methods
.method public onDnsRequestReceived(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;Lcom/tencent/qnet/dns/DnsPacket;)V
    .locals 3

    .line 233
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qnet/core/DnsProxy;->interceptDns(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;Lcom/tencent/qnet/dns/DnsPacket;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    new-instance v0, Lcom/tencent/qnet/core/DnsProxy$QueryState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/qnet/core/DnsProxy$QueryState;-><init>(Lcom/tencent/qnet/core/DnsProxy;Lcom/tencent/qnet/core/DnsProxy$1;)V

    .line 236
    iget-object v1, p3, Lcom/tencent/qnet/dns/DnsPacket;->Header:Lcom/tencent/qnet/dns/DnsHeader;

    iget-short v1, v1, Lcom/tencent/qnet/dns/DnsHeader;->ID:S

    iput-short v1, v0, Lcom/tencent/qnet/core/DnsProxy$QueryState;->ClientQueryID:S

    .line 237
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/qnet/core/DnsProxy$QueryState;->QueryNanoTime:J

    .line 238
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result v1

    iput v1, v0, Lcom/tencent/qnet/core/DnsProxy$QueryState;->ClientIP:I

    .line 239
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/UDPHeader;->getSourcePort()S

    move-result v1

    iput-short v1, v0, Lcom/tencent/qnet/core/DnsProxy$QueryState;->ClientPort:S

    .line 240
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/IPHeader;->getDestinationIP()I

    move-result p1

    iput p1, v0, Lcom/tencent/qnet/core/DnsProxy$QueryState;->RemoteIP:I

    .line 241
    invoke-virtual {p2}, Lcom/tencent/qnet/tcpip/UDPHeader;->getDestinationPort()S

    move-result p1

    iput-short p1, v0, Lcom/tencent/qnet/core/DnsProxy$QueryState;->RemotePort:S

    .line 244
    iget-short p1, p0, Lcom/tencent/qnet/core/DnsProxy;->m_QueryID:S

    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/tencent/qnet/core/DnsProxy;->m_QueryID:S

    .line 245
    iget-object p1, p3, Lcom/tencent/qnet/dns/DnsPacket;->Header:Lcom/tencent/qnet/dns/DnsHeader;

    iget-short v1, p0, Lcom/tencent/qnet/core/DnsProxy;->m_QueryID:S

    invoke-virtual {p1, v1}, Lcom/tencent/qnet/dns/DnsHeader;->setID(S)V

    .line 247
    iget-object p1, p0, Lcom/tencent/qnet/core/DnsProxy;->m_QueryArray:Landroid/util/SparseArray;

    monitor-enter p1

    .line 248
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qnet/core/DnsProxy;->clearExpiredQueries()V

    .line 249
    iget-object v1, p0, Lcom/tencent/qnet/core/DnsProxy;->m_QueryArray:Landroid/util/SparseArray;

    iget-short v2, p0, Lcom/tencent/qnet/core/DnsProxy;->m_QueryID:S

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    new-instance p1, Ljava/net/InetSocketAddress;

    iget v1, v0, Lcom/tencent/qnet/core/DnsProxy$QueryState;->RemoteIP:I

    invoke-static {v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipIntToInet4Address(I)Ljava/net/InetAddress;

    move-result-object v1

    iget-short v0, v0, Lcom/tencent/qnet/core/DnsProxy$QueryState;->RemotePort:S

    invoke-direct {p1, v1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 253
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p2, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Data:[B

    iget p2, p2, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Offset:I

    add-int/lit8 p2, p2, 0x8

    iget p3, p3, Lcom/tencent/qnet/dns/DnsPacket;->Size:I

    invoke-direct {v0, v1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 254
    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 257
    :try_start_1
    sget-object p1, Lcom/tencent/qnet/core/LocalVpnService;->Instance:Lcom/tencent/qnet/core/LocalVpnService;

    iget-object p2, p0, Lcom/tencent/qnet/core/DnsProxy;->m_Client:Ljava/net/DatagramSocket;

    invoke-virtual {p1, p2}, Lcom/tencent/qnet/core/LocalVpnService;->protect(Ljava/net/DatagramSocket;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/tencent/qnet/core/DnsProxy;->m_Client:Ljava/net/DatagramSocket;

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    goto :goto_0

    .line 260
    :cond_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "VPN protect udp socket failed."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 263
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 250
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 11

    const/16 v0, 0x7d0

    .line 69
    :try_start_0
    new-array v0, v0, [B

    .line 70
    new-instance v1, Lcom/tencent/qnet/tcpip/IPHeader;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/tencent/qnet/tcpip/IPHeader;-><init>([BI)V

    .line 71
    invoke-virtual {v1}, Lcom/tencent/qnet/tcpip/IPHeader;->Default()V

    .line 72
    new-instance v3, Lcom/tencent/qnet/tcpip/UDPHeader;

    const/16 v4, 0x14

    invoke-direct {v3, v0, v4}, Lcom/tencent/qnet/tcpip/UDPHeader;-><init>([BI)V

    .line 74
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v5, 0x1c

    .line 75
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 76
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 78
    new-instance v6, Ljava/net/DatagramPacket;

    array-length v7, v0

    sub-int/2addr v7, v5

    invoke-direct {v6, v0, v5, v7}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 80
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/tencent/qnet/core/DnsProxy;->m_Client:Ljava/net/DatagramSocket;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/tencent/qnet/core/DnsProxy;->m_Client:Ljava/net/DatagramSocket;

    invoke-virtual {v7}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    .line 82
    array-length v7, v0

    sub-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 83
    iget-object v7, p0, Lcom/tencent/qnet/core/DnsProxy;->m_Client:Ljava/net/DatagramSocket;

    invoke-virtual {v7, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 85
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 86
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :try_start_1
    invoke-static {v4}, Lcom/tencent/qnet/dns/DnsPacket;->FromBytes(Ljava/nio/ByteBuffer;)Lcom/tencent/qnet/dns/DnsPacket;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 90
    invoke-direct {p0, v1, v3, v7}, Lcom/tencent/qnet/core/DnsProxy;->OnDnsResponseReceived(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;Lcom/tencent/qnet/dns/DnsPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 93
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    sget-object v8, Lcom/tencent/qnet/core/LocalVpnService;->Instance:Lcom/tencent/qnet/core/LocalVpnService;

    const-string v9, "Parse dns error: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 98
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qnet/core/DnsProxy;->stop()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/tencent/qnet/core/DnsProxy;->stop()V

    .line 101
    throw v0
.end method

.method public start()V
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/qnet/core/DnsProxy;->m_ReceivedThread:Ljava/lang/Thread;

    .line 54
    iget-object v0, p0, Lcom/tencent/qnet/core/DnsProxy;->m_ReceivedThread:Ljava/lang/Thread;

    const-string v1, "DnsProxyThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/tencent/qnet/core/DnsProxy;->m_ReceivedThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/tencent/qnet/core/DnsProxy;->Stopped:Z

    .line 60
    iget-object v0, p0, Lcom/tencent/qnet/core/DnsProxy;->m_Client:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/tencent/qnet/core/DnsProxy;->m_Client:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/tencent/qnet/core/DnsProxy;->m_Client:Ljava/net/DatagramSocket;

    :cond_0
    return-void
.end method
