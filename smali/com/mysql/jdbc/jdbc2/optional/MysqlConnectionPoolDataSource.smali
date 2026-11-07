.class public Lcom/mysql/jdbc/jdbc2/optional/MysqlConnectionPoolDataSource;
.super Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;
.source "MysqlConnectionPoolDataSource.java"

# interfaces
.implements Ljavax/sql/ConnectionPoolDataSource;


# static fields
.field static final serialVersionUID:J = -0x6bcb1556f761cd41L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getPooledConnection()Ljavax/sql/PooledConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlConnectionPoolDataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 49
    check-cast v0, Lcom/mysql/jdbc/Connection;

    invoke-static {v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->getInstance(Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 47
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPooledConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/sql/PooledConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlConnectionPoolDataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object p1

    .line 68
    check-cast p1, Lcom/mysql/jdbc/Connection;

    invoke-static {p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;->getInstance(Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 66
    monitor-exit p0

    throw p1
.end method
