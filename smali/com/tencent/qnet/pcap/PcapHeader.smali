.class public Lcom/tencent/qnet/pcap/PcapHeader;
.super Ljava/lang/Object;
.source "PcapHeader.java"


# static fields
.field private static s_instance:Lcom/tencent/qnet/pcap/PcapHeader;


# instance fields
.field private m_data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/tencent/qnet/pcap/PcapHeader;

    invoke-direct {v0}, Lcom/tencent/qnet/pcap/PcapHeader;-><init>()V

    sput-object v0, Lcom/tencent/qnet/pcap/PcapHeader;->s_instance:Lcom/tencent/qnet/pcap/PcapHeader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    .line 8
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/qnet/pcap/PcapHeader;->m_data:[B

    .line 21
    invoke-direct {p0}, Lcom/tencent/qnet/pcap/PcapHeader;->init()V

    return-void
.end method

.method public static getDefault()Lcom/tencent/qnet/pcap/PcapHeader;
    .locals 1

    .line 12
    sget-object v0, Lcom/tencent/qnet/pcap/PcapHeader;->s_instance:Lcom/tencent/qnet/pcap/PcapHeader;

    return-object v0
.end method

.method private init()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/tencent/qnet/pcap/PcapHeader;->writeMagic()V

    .line 28
    invoke-direct {p0}, Lcom/tencent/qnet/pcap/PcapHeader;->writeMajorVersion()V

    .line 29
    invoke-direct {p0}, Lcom/tencent/qnet/pcap/PcapHeader;->writeMinorVersion()V

    .line 30
    invoke-direct {p0}, Lcom/tencent/qnet/pcap/PcapHeader;->writeThisZone()V

    .line 31
    invoke-direct {p0}, Lcom/tencent/qnet/pcap/PcapHeader;->writeSigFigs()V

    .line 32
    invoke-direct {p0}, Lcom/tencent/qnet/pcap/PcapHeader;->writeSnapLen()V

    .line 33
    invoke-direct {p0}, Lcom/tencent/qnet/pcap/PcapHeader;->writeLinkType()V

    return-void
.end method

.method private writeLinkType()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/tencent/qnet/pcap/PcapHeader;->m_data:[B

    const/16 v1, 0x71

    invoke-static {v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->hton(I)I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v0, v2, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeInt([BII)V

    return-void
.end method

.method private writeMagic()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/tencent/qnet/pcap/PcapHeader;->m_data:[B

    const v1, -0x5e4d3c2c

    invoke-static {v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->hton(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeInt([BII)V

    return-void
.end method

.method private writeMajorVersion()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/tencent/qnet/pcap/PcapHeader;->m_data:[B

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->htons(S)S

    move-result v1

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method private writeMinorVersion()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/tencent/qnet/pcap/PcapHeader;->m_data:[B

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->htons(S)S

    move-result v1

    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method private writeSigFigs()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/tencent/qnet/pcap/PcapHeader;->m_data:[B

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->hton(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-static {v0, v2, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeInt([BII)V

    return-void
.end method

.method private writeSnapLen()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/tencent/qnet/pcap/PcapHeader;->m_data:[B

    const/high16 v1, 0x40000

    invoke-static {v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->hton(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v0, v2, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeInt([BII)V

    return-void
.end method

.method private writeThisZone()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/tencent/qnet/pcap/PcapHeader;->m_data:[B

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->hton(I)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeInt([BII)V

    return-void
.end method


# virtual methods
.method public getBuff()[B
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/tencent/qnet/pcap/PcapHeader;->m_data:[B

    return-object v0
.end method
