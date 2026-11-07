.class public Lcom/tencent/qnet/tcpip/TCPHeader;
.super Ljava/lang/Object;
.source "TCPHeader.java"


# static fields
.field public static final ACK:I = 0x10

.field public static final FIN:I = 0x1

.field public static final PSH:I = 0x8

.field public static final RST:I = 0x4

.field public static final SYN:I = 0x2

.field public static final URG:I = 0x20

.field static final offset_ack:I = 0x8

.field static final offset_crc:S = 0x10s

.field static final offset_dest_port:S = 0x2s

.field static final offset_flag:B = 0xdt

.field static final offset_lenres:B = 0xct

.field static final offset_seq:I = 0x4

.field static final offset_src_port:S = 0x0s

.field static final offset_urp:S = 0x12s

.field static final offset_win:S = 0xes


# instance fields
.field public m_Data:[B

.field public m_Offset:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Data:[B

    .line 28
    iput p2, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Offset:I

    return-void
.end method


# virtual methods
.method public getAckID()I
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readInt([BI)I

    move-result v0

    return v0
.end method

.method public getCrc()S
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getDestinationPort()S
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getFlags()B
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0xd

    aget-byte v0, v0, v1

    return v0
.end method

.method public getHeaderLength()I
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0xc

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getSeqID()I
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readInt([BI)I

    move-result v0

    return v0
.end method

.method public getSourcePort()S
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getTypeStr()Ljava/lang/String;
    .locals 6

    const-string v0, "%s%s%s%s%s%s"

    const/4 v1, 0x6

    .line 89
    new-array v1, v1, [Ljava/lang/Object;

    .line 90
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/TCPHeader;->getFlags()B

    move-result v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const-string v2, "SYN "

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 91
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/TCPHeader;->getFlags()B

    move-result v2

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    const-string v2, "ACK "

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 92
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/TCPHeader;->getFlags()B

    move-result v2

    const/16 v5, 0x8

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_2

    const-string v2, "PSH "

    goto :goto_2

    :cond_2
    const-string v2, ""

    :goto_2
    aput-object v2, v1, v3

    const/4 v2, 0x3

    .line 93
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/TCPHeader;->getFlags()B

    move-result v3

    const/4 v5, 0x4

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_3

    const-string v3, "RST "

    goto :goto_3

    :cond_3
    const-string v3, ""

    :goto_3
    aput-object v3, v1, v2

    .line 94
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/TCPHeader;->getFlags()B

    move-result v2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    const-string v2, "FIN "

    goto :goto_4

    :cond_4
    const-string v2, ""

    :goto_4
    aput-object v2, v1, v5

    const/4 v2, 0x5

    .line 95
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/TCPHeader;->getFlags()B

    move-result v3

    const/16 v4, 0x20

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    const-string v3, "URG "

    goto :goto_5

    :cond_5
    const-string v3, ""

    :goto_5
    aput-object v3, v1, v2

    .line 89
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCrc(S)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setDestinationPort(S)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setSourcePort(S)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Offset:I

    add-int/lit8 v1, v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const-string v0, "%s%s%s%s%s%s%d->%d %s:%s"

    const/16 v1, 0xa

    .line 74
    new-array v1, v1, [Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/TCPHeader;->getFlags()B

    move-result v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const-string v2, "SYN "

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 76
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/TCPHeader;->getFlags()B

    move-result v2

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    const-string v2, "ACK "

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 77
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/TCPHeader;->getFlags()B

    move-result v2

    const/16 v5, 0x8

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_2

    const-string v2, "PSH "

    goto :goto_2

    :cond_2
    const-string v2, ""

    :goto_2
    aput-object v2, v1, v3

    const/4 v2, 0x3

    .line 78
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/TCPHeader;->getFlags()B

    move-result v3

    const/4 v6, 0x4

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_3

    const-string v3, "RST "

    goto :goto_3

    :cond_3
    const-string v3, ""

    :goto_3
    aput-object v3, v1, v2

    .line 79
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/TCPHeader;->getFlags()B

    move-result v2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    const-string v2, "FIN "

    goto :goto_4

    :cond_4
    const-string v2, ""

    :goto_4
    aput-object v2, v1, v6

    const/4 v2, 0x5

    .line 80
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/TCPHeader;->getFlags()B

    move-result v3

    const/16 v4, 0x20

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    const-string v3, "URG "

    goto :goto_5

    :cond_5
    const-string v3, ""

    :goto_5
    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 81
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/TCPHeader;->getSourcePort()S

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 82
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/TCPHeader;->getDestinationPort()S

    move-result v3

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 83
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/TCPHeader;->getSeqID()I

    move-result v2

    int-to-long v2, v2

    const-wide v6, 0xffffffffL

    and-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x9

    .line 84
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/TCPHeader;->getAckID()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 74
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
