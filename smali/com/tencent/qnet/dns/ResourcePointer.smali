.class public Lcom/tencent/qnet/dns/ResourcePointer;
.super Ljava/lang/Object;
.source "ResourcePointer.java"


# static fields
.field static final offset_Class:S = 0x4s

.field static final offset_DataLength:S = 0xas

.field static final offset_Domain:S = 0x0s

.field static final offset_IP:I = 0xc

.field static final offset_TTL:I = 0x6

.field static final offset_Type:S = 0x2s


# instance fields
.field Data:[B

.field Offset:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Data:[B

    .line 18
    iput p2, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Offset:I

    return-void
.end method


# virtual methods
.method public getClass(S)S
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Data:[B

    iget v0, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Offset:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result p1

    return p1
.end method

.method public getDataLength()S
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Offset:I

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public getIP()I
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Offset:I

    add-int/lit8 v1, v1, 0xc

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readInt([BI)I

    move-result v0

    return v0
.end method

.method public getTTL()I
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Offset:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readInt([BI)I

    move-result v0

    return v0
.end method

.method public getType()S
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Offset:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v0

    return v0
.end method

.method public setClass(S)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Offset:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setDataLength(S)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Offset:I

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setDomain(S)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Offset:I

    add-int/lit8 v1, v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method

.method public setIP(I)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Offset:I

    add-int/lit8 v1, v1, 0xc

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeInt([BII)V

    return-void
.end method

.method public setTTL(I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Offset:I

    add-int/lit8 v1, v1, 0x6

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeInt([BII)V

    return-void
.end method

.method public setType(S)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Data:[B

    iget v1, p0, Lcom/tencent/qnet/dns/ResourcePointer;->Offset:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/tencent/qnet/tcpip/CommonMethods;->writeShort([BIS)V

    return-void
.end method
