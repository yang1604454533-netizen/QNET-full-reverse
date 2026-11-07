.class public Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;
.super Lcom/tencent/qnet/ui/profile/NetEditBaseItem;
.source "NetEditProtocolItem.java"


# instance fields
.field private m_value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 10
    iput p1, p0, Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;->m_type:I

    .line 11
    iput-object p2, p0, Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;->m_value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;->m_value:Ljava/lang/String;

    return-object v0
.end method

.method public setItemValue(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;->m_value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditProtocolItem;->m_value:Ljava/lang/String;

    return-object v0
.end method
