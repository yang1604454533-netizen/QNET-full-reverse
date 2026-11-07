.class Lcom/tencent/qnet/core/ProxyConfig$1;
.super Ljava/util/TimerTask;
.source "ProxyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/core/ProxyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/core/ProxyConfig;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/core/ProxyConfig;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/tencent/qnet/core/ProxyConfig$1;->this$0:Lcom/tencent/qnet/core/ProxyConfig;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method refreshProxyServer()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qnet/core/ProxyConfig$1;->this$0:Lcom/tencent/qnet/core/ProxyConfig;

    iget-object v2, v2, Lcom/tencent/qnet/core/ProxyConfig;->m_ProxyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v1, v2, :cond_1

    .line 114
    :try_start_1
    iget-object v2, p0, Lcom/tencent/qnet/core/ProxyConfig$1;->this$0:Lcom/tencent/qnet/core/ProxyConfig;

    iget-object v2, v2, Lcom/tencent/qnet/core/ProxyConfig;->m_ProxyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qnet/tunnel/Config;

    .line 115
    iget-object v3, v2, Lcom/tencent/qnet/tunnel/Config;->ServerAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v4, v2, Lcom/tencent/qnet/tunnel/Config;->ServerAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, v2, Lcom/tencent/qnet/tunnel/Config;->ServerAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-direct {v4, v3, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, v2, Lcom/tencent/qnet/tunnel/Config;->ServerAddress:Ljava/net/InetSocketAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/tencent/qnet/core/ProxyConfig$1;->refreshProxyServer()V

    return-void
.end method
