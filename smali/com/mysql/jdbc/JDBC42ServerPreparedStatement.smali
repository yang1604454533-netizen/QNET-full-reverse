.class public Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;
.super Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;
.source "JDBC42ServerPreparedStatement.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private checkSqlType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/JDBC42Helper;->checkSqlType(ILcom/mysql/jdbc/ExceptionInterceptor;)I

    move-result p1

    return p1
.end method

.method private translateAndCheckSqlType(Ljava/sql/SQLType;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/JDBC42Helper;->translateAndCheckSqlType(Ljava/sql/SQLType;Lcom/mysql/jdbc/ExceptionInterceptor;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public setObject(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setObject(ILjava/lang/Object;)V

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setObject(ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 71
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->checkSqlType(I)I

    move-result p3

    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setObject(ILjava/lang/Object;I)V

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setObject(ILjava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 87
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->checkSqlType(I)I

    move-result p3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setObject(ILjava/lang/Object;II)V

    .line 88
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setObject(ILjava/lang/Object;Ljava/sql/SQLType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result p3

    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setObject(ILjava/lang/Object;I)V

    .line 103
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setObject(ILjava/lang/Object;Ljava/sql/SQLType;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 118
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42ServerPreparedStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result p3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setObject(ILjava/lang/Object;II)V

    .line 119
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
