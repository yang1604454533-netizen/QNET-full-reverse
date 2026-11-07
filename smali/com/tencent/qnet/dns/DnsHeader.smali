.class public Lcom/tencent/qnet/dns/DnsHeader;
.super Ljava/lang/Object;
.source "DnsHeader.java"


# static fields
.field static final offset_AResourceCount:S = 0x8s

.field static final offset_EResourceCount:S = 0xas

.field static final offset_Flags:S = 0x2s

.field static final offset_ID:S = 0x0s

.field static final offset_QuestionCount:S = 0x4s

.field static final offset_ResourceCount:S = 0x6s


# instance fields
.field public AResourceCount:S

.field public Data:[B

.field public EResourceCount:S

.field public Flags:Lcom/tencent/qnet/dns/DnsFlags;

.field public ID:S

.field public Offset:I

.field public QuestionCount:S

.field public ResourceCount:S


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p2, p0, Lcom/tencent/qnet/dns/DnsHeader;->Offset:I

    .line 48
    iput-object p1, p0, Lcom/tencent/qnet/dns/DnsHeader;->Data:[B

    return-void
.end method

.method public static FromBytes(Ljava/nio/ByteBuffer;)Lcom/tencent/qnet/dns/DnsHeader;
    .locals 4

    .line 17
    new-instance v0, Lcom/tencent/qnet/dns/DnsHeader;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/tencent/qnet/dns/DnsHeader;-><init>([BI)V

    .line 18
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/tencent/qnet/dns/DnsHeader;->ID:S

    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Lcom/tencent/qnet/dns/DnsFlags;->Parse(S)Lcom/tencent/qnet/dns/DnsFlags;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qnet/dns/DnsHeader;->Flags:Lcom/tencent/qnet/dns/DnsFlags;

    .line 20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/tencent/qnet/dns/DnsHeader;->QuestionCount:S

    .line 21
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/tencent/qnet/dns/DnsHeader;->ResourceCount:S

    .line 22
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/tencent/qnet/dns/DnsHeader;->AResourceCount:S

    .line 23
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    iput-short p0, v0, Lcom/tencent/qnet/dns/DnsHeader;->EResourceCount:S

    return-object v0
.end method


# virtual methods
.method public ToBytes(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 28
    iget-short v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->ID:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 29
    iget-object v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->Flags:Lcom/tencent/qnet/dns/DnsFlags;

    invoke-virtual {v0}, Lcom/tencent/qnet/dns/DnsFlags;->ToShort()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 30
    iget-short v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->QuestionCount:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 31
    iget-short v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->ResourceCount:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 32
    iget-short v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->AResourceCount:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 33
    iget-short v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->EResourceCount:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public getAResourceCount()S
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/DnsHeader;->Offset:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getEResourceCount()S
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/DnsHeader;->Offset:I

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getFlags()S
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/DnsHeader;->Offset:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getID()S
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/DnsHeader;->Offset:I

    add-int/lit8 v1, v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getQuestionCount()S
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/DnsHeader;->Offset:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getResourceCount()S
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/DnsHeader;->Offset:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public setAResourceCount(S)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/DnsHeader;->Offset:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setEResourceCount(S)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/DnsHeader;->Offset:I

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setFlags(S)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/DnsHeader;->Offset:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setID(S)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/DnsHeader;->Offset:I

    add-int/lit8 v1, v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setQuestionCount(S)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/DnsHeader;->Offset:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setResourceCount(S)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/tencent/qnet/dns/DnsHeader;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/DnsHeader;->Offset:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method
