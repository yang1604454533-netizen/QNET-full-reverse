.class public Lcom/mysql/jdbc/SocksProxySocketFactory;
.super Lcom/mysql/jdbc/StandardSocketFactory;
.source "SocksProxySocketFactory.java"


# static fields
.field public static SOCKS_DEFAULT_PORT:I = 0x438


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/mysql/jdbc/StandardSocketFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createSocket(Ljava/util/Properties;)Ljava/net/Socket;
    .locals 5

    const-string v0, "socksProxyHost"

    .line 39
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "socksProxyPort"

    .line 40
    sget v2, Lcom/mysql/jdbc/SocksProxySocketFactory;->SOCKS_DEFAULT_PORT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    sget v1, Lcom/mysql/jdbc/SocksProxySocketFactory;->SOCKS_DEFAULT_PORT:I

    .line 43
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p1, v1

    .line 48
    :goto_0
    new-instance v1, Ljava/net/Socket;

    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-direct {v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    return-object v1
.end method
