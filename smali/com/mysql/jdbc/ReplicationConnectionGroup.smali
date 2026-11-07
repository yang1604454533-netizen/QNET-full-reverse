.class public Lcom/mysql/jdbc/ReplicationConnectionGroup;
.super Ljava/lang/Object;
.source "ReplicationConnectionGroup.java"


# instance fields
.field private activeConnections:J

.field private connections:J

.field private groupName:Ljava/lang/String;

.field private isInitialized:Z

.field private masterHostList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private replicationConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/mysql/jdbc/ReplicationConnection;",
            ">;"
        }
    .end annotation
.end field

.field private slaveHostList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private slavesAdded:J

.field private slavesPromoted:J

.field private slavesRemoved:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->connections:J

    .line 40
    iput-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slavesAdded:J

    .line 41
    iput-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slavesRemoved:J

    .line 42
    iput-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slavesPromoted:J

    .line 43
    iput-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->activeConnections:J

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->replicationConnections:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slaveHostList:Ljava/util/Set;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->isInitialized:Z

    .line 47
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->masterHostList:Ljava/util/Set;

    .line 50
    iput-object p1, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->groupName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addSlaveHost(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slaveHostList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slavesAdded:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slavesAdded:J

    .line 109
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->replicationConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ReplicationConnection;

    .line 110
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ReplicationConnection;->addSlaveHost(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getActiveConnectionCount()J
    .locals 2

    .line 240
    iget-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->activeConnections:J

    return-wide v0
.end method

.method public getConnectionCount()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->connections:J

    return-wide v0
.end method

.method public getConnectionCountWithHostAsMaster(Ljava/lang/String;)I
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->replicationConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ReplicationConnection;

    .line 216
    invoke-interface {v2, p1}, Lcom/mysql/jdbc/ReplicationConnection;->isHostMaster(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getConnectionCountWithHostAsSlave(Ljava/lang/String;)I
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->replicationConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ReplicationConnection;

    .line 205
    invoke-interface {v2, p1}, Lcom/mysql/jdbc/ReplicationConnection;->isHostSlave(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getMasterHosts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->masterHostList:Ljava/util/Set;

    return-object v0
.end method

.method public getNumberOfSlavePromotions()J
    .locals 2

    .line 232
    iget-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slavesPromoted:J

    return-wide v0
.end method

.method public getNumberOfSlavesAdded()J
    .locals 2

    .line 224
    iget-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slavesAdded:J

    return-wide v0
.end method

.method public getNumberOfSlavesRemoved()J
    .locals 2

    .line 228
    iget-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slavesRemoved:J

    return-wide v0
.end method

.method public getSlaveHosts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slaveHostList:Ljava/util/Set;

    return-object v0
.end method

.method public getTotalConnectionCount()J
    .locals 2

    .line 236
    iget-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->connections:J

    return-wide v0
.end method

.method public handleCloseConnection(Lcom/mysql/jdbc/ReplicationConnection;)V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->replicationConnections:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/mysql/jdbc/ReplicationConnection;->getConnectionGroupId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->activeConnections:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->activeConnections:J

    return-void
.end method

.method public promoteSlaveToMaster(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slaveHostList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->masterHostList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 161
    iget-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slavesPromoted:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slavesPromoted:J

    .line 163
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->replicationConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ReplicationConnection;

    .line 164
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ReplicationConnection;->promoteSlaveToMaster(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerReplicationConnection(Lcom/mysql/jdbc/ReplicationConnection;Ljava/util/List;Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/ReplicationConnection;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->isInitialized:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->masterHostList:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p3, :cond_1

    .line 66
    iget-object p2, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slaveHostList:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 p2, 0x1

    .line 68
    iput-boolean p2, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->isInitialized:Z

    .line 70
    :cond_2
    iget-wide p2, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->connections:J

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->connections:J

    .line 71
    iget-object v2, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->replicationConnections:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-wide v2, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->activeConnections:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->activeConnections:J

    return-wide p2

    :catchall_0
    move-exception p1

    .line 72
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeMasterHost(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->removeMasterHost(Ljava/lang/String;Z)V

    return-void
.end method

.method public removeMasterHost(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->masterHostList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->replicationConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ReplicationConnection;

    .line 196
    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/ReplicationConnection;->removeMasterHost(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeSlaveHost(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slaveHostList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slavesRemoved:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slavesRemoved:J

    .line 139
    iget-object v0, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->replicationConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ReplicationConnection;

    .line 140
    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/ReplicationConnection;->removeSlave(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplicationConnectionGroup[groupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",masterHostList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->masterHostList:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",slaveHostList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/ReplicationConnectionGroup;->slaveHostList:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
