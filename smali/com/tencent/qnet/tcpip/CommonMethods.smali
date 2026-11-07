.class public Lcom/tencent/qnet/tcpip/CommonMethods;
.super Ljava/lang/Object;
.source "CommonMethods.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ComputeICMPChecksum(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/ICMPHeader;)Z
    .locals 6

    .line 171
    invoke-static {p0}, Lcom/tencent/qnet/tcpip/CommonMethods;->ComputeIPChecksum(Lcom/tencent/qnet/tcpip/IPHeader;)Z

    .line 172
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getTotalLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getHeaderLength()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    if-gez v0, :cond_0

    return p0

    .line 176
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/ICMPHeader;->getCrc()S

    move-result v1

    .line 177
    invoke-virtual {p1, p0}, Lcom/tencent/qnet/tcpip/ICMPHeader;->setCrc(S)V

    const-wide/16 v2, 0x0

    .line 179
    iget-object v4, p1, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_data:[B

    iget v5, p1, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_offset:I

    invoke-static {v2, v3, v4, v5, v0}, Lcom/tencent/qnet/tcpip/CommonMethods;->checksum(J[BII)S

    move-result v0

    .line 181
    invoke-virtual {p1, v0}, Lcom/tencent/qnet/tcpip/ICMPHeader;->setCrc(S)V

    if-ne v1, v0, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public static ComputeIPChecksum(Lcom/tencent/qnet/tcpip/IPHeader;)Z
    .locals 7

    .line 119
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getCrc()S

    move-result v0

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, v1}, Lcom/tencent/qnet/tcpip/IPHeader;->setCrc(S)V

    .line 121
    iget-object v2, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v3, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    .line 122
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getHeaderLength()I

    move-result v4

    const-wide/16 v5, 0x0

    .line 121
    invoke-static {v5, v6, v2, v3, v4}, Lcom/tencent/qnet/tcpip/CommonMethods;->checksum(J[BII)S

    move-result v2

    .line 123
    invoke-virtual {p0, v2}, Lcom/tencent/qnet/tcpip/IPHeader;->setCrc(S)V

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static ComputeTCPChecksum(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/TCPHeader;)Z
    .locals 6

    .line 129
    invoke-static {p0}, Lcom/tencent/qnet/tcpip/CommonMethods;->ComputeIPChecksum(Lcom/tencent/qnet/tcpip/IPHeader;)Z

    .line 130
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getTotalLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getHeaderLength()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v3, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v3, v3, 0xc

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Lcom/tencent/qnet/tcpip/CommonMethods;->getsum([BII)J

    move-result-wide v2

    .line 136
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getProtocol()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v4, p0

    add-long/2addr v2, v4

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 139
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/TCPHeader;->getCrc()S

    move-result p0

    .line 140
    invoke-virtual {p1, v1}, Lcom/tencent/qnet/tcpip/TCPHeader;->setCrc(S)V

    .line 142
    iget-object v4, p1, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Data:[B

    iget v5, p1, Lcom/tencent/qnet/tcpip/TCPHeader;->m_Offset:I

    invoke-static {v2, v3, v4, v5, v0}, Lcom/tencent/qnet/tcpip/CommonMethods;->checksum(J[BII)S

    move-result v0

    .line 144
    invoke-virtual {p1, v0}, Lcom/tencent/qnet/tcpip/TCPHeader;->setCrc(S)V

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static ComputeUDPChecksum(Lcom/tencent/qnet/tcpip/IPHeader;Lcom/tencent/qnet/tcpip/UDPHeader;)Z
    .locals 6

    .line 150
    invoke-static {p0}, Lcom/tencent/qnet/tcpip/CommonMethods;->ComputeIPChecksum(Lcom/tencent/qnet/tcpip/IPHeader;)Z

    .line 151
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getTotalLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getHeaderLength()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Data:[B

    iget v3, p0, Lcom/tencent/qnet/tcpip/IPHeader;->m_Offset:I

    add-int/lit8 v3, v3, 0xc

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Lcom/tencent/qnet/tcpip/CommonMethods;->getsum([BII)J

    move-result-wide v2

    .line 157
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/IPHeader;->getProtocol()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v4, p0

    add-long/2addr v2, v4

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 160
    invoke-virtual {p1}, Lcom/tencent/qnet/tcpip/UDPHeader;->getCrc()S

    move-result p0

    .line 161
    invoke-virtual {p1, v1}, Lcom/tencent/qnet/tcpip/UDPHeader;->setCrc(S)V

    .line 163
    iget-object v4, p1, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Data:[B

    iget v5, p1, Lcom/tencent/qnet/tcpip/UDPHeader;->m_Offset:I

    invoke-static {v2, v3, v4, v5, v0}, Lcom/tencent/qnet/tcpip/CommonMethods;->checksum(J[BII)S

    move-result v0

    .line 165
    invoke-virtual {p1, v0}, Lcom/tencent/qnet/tcpip/UDPHeader;->setCrc(S)V

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static checksum(J[BII)S
    .locals 2

    .line 97
    invoke-static {p2, p3, p4}, Lcom/tencent/qnet/tcpip/CommonMethods;->getsum([BII)J

    move-result-wide p2

    add-long/2addr p0, p2

    :goto_0
    const/16 p2, 0x10

    shr-long p2, p0, p2

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-lez p4, :cond_0

    const-wide/32 v0, 0xffff

    and-long/2addr p0, v0

    add-long/2addr p0, p2

    goto :goto_0

    :cond_0
    not-long p0, p0

    long-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public static getsum([BII)J
    .locals 4

    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_0

    .line 106
    invoke-static {p0, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    .line 112
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    int-to-long p0, p0

    add-long/2addr v0, p0

    :cond_1
    return-wide v0
.end method

.method public static hton(I)I
    .locals 3

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x8

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 p0, p0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static htons(S)S
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x8

    shr-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static ipBytesToString([B)Ljava/lang/String;
    .locals 4

    const-string v0, "%s.%s.%s.%s"

    const/4 v1, 0x4

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ipBytesToint([B)I
    .locals 2

    const/4 v0, 0x0

    .line 31
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static ipIntToInet4Address(I)Ljava/net/InetAddress;
    .locals 2

    const/4 v0, 0x4

    .line 10
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1, p0}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeInt([BII)V

    .line 13
    :try_start_0
    invoke-static {v0}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static ipIntToString(I)Ljava/lang/String;
    .locals 4

    const-string v0, "%s.%s.%s.%s"

    const/4 v1, 0x4

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    .line 21
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ipStringToInt(Ljava/lang/String;)I
    .locals 2

    const-string v0, "\\."

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 36
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-object v1, p0, v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-object v1, p0, v1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-object p0, p0, v1

    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static ntoh(I)I
    .locals 3

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x8

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 p0, p0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static ntohs(S)S
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x8

    shr-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static readInt([BI)I
    .locals 2

    .line 44
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static readShort([BI)S
    .locals 1

    .line 51
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static writeInt([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 56
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 57
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 58
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    .line 59
    aput-byte p2, p0, p1

    return-void
.end method

.method public static writeShort([BIS)V
    .locals 1

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 63
    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    int-to-byte p2, p2

    .line 64
    aput-byte p2, p0, p1

    return-void
.end method
