.class Lcom/tencent/qnet/core/LocalVpnService$1;
.super Ljava/lang/Object;
.source "LocalVpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/core/LocalVpnService;->onStatusChanged(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/core/LocalVpnService;

.field final synthetic val$isRunning:Z

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/core/LocalVpnService;Ljava/lang/String;Z)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/tencent/qnet/core/LocalVpnService$1;->this$0:Lcom/tencent/qnet/core/LocalVpnService;

    iput-object p2, p0, Lcom/tencent/qnet/core/LocalVpnService$1;->val$status:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tencent/qnet/core/LocalVpnService$1;->val$isRunning:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 147
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

    .line 148
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qnet/core/LocalVpnService$onStatusChangedListener;

    iget-object v2, p0, Lcom/tencent/qnet/core/LocalVpnService$1;->val$status:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/tencent/qnet/core/LocalVpnService$1;->val$isRunning:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/qnet/core/LocalVpnService$onStatusChangedListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    return-void
.end method
