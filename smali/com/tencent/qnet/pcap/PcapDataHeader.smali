.class public Lcom/tencent/qnet/pcap/PcapDataHeader;
.super Ljava/lang/Object;
.source "PcapDataHeader.java"


# instance fields
.field private m_data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 7
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/qnet/pcap/PcapDataHeader;->m_data:[B

    .line 15
    invoke-direct {p0}, Lcom/tencent/qnet/pcap/PcapDataHeader;->init()V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getBuff()[B
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/tencent/qnet/pcap/PcapDataHeader;->m_data:[B

    return-object v0
.end method

.method public writeLen(I)V
    .locals 3

    .line 35
    sget v0, Lcom/tencent/qnet/pcap/EthernetHeader;->ETHERNET_HEADER_LEN:I

    add-int/2addr p1, v0

    .line 36
    iget-object v0, p0, Lcom/tencent/qnet/pcap/PcapDataHeader;->m_data:[B

    invoke-static {p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->hton(I)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeInt([BII)V

    .line 37
    iget-object v0, p0, Lcom/tencent/qnet/pcap/PcapDataHeader;->m_data:[B

    invoke-static {p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->hton(I)I

    move-result p1

    const/16 v1, 0xc

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeInt([BII)V

    return-void
.end method

.method public writeTimestamp()V
    .locals 6

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 26
    div-long v4, v0, v2

    long-to-int v4, v4

    .line 27
    rem-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 29
    iget-object v1, p0, Lcom/tencent/qnet/pcap/PcapDataHeader;->m_data:[B

    invoke-static {v4}, Lcom/tencent/qnet/tcpip/CommonMethods;->hton(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeInt([BII)V

    .line 30
    iget-object v1, p0, Lcom/tencent/qnet/pcap/PcapDataHeader;->m_data:[B

    invoke-static {v0}, Lcom/tencent/qnet/tcpip/CommonMethods;->hton(I)I

    move-result v0

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeInt([BII)V

    return-void
.end method
