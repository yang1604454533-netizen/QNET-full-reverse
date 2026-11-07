.class Lcom/tencent/qnet/core/IcmpServer$PingInfo;
.super Ljava/lang/Object;
.source "IcmpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/core/IcmpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PingInfo"
.end annotation


# instance fields
.field Count:I

.field Ping:I

.field PingCount:I

.field ToPingCount:I

.field final synthetic this$0:Lcom/tencent/qnet/core/IcmpServer;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/core/IcmpServer;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/tencent/qnet/core/IcmpServer$PingInfo;->this$0:Lcom/tencent/qnet/core/IcmpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
