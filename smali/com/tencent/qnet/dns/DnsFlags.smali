.class public Lcom/tencent/qnet/dns/DnsFlags;
.super Ljava/lang/Object;
.source "DnsFlags.java"


# instance fields
.field public AA:Z

.field public OpCode:I

.field public QR:Z

.field public RA:Z

.field public RD:Z

.field public Rcode:I

.field public TC:Z

.field public Zero:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Parse(S)Lcom/tencent/qnet/dns/DnsFlags;
    .locals 4

    const v0, 0xffff

    and-int/2addr p0, v0

    .line 15
    new-instance v0, Lcom/tencent/qnet/dns/DnsFlags;

    invoke-direct {v0}, Lcom/tencent/qnet/dns/DnsFlags;-><init>()V

    shr-int/lit8 v1, p0, 0x7

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    iput-boolean v1, v0, Lcom/tencent/qnet/dns/DnsFlags;->QR:Z

    shr-int/lit8 v1, p0, 0x3

    and-int/lit8 v1, v1, 0xf

    .line 17
    iput v1, v0, Lcom/tencent/qnet/dns/DnsFlags;->OpCode:I

    shr-int/lit8 v1, p0, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 18
    :goto_1
    iput-boolean v1, v0, Lcom/tencent/qnet/dns/DnsFlags;->AA:Z

    shr-int/lit8 v1, p0, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 19
    :goto_2
    iput-boolean v1, v0, Lcom/tencent/qnet/dns/DnsFlags;->TC:Z

    and-int/lit8 v1, p0, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 20
    :goto_3
    iput-boolean v1, v0, Lcom/tencent/qnet/dns/DnsFlags;->RD:Z

    shr-int/lit8 v1, p0, 0xf

    if-ne v1, v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 21
    :goto_4
    iput-boolean v2, v0, Lcom/tencent/qnet/dns/DnsFlags;->RA:Z

    shr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0x7

    .line 22
    iput v1, v0, Lcom/tencent/qnet/dns/DnsFlags;->Zero:I

    shr-int/lit8 p0, p0, 0x8

    and-int/lit8 p0, p0, 0xf

    .line 23
    iput p0, v0, Lcom/tencent/qnet/dns/DnsFlags;->Rcode:I

    return-object v0
.end method


# virtual methods
.method public ToShort()S
    .locals 2

    .line 29
    iget-boolean v0, p0, Lcom/tencent/qnet/dns/DnsFlags;->QR:Z

    shl-int/lit8 v0, v0, 0x7

    or-int/lit8 v0, v0, 0x0

    .line 30
    iget v1, p0, Lcom/tencent/qnet/dns/DnsFlags;->OpCode:I

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    .line 31
    iget-boolean v1, p0, Lcom/tencent/qnet/dns/DnsFlags;->AA:Z

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 32
    iget-boolean v1, p0, Lcom/tencent/qnet/dns/DnsFlags;->TC:Z

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 33
    iget-boolean v1, p0, Lcom/tencent/qnet/dns/DnsFlags;->RD:Z

    or-int/2addr v0, v1

    .line 34
    iget-boolean v1, p0, Lcom/tencent/qnet/dns/DnsFlags;->RA:Z

    shl-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    .line 35
    iget v1, p0, Lcom/tencent/qnet/dns/DnsFlags;->Zero:I

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    .line 36
    iget v1, p0, Lcom/tencent/qnet/dns/DnsFlags;->Rcode:I

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method
