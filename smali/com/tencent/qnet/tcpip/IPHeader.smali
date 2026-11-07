.class public Lcom/tencent/qnet/tcpip/IPHeader;
.super Ljava/lang/Object;
.source "IPHeader.java"


# static fields
.field public static final ICMP:B = 0x1t

.field public static final IP:S = 0x800s

.field public static final TCP:B = 0x6t

.field public static final UDP:B = 0x11t

.field static final offset_crc:S = 0xas

.field public static final offset_dest_ip:I = 0x10

.field static final offset_flags_fo:S = 0x6s

.field static final offset_identification:S = 0x4s

.field static final offset_op_pad:I = 0x14

.field public static final offset_proto:B = 0x9t

.field public static final offset_src_ip:I = 0xc

.field static final offset_tlen:S = 0x2s

.field static final offset_tos:B = 0x1t

.field static final offset_ttl:B = 0x8t

.field static final offset_ver_ihl:B


# instance fields
.field public m_Data:[B

.field public m_Offset:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    .line 27
    iput p2, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    return-void
.end method


# virtual methods
.method public Default()V
    .locals 1

    const/16 v0, 0x14

    .line 31
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/tcpip/IPHeader;->setHeaderLength(I)V

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/tcpip/IPHeader;->setTos(B)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/tcpip/IPHeader;->setTotalLength(I)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/tcpip/IPHeader;->setIdentification(I)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/tcpip/IPHeader;->setFlagsAndOffset(S)V

    const/16 v0, 0x40

    .line 36
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/tcpip/IPHeader;->setTTL(B)V

    return-void
.end method

.method public getCrc()S
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getDataLength()I
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getTotalLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getHeaderLength()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDestinationIP()I
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readInt([BI)I

    move-result v0

    return v0
.end method

.method public getFlagsAndOffset()S
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getHeaderLength()I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getIdentification()I
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getProtocol()B
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x9

    aget-byte v0, v0, v1

    return v0
.end method

.method public getSourceIP()I
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0xc

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readInt([BI)I

    move-result v0

    return v0
.end method

.method public getTTL()B
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, v1

    return v0
.end method

.method public getTos()B
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public getTotalLength()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public setCrc(S)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setDestinationIP(I)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeInt([BII)V

    return-void
.end method

.method public setFlagsAndOffset(S)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setHeaderLength(I)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x0

    div-int/lit8 p1, p1, 0x4

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public setIdentification(I)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x4

    int-to-short p1, p1

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setProtocol(B)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x9

    aput-byte p1, v0, v1

    return-void
.end method

.method public setSourceIP(I)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0xc

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeInt([BII)V

    return-void
.end method

.method public setTTL(B)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x8

    aput-byte p1, v0, v1

    return-void
.end method

.method public setTos(B)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x1

    aput-byte p1, v0, v1

    return-void
.end method

.method public setTotalLength(I)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x2

    int-to-short p1, p1

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s->%s Pro=%s,HLen=%d"

    const/4 v1, 0x4

    .line 125
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getSourceIP()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipIntToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getDestinationIP()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipIntToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getProtocol()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getHeaderLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
