.class Lcom/tencent/qnet/core/LocalVpnService$2;
.super Ljava/lang/Object;
.source "LocalVpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/core/LocalVpnService;

.field final synthetic val$logString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/core/LocalVpnService;Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/tencent/qnet/core/LocalVpnService$2;->this$0:Lcom/tencent/qnet/core/LocalVpnService;

    iput-object p2, p0, Lcom/tencent/qnet/core/LocalVpnService$2;->val$logString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 159
    invoke-static {}, Lcom/tencent/qnet/core/LocalVpnService;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qnet/core/LocalVpnService$onStatusChangedListener;

    iget-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService$2;->val$logString:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/tencent/qnet/core/LocalVpnService$onStatusChangedListener;->onLogReceived(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
