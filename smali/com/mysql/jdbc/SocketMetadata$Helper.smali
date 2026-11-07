.class public Lcom/mysql/jdbc/SocketMetadata$Helper;
.super Ljava/lang/Object;
.source "SocketMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/SocketMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helper"
.end annotation


# static fields
.field public static final IS_LOCAL_HOSTNAME_REPLACEMENT_PROPERTY_NAME:Ljava/lang/String; = "com.mysql.jdbc.test.isLocalHostnameReplacement"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findProcessHost(JLjava/sql/Statement;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "SHOW PROCESSLIST"

    .line 138
    invoke-interface {p2, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p2

    .line 140
    :cond_0
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 141
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    .line 144
    invoke-interface {p2, p0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getId()J

    move-result-wide v0

    .line 49
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v2

    const-string v3, "com.mysql.jdbc.test.isLocalHostnameReplacement"

    .line 54
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const-string v2, "com.mysql.jdbc.test.isLocalHostnameReplacement"

    .line 55
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProperties()Ljava/util/Properties;

    move-result-object v3

    const-string v6, "com.mysql.jdbc.test.isLocalHostnameReplacement"

    invoke-virtual {v3, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getProperties()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "com.mysql.jdbc.test.isLocalHostnameReplacement"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 62
    :cond_1
    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SocketMetadata$Helper;->findProcessHost(JLjava/sql/Statement;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v6

    const-string v7, "Connection id %d not found in \"SHOW PROCESSLIST\", assuming 32-bit overflow, using SELECT CONNECTION_ID() instead"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    const-string v6, "SELECT CONNECTION_ID()"

    .line 71
    invoke-interface {v2, v6}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v6

    .line 73
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 74
    invoke-interface {v6, v4}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v0

    .line 76
    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SocketMetadata$Helper;->findProcessHost(JLjava/sql/Statement;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v6

    const-string v7, "No rows returned for statement \"SELECT CONNECTION_ID()\", local connection check will most likely be incorrect"

    invoke-interface {v6, v7}, Lcom/mysql/jdbc/log/Log;->logError(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_8

    .line 88
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v0

    const-string v1, "Using \'host\' value of \'%s\' to determine locality of connection"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/log/Log;->logDebug(Ljava/lang/Object;)V

    const-string v0, ":"

    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 92
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 97
    :try_start_1
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 100
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v2

    iget-object v2, v2, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 102
    instance-of v3, v2, Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_5

    .line 103
    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 105
    array-length v3, v1

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_6

    aget-object v7, v1, v6

    .line 106
    invoke-virtual {v7, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_4

    .line 107
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v1

    const-string v3, "Locally connected - HostAddress(%s).equals(whereIconnectedTo({%s})"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v7, v6, v5

    aput-object v2, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/log/Log;->logDebug(Ljava/lang/Object;)V

    const/4 v5, 0x1

    goto :goto_3

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v8

    const-string v10, "Attempted locally connected check failed - ! HostAddress(%s).equals(whereIconnectedTo(%s)"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v5

    aput-object v2, v9, v4

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/mysql/jdbc/log/Log;->logDebug(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    const-string v1, "Remote socket address %s is not an inet socket address"

    .line 117
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/log/Log;->logDebug(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_3
    return v5

    :catch_0
    move-exception v1

    .line 123
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object p0

    const-string v2, "Connection.CantDetectLocalConnect"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return v5

    .line 127
    :cond_7
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object p0

    const-string v0, "No port number present in \'host\' from SHOW PROCESSLIST \'%s\', unable to determine whether locally connected"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    return v5

    .line 131
    :cond_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionImpl;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object p0

    const-string v2, "Cannot find process listing for connection %d in SHOW PROCESSLIST output, unable to determine if locally connected"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    return v5

    :catchall_0
    move-exception p0

    .line 133
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 83
    throw p0
.end method
