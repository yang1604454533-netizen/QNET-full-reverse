.class public Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;
.super Ljava/lang/Object;
.source "JDBC4ClientInfoProviderSP.java"

# interfaces
.implements Lcom/mysql/jdbc/JDBC4ClientInfoProvider;


# instance fields
.field getClientInfoBulkSp:Ljava/sql/PreparedStatement;

.field getClientInfoSp:Ljava/sql/PreparedStatement;

.field setClientInfoSp:Ljava/sql/PreparedStatement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 63
    iput-object v1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 68
    iput-object v1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 73
    iput-object v1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 60
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getClientInfo(Ljava/sql/Connection;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 p1, 0x0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    invoke-interface {p2}, Ljava/sql/PreparedStatement;->execute()Z

    .line 108
    iget-object p2, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    invoke-interface {p2}, Ljava/sql/PreparedStatement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    :try_start_1
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz p2, :cond_1

    .line 115
    :try_start_2
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 119
    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    goto :goto_0

    :catchall_1
    move-exception p2

    :goto_0
    if-eqz p1, :cond_2

    .line 115
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    goto :goto_1

    :catchall_2
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 99
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getClientInfo(Ljava/sql/Connection;)Ljava/util/Properties;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 p1, 0x0

    .line 80
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 83
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->execute()Z

    .line 85
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    :goto_0
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 88
    invoke-interface {v1, p1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 92
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 96
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 92
    :try_start_4
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    :cond_2
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 77
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initialize(Ljava/sql/Connection;Ljava/util/Properties;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 41
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clientInfoSetSPName"

    const-string v2, "setClientInfo"

    .line 42
    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientInfoGetSPName"

    const-string v3, "getClientInfo"

    .line 43
    invoke-virtual {p2, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clientInfoGetBulkSPName"

    const-string v4, "getClientInfoBulk"

    .line 44
    invoke-virtual {p2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "clientInfoCatalog"

    const-string v5, ""

    .line 45
    invoke-virtual {p2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, ""

    .line 48
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/sql/Connection;->getCatalog()Ljava/lang/String;

    move-result-object p2

    .line 50
    :cond_0
    move-object v4, p1

    check-cast v4, Lcom/mysql/jdbc/Connection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?, ?)"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    .line 53
    move-object v1, p1

    check-cast v1, Lcom/mysql/jdbc/Connection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CALL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(?)"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoSp:Ljava/sql/PreparedStatement;

    .line 56
    check-cast p1, Lcom/mysql/jdbc/Connection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "()"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->getClientInfoBulkSp:Ljava/sql/PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 40
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setClientInfo(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    const/4 p2, 0x2

    invoke-interface {p1, p2, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfoSp:Ljava/sql/PreparedStatement;

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 146
    :try_start_1
    new-instance p2, Ljava/sql/SQLClientInfoException;

    invoke-direct {p2}, Ljava/sql/SQLClientInfoException;-><init>()V

    .line 147
    invoke-virtual {p2, p1}, Ljava/sql/SQLClientInfoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 149
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setClientInfo(Ljava/sql/Connection;Ljava/util/Properties;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLClientInfoException;
        }
    .end annotation

    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 126
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {p0, p1, v1, v2}, Lcom/mysql/jdbc/JDBC4ClientInfoProviderSP;->setClientInfo(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 133
    :try_start_1
    new-instance p2, Ljava/sql/SQLClientInfoException;

    invoke-direct {p2}, Ljava/sql/SQLClientInfoException;-><init>()V

    .line 134
    invoke-virtual {p2, p1}, Ljava/sql/SQLClientInfoException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 136
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :goto_1
    monitor-exit p0

    throw p1
.end method
