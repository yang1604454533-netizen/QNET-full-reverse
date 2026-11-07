.class public Lcom/tencent/qnet/ui/profile/NetEditTextItem;
.super Lcom/tencent/qnet/ui/profile/NetEditBaseItem;
.source "NetEditTextItem.java"


# instance fields
.field private m_value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/tencent/qnet/ui/profile/NetEditTextItem;->m_type:I

    .line 11
    iput p2, p0, Lcom/tencent/qnet/ui/profile/NetEditTextItem;->m_value:I

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/tencent/qnet/ui/profile/NetEditTextItem;->m_value:I

    return v0
.end method

.method public setItemValue(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/tencent/qnet/ui/profile/NetEditTextItem;->m_value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%d"

    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/tencent/qnet/ui/profile/NetEditTextItem;->m_value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
