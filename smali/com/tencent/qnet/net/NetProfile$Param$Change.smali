.class public Lcom/tencent/qnet/net/NetProfile$Param$Change;
.super Ljava/lang/Object;
.source "NetProfile.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/net/NetProfile$Param;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Change"
.end annotation


# instance fields
.field public Delta:I

.field public Interval:I

.field public Max:I

.field final synthetic this$1:Lcom/tencent/qnet/net/NetProfile$Param;


# direct methods
.method public constructor <init>(Lcom/tencent/qnet/net/NetProfile$Param;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tencent/qnet/net/NetProfile$Param$Change;->this$1:Lcom/tencent/qnet/net/NetProfile$Param;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/tencent/qnet/net/NetProfile$Param$Change;
    .locals 2

    .line 37
    new-instance v0, Lcom/tencent/qnet/net/NetProfile$Param$Change;

    iget-object v1, p0, Lcom/tencent/qnet/net/NetProfile$Param$Change;->this$1:Lcom/tencent/qnet/net/NetProfile$Param;

    invoke-direct {v0, v1}, Lcom/tencent/qnet/net/NetProfile$Param$Change;-><init>(Lcom/tencent/qnet/net/NetProfile$Param;)V

    .line 38
    iget v1, p0, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Delta:I

    iput v1, v0, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Delta:I

    .line 39
    iget v1, p0, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Max:I

    iput v1, v0, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Max:I

    .line 40
    iget v1, p0, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Interval:I

    iput v1, v0, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Interval:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/tencent/qnet/net/NetProfile$Param$Change;->clone()Lcom/tencent/qnet/net/NetProfile$Param$Change;

    move-result-object v0

    return-object v0
.end method
