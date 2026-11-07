.class public Lcom/mysql/jdbc/jmx/ReplicationGroupManager;
.super Ljava/lang/Object;
.source "ReplicationGroupManager.java"

# interfaces
.implements Lcom/mysql/jdbc/jmx/ReplicationGroupManagerMBean;


# instance fields
.field private isJmxRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/mysql/jdbc/jmx/ReplicationGroupManager;->isJmxRegistered:Z

    return-void
.end method


# virtual methods
.method public addSlaveHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 55
    invoke-static {p1, p2}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->addSlaveHost(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getActiveLogicalConnectionCount(Ljava/lang/String;)J
    .locals 2

    .line 129
    invoke-static {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getActiveConnectionCount(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveMasterHostCount(Ljava/lang/String;)I
    .locals 0

    .line 113
    invoke-static {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getMasterHosts(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    return p1
.end method

.method public getActiveSlaveHostCount(Ljava/lang/String;)I
    .locals 0

    .line 117
    invoke-static {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getSlaveHosts(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    return p1
.end method

.method public getMasterHostsList(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-static {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getMasterHosts(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ","

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRegisteredConnectionGroups()Ljava/lang/String;
    .locals 4

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 102
    invoke-static {v1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ReplicationConnectionGroup;

    if-eqz v2, :cond_0

    const-string v2, ","

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x1

    .line 107
    invoke-virtual {v3}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSlaveHostsList(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getSlaveHosts(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ","

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSlavePromotionCount(Ljava/lang/String;)I
    .locals 0

    .line 121
    invoke-static {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getNumberOfMasterPromotion(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getTotalLogicalConnectionCount(Ljava/lang/String;)J
    .locals 2

    .line 125
    invoke-static {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getTotalConnectionCount(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public promoteSlaveToMaster(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 63
    invoke-static {p1, p2}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->promoteSlaveToMaster(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized registerJmx()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 40
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/jmx/ReplicationGroupManager;->isJmxRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 41
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :try_start_2
    new-instance v1, Ljavax/management/ObjectName;

    const-string v2, "com.mysql.jdbc.jmx:type=ReplicationGroupManager"

    invoke-direct {v1, v2}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-interface {v0, p0, v1}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/mysql/jdbc/jmx/ReplicationGroupManager;->isJmxRegistered:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "Unable to register replication host management bean with JMX"

    const/4 v2, 0x0

    .line 49
    invoke-static {v1, v2, v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 39
    monitor-exit p0

    throw v0
.end method

.method public removeMasterHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 68
    invoke-static {p1, p2}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->removeMasterHost(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeSlaveHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 59
    invoke-static {p1, p2}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->removeSlaveHost(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
