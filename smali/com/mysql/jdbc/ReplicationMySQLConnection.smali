.class public Lcom/mysql/jdbc/ReplicationMySQLConnection;
.super Lcom/mysql/jdbc/MultiHostMySQLConnection;
.source "ReplicationMySQLConnection.java"

# interfaces
.implements Lcom/mysql/jdbc/ReplicationConnection;


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/MultiHostMySQLConnection;-><init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;)V

    return-void
.end method

.method private getValidatedMasterConnection()Lcom/mysql/jdbc/Connection;
    .locals 3

    .line 58
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->masterConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->isClosed()Z

    move-result v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    goto :goto_0

    :catch_0
    return-object v1

    :cond_0
    :goto_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private getValidatedSlavesConnection()Lcom/mysql/jdbc/Connection;
    .locals 3

    .line 87
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->slavesConnection:Lcom/mysql/jdbc/LoadBalancedConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->isClosed()Z

    move-result v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    goto :goto_0

    :catch_0
    return-object v1

    :cond_0
    :goto_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public abort(Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->doAbort(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public abortInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->doAbortInternal()V

    return-void
.end method

.method public addSlaveHost(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->addSlaveHost(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized changeUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getValidatedMasterConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->changeUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getValidatedSlavesConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->changeUser(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 146
    monitor-exit p0

    throw p1
.end method

.method public getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getCurrentConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/MySQLConnection;

    return-object v0
.end method

.method public getAllowMasterDownConnections()Z
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowMasterDownConnections:Z

    return v0
.end method

.method public getConnectionGroupId()J
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->getConnectionGroupId()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getCurrentConnection()Lcom/mysql/jdbc/Connection;
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->getCurrentConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMasterConnection()Lcom/mysql/jdbc/Connection;
    .locals 1

    monitor-enter p0

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->getMasterConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 2

    .line 178
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 180
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getValidatedMasterConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    invoke-interface {v1}, Lcom/mysql/jdbc/Connection;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getValidatedSlavesConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 184
    invoke-interface {v1}, Lcom/mysql/jdbc/Connection;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object v0
.end method

.method public getReplicationEnableJMX()Z
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->enableJMX:Z

    return v0
.end method

.method public declared-synchronized getSlavesConnection()Lcom/mysql/jdbc/Connection;
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->getSlavesConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic getThisAsProxy()Lcom/mysql/jdbc/MultiHostConnectionProxy;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    return-object v0
.end method

.method protected getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/mysql/jdbc/MultiHostMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/MultiHostConnectionProxy;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;

    return-object v0
.end method

.method public hasSameProperties(Lcom/mysql/jdbc/Connection;)Z
    .locals 3

    .line 168
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getValidatedMasterConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    .line 169
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getValidatedSlavesConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz v0, :cond_1

    .line 173
    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->hasSameProperties(Lcom/mysql/jdbc/Connection;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/Connection;->hasSameProperties(Lcom/mysql/jdbc/Connection;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public isHostMaster(Ljava/lang/String;)Z
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isHostMaster(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isHostSlave(Ljava/lang/String;)Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isHostSlave(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized ping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 125
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getValidatedMasterConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->ping()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 129
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->isMasterConnection()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    .line 134
    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getValidatedSlavesConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->ping()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 138
    :try_start_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->isMasterConnection()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 142
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 139
    :cond_2
    :try_start_4
    throw v0

    .line 130
    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public promoteSlaveToMaster(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->promoteSlaveToMaster(Ljava/lang/String;)V

    return-void
.end method

.method public removeMasterHost(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->removeMasterHost(Ljava/lang/String;)V

    return-void
.end method

.method public removeMasterHost(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->removeMasterHost(Ljava/lang/String;Z)V

    return-void
.end method

.method public removeSlave(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->removeSlave(Ljava/lang/String;)V

    return-void
.end method

.method public removeSlave(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->removeSlave(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAllowMasterDownConnections(Z)V
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    iput-boolean p1, v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->allowMasterDownConnections:Z

    return-void
.end method

.method public setProxy(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->setReadOnly(Z)V

    return-void
.end method

.method public setReplicationEnableJMX(Z)V
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getThisAsProxy()Lcom/mysql/jdbc/ReplicationConnectionProxy;

    move-result-object v0

    iput-boolean p1, v0, Lcom/mysql/jdbc/ReplicationConnectionProxy;->enableJMX:Z

    return-void
.end method

.method public declared-synchronized setStatementComment(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getValidatedMasterConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setStatementComment(Ljava/lang/String;)V

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/mysql/jdbc/ReplicationMySQLConnection;->getValidatedSlavesConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setStatementComment(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 157
    monitor-exit p0

    throw p1
.end method
