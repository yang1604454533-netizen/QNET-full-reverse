.class public Lcom/tencent/qnet/dns/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# instance fields
.field public Class:S

.field public Data:[B

.field public DataLength:S

.field public Domain:Ljava/lang/String;

.field public TTL:I

.field public Type:S

.field private length:I

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FromBytes(Ljava/nio/ByteBuffer;)Lcom/tencent/qnet/dns/Resource;
    .locals 3

    .line 27
    new-instance v0, Lcom/tencent/qnet/dns/Resource;

    invoke-direct {v0}, Lcom/tencent/qnet/dns/Resource;-><init>()V

    .line 28
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/tencent/qnet/dns/Resource;->offset:I

    .line 29
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-static {p0, v1}, Lcom/tencent/qnet/dns/DnsPacket;->ReadDomain(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qnet/dns/Resource;->Domain:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/tencent/qnet/dns/Resource;->Type:S

    .line 31
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/tencent/qnet/dns/Resource;->Class:S

    .line 32
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/qnet/dns/Resource;->TTL:I

    .line 33
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/tencent/qnet/dns/Resource;->DataLength:S

    .line 34
    iget-short v1, v0, Lcom/tencent/qnet/dns/Resource;->DataLength:S

    const v2, 0xffff

    and-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/tencent/qnet/dns/Resource;->Data:[B

    .line 35
    iget-object v1, v0, Lcom/tencent/qnet/dns/Resource;->Data:[B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/2addr v1, p0

    iget p0, v0, Lcom/tencent/qnet/dns/Resource;->offset:I

    sub-int/2addr v1, p0

    iput v1, v0, Lcom/tencent/qnet/dns/Resource;->length:I

    return-object v0
.end method


# virtual methods
.method public Length()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/tencent/qnet/dns/Resource;->length:I

    return v0
.end method

.method public Offset()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/tencent/qnet/dns/Resource;->offset:I

    return v0
.end method

.method public ToBytes(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/tencent/qnet/dns/Resource;->Data:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 42
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/qnet/dns/Resource;->Data:[B

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/dns/Resource;->Data:[B

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/tencent/qnet/dns/Resource;->DataLength:S

    .line 46
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/tencent/qnet/dns/Resource;->offset:I

    .line 47
    iget-object v0, p0, Lcom/tencent/qnet/dns/Resource;->Domain:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/qnet/dns/DnsPacket;->WriteDomain(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 48
    iget-short v0, p0, Lcom/tencent/qnet/dns/Resource;->Type:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 49
    iget-short v0, p0, Lcom/tencent/qnet/dns/Resource;->Class:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 50
    iget v0, p0, Lcom/tencent/qnet/dns/Resource;->TTL:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    iget-short v0, p0, Lcom/tencent/qnet/dns/Resource;->DataLength:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 53
    iget-object v0, p0, Lcom/tencent/qnet/dns/Resource;->Data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iget v0, p0, Lcom/tencent/qnet/dns/Resource;->offset:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/tencent/qnet/dns/Resource;->length:I

    return-void
.end method
