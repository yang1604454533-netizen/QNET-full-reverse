.class public Lcom/tencent/qnet/net/NetProfile$Param;
.super Ljava/lang/Object;
.source "NetProfile.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/net/NetProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Param"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qnet/net/NetProfile$Param$Change;
    }
.end annotation


# instance fields
.field public Name:Ljava/lang/String;

.field public StringValue:Ljava/lang/String;

.field public m_change:Lcom/tencent/qnet/net/NetProfile$Param$Change;

.field final synthetic this$0:Lcom/tencent/qnet/net/NetProfile;


# direct methods
.method public constructor <init>(Lcom/tencent/qnet/net/NetProfile;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/qnet/net/NetProfile$Param;->this$0:Lcom/tencent/qnet/net/NetProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/tencent/qnet/net/NetProfile$Param;
    .locals 2

    .line 79
    new-instance v0, Lcom/tencent/qnet/net/NetProfile$Param;

    iget-object v1, p0, Lcom/tencent/qnet/net/NetProfile$Param;->this$0:Lcom/tencent/qnet/net/NetProfile;

    invoke-direct {v0, v1}, Lcom/tencent/qnet/net/NetProfile$Param;-><init>(Lcom/tencent/qnet/net/NetProfile;)V

    .line 80
    iget-object v1, p0, Lcom/tencent/qnet/net/NetProfile$Param;->Name:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qnet/net/NetProfile$Param;->Name:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/tencent/qnet/net/NetProfile$Param;->StringValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qnet/net/NetProfile$Param;->StringValue:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/tencent/qnet/net/NetProfile$Param;->m_change:Lcom/tencent/qnet/net/NetProfile$Param$Change;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/tencent/qnet/net/NetProfile$Param;->m_change:Lcom/tencent/qnet/net/NetProfile$Param$Change;

    invoke-virtual {v1}, Lcom/tencent/qnet/net/NetProfile$Param$Change;->clone()Lcom/tencent/qnet/net/NetProfile$Param$Change;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qnet/net/NetProfile$Param;->m_change:Lcom/tencent/qnet/net/NetProfile$Param$Change;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/tencent/qnet/net/NetProfile$Param;->clone()Lcom/tencent/qnet/net/NetProfile$Param;

    move-result-object v0

    return-object v0
.end method

.method public getChange()Lcom/tencent/qnet/net/NetProfile$Param$Change;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/tencent/qnet/net/NetProfile$Param;->m_change:Lcom/tencent/qnet/net/NetProfile$Param$Change;

    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/net/NetProfile$Param;->StringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public setChange(III)V
    .locals 1

    .line 59
    new-instance v0, Lcom/tencent/qnet/net/NetProfile$Param$Change;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/net/NetProfile$Param$Change;-><init>(Lcom/tencent/qnet/net/NetProfile$Param;)V

    iput-object v0, p0, Lcom/tencent/qnet/net/NetProfile$Param;->m_change:Lcom/tencent/qnet/net/NetProfile$Param$Change;

    .line 60
    iget-object v0, p0, Lcom/tencent/qnet/net/NetProfile$Param;->m_change:Lcom/tencent/qnet/net/NetProfile$Param$Change;

    iput p1, v0, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Delta:I

    .line 61
    iget-object p1, p0, Lcom/tencent/qnet/net/NetProfile$Param;->m_change:Lcom/tencent/qnet/net/NetProfile$Param$Change;

    iput p2, p1, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Interval:I

    .line 62
    iget-object p1, p0, Lcom/tencent/qnet/net/NetProfile$Param;->m_change:Lcom/tencent/qnet/net/NetProfile$Param$Change;

    iput p3, p1, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Max:I

    return-void
.end method
