.class public Lcom/tencent/qnet/tcpip/UDPHeader;
.super Ljava/lang/Object;
.source "UDPHeader.java"


# static fields
.field static final offset_crc:S = 0x6s

.field static final offset_dest_port:S = 0x2s

.field static final offset_src_port:S = 0x0s

.field static final offset_tlen:S = 0x4s


# instance fields
.field public m_Data:[B

.field public m_Offset:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Data:[B

    .line 14
    iput p2, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Offset:I

    return-void
.end method


# virtual methods
.method public getCrc()S
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getDestinationPort()S
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getSourcePort()S
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getTotalLength()I
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public setCrc(S)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setDestinationPort(S)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setSourcePort(S)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setTotalLength(I)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x4

    int-to-short p1, p1

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "%d->%d"

    const/4 v1, 0x2

    .line 51
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/UDPHeader;->getSourcePort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 52
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/UDPHeader;->getDestinationPort()S

    move-result v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 51
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
