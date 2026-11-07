.class public Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;
.super Ljava/lang/Object;
.source "FabricMultiTenantConnectionProvider.java"

# interfaces
.implements Lorg/hibernate/service/jdbc/connections/spi/MultiTenantConnectionProvider;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private database:Ljava/lang/String;

.field private fabricConnection:Lcom/mysql/fabric/FabricConnection;

.field private globalGroup:Lcom/mysql/fabric/ServerGroup;

.field private password:Ljava/lang/String;

.field private shardMapping:Lcom/mysql/fabric/ShardMapping;

.field private table:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    :try_start_0
    new-instance v0, Lcom/mysql/fabric/FabricConnection;

    invoke-direct {v0, p1, p6, p7}, Lcom/mysql/fabric/FabricConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->fabricConnection:Lcom/mysql/fabric/FabricConnection;

    .line 60
    iput-object p2, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->database:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->table:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->user:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->password:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->fabricConnection:Lcom/mysql/fabric/FabricConnection;

    iget-object p2, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->database:Ljava/lang/String;

    iget-object p3, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->table:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/mysql/fabric/FabricConnection;->getShardMapping(Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/fabric/ShardMapping;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->shardMapping:Lcom/mysql/fabric/ShardMapping;

    .line 65
    iget-object p1, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->fabricConnection:Lcom/mysql/fabric/FabricConnection;

    iget-object p2, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->shardMapping:Lcom/mysql/fabric/ShardMapping;

    invoke-virtual {p2}, Lcom/mysql/fabric/ShardMapping;->getGlobalGroupName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mysql/fabric/FabricConnection;->getServerGroup(Ljava/lang/String;)Lcom/mysql/fabric/ServerGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->globalGroup:Lcom/mysql/fabric/ServerGroup;
    :try_end_0
    .catch Lcom/mysql/fabric/FabricCommunicationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 67
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getReadWriteConnectionFromServerGroup(Lcom/mysql/fabric/ServerGroup;)Ljava/sql/Connection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Lcom/mysql/fabric/ServerGroup;->getServers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/Server;

    .line 80
    sget-object v2, Lcom/mysql/fabric/ServerMode;->READ_WRITE:Lcom/mysql/fabric/ServerMode;

    invoke-virtual {v1}, Lcom/mysql/fabric/Server;->getMode()Lcom/mysql/fabric/ServerMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mysql/fabric/ServerMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "jdbc:mysql://%s:%s/%s"

    const/4 v0, 0x3

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/mysql/fabric/Server;->getHostname()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/mysql/fabric/Server;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->database:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->password:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object p1

    return-object p1

    .line 85
    :cond_1
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find r/w server for chosen shard mapping in group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAnyConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->globalGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-direct {p0, v0}, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->getReadWriteConnectionFromServerGroup(Lcom/mysql/fabric/ServerGroup;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getConnection(Ljava/lang/String;)Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->shardMapping:Lcom/mysql/fabric/ShardMapping;

    invoke-virtual {v0, p1}, Lcom/mysql/fabric/ShardMapping;->getGroupNameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->fabricConnection:Lcom/mysql/fabric/FabricConnection;

    invoke-virtual {v0, p1}, Lcom/mysql/fabric/FabricConnection;->getServerGroup(Ljava/lang/String;)Lcom/mysql/fabric/ServerGroup;

    move-result-object p1

    .line 104
    invoke-direct {p0, p1}, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->getReadWriteConnectionFromServerGroup(Lcom/mysql/fabric/ServerGroup;)Ljava/sql/Connection;

    move-result-object p1

    return-object p1
.end method

.method public isUnwrappableAs(Ljava/lang/Class;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public releaseAnyConnection(Ljava/sql/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 112
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public releaseConnection(Ljava/lang/String;Ljava/sql/Connection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p2}, Lcom/mysql/fabric/hibernate/FabricMultiTenantConnectionProvider;->releaseAnyConnection(Ljava/sql/Connection;)V

    return-void
.end method

.method public supportsAggressiveRelease()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
