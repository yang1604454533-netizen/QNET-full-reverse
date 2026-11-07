.class public Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;
.super Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.source "FabricMySQLConnectionProxy.java"

# interfaces
.implements Lcom/mysql/fabric/jdbc/FabricMySQLConnection;
.implements Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProperties;


# static fields
.field private static final JDBC4_NON_TRANSIENT_CONN_EXCEPTION:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final replConnGroupLocks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x511f5686fc384b3aL


# instance fields
.field protected autoCommit:Z

.field protected closed:Z

.field protected currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

.field protected database:Ljava/lang/String;

.field protected fabricConnection:Lcom/mysql/fabric/FabricConnection;

.field private fabricPassword:Ljava/lang/String;

.field private fabricProtocol:Ljava/lang/String;

.field private fabricServerGroup:Ljava/lang/String;

.field private fabricShardKey:Ljava/lang/String;

.field private fabricShardTable:Ljava/lang/String;

.field private fabricUsername:Ljava/lang/String;

.field protected host:Ljava/lang/String;

.field private log:Lcom/mysql/jdbc/log/Log;

.field protected password:Ljava/lang/String;

.field protected port:Ljava/lang/String;

.field protected queryTables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected readOnly:Z

.field private reportErrors:Z

.field protected serverConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mysql/fabric/ServerGroup;",
            "Lcom/mysql/jdbc/ReplicationConnection;",
            ">;"
        }
    .end annotation
.end field

.field protected serverGroup:Lcom/mysql/fabric/ServerGroup;

.field protected serverGroupName:Ljava/lang/String;

.field protected shardKey:Ljava/lang/String;

.field protected shardMapping:Lcom/mysql/fabric/ShardMapping;

.field protected shardTable:Ljava/lang/String;

.field protected transactionInProgress:Z

.field protected transactionIsolation:I

