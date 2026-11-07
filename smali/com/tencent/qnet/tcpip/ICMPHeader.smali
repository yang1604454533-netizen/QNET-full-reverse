.class public Lcom/tencent/qnet/tcpip/ICMPHeader;
.super Ljava/lang/Object;
.source "ICMPHeader.java"


# static fields
.field static final offset_checksum:S = 0x2s

.field static final offset_code:S = 0x1s

.field static final offset_id:S = 0x4s

.field static final offset_seq:S = 0x6s

.field static final offset_timestamp:S = 0x8s

.field static final offset_type:S


# instance fields
.field public m_data:[B

.field public m_offset:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_data:[B

    .line 17
    iput p2, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_offset:I

    return-void
.end method


# virtual methods
.method public getCode()B
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_offset:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public getCrc()S
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_offset:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getId()S
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_offset:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getSeq()S
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_offset:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getType()B
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_offset:I

    add-int/lit8 v1, v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public setCode(B)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_offset:I

    add-int/lit8 v1, v1, 0x1

    aput-byte p1, v0, v1

    return-void
.end method

.method public setCrc(S)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_offset:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setId(S)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_offset:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setSeq(S)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_offset:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setType(B)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_data:[B

    iget v1, p0, Lcom/tencent/qnet/tcpip/ICMPHeader;->m_offset:I

    add-int/lit8 v1, v1, 0x0

    aput-byte p1, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "type: %d, code: %d, id: %d, seq: %d"

    const/4 v1, 0x4

    .line 63
    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/ICMPHeader;->getType()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 65
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/ICMPHeader;->getCode()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 66
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/ICMPHeader;->getId()S

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 67
    invoke-virtual {p0}, Lcom/tencent/qnet/tcpip/ICMPHeader;->getSeq()S

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 63
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
