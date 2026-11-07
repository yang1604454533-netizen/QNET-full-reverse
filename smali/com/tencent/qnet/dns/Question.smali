.class public Lcom/tencent/qnet/dns/Question;
.super Ljava/lang/Object;
.source "Question.java"


# instance fields
.field public Class:S

.field public Domain:Ljava/lang/String;

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

.method public static FromBytes(Ljava/nio/ByteBuffer;)Lcom/tencent/qnet/dns/Question;
    .locals 3

    .line 23
    new-instance v0, Lcom/tencent/qnet/dns/Question;

    invoke-direct {v0}, Lcom/tencent/qnet/dns/Question;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/tencent/qnet/dns/Question;->offset:I

    .line 25
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-static {p0, v1}, Lcom/tencent/qnet/dns/DnsPacket;->ReadDomain(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qnet/dns/Question;->Domain:Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/tencent/qnet/dns/Question;->Type:S

    .line 27
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/tencent/qnet/dns/Question;->Class:S

    .line 28
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/2addr v1, p0

    iget p0, v0, Lcom/tencent/qnet/dns/Question;->offset:I

    sub-int/2addr v1, p0

    iput v1, v0, Lcom/tencent/qnet/dns/Question;->length:I

    return-object v0
.end method


# virtual methods
.method public Length()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/tencent/qnet/dns/Question;->length:I

    return v0
.end method

.method public Offset()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/tencent/qnet/dns/Question;->offset:I

    return v0
.end method

.method public ToBytes(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/tencent/qnet/dns/Question;->offset:I

    .line 34
    iget-object v0, p0, Lcom/tencent/qnet/dns/Question;->Domain:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/qnet/dns/DnsPacket;->WriteDomain(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 35
    iget-short v0, p0, Lcom/tencent/qnet/dns/Question;->Type:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 36
    iget-short v0, p0, Lcom/tencent/qnet/dns/Question;->Class:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iget v0, p0, Lcom/tencent/qnet/dns/Question;->offset:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/tencent/qnet/dns/Question;->length:I

    return-void
.end method
