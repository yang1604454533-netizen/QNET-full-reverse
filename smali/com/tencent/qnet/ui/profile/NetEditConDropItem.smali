.class public Lcom/tencent/qnet/ui/profile/NetEditConDropItem;
.super Lcom/tencent/qnet/ui/profile/NetEditBaseItem;
.source "NetEditConDropItem.java"


# instance fields
.field private m_drop:I

.field private m_pass:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 11
    iput p1, p0, Lcom/tencent/qnet/ui/profile/NetEditConDropItem;->m_type:I

    .line 12
    iput p2, p0, Lcom/tencent/qnet/ui/profile/NetEditConDropItem;->m_pass:I

    .line 13
    iput p3, p0, Lcom/tencent/qnet/ui/profile/NetEditConDropItem;->m_drop:I

    return-void
.end method


# virtual methods
.method public getDrop()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/tencent/qnet/ui/profile/NetEditConDropItem;->m_drop:I

    return v0
.end method

.method public getPass()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/tencent/qnet/ui/profile/NetEditConDropItem;->m_pass:I

    return v0
.end method

.method public setItemValue(II)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/tencent/qnet/ui/profile/NetEditConDropItem;->m_pass:I

    .line 19
    iput p2, p0, Lcom/tencent/qnet/ui/profile/NetEditConDropItem;->m_drop:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%d / %d"

    const/4 v1, 0x2

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/tencent/qnet/ui/profile/NetEditConDropItem;->m_pass:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/tencent/qnet/ui/profile/NetEditConDropItem;->m_drop:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