.field protected username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->replConnGroupLocks:Ljava/util/Set;

    const/4 v0, 0x0

    .line 145
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.mysql.jdbc.exceptions.jdbc4.MySQLNonTransientConnectionException"

    .line 146
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 151
    :catch_0
    :cond_0
    sput-object v0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->JDBC4_NON_TRANSIENT_CONN_EXCEPTION:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->closed:Z

    .line 97
    iput-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionInProgress:Z

    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    .line 112
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->queryTables:Ljava/util/Set;

    .line 124
    iput-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->readOnly:Z

    const/4 v1, 0x1

    .line 125
    iput-boolean v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->autoCommit:Z

    const/4 v1, 0x4

    .line 126
    iput v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionIsolation:I

    .line 134
    iput-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->reportErrors:Z

    const-string v0, "fabricShardKey"

    .line 156
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricShardKey:Ljava/lang/String;

    const-string v0, "fabricShardTable"

    .line 157
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricShardTable:Ljava/lang/String;

    const-string v0, "fabricServerGroup"

    .line 158
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricServerGroup:Ljava/lang/String;

    const-string v0, "fabricProtocol"

    .line 159
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricProtocol:Ljava/lang/String;

    const-string v0, "fabricUsername"

    .line 160
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricUsername:Ljava/lang/String;

    const-string v0, "fabricPassword"

    .line 161
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricPassword:Ljava/lang/String;

    const-string v0, "fabricReportErrors"

    .line 162
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->reportErrors:Z

    const-string v0, "fabricShardKey"

    .line 163
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fabricShardTable"

    .line 164
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fabricServerGroup"

    .line 165
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fabricProtocol"

    .line 166
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fabricUsername"

    .line 167
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fabricPassword"

    .line 168
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fabricReportErrors"

    .line 169
    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HOST"

    .line 171
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->host:Ljava/lang/String;

    const-string v0, "PORT"

    .line 172
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->port:Ljava/lang/String;

    const-string v0, "user"

    .line 173
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->username:Ljava/lang/String;

    const-string v0, "password"

    .line 174
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->password:Ljava/lang/String;

    const-string v0, "DBNAME"

    .line 175
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->database:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->username:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 177
    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->username:Ljava/lang/String;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->password:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 180
    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->password:Ljava/lang/String;

    :cond_1
    const-string v0, "exceptionInterceptors"

    .line 184
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "null"

    const-string v2, "exceptionInterceptors"

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 188
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, ""

    .line 190
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "com.mysql.fabric.jdbc.ErrorReportingExceptionInterceptor"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exceptionInterceptors"

    .line 191
    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->initializeProperties(Ljava/util/Properties;)V

    .line 196
    iget-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricServerGroup:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricShardTable:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_2

    .line 197
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string v1, "Server group and shard table are mutually exclusive. Only one may be provided."

    const-string v2, "08004"

    invoke-static {v1, v2, v0, p1, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 202
    :cond_5
    :goto_2
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricProtocol:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->host:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->port:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 203
    new-instance v1, Lcom/mysql/fabric/FabricConnection;

    iget-object v2, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricUsername:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricPassword:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3}, Lcom/mysql/fabric/FabricConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricConnection:Lcom/mysql/fabric/FabricConnection;
    :try_end_0
    .catch Lcom/mysql/fabric/FabricCommunicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getLogger()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FabricMySQLConnectionProxy"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/log/LogFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Lcom/mysql/jdbc/log/Log;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->log:Lcom/mysql/jdbc/log/Log;

    .line 212
    iget-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricShardTable:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->setShardTable(Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricShardKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->setShardKey(Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricServerGroup:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->setServerGroupName(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 205
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Unable to establish connection to the Fabric server"

    const-string v2, "08004"

    invoke-static {v1, v2, p1, v0, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private ensureNoTransactionInProgress()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 623
    invoke-direct {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->ensureOpen()V

    .line 624
    iget-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionInProgress:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->autoCommit:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Not allow while a transaction is active."

    const-string v2, "25000"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private ensureOpen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 616
    iget-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 617
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "No operations allowed after connection closed."

    const-string v2, "08003"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private refreshStateIfNecessary()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricConnection:Lcom/mysql/fabric/FabricConnection;

    invoke-virtual {v0}, Lcom/mysql/fabric/FabricConnection;->isStateExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricConnection:Lcom/mysql/fabric/FabricConnection;

    invoke-virtual {v0}, Lcom/mysql/fabric/FabricConnection;->refreshStatePassive()I

    .line 285
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {v0}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->setCurrentServerGroup(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private syncGroupServersToReplicationConnectionGroup(Lcom/mysql/jdbc/ReplicationConnectionGroup;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 500
    invoke-virtual {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getMasterHosts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 501
    invoke-virtual {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getMasterHosts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 504
    iget-object v3, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {v3}, Lcom/mysql/fabric/ServerGroup;->getMaster()Lcom/mysql/fabric/Server;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {v3}, Lcom/mysql/fabric/ServerGroup;->getMaster()Lcom/mysql/fabric/Server;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mysql/fabric/Server;->getHostPortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x0

    .line 508
    :try_start_0
    invoke-virtual {p1, v0, v3}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->removeMasterHost(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 511
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to remove master: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 516
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {v0}, Lcom/mysql/fabric/ServerGroup;->getMaster()Lcom/mysql/fabric/Server;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 517
    invoke-virtual {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getMasterHosts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 518
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changing master for group \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/log/Log;->logInfo(Ljava/lang/Object;)V

    .line 520
    :try_start_1
    invoke-virtual {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getSlaveHosts()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mysql/fabric/Server;->getHostPortString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 521
    invoke-virtual {v0}, Lcom/mysql/fabric/Server;->getHostPortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->addSlaveHost(Ljava/lang/String;)V

    .line 523
    :cond_3
    invoke-virtual {v0}, Lcom/mysql/fabric/Server;->getHostPortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->promoteSlaveToMaster(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to promote new master \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mysql/fabric/Server;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 531
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {v0}, Lcom/mysql/fabric/ServerGroup;->getServers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/fabric/Server;

    .line 532
    invoke-virtual {v2}, Lcom/mysql/fabric/Server;->isSlave()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 535
    :try_start_2
    invoke-virtual {v2}, Lcom/mysql/fabric/Server;->getHostPortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->addSlaveHost(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .line 538
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add slave: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mysql/fabric/Server;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 543
    :cond_6
    invoke-virtual {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->getSlaveHosts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 544
    iget-object v3, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {v3, v2}, Lcom/mysql/fabric/ServerGroup;->getServer(Ljava/lang/String;)Lcom/mysql/fabric/Server;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 545
    invoke-virtual {v3}, Lcom/mysql/fabric/Server;->isSlave()Z

    move-result v3

    if-nez v3, :cond_7

    .line 547
    :cond_8
    :try_start_3
    invoke-virtual {p1, v2, v1}, Lcom/mysql/jdbc/ReplicationConnectionGroup;->removeSlaveHost(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    .line 550
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to remove slave: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_9
    return-void
.end method


# virtual methods
.method public abort(Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public abortInternal()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public addQueryTable(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 407
    invoke-direct {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->ensureNoTransactionInProgress()V

    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    .line 412
    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardMapping:Lcom/mysql/fabric/ShardMapping;

    if-nez v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricConnection:Lcom/mysql/fabric/FabricConnection;

    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->database:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mysql/fabric/FabricConnection;->getShardMapping(Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/fabric/ShardMapping;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 414
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->setShardTable(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricConnection:Lcom/mysql/fabric/FabricConnection;

    iget-object v2, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->database:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/mysql/fabric/FabricConnection;->getShardMapping(Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/fabric/ShardMapping;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 418
    iget-object v2, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardMapping:Lcom/mysql/fabric/ShardMapping;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string v1, "Cross-shard query not allowed"

    const-string v2, "S1009"

    invoke-static {v1, v2, v0, p1, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 422
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->queryTables:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public changeUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1040
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "User change not allowed."

    invoke-static {p2, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public checkClosed()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public clearHasTriedMaster()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public clearQueryTables()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 390
    invoke-direct {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->ensureNoTransactionInProgress()V

    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    .line 394
    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->queryTables:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 395
    invoke-virtual {p0, v0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->setShardTable(Ljava/lang/String;)V

    return-void
.end method

.method public clearServerSelectionCriteria()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 376
    invoke-direct {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->ensureNoTransactionInProgress()V

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardTable:Ljava/lang/String;

    .line 378
    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardKey:Ljava/lang/String;

    .line 379
    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroupName:Ljava/lang/String;

    .line 380
    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    .line 381
    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->queryTables:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 382
    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    return-void
.end method

.method public clearWarnings()V
    .locals 0

    return-void
.end method

.method public clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 816
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 817
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public clientPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 821
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 822
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public clientPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 826
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 827
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public clientPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 837
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 838
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public clientPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 831
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 832
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public clientPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 842
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 843
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 634
    iput-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->closed:Z

    .line 635
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ReplicationConnection;

    .line 637
    :try_start_0
    invoke-interface {v1}, Lcom/mysql/jdbc/Connection;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public commit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 692
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->commit()V

    .line 693
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionCompleted()V

    return-void
.end method

.method public createNewIO(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 999
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public createStatement()Ljava/sql/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 878
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 879
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 883
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 884
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->createStatement(II)Ljava/sql/Statement;

    move-result-object p1

    return-object p1
.end method

.method public createStatement(III)Ljava/sql/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 888
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 889
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/Connection;->createStatement(III)Ljava/sql/Statement;

    move-result-object p1

    return-object p1
.end method

.method public decachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public dumpTestcaseQuery(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public duplicate()Lcom/mysql/jdbc/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 894
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnectionChecked()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    return-object v0
.end method

.method public execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 900
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnectionChecked()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    return-object v0
.end method

.method public extractSqlFromPacket(Ljava/lang/String;Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 905
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnectionChecked()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/MySQLConnection;->extractSqlFromPacket(Ljava/lang/String;Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    .line 909
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected getActiveConnection()Lcom/mysql/jdbc/Connection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 557
    iget-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionInProgress:Z

    if-nez v0, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->refreshStateIfNecessary()V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    return-object v0

    .line 565
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getCurrentServerGroup()Lcom/mysql/fabric/ServerGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 570
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    iget-object v2, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnection;

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    .line 571
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    if-eqz v0, :cond_2

    .line 572
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    return-object v0

    .line 576
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 577
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 578
    iget-object v3, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {v3}, Lcom/mysql/fabric/ServerGroup;->getServers()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/fabric/Server;

    .line 579
    invoke-virtual {v4}, Lcom/mysql/fabric/Server;->isMaster()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 580
    invoke-virtual {v4}, Lcom/mysql/fabric/Server;->getHostPortString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 581
    :cond_4
    invoke-virtual {v4}, Lcom/mysql/fabric/Server;->isSlave()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 582
    invoke-virtual {v4}, Lcom/mysql/fabric/Server;->getHostPortString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 585
    :cond_5
    invoke-virtual {p0, v1}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->exposeAsProperties(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v1

    .line 586
    iget-object v3, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {v3}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getConnectionGroup(Ljava/lang/String;)Lcom/mysql/jdbc/ReplicationConnectionGroup;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 588
    sget-object v4, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->replConnGroupLocks:Ljava/util/Set;

    iget-object v5, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {v5}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 590
    :try_start_0
    invoke-direct {p0, v3}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->syncGroupServersToReplicationConnectionGroup(Lcom/mysql/jdbc/ReplicationConnectionGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    sget-object v3, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->replConnGroupLocks:Ljava/util/Set;

    iget-object v4, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {v4}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->replConnGroupLocks:Ljava/util/Set;

    iget-object v2, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {v2}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 592
    throw v0

    :cond_6
    :goto_1
    const-string v3, "replicationConnectionGroup"

    .line 596
    iget-object v4, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {v4}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "user"

    .line 597
    iget-object v4, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->username:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "password"

    .line 598
    iget-object v4, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->password:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "DBNAME"

    .line 599
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getCatalog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "connectionAttributes"

    .line 600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fabricHaGroup:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {v5}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "retriesAllDown"

    const-string v4, "1"

    .line 601
    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "allowMasterDownConnections"

    const-string v4, "true"

    .line 602
    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "allowSlaveDownConnections"

    const-string v4, "true"

    .line 603
    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "readFromMasterWhenNoSlaves"

    const-string v4, "true"

    .line 604
    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 605
    invoke-static {v0, v1, v2, v1}, Lcom/mysql/jdbc/ReplicationConnectionProxy;->createProxyInstance(Ljava/util/List;Ljava/util/Properties;Ljava/util/List;Ljava/util/Properties;)Lcom/mysql/jdbc/ReplicationConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    .line 606
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    iget-object v2, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-interface {v0, p0}, Lcom/mysql/jdbc/ReplicationConnection;->setProxy(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 609
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    iget-boolean v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->autoCommit:Z

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ReplicationConnection;->setAutoCommit(Z)V

    .line 610
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    iget-boolean v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->readOnly:Z

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ReplicationConnection;->setReadOnly(Z)V

    .line 611
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    iget v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionIsolation:I

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ReplicationConnection;->setTransactionIsolation(I)V

    .line 612
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    return-object v0

    .line 566
    :cond_7
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v2, "No server group selected."

    const-string v3, "08004"

    invoke-static {v2, v3, v1, v0, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected getActiveConnectionPassive()Lcom/mysql/jdbc/Connection;
    .locals 3

    .line 485
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 487
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to determine active connection"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;
    .locals 3

    .line 477
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnectionChecked()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 479
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to determine active connection"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getActiveMySQLConnectionChecked()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 470
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnection;

    .line 471
    invoke-interface {v0}, Lcom/mysql/jdbc/ReplicationConnection;->getCurrentConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/MySQLConnection;

    return-object v0
.end method

.method public getActiveStatementCount()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getAutoCommit()Z
    .locals 1

    .line 715
    iget-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->autoCommit:Z

    return v0
.end method

.method public getAutoIncrementIncrement()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;
    .locals 1

    .line 917
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getCancelTimer()Ljava/util/Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCatalog()Ljava/lang/String;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->database:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterSetMetadata()Ljava/lang/String;
    .locals 1

    .line 963
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCharacterSetMetadata()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCharsetNameForIndex(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2830
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getEncodingForIndex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getClientInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getClientInfo()Ljava/util/Properties;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionMutex()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getCurrentServerGroup()Lcom/mysql/fabric/ServerGroup;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    return-object v0
.end method

.method public getDefaultTimeZone()Ljava/util/TimeZone;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncodingForIndex(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getErrorMessageEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .line 2847
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2851
    :cond_0
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/ReplicationConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public getFabricPassword()Ljava/lang/String;
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getFabricProtocol()Ljava/lang/String;
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getFabricReportErrors()Z
    .locals 1

    .line 1099
    iget-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->reportErrors:Z

    return v0
.end method

.method public getFabricServerGroup()Ljava/lang/String;
    .locals 1

    .line 1067
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricServerGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getFabricShardKey()Ljava/lang/String;
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricShardKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFabricShardTable()Ljava/lang/String;
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricShardTable:Ljava/lang/String;

    return-object v0
.end method

.method public getFabricUsername()Ljava/lang/String;
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getHoldability()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostPortPair()Ljava/lang/String;
    .locals 1

    .line 2859
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getHostPortPair()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIO()Lcom/mysql/jdbc/MysqlIO;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 913
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnectionChecked()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getIdleFor()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getLoadBalanceSafeProxy()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 723
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    return-object v0
.end method

.method public getLog()Lcom/mysql/jdbc/log/Log;
    .locals 1

    .line 2713
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->log:Lcom/mysql/jdbc/log/Log;

    return-object v0
.end method

.method public getMaxBytesPerChar(Ljava/lang/Integer;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, -0x1

    return p1
.end method

.method public getMaxBytesPerChar(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, -0x1

    return p1
.end method

.method public getMetaData()Ljava/sql/DatabaseMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 959
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataSafeStatement()Ljava/sql/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 967
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnectionChecked()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public getMultiHostSafeProxy()Lcom/mysql/jdbc/MySQLConnection;
    .locals 1

    .line 727
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    return-object v0
.end method

.method public getNetBufferLength()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getNetworkTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public getProfilerEventHandlerInstance()Lcom/mysql/jdbc/profiler/ProfilerEventHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueryTables()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->queryTables:Ljava/util/Set;

    return-object v0
.end method

.method public getRequiresEscapingEncoder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerCharacterEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 925
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getServerCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCharset()Ljava/lang/String;
    .locals 1

    .line 929
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerGroupName()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerMajorVersion()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getServerMinorVersion()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getServerSubMinorVersion()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getServerTimezoneTZ()Ljava/util/TimeZone;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getServerVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getServerVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionLockedCalendar()Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionMaxRows()I
    .locals 1

    .line 2801
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnectionPassive()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getSessionMaxRows()I

    move-result v0

    return v0
.end method

.method public getShardKey()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardKey:Ljava/lang/String;

    return-object v0
.end method

.method public getShardTable()Ljava/lang/String;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardTable:Ljava/lang/String;

    return-object v0
.end method

.method public getStatementComment()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatementInterceptorsInstances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/StatementInterceptorV2;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransactionIsolation()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getTypeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtcCalendar()Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3052
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnectionChecked()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v0

    return-object v0
.end method

.method public hasSameProperties(Lcom/mysql/jdbc/Connection;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasTriedMaster()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public incrementNumberOfPreparedExecutes()V
    .locals 0

    return-void
.end method

.method public incrementNumberOfPrepares()V
    .locals 0

    return-void
.end method

.method public incrementNumberOfResultSetsCreated()V
    .locals 0

    return-void
.end method

.method public initializeExtension(Lcom/mysql/jdbc/Extension;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public initializeSafeStatementInterceptors()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method declared-synchronized interceptException(Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/SQLException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    monitor-enter p0

    .line 232
    :try_start_0
    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object p2

    const-string v1, "08"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const-class p2, Lcom/mysql/jdbc/exceptions/MySQLNonTransientConnectionException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->JDBC4_NON_TRANSIENT_CONN_EXCEPTION:Ljava/lang/Class;

    if-eqz p2, :cond_2

    sget-object p2, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->JDBC4_NON_TRANSIENT_CONN_EXCEPTION:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/sql/SQLException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_3

    const-class p2, Lcom/mysql/fabric/FabricCommunicationException;

    invoke-virtual {p1}, Ljava/sql/SQLException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_3

    .line 236
    :cond_2
    monitor-exit p0

    return-object v0

    .line 240
    :cond_3
    :try_start_1
    iget-object p2, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/mysql/fabric/ServerGroup;->getServer(Ljava/lang/String;)Lcom/mysql/fabric/Server;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_4

    .line 244
    monitor-exit p0

    return-object v0

    .line 248
    :cond_4
    :try_start_2
    iget-boolean p4, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->reportErrors:Z

    if-eqz p4, :cond_5

    .line 249
    iget-object p4, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricConnection:Lcom/mysql/fabric/FabricConnection;

    invoke-virtual {p4}, Lcom/mysql/fabric/FabricConnection;->getClient()Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;

    move-result-object p4

    invoke-virtual {p1}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object p5

    const/4 v1, 0x1

    invoke-virtual {p4, p2, p5, v1}, Lcom/mysql/fabric/proto/xmlrpc/XmlRpcClient;->reportServerError(Lcom/mysql/fabric/Server;Ljava/lang/String;Z)V

    .line 253
    :cond_5
    sget-object p2, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->replConnGroupLocks:Ljava/util/Set;

    iget-object p4, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {p4}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_6

    .line 257
    :try_start_3
    iget-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricConnection:Lcom/mysql/fabric/FabricConnection;

    invoke-virtual {p1}, Lcom/mysql/fabric/FabricConnection;->refreshStatePassive()I

    .line 258
    iget-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {p1}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->setCurrentServerGroup(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    :try_start_4
    invoke-static {p3}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getConnectionGroup(Ljava/lang/String;)Lcom/mysql/jdbc/ReplicationConnectionGroup;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->syncGroupServersToReplicationConnectionGroup(Lcom/mysql/jdbc/ReplicationConnectionGroup;)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    :try_start_5
    sget-object p1, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->replConnGroupLocks:Ljava/util/Set;

    iget-object p2, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {p2}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception p1

    :try_start_6
    sget-object p2, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->replConnGroupLocks:Ljava/util/Set;

    iget-object p3, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {p3}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 267
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_7
    const-string p2, "Unable to refresh Fabric state. Failover impossible"

    const-string p3, "08006"

    .line 260
    invoke-static {p2, p3, p1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 276
    :try_start_8
    sget-object p2, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->replConnGroupLocks:Ljava/util/Set;

    iget-object p3, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {p3}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 260
    monitor-exit p0

    return-object p1

    .line 276
    :goto_0
    :try_start_9
    sget-object p2, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->replConnGroupLocks:Ljava/util/Set;

    iget-object p3, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {p3}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 270
    throw p1

    :cond_6
    const-string p2, "Fabric state syncing already in progress in another thread."

    const-string p3, "08006"

    .line 273
    invoke-static {p2, p3, p1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    .line 231
    monitor-exit p0

    throw p1
.end method

.method public isAbonormallyLongQuery(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isClientTzUTC()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 644
    iget-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->closed:Z

    return v0
.end method

.method public isCursorFetchEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isInGlobalTx()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMasterConnection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNoBackslashEscapesSet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isProxySet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadInfoMsgEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 663
    iget-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->readOnly:Z

    return v0
.end method

.method public isReadOnly(Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 667
    iget-boolean p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->readOnly:Z

    return p1
.end method

.method public isRunningOnJDK13()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSameResource(Lcom/mysql/jdbc/Connection;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isServerLocal()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isServerTzUTC()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isValid(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 652
    iget-boolean p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->closed:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public lowerCaseTableNames()Z
    .locals 1

    .line 2958
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v0

    return v0
.end method

.method public maxRowsChanged(Lcom/mysql/jdbc/Statement;)V
    .locals 0

    return-void
.end method

.method public nativeSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3056
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnectionChecked()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->nativeSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parserKnowsUnicode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ping()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public pingInternal(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 771
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 772
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 776
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 777
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/Connection;->prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 781
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 782
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mysql/jdbc/Connection;->prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 786
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 787
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 791
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 792
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 801
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 802
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/Connection;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 806
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 807
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mysql/jdbc/Connection;->prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 796
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 797
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 811
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 812
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public realClose(ZZZLjava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public recachePreparedStatement(Lcom/mysql/jdbc/ServerPreparedStatement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public registerQueryExecutionTime(J)V
    .locals 0

    return-void
.end method

.method public registerStatement(Lcom/mysql/jdbc/Statement;)V
    .locals 0

    return-void
.end method

.method public releaseSavepoint(Ljava/sql/Savepoint;)V
    .locals 0

    return-void
.end method

.method public reportNumberOfTablesAccessed(I)V
    .locals 0

    return-void
.end method

.method public reportQueryTime(J)V
    .locals 0

    return-void
.end method

.method public resetServerState()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public rollback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 682
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->rollback()V

    .line 683
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionCompleted()V

    return-void
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 687
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object p1

    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->rollback()V

    .line 688
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionCompleted()V

    return-void
.end method

.method public serverPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 847
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 848
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->serverPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public serverPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 852
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 853
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->serverPrepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public serverPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 857
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 858
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/Connection;->serverPrepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public serverPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 863
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 864
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mysql/jdbc/Connection;->serverPrepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public serverPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 868
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 869
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->serverPrepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public serverPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 873
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionBegun()V

    .line 874
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/Connection;->serverPrepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public serverSupportsConvertFn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2987
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnectionChecked()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->serverSupportsConvertFn()Z

    move-result v0

    return v0
.end method

.method public setAllowLoadLocalInfile(Z)V
    .locals 2

    .line 1107
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setAllowLoadLocalInfile(Z)V

    .line 1108
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1109
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setAllowLoadLocalInfile(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAllowMultiQueries(Z)V
    .locals 2

    .line 1115
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setAllowMultiQueries(Z)V

    .line 1116
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1117
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setAllowMultiQueries(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAllowNanAndInf(Z)V
    .locals 2

    .line 1123
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setAllowNanAndInf(Z)V

    .line 1124
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1125
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setAllowNanAndInf(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAllowUrlInLocalInfile(Z)V
    .locals 2

    .line 1131
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setAllowUrlInLocalInfile(Z)V

    .line 1132
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1133
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setAllowUrlInLocalInfile(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAlwaysSendSetIsolation(Z)V
    .locals 2

    .line 1139
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setAlwaysSendSetIsolation(Z)V

    .line 1140
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1141
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setAlwaysSendSetIsolation(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAuthenticationPlugins(Ljava/lang/String;)V
    .locals 2

    .line 2651
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setAuthenticationPlugins(Ljava/lang/String;)V

    .line 2652
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2653
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setAuthenticationPlugins(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAutoClosePStmtStreams(Z)V
    .locals 2

    .line 1971
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setAutoClosePStmtStreams(Z)V

    .line 1972
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1973
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setAutoClosePStmtStreams(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAutoCommit(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 697
    iput-boolean p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->autoCommit:Z

    .line 698
    iget-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ReplicationConnection;

    .line 699
    iget-boolean v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->autoCommit:Z

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/Connection;->setAutoCommit(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAutoDeserialize(Z)V
    .locals 2

    .line 1147
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setAutoDeserialize(Z)V

    .line 1148
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1149
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setAutoDeserialize(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAutoGenerateTestcaseScript(Z)V
    .locals 2

    .line 1155
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setAutoGenerateTestcaseScript(Z)V

    .line 1156
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1157
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setAutoGenerateTestcaseScript(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAutoReconnect(Z)V
    .locals 2

    .line 1163
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setAutoReconnect(Z)V

    .line 1164
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1165
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setAutoReconnect(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAutoReconnectForConnectionPools(Z)V
    .locals 2

    .line 1171
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setAutoReconnectForConnectionPools(Z)V

    .line 1172
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1173
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setAutoReconnectForConnectionPools(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAutoReconnectForPools(Z)V
    .locals 2

    .line 1179
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setAutoReconnectForPools(Z)V

    .line 1180
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1181
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setAutoReconnectForPools(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAutoSlowLog(Z)V
    .locals 2

    .line 2451
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setAutoSlowLog(Z)V

    .line 2452
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2453
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setAutoSlowLog(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBlobSendChunkSize(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1187
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setBlobSendChunkSize(Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1189
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setBlobSendChunkSize(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBlobsAreStrings(Z)V
    .locals 2

    .line 2435
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setBlobsAreStrings(Z)V

    .line 2436
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2437
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setBlobsAreStrings(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCacheCallableStatements(Z)V
    .locals 2

    .line 1195
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCacheCallableStatements(Z)V

    .line 1196
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1197
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setCacheCallableStatements(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCacheCallableStmts(Z)V
    .locals 2

    .line 2083
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCacheCallableStmts(Z)V

    .line 2084
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2085
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setCacheCallableStmts(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCachePrepStmts(Z)V
    .locals 2

    .line 2091
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCachePrepStmts(Z)V

    .line 2092
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2093
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setCachePrepStmts(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCachePreparedStatements(Z)V
    .locals 2

    .line 1203
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCachePreparedStatements(Z)V

    .line 1204
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1205
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setCachePreparedStatements(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCacheResultSetMetadata(Z)V
    .locals 2

    .line 1211
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCacheResultSetMetadata(Z)V

    .line 1212
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1213
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setCacheResultSetMetadata(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCacheServerConfiguration(Z)V
    .locals 2

    .line 1219
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCacheServerConfiguration(Z)V

    .line 1220
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1221
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setCacheServerConfiguration(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCallableStatementCacheSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1227
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCallableStatementCacheSize(I)V

    .line 1228
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1229
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setCallableStatementCacheSize(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCallableStmtCacheSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2099
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCallableStmtCacheSize(I)V

    .line 2100
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2101
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setCallableStmtCacheSize(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCapitalizeDBMDTypes(Z)V
    .locals 2

    .line 1235
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCapitalizeDBMDTypes(Z)V

    .line 1236
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1237
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setCapitalizeDBMDTypes(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCapitalizeTypeNames(Z)V
    .locals 2

    .line 1243
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCapitalizeTypeNames(Z)V

    .line 1244
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1245
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setCapitalizeTypeNames(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCatalog(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 671
    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->database:Ljava/lang/String;

    .line 672
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 673
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/Connection;->setCatalog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 2

    .line 1251
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCharacterEncoding(Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1253
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setCharacterEncoding(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCharacterSetResults(Ljava/lang/String;)V
    .locals 2

    .line 1259
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCharacterSetResults(Ljava/lang/String;)V

    .line 1260
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1261
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setCharacterSetResults(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClientCertificateKeyStorePassword(Ljava/lang/String;)V
    .locals 2

    .line 2139
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setClientCertificateKeyStorePassword(Ljava/lang/String;)V

    .line 2140
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2141
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setClientCertificateKeyStorePassword(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClientCertificateKeyStoreType(Ljava/lang/String;)V
    .locals 2

    .line 2147
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setClientCertificateKeyStoreType(Ljava/lang/String;)V

    .line 2148
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2149
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setClientCertificateKeyStoreType(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClientCertificateKeyStoreUrl(Ljava/lang/String;)V
    .locals 2

    .line 2155
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setClientCertificateKeyStoreUrl(Ljava/lang/String;)V

    .line 2156
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2157
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setClientCertificateKeyStoreUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClientInfoProvider(Ljava/lang/String;)V
    .locals 2

    .line 2283
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setClientInfoProvider(Ljava/lang/String;)V

    .line 2284
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2285
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setClientInfoProvider(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClobCharacterEncoding(Ljava/lang/String;)V
    .locals 2

    .line 1275
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setClobCharacterEncoding(Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1277
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setClobCharacterEncoding(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClobberStreamingResults(Z)V
    .locals 2

    .line 1267
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setClobberStreamingResults(Z)V

    .line 1268
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1269
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setClobberStreamingResults(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCompensateOnDuplicateKeyUpdateCounts(Z)V
    .locals 2

    .line 2523
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCompensateOnDuplicateKeyUpdateCounts(Z)V

    .line 2524
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2525
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setCompensateOnDuplicateKeyUpdateCounts(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1291
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setConnectTimeout(I)V

    .line 1292
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1293
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setConnectTimeout(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setConnectionCollation(Ljava/lang/String;)V
    .locals 2

    .line 1283
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setConnectionCollation(Ljava/lang/String;)V

    .line 1284
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1285
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setConnectionCollation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setConnectionLifecycleInterceptors(Ljava/lang/String;)V
    .locals 2

    .line 2459
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setConnectionLifecycleInterceptors(Ljava/lang/String;)V

    .line 2460
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2461
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setConnectionLifecycleInterceptors(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setContinueBatchOnError(Z)V
    .locals 2

    .line 1299
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setContinueBatchOnError(Z)V

    .line 1300
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1301
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setContinueBatchOnError(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCreateDatabaseIfNotExist(Z)V
    .locals 2

    .line 1307
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setCreateDatabaseIfNotExist(Z)V

    .line 1308
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1309
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setCreateDatabaseIfNotExist(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setCurrentServerGroup(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricConnection:Lcom/mysql/fabric/FabricConnection;

    invoke-virtual {v0, p1}, Lcom/mysql/fabric/FabricConnection;->getServerGroup(Ljava/lang/String;)Lcom/mysql/fabric/ServerGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    .line 438
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    if-eqz v0, :cond_1

    .line 444
    invoke-static {p1}, Lcom/mysql/jdbc/ReplicationConnectionGroupManager;->getConnectionGroup(Ljava/lang/String;)Lcom/mysql/jdbc/ReplicationConnectionGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 446
    sget-object v0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->replConnGroupLocks:Ljava/util/Set;

    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {v1}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->syncGroupServersToReplicationConnectionGroup(Lcom/mysql/jdbc/ReplicationConnectionGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    sget-object p1, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->replConnGroupLocks:Ljava/util/Set;

    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {v0}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->replConnGroupLocks:Ljava/util/Set;

    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    invoke-virtual {v1}, Lcom/mysql/fabric/ServerGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 450
    throw p1

    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find server group: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {p1, v2, v0, v1, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setDefaultAuthenticationPlugin(Ljava/lang/String;)V
    .locals 2

    .line 2667
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setDefaultAuthenticationPlugin(Ljava/lang/String;)V

    .line 2668
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2669
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setDefaultAuthenticationPlugin(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDefaultFetchSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1315
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setDefaultFetchSize(I)V

    .line 1316
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1317
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setDefaultFetchSize(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDetectServerPreparedStmts(Z)V
    .locals 2

    .line 1323
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setDetectServerPreparedStmts(Z)V

    .line 1324
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1325
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setDetectServerPreparedStmts(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDisabledAuthenticationPlugins(Ljava/lang/String;)V
    .locals 2

    .line 2659
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setDisabledAuthenticationPlugins(Ljava/lang/String;)V

    .line 2660
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2661
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setDisabledAuthenticationPlugins(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDisconnectOnExpiredPasswords(Z)V
    .locals 2

    .line 2691
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setDisconnectOnExpiredPasswords(Z)V

    .line 2692
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2693
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setDisconnectOnExpiredPasswords(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDontTrackOpenResources(Z)V
    .locals 2

    .line 1331
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setDontTrackOpenResources(Z)V

    .line 1332
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1333
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setDontTrackOpenResources(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDumpMetadataOnColumnNotFound(Z)V
    .locals 2

    .line 1995
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setDumpMetadataOnColumnNotFound(Z)V

    .line 1996
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1997
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setDumpMetadataOnColumnNotFound(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDumpQueriesOnException(Z)V
    .locals 2

    .line 1339
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setDumpQueriesOnException(Z)V

    .line 1340
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1341
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setDumpQueriesOnException(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDynamicCalendars(Z)V
    .locals 2

    .line 1347
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setDynamicCalendars(Z)V

    .line 1348
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1349
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setDynamicCalendars(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setElideSetAutoCommits(Z)V
    .locals 2

    .line 1355
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setElideSetAutoCommits(Z)V

    .line 1356
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1357
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setElideSetAutoCommits(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEmptyStringsConvertToZero(Z)V
    .locals 2

    .line 1363
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setEmptyStringsConvertToZero(Z)V

    .line 1364
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1365
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setEmptyStringsConvertToZero(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEmulateLocators(Z)V
    .locals 2

    .line 1371
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setEmulateLocators(Z)V

    .line 1372
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1373
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setEmulateLocators(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEmulateUnsupportedPstmts(Z)V
    .locals 2

    .line 1379
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setEmulateUnsupportedPstmts(Z)V

    .line 1380
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1381
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setEmulateUnsupportedPstmts(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnablePacketDebug(Z)V
    .locals 2

    .line 1387
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setEnablePacketDebug(Z)V

    .line 1388
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1389
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setEnablePacketDebug(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnableQueryTimeouts(Z)V
    .locals 2

    .line 2259
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setEnableQueryTimeouts(Z)V

    .line 2260
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2261
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setEnableQueryTimeouts(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2

    .line 1395
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setEncoding(Ljava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1397
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setEncoding(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExceptionInterceptors(Ljava/lang/String;)V
    .locals 2

    .line 2563
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setExceptionInterceptors(Ljava/lang/String;)V

    .line 2564
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2565
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setExceptionInterceptors(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExplainSlowQueries(Z)V
    .locals 2

    .line 1403
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setExplainSlowQueries(Z)V

    .line 1404
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1405
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setExplainSlowQueries(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFabricPassword(Ljava/lang/String;)V
    .locals 0

    .line 1087
    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricPassword:Ljava/lang/String;

    return-void
.end method

.method public setFabricProtocol(Ljava/lang/String;)V
    .locals 0

    .line 1071
    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricProtocol:Ljava/lang/String;

    return-void
.end method

.method public setFabricReportErrors(Z)V
    .locals 0

    .line 1095
    iput-boolean p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->reportErrors:Z

    return-void
.end method

.method public setFabricServerGroup(Ljava/lang/String;)V
    .locals 0

    .line 1063
    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricServerGroup:Ljava/lang/String;

    return-void
.end method

.method public setFabricShardKey(Ljava/lang/String;)V
    .locals 0

    .line 1047
    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricShardKey:Ljava/lang/String;

    return-void
.end method

.method public setFabricShardTable(Ljava/lang/String;)V
    .locals 0

    .line 1055
    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricShardTable:Ljava/lang/String;

    return-void
.end method

.method public setFabricUsername(Ljava/lang/String;)V
    .locals 0

    .line 1079
    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricUsername:Ljava/lang/String;

    return-void
.end method

.method public setFailOverReadOnly(Z)V
    .locals 2

    .line 1411
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setFailOverReadOnly(Z)V

    .line 1412
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1413
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setFailOverReadOnly(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFailedOver(Z)V
    .locals 0

    return-void
.end method

.method public setFunctionsNeverReturnBlobs(Z)V
    .locals 2

    .line 2443
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setFunctionsNeverReturnBlobs(Z)V

    .line 2444
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2445
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setFunctionsNeverReturnBlobs(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setGatherPerfMetrics(Z)V
    .locals 2

    .line 2043
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setGatherPerfMetrics(Z)V

    .line 2044
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2045
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setGatherPerfMetrics(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setGatherPerformanceMetrics(Z)V
    .locals 2

    .line 1419
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setGatherPerformanceMetrics(Z)V

    .line 1420
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1421
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setGatherPerformanceMetrics(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setGenerateSimpleParameterMetadata(Z)V
    .locals 2

    .line 2227
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setGenerateSimpleParameterMetadata(Z)V

    .line 2228
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2229
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setGenerateSimpleParameterMetadata(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setGetProceduresReturnsFunctions(Z)V
    .locals 0

    .line 2699
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setGetProceduresReturnsFunctions(Z)V

    return-void
.end method

.method public setHoldResultsOpenOverStatementClose(Z)V
    .locals 2

    .line 1427
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setHoldResultsOpenOverStatementClose(Z)V

    .line 1428
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1429
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setHoldResultsOpenOverStatementClose(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHoldability(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 748
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/Connection;->setHoldability(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIgnoreNonTxTables(Z)V
    .locals 2

    .line 1435
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setIgnoreNonTxTables(Z)V

    .line 1436
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1437
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setIgnoreNonTxTables(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInGlobalTx(Z)V
    .locals 1

    .line 1036
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Global transactions not supported."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIncludeInnodbStatusInDeadlockExceptions(Z)V
    .locals 2

    .line 2411
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setIncludeInnodbStatusInDeadlockExceptions(Z)V

    .line 2412
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2413
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setIncludeInnodbStatusInDeadlockExceptions(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIncludeThreadDumpInDeadlockExceptions(Z)V
    .locals 2

    .line 2419
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setIncludeThreadDumpInDeadlockExceptions(Z)V

    .line 2420
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2421
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setIncludeThreadDumpInDeadlockExceptions(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIncludeThreadNamesAsStatementComment(Z)V
    .locals 2

    .line 2427
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setIncludeThreadNamesAsStatementComment(Z)V

    .line 2428
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2429
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setIncludeThreadNamesAsStatementComment(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInitialTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1443
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setInitialTimeout(I)V

    .line 1444
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1445
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setInitialTimeout(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInteractiveClient(Z)V
    .locals 2

    .line 2059
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setInteractiveClient(Z)V

    .line 2060
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2061
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setInteractiveClient(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIsInteractiveClient(Z)V
    .locals 2

    .line 1451
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setIsInteractiveClient(Z)V

    .line 1452
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1453
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setIsInteractiveClient(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setJdbcCompliantTruncation(Z)V
    .locals 2

    .line 1459
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setJdbcCompliantTruncation(Z)V

    .line 1460
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1461
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setJdbcCompliantTruncation(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setJdbcCompliantTruncationForReads(Z)V
    .locals 2

    .line 2019
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setJdbcCompliantTruncationForReads(Z)V

    .line 2020
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2021
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setJdbcCompliantTruncationForReads(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLargeRowSizeThreshold(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2379
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLargeRowSizeThreshold(Ljava/lang/String;)V

    .line 2380
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2381
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLargeRowSizeThreshold(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoadBalanceAutoCommitStatementRegex(Ljava/lang/String;)V
    .locals 2

    .line 2643
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLoadBalanceAutoCommitStatementRegex(Ljava/lang/String;)V

    .line 2644
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2645
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLoadBalanceAutoCommitStatementRegex(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoadBalanceAutoCommitStatementThreshold(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2635
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLoadBalanceAutoCommitStatementThreshold(I)V

    .line 2636
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2637
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLoadBalanceAutoCommitStatementThreshold(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoadBalanceBlacklistTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2547
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLoadBalanceBlacklistTimeout(I)V

    .line 2548
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2549
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLoadBalanceBlacklistTimeout(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoadBalanceConnectionGroup(Ljava/lang/String;)V
    .locals 2

    .line 2595
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLoadBalanceConnectionGroup(Ljava/lang/String;)V

    .line 2596
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2597
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLoadBalanceConnectionGroup(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoadBalanceEnableJMX(Z)V
    .locals 2

    .line 2627
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLoadBalanceEnableJMX(Z)V

    .line 2628
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2629
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLoadBalanceEnableJMX(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoadBalanceExceptionChecker(Ljava/lang/String;)V
    .locals 2

    .line 2603
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLoadBalanceExceptionChecker(Ljava/lang/String;)V

    .line 2604
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2605
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLoadBalanceExceptionChecker(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoadBalancePingTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2579
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLoadBalancePingTimeout(I)V

    .line 2580
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2581
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLoadBalancePingTimeout(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoadBalanceSQLExceptionSubclassFailover(Ljava/lang/String;)V
    .locals 2

    .line 2619
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLoadBalanceSQLExceptionSubclassFailover(Ljava/lang/String;)V

    .line 2620
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2621
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLoadBalanceSQLExceptionSubclassFailover(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoadBalanceSQLStateFailover(Ljava/lang/String;)V
    .locals 2

    .line 2611
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLoadBalanceSQLStateFailover(Ljava/lang/String;)V

    .line 2612
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2613
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLoadBalanceSQLStateFailover(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoadBalanceStrategy(Ljava/lang/String;)V
    .locals 2

    .line 2299
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLoadBalanceStrategy(Ljava/lang/String;)V

    .line 2300
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2301
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLoadBalanceStrategy(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoadBalanceValidateConnectionOnSwapServer(Z)V
    .locals 2

    .line 2587
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLoadBalanceValidateConnectionOnSwapServer(Z)V

    .line 2588
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2589
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLoadBalanceValidateConnectionOnSwapServer(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLocalSocketAddress(Ljava/lang/String;)V
    .locals 2

    .line 2211
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLocalSocketAddress(Ljava/lang/String;)V

    .line 2212
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2213
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLocalSocketAddress(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLocatorFetchBufferSize(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1467
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLocatorFetchBufferSize(Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1469
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLocatorFetchBufferSize(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLogSlowQueries(Z)V
    .locals 2

    .line 1491
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLogSlowQueries(Z)V

    .line 1492
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1493
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLogSlowQueries(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLogXaCommands(Z)V
    .locals 2

    .line 2235
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLogXaCommands(Z)V

    .line 2236
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2237
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLogXaCommands(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLogger(Ljava/lang/String;)V
    .locals 2

    .line 1475
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLogger(Ljava/lang/String;)V

    .line 1476
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1477
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLogger(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoggerClassName(Ljava/lang/String;)V
    .locals 2

    .line 1483
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setLoggerClassName(Ljava/lang/String;)V

    .line 1484
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1485
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setLoggerClassName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaintainTimeStats(Z)V
    .locals 2

    .line 1499
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setMaintainTimeStats(Z)V

    .line 1500
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1501
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setMaintainTimeStats(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaxQuerySizeToLog(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1507
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setMaxQuerySizeToLog(I)V

    .line 1508
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1509
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setMaxQuerySizeToLog(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaxReconnects(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1515
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setMaxReconnects(I)V

    .line 1516
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1517
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setMaxReconnects(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaxRows(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1523
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setMaxRows(I)V

    .line 1524
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1525
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setMaxRows(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMetadataCacheSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1531
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setMetadataCacheSize(I)V

    .line 1532
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1533
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setMetadataCacheSize(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNetTimeoutForStreamingResults(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2251
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setNetTimeoutForStreamingResults(I)V

    .line 2252
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2253
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setNetTimeoutForStreamingResults(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNetworkTimeout(Ljava/util/concurrent/Executor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public setNoAccessToProcedureBodies(Z)V
    .locals 2

    .line 2123
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setNoAccessToProcedureBodies(Z)V

    .line 2124
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2125
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setNoAccessToProcedureBodies(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNoDatetimeStringSync(Z)V
    .locals 2

    .line 1539
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setNoDatetimeStringSync(Z)V

    .line 1540
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1541
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setNoDatetimeStringSync(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNoTimezoneConversionForTimeType(Z)V
    .locals 2

    .line 1955
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setNoTimezoneConversionForTimeType(Z)V

    .line 1956
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1957
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setNoTimezoneConversionForTimeType(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNullCatalogMeansCurrent(Z)V
    .locals 2

    .line 1547
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setNullCatalogMeansCurrent(Z)V

    .line 1548
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1549
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setNullCatalogMeansCurrent(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNullNamePatternMatchesAll(Z)V
    .locals 2

    .line 1555
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setNullNamePatternMatchesAll(Z)V

    .line 1556
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1557
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setNullNamePatternMatchesAll(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOverrideSupportsIntegrityEnhancementFacility(Z)V
    .locals 2

    .line 1947
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setOverrideSupportsIntegrityEnhancementFacility(Z)V

    .line 1948
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1949
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setOverrideSupportsIntegrityEnhancementFacility(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPacketDebugBufferSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1563
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPacketDebugBufferSize(I)V

    .line 1564
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1565
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setPacketDebugBufferSize(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPadCharsWithSpace(Z)V
    .locals 2

    .line 2267
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPadCharsWithSpace(Z)V

    .line 2268
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2269
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setPadCharsWithSpace(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setParanoid(Z)V
    .locals 2

    .line 1571
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setParanoid(Z)V

    .line 1572
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1573
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setParanoid(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setParseInfoCacheFactory(Ljava/lang/String;)V
    .locals 2

    .line 2675
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setParseInfoCacheFactory(Ljava/lang/String;)V

    .line 2676
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2677
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setParseInfoCacheFactory(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPasswordCharacterEncoding(Ljava/lang/String;)V
    .locals 2

    .line 2539
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPasswordCharacterEncoding(Ljava/lang/String;)V

    .line 2540
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2541
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setPasswordCharacterEncoding(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPedantic(Z)V
    .locals 2

    .line 1579
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPedantic(Z)V

    .line 1580
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1581
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setPedantic(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPinGlobalTxToPhysicalConnection(Z)V
    .locals 2

    .line 2035
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPinGlobalTxToPhysicalConnection(Z)V

    .line 2036
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2037
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setPinGlobalTxToPhysicalConnection(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPopulateInsertRowWithDefaultValues(Z)V
    .locals 2

    .line 2291
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPopulateInsertRowWithDefaultValues(Z)V

    .line 2292
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2293
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setPopulateInsertRowWithDefaultValues(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPreferSlaveDuringFailover(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setPrepStmtCacheSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2107
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPrepStmtCacheSize(I)V

    .line 2108
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2109
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setPrepStmtCacheSize(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPrepStmtCacheSqlLimit(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2115
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPrepStmtCacheSqlLimit(I)V

    .line 2116
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2117
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setPrepStmtCacheSqlLimit(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPreparedStatementCacheSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1587
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPreparedStatementCacheSize(I)V

    .line 1588
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1589
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setPreparedStatementCacheSize(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPreparedStatementCacheSqlLimit(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1595
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPreparedStatementCacheSqlLimit(I)V

    .line 1596
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1597
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setPreparedStatementCacheSqlLimit(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProcessEscapeCodesForPrepStmts(Z)V
    .locals 2

    .line 1979
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setProcessEscapeCodesForPrepStmts(Z)V

    .line 1980
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1981
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setProcessEscapeCodesForPrepStmts(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProfileSQL(Z)V
    .locals 2

    .line 1611
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setProfileSQL(Z)V

    .line 1612
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1613
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setProfileSQL(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProfileSql(Z)V
    .locals 2

    .line 1603
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setProfileSql(Z)V

    .line 1604
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1605
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setProfileSql(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProfilerEventHandler(Ljava/lang/String;)V
    .locals 2

    .line 2467
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setProfilerEventHandler(Ljava/lang/String;)V

    .line 2468
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2469
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setProfilerEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProfilerEventHandlerInstance(Lcom/mysql/jdbc/profiler/ProfilerEventHandler;)V
    .locals 0

    return-void
.end method

.method public setPropertiesTransform(Ljava/lang/String;)V
    .locals 2

    .line 1619
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setPropertiesTransform(Ljava/lang/String;)V

    .line 1620
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1621
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setPropertiesTransform(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProxy(Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 0

    return-void
.end method

.method public setQueriesBeforeRetryMaster(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1627
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setQueriesBeforeRetryMaster(I)V

    .line 1628
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1629
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setQueriesBeforeRetryMaster(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setQueryTimeoutKillsConnection(Z)V
    .locals 2

    .line 2571
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setQueryTimeoutKillsConnection(Z)V

    .line 2572
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2573
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setQueryTimeoutKillsConnection(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setReadInfoMsgEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 656
    iput-boolean p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->readOnly:Z

    .line 657
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 658
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ReplicationConnection;->setReadOnly(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setReadOnlyInternal(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public setReconnectAtTxEnd(Z)V
    .locals 2

    .line 1635
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setReconnectAtTxEnd(Z)V

    .line 1636
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1637
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setReconnectAtTxEnd(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRelaxAutoCommit(Z)V
    .locals 2

    .line 1643
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setRelaxAutoCommit(Z)V

    .line 1644
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1645
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setRelaxAutoCommit(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setReportMetricsIntervalMillis(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1651
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setReportMetricsIntervalMillis(I)V

    .line 1652
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1653
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setReportMetricsIntervalMillis(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRequireSSL(Z)V
    .locals 2

    .line 1659
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setRequireSSL(Z)V

    .line 1660
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1661
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setRequireSSL(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 2

    .line 2003
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setResourceId(Ljava/lang/String;)V

    .line 2004
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2005
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setResourceId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setResultSetSizeThreshold(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2243
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setResultSetSizeThreshold(I)V

    .line 2244
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2245
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setResultSetSizeThreshold(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRetainStatementAfterResultSetClose(Z)V
    .locals 2

    .line 1667
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setRetainStatementAfterResultSetClose(Z)V

    .line 1668
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1669
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setRetainStatementAfterResultSetClose(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRetriesAllDown(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2555
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setRetriesAllDown(I)V

    .line 2556
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2557
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setRetriesAllDown(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRewriteBatchedStatements(Z)V
    .locals 2

    .line 2011
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setRewriteBatchedStatements(Z)V

    .line 2012
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2013
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setRewriteBatchedStatements(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRollbackOnPooledClose(Z)V
    .locals 2

    .line 1675
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setRollbackOnPooledClose(Z)V

    .line 1676
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1677
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setRollbackOnPooledClose(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRoundRobinLoadBalance(Z)V
    .locals 2

    .line 1683
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setRoundRobinLoadBalance(Z)V

    .line 1684
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1685
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setRoundRobinLoadBalance(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRunningCTS13(Z)V
    .locals 2

    .line 1691
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setRunningCTS13(Z)V

    .line 1692
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1693
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setRunningCTS13(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSavepoint()Ljava/sql/Savepoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 759
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->setSavepoint()Ljava/sql/Savepoint;

    move-result-object v0

    return-object v0
.end method

.method public setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 763
    iput-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionInProgress:Z

    .line 764
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;

    move-result-object p1

    return-object p1
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public setSecondsBeforeRetryMaster(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1699
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setSecondsBeforeRetryMaster(I)V

    .line 1700
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1701
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setSecondsBeforeRetryMaster(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelfDestructOnPingMaxOperations(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2499
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setSelfDestructOnPingMaxOperations(I)V

    .line 2500
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2501
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setSelfDestructOnPingMaxOperations(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelfDestructOnPingSecondsLifetime(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2491
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setSelfDestructOnPingSecondsLifetime(I)V

    .line 2492
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2493
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setSelfDestructOnPingSecondsLifetime(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setServerConfigCacheFactory(Ljava/lang/String;)V
    .locals 2

    .line 2683
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setServerConfigCacheFactory(Ljava/lang/String;)V

    .line 2684
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2685
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setServerConfigCacheFactory(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setServerGroupName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 359
    invoke-direct {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->ensureNoTransactionInProgress()V

    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->setCurrentServerGroup(Ljava/lang/String;)V

    .line 368
    :cond_0
    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroupName:Ljava/lang/String;

    return-void
.end method

.method public setServerTimezone(Ljava/lang/String;)V
    .locals 2

    .line 1707
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setServerTimezone(Ljava/lang/String;)V

    .line 1708
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1709
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setServerTimezone(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSessionMaxRows(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2795
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2796
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/Connection;->setSessionMaxRows(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSessionVariables(Ljava/lang/String;)V
    .locals 2

    .line 1715
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setSessionVariables(Ljava/lang/String;)V

    .line 1716
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1717
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setSessionVariables(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setShardKey(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 295
    invoke-direct {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->ensureNoTransactionInProgress()V

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    if-eqz p1, :cond_2

    .line 300
    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroupName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardTable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardMapping:Lcom/mysql/fabric/ShardMapping;

    invoke-virtual {v0, p1}, Lcom/mysql/fabric/ShardMapping;->getGroupNameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->setCurrentServerGroup(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string v1, "Shard key cannot be provided without a shard table."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0, p1, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string v1, "Shard key cannot be provided when server group is chosen directly."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0, p1, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardTable:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardMapping:Lcom/mysql/fabric/ShardMapping;

    invoke-virtual {v0}, Lcom/mysql/fabric/ShardMapping;->getGlobalGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->setCurrentServerGroup(Ljava/lang/String;)V

    .line 313
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardKey:Ljava/lang/String;

    return-void
.end method

.method public setShardTable(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 321
    invoke-direct {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->ensureNoTransactionInProgress()V

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->currentConnection:Lcom/mysql/jdbc/ReplicationConnection;

    .line 325
    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroupName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 330
    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardKey:Ljava/lang/String;

    .line 331
    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverGroup:Lcom/mysql/fabric/ServerGroup;

    .line 332
    iput-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardTable:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 334
    iput-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardMapping:Lcom/mysql/fabric/ShardMapping;

    goto :goto_1

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->database:Ljava/lang/String;

    const-string v2, "."

    .line 339
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "\\."

    .line 340
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 341
    aget-object v2, v1, v2

    const/4 v3, 0x1

    .line 342
    aget-object v1, v1, v3

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 344
    :goto_0
    iget-object v3, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->fabricConnection:Lcom/mysql/fabric/FabricConnection;

    invoke-virtual {v3, v1, v2}, Lcom/mysql/fabric/FabricConnection;->getShardMapping(Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/fabric/ShardMapping;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardMapping:Lcom/mysql/fabric/ShardMapping;

    .line 345
    iget-object v1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardMapping:Lcom/mysql/fabric/ShardMapping;

    if-eqz v1, :cond_2

    .line 350
    iget-object p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->shardMapping:Lcom/mysql/fabric/ShardMapping;

    invoke-virtual {p1}, Lcom/mysql/fabric/ShardMapping;->getGlobalGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->setCurrentServerGroup(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 346
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shard mapping not found for table `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1009"

    invoke-static {p1, v2, v0, v1, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 326
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string v1, "Server group and shard table are mutually exclusive. Only one may be provided."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0, p1, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setSlowQueryThresholdMillis(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1723
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setSlowQueryThresholdMillis(I)V

    .line 1724
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1725
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setSlowQueryThresholdMillis(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSlowQueryThresholdNanos(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2355
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setSlowQueryThresholdNanos(J)V

    .line 2356
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2357
    invoke-interface {v1, p1, p2}, Lcom/mysql/jdbc/ConnectionProperties;->setSlowQueryThresholdNanos(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSocketFactory(Ljava/lang/String;)V
    .locals 2

    .line 2067
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setSocketFactory(Ljava/lang/String;)V

    .line 2068
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2069
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setSocketFactory(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSocketFactoryClassName(Ljava/lang/String;)V
    .locals 2

    .line 1731
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setSocketFactoryClassName(Ljava/lang/String;)V

    .line 1732
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1733
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setSocketFactoryClassName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1739
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setSocketTimeout(I)V

    .line 1740
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1741
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setSocketTimeout(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStatementComment(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setStatementInterceptors(Ljava/lang/String;)V
    .locals 2

    .line 2363
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setStatementInterceptors(Ljava/lang/String;)V

    .line 2364
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2365
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setStatementInterceptors(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStrictFloatingPoint(Z)V
    .locals 2

    .line 1747
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setStrictFloatingPoint(Z)V

    .line 1748
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1749
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setStrictFloatingPoint(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStrictUpdates(Z)V
    .locals 2

    .line 1755
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setStrictUpdates(Z)V

    .line 1756
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1757
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setStrictUpdates(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTcpKeepAlive(Z)V
    .locals 2

    .line 2315
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setTcpKeepAlive(Z)V

    .line 2316
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2317
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setTcpKeepAlive(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 2

    .line 2307
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setTcpNoDelay(Z)V

    .line 2308
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2309
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setTcpNoDelay(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTcpRcvBuf(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2323
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setTcpRcvBuf(I)V

    .line 2324
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2325
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setTcpRcvBuf(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTcpSndBuf(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2331
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setTcpSndBuf(I)V

    .line 2332
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2333
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setTcpSndBuf(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTcpTrafficClass(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2339
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setTcpTrafficClass(I)V

    .line 2340
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2341
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setTcpTrafficClass(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTinyInt1isBit(Z)V
    .locals 2

    .line 1763
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setTinyInt1isBit(Z)V

    .line 1764
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1765
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setTinyInt1isBit(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTraceProtocol(Z)V
    .locals 2

    .line 1771
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setTraceProtocol(Z)V

    .line 1772
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1773
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setTraceProtocol(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTransactionIsolation(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 734
    iput p1, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionIsolation:I

    .line 735
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 736
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/Connection;->setTransactionIsolation(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTransformedBitIsBoolean(Z)V
    .locals 2

    .line 1779
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setTransformedBitIsBoolean(Z)V

    .line 1780
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1781
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setTransformedBitIsBoolean(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTreatUtilDateAsTimestamp(Z)V
    .locals 2

    .line 2195
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setTreatUtilDateAsTimestamp(Z)V

    .line 2196
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2197
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setTreatUtilDateAsTimestamp(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTrustCertificateKeyStorePassword(Ljava/lang/String;)V
    .locals 2

    .line 2163
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setTrustCertificateKeyStorePassword(Ljava/lang/String;)V

    .line 2164
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2165
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setTrustCertificateKeyStorePassword(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTrustCertificateKeyStoreType(Ljava/lang/String;)V
    .locals 2

    .line 2171
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setTrustCertificateKeyStoreType(Ljava/lang/String;)V

    .line 2172
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2173
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setTrustCertificateKeyStoreType(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTrustCertificateKeyStoreUrl(Ljava/lang/String;)V
    .locals 2

    .line 2179
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setTrustCertificateKeyStoreUrl(Ljava/lang/String;)V

    .line 2180
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2181
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setTrustCertificateKeyStoreUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTypeMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 742
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/Connection;->setTypeMap(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUltraDevHack(Z)V
    .locals 2

    .line 2051
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUltraDevHack(Z)V

    .line 2052
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2053
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUltraDevHack(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseAffectedRows(Z)V
    .locals 2

    .line 2531
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseAffectedRows(Z)V

    .line 2532
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2533
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseAffectedRows(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseBlobToStoreUTF8OutsideBMP(Z)V
    .locals 2

    .line 2387
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseBlobToStoreUTF8OutsideBMP(Z)V

    .line 2388
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2389
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseBlobToStoreUTF8OutsideBMP(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseColumnNamesInFindColumn(Z)V
    .locals 2

    .line 2507
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseColumnNamesInFindColumn(Z)V

    .line 2508
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2509
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseColumnNamesInFindColumn(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseCompression(Z)V
    .locals 2

    .line 1787
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseCompression(Z)V

    .line 1788
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1789
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseCompression(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseConfigs(Ljava/lang/String;)V
    .locals 2

    .line 2219
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseConfigs(Ljava/lang/String;)V

    .line 2220
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2221
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseConfigs(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseCursorFetch(Z)V
    .locals 2

    .line 1939
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseCursorFetch(Z)V

    .line 1940
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1941
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseCursorFetch(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseDirectRowUnpack(Z)V
    .locals 2

    .line 2371
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseDirectRowUnpack(Z)V

    .line 2372
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2373
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseDirectRowUnpack(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseDynamicCharsetInfo(Z)V
    .locals 2

    .line 2275
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseDynamicCharsetInfo(Z)V

    .line 2276
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2277
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseDynamicCharsetInfo(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseFastDateParsing(Z)V
    .locals 2

    .line 2203
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseFastDateParsing(Z)V

    .line 2204
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2205
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseFastDateParsing(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseFastIntParsing(Z)V
    .locals 2

    .line 1795
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseFastIntParsing(Z)V

    .line 1796
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1797
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseFastIntParsing(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseGmtMillisForDatetimes(Z)V
    .locals 2

    .line 1987
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseGmtMillisForDatetimes(Z)V

    .line 1988
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1989
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseGmtMillisForDatetimes(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseHostsInPrivileges(Z)V
    .locals 2

    .line 1803
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseHostsInPrivileges(Z)V

    .line 1804
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1805
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseHostsInPrivileges(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseInformationSchema(Z)V
    .locals 2

    .line 1811
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseInformationSchema(Z)V

    .line 1812
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1813
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseInformationSchema(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseJDBCCompliantTimezoneShift(Z)V
    .locals 2

    .line 1963
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseJDBCCompliantTimezoneShift(Z)V

    .line 1964
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1965
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseJDBCCompliantTimezoneShift(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseJvmCharsetConverters(Z)V
    .locals 2

    .line 2027
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseJvmCharsetConverters(Z)V

    .line 2028
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2029
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseJvmCharsetConverters(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseLegacyDatetimeCode(Z)V
    .locals 2

    .line 2483
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseLegacyDatetimeCode(Z)V

    .line 2484
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2485
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseLegacyDatetimeCode(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseLocalSessionState(Z)V
    .locals 2

    .line 1819
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseLocalSessionState(Z)V

    .line 1820
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1821
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseLocalSessionState(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseLocalTransactionState(Z)V
    .locals 2

    .line 2515
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseLocalTransactionState(Z)V

    .line 2516
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2517
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseLocalTransactionState(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseNanosForElapsedTime(Z)V
    .locals 2

    .line 2347
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseNanosForElapsedTime(Z)V

    .line 2348
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2349
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseNanosForElapsedTime(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseOldAliasMetadataBehavior(Z)V
    .locals 2

    .line 2131
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseOldAliasMetadataBehavior(Z)V

    .line 2132
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2133
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseOldAliasMetadataBehavior(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseOldUTF8Behavior(Z)V
    .locals 2

    .line 1827
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseOldUTF8Behavior(Z)V

    .line 1828
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1829
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseOldUTF8Behavior(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseOnlyServerErrorMessages(Z)V
    .locals 2

    .line 1835
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseOnlyServerErrorMessages(Z)V

    .line 1836
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1837
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseOnlyServerErrorMessages(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseReadAheadInput(Z)V
    .locals 2

    .line 1843
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseReadAheadInput(Z)V

    .line 1844
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1845
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseReadAheadInput(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseSSL(Z)V
    .locals 2

    .line 1867
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseSSL(Z)V

    .line 1868
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1869
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseSSL(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseSSPSCompatibleTimezoneShift(Z)V
    .locals 2

    .line 2187
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseSSPSCompatibleTimezoneShift(Z)V

    .line 2188
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2189
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseSSPSCompatibleTimezoneShift(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseServerPrepStmts(Z)V
    .locals 2

    .line 2075
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseServerPrepStmts(Z)V

    .line 2076
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2077
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseServerPrepStmts(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseServerPreparedStmts(Z)V
    .locals 2

    .line 1851
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseServerPreparedStmts(Z)V

    .line 1852
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1853
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseServerPreparedStmts(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseSqlStateCodes(Z)V
    .locals 2

    .line 1859
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseSqlStateCodes(Z)V

    .line 1860
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1861
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseSqlStateCodes(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseStreamLengthsInPrepStmts(Z)V
    .locals 2

    .line 1875
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseStreamLengthsInPrepStmts(Z)V

    .line 1876
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1877
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseStreamLengthsInPrepStmts(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseTimezone(Z)V
    .locals 2

    .line 1883
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseTimezone(Z)V

    .line 1884
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1885
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseTimezone(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseUltraDevWorkAround(Z)V
    .locals 2

    .line 1891
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseUltraDevWorkAround(Z)V

    .line 1892
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1893
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseUltraDevWorkAround(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseUnbufferedInput(Z)V
    .locals 2

    .line 1899
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseUnbufferedInput(Z)V

    .line 1900
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1901
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseUnbufferedInput(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseUnicode(Z)V
    .locals 2

    .line 1907
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseUnicode(Z)V

    .line 1908
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1909
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseUnicode(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseUsageAdvisor(Z)V
    .locals 2

    .line 1915
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUseUsageAdvisor(Z)V

    .line 1916
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1917
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUseUsageAdvisor(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUtf8OutsideBmpExcludedColumnNamePattern(Ljava/lang/String;)V
    .locals 2

    .line 2395
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUtf8OutsideBmpExcludedColumnNamePattern(Ljava/lang/String;)V

    .line 2396
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2397
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUtf8OutsideBmpExcludedColumnNamePattern(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUtf8OutsideBmpIncludedColumnNamePattern(Ljava/lang/String;)V
    .locals 2

    .line 2403
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setUtf8OutsideBmpIncludedColumnNamePattern(Ljava/lang/String;)V

    .line 2404
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2405
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setUtf8OutsideBmpIncludedColumnNamePattern(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVerifyServerCertificate(Z)V
    .locals 2

    .line 2475
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setVerifyServerCertificate(Z)V

    .line 2476
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 2477
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setVerifyServerCertificate(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setYearIsDateType(Z)V
    .locals 2

    .line 1923
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setYearIsDateType(Z)V

    .line 1924
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1925
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setYearIsDateType(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setZeroDateTimeBehavior(Ljava/lang/String;)V
    .locals 2

    .line 1931
    invoke-super {p0, p1}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;->setZeroDateTimeBehavior(Ljava/lang/String;)V

    .line 1932
    iget-object v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->serverConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 1933
    invoke-interface {v1, p1}, Lcom/mysql/jdbc/ConnectionProperties;->setZeroDateTimeBehavior(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shutdownServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1016
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public storesLowerCaseTableName()Z
    .locals 1

    .line 2997
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveMySQLConnection()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->storesLowerCaseTableName()Z

    move-result v0

    return v0
.end method

.method public supportsIsolationLevel()Z
    .locals 1

    .line 948
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnectionPassive()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->supportsIsolationLevel()Z

    move-result v0

    return v0
.end method

.method public supportsQuotedIdentifiers()Z
    .locals 1

    .line 955
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnectionPassive()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->supportsQuotedIdentifiers()Z

    move-result v0

    return v0
.end method

.method public supportsTransactions()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public throwConnectionClosedException()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public transactionBegun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 704
    iget-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->autoCommit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 705
    iput-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionInProgress:Z

    :cond_0
    return-void
.end method

.method public transactionCompleted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 710
    iput-boolean v0, p0, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->transactionInProgress:Z

    .line 711
    invoke-direct {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->refreshStateIfNecessary()V

    return-void
.end method

.method public unSafeStatementInterceptors()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public unregisterStatement(Lcom/mysql/jdbc/Statement;)V
    .locals 0

    return-void
.end method

.method public unsetMaxRows(Lcom/mysql/jdbc/Statement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
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

.method public useAnsiQuotedIdentifiers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public useMaxRows()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public versionMeetsMinimum(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 941
    invoke-virtual {p0}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;->getActiveConnection()Lcom/mysql/jdbc/Connection;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/Connection;->versionMeetsMinimum(III)Z

    move-result p1

    return p1
.end method
