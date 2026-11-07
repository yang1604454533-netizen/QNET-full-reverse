.class public Lcom/mysql/jdbc/StandardSocketFactory;
.super Ljava/lang/Object;
.source "StandardSocketFactory.java"

# interfaces
.implements Lcom/mysql/jdbc/SocketFactory;
.implements Lcom/mysql/jdbc/SocketMetadata;


# static fields
.field public static final TCP_KEEP_ALIVE_DEFAULT_VALUE:Ljava/lang/String; = "true"

.field public static final TCP_KEEP_ALIVE_PROPERTY_NAME:Ljava/lang/String; = "tcpKeepAlive"

.field public static final TCP_NO_DELAY_DEFAULT_VALUE:Ljava/lang/String; = "true"

.field public static final TCP_NO_DELAY_PROPERTY_NAME:Ljava/lang/String; = "tcpNoDelay"

.field public static final TCP_RCV_BUF_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final TCP_RCV_BUF_PROPERTY_NAME:Ljava/lang/String; = "tcpRcvBuf"

.field public static final TCP_SND_BUF_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final TCP_SND_BUF_PROPERTY_NAME:Ljava/lang/String; = "tcpSndBuf"

.field public static final TCP_TRAFFIC_CLASS_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final TCP_TRAFFIC_CLASS_PROPERTY_NAME:Ljava/lang/String; = "tcpTrafficClass"


# instance fields
.field protected host:Ljava/lang/String;

.field protected loginTimeoutCheckTimestamp:J

.field protected loginTimeoutCountdown:I

.field protected port:I

.field protected rawSocket:Ljava/net/Socket;

.field protected socketTimeoutBackup:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->host:Ljava/lang/String;

    const/16 v1, 0xcea

    .line 64
    iput v1, p0, Lcom/mysql/jdbc/StandardSocketFactory;->port:I

    .line 67
    iput-object v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    .line 70
    invoke-static {}, Ljava/sql/DriverManager;->getLoginTimeout()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCountdown:I

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCheckTimestamp:J

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->socketTimeoutBackup:I

    return-void
.end method

.method private configureSocket(Ljava/net/Socket;Ljava/util/Properties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "tcpNoDelay"

    const-string v1, "true"

    .line 132
    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const-string v0, "tcpKeepAlive"

    const-string v1, "true"

    .line 134
    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 137
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setKeepAlive(Z)V

    :cond_0
    const-string v0, "tcpRcvBuf"

    const-string v1, "0"

    .line 140
    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 143
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_1
    const-string v0, "tcpSndBuf"

    const-string v1, "0"

    .line 146
    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 149
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_2
    const-string v0, "tcpTrafficClass"

    const-string v1, "0"

    .line 152
    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_3

    .line 155
    invoke-virtual {p1, p2}, Ljava/net/Socket;->setTrafficClass(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public afterHandshake()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/mysql/jdbc/StandardSocketFactory;->resetLoginTimeCountdown()V

    .line 91
    iget-object v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    iget v1, p0, Lcom/mysql/jdbc/StandardSocketFactory;->socketTimeoutBackup:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 92
    iget-object v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public beforeHandshake()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/mysql/jdbc/StandardSocketFactory;->resetLoginTimeCountdown()V

    .line 108
    iget-object v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->socketTimeoutBackup:I

    .line 109
    iget-object v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    iget v1, p0, Lcom/mysql/jdbc/StandardSocketFactory;->socketTimeoutBackup:I

    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/StandardSocketFactory;->getRealTimeout(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 110
    iget-object v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public connect(Ljava/lang/String;ILjava/util/Properties;)Ljava/net/Socket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_7

    .line 165
    iput-object p1, p0, Lcom/mysql/jdbc/StandardSocketFactory;->host:Ljava/lang/String;

    .line 167
    iput p2, p0, Lcom/mysql/jdbc/StandardSocketFactory;->port:I

    const-string p1, "localSocketAddress"

    .line 169
    invoke-virtual {p3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 172
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string p1, "connectTimeout"

    .line 175
    invoke-virtual {p3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 181
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 183
    :catch_0
    new-instance p2, Ljava/net/SocketException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal value \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for connectTimeout"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 v2, 0x0

    .line 187
    :goto_1
    iget-object p1, p0, Lcom/mysql/jdbc/StandardSocketFactory;->host:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 188
    iget-object p1, p0, Lcom/mysql/jdbc/StandardSocketFactory;->host:Ljava/lang/String;

    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    .line 190
    array-length v3, p1

    if-eqz v3, :cond_6

    move-object v3, v0

    .line 199
    :goto_2
    array-length v4, p1

    if-ge p2, v4, :cond_3

    .line 201
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/mysql/jdbc/StandardSocketFactory;->createSocket(Ljava/util/Properties;)Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    .line 203
    iget-object v4, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    invoke-direct {p0, v4, p3}, Lcom/mysql/jdbc/StandardSocketFactory;->configureSocket(Ljava/net/Socket;Ljava/util/Properties;)V

    .line 205
    new-instance v4, Ljava/net/InetSocketAddress;

    aget-object v5, p1, p2

    iget v6, p0, Lcom/mysql/jdbc/StandardSocketFactory;->port:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    if-eqz v1, :cond_2

    .line 208
    iget-object v5, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v5, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 211
    :cond_2
    iget-object v5, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/StandardSocketFactory;->getRealTimeout(I)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    .line 216
    invoke-virtual {p0}, Lcom/mysql/jdbc/StandardSocketFactory;->resetLoginTimeCountdown()V

    .line 217
    iput-object v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 221
    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    if-nez p1, :cond_5

    if-nez v3, :cond_4

    goto :goto_4

    .line 222
    :cond_4
    throw v3

    .line 225
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/StandardSocketFactory;->resetLoginTimeCountdown()V

    .line 227
    iget-object p1, p0, Lcom/mysql/jdbc/StandardSocketFactory;->rawSocket:Ljava/net/Socket;

    return-object p1

    .line 191
    :cond_6
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "No addresses for host"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_7
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "Unable to create socket"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createSocket(Ljava/util/Properties;)Ljava/net/Socket;
    .locals 0

    .line 120
    new-instance p1, Ljava/net/Socket;

    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    return-object p1
.end method

.method protected getRealTimeout(I)I
    .locals 1

    .line 263
    iget v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCountdown:I

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCountdown:I

    if-le p1, v0, :cond_1

    .line 264
    :cond_0
    iget p1, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCountdown:I

    return p1

    :cond_1
    return p1
.end method

.method public isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 235
    invoke-static {p1}, Lcom/mysql/jdbc/SocketMetadata$Helper;->isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z

    move-result p1

    return p1
.end method

.method protected resetLoginTimeCountdown()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 245
    iget v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCountdown:I

    if-lez v0, :cond_1

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 247
    iget v2, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCountdown:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCheckTimestamp:J

    sub-long v4, v0, v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCountdown:I

    .line 248
    iget v2, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCountdown:I

    if-lez v2, :cond_0

    .line 251
    iput-wide v0, p0, Lcom/mysql/jdbc/StandardSocketFactory;->loginTimeoutCheckTimestamp:J

    goto :goto_0

    .line 249
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Connection.LoginTimeout"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
