.class public Lcom/tencent/qnet/pcap/EthernetHeader;
.super Ljava/lang/Object;
.source "EthernetHeader.java"


# static fields
.field public static ETHERNET_HEADER_LEN:I = 0x10

.field private static s_instance:Lcom/tencent/qnet/pcap/EthernetHeader;


# instance fields
.field private m_data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/tencent/qnet/pcap/EthernetHeader;

    invoke-direct {v0}, Lcom/tencent/qnet/pcap/EthernetHeader;-><init>()V

    sput-object v0, Lcom/tencent/qnet/pcap/EthernetHeader;->s_instance:Lcom/tencent/qnet/pcap/EthernetHeader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget v0, Lcom/tencent/qnet/pcap/EthernetHeader;->ETHERNET_HEADER_LEN:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/qnet/pcap/EthernetHeader;->m_data:[B

    .line 22
    invoke-direct {p0}, Lcom/tencent/qnet/pcap/EthernetHeader;->init()V

    return-void
.end method

.method public static getDefault()Lcom/tencent/qnet/pcap/EthernetHeader;
    .locals 1

    .line 13
    sget-object v0, Lcom/tencent/qnet/pcap/EthernetHeader;->s_instance:Lcom/tencent/qnet/pcap/EthernetHeader;

    return-object v0
.end method

.method private init()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/tencent/qnet/pcap/EthernetHeader;->writePackType()V

    .line 29
    invoke-direct {p0}, Lcom/tencent/qnet/pcap/EthernetHeader;->writeAddrType()V

    .line 30
    invoke-direct {p0}, Lcom/tencent/qnet/pcap/EthernetHeader;->writeAddrLen()V

    .line 31
    invoke-direct {p0}, Lcom/tencent/qnet/pcap/EthernetHeader;->writeMac()V

    .line 32
    invoke-direct {p0}, Lcom/tencent/qnet/pcap/EthernetHeader;->writeUnused()V

    .line 33
    invoke-direct {p0}, Lcom/tencent/qnet/pcap/EthernetHeader;->writeProtocol()V

    return-void
.end method

.method private writeAddrLen()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/tencent/qnet/pcap/EthernetHeader;->m_data:[B

    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method private writeAddrType()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/tencent/qnet/pcap/EthernetHeader;->m_data:[B

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method private writeMac()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/tencent/qnet/pcap/EthernetHeader;->m_data:[B

    const/16 v1, -0x5556

    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    .line 50
    iget-object v0, p0, Lcom/tencent/qnet/pcap/EthernetHeader;->m_data:[B

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    .line 51
    iget-object v0, p0, Lcom/tencent/qnet/pcap/EthernetHeader;->m_data:[B

    const/16 v2, 0xa

    invoke-static {v0, v2, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method private writePackType()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/tencent/qnet/pcap/EthernetHeader;->m_data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method private writeProtocol()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/tencent/qnet/pcap/EthernetHeader;->m_data:[B

    const/16 v1, 0xe

    const/16 v2, 0x800

    invoke-static {v0, v1, v2}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method private writeUnused()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/tencent/qnet/pcap/EthernetHeader;->m_data:[B

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method


# virtual methods
.method public getBuff()[B
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tencent/qnet/pcap/EthernetHeader;->m_data:[B

    return-object v0
.end method
