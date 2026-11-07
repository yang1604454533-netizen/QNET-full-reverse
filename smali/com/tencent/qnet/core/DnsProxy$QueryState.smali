.class Lcom/tencent/qnet/core/DnsProxy$QueryState;
.super Ljava/lang/Object;
.source "DnsProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/core/DnsProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryState"
.end annotation


# instance fields
.field public ClientIP:I

.field public ClientPort:S

.field public ClientQueryID:S

.field public QueryNanoTime:J

.field public RemoteIP:I

.field public RemotePort:S

.field final synthetic this$0:Lcom/tencent/qnet/core/DnsProxy;


# direct methods
.method private constructor <init>(Lcom/tencent/qnet/core/DnsProxy;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/tencent/qnet/core/DnsProxy$QueryState;->this$0:Lcom/tencent/qnet/core/DnsProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qnet/core/DnsProxy;Lcom/tencent/qnet/core/DnsProxy$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/tencent/qnet/core/DnsProxy$QueryState;-><init>(Lcom/tencent/qnet/core/DnsProxy;)V

    return-void
.end method
