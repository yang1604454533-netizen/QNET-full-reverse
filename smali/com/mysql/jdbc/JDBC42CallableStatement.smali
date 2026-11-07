.class public Lcom/mysql/jdbc/JDBC42CallableStatement;
.super Lcom/mysql/jdbc/JDBC4CallableStatement;
.source "JDBC42CallableStatement.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4CallableStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4CallableStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private checkSqlType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

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

    .line 47
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/JDBC42Helper;->translateAndCheckSqlType(Ljava/sql/SQLType;Lcom/mysql/jdbc/ExceptionInterceptor;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public registerOutParameter(ILjava/sql/SQLType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4CallableStatement;->registerOutParameter(II)V

    return-void
.end method

.method public registerOutParameter(ILjava/sql/SQLType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result p2

    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4CallableStatement;->registerOutParameter(III)V

    return-void
.end method

.method public registerOutParameter(ILjava/sql/SQLType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 82
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result p2

    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4CallableStatement;->registerOutParameter(IILjava/lang/String;)V

    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 93
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4CallableStatement;->registerOutParameter(Ljava/lang/String;I)V

    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 105
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result p2

    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4CallableStatement;->registerOutParameter(Ljava/lang/String;II)V

    return-void
.end method

.method public registerOutParameter(Ljava/lang/String;Ljava/sql/SQLType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 117
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result p2

    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4CallableStatement;->registerOutParameter(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 130
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setObject(ILjava/lang/Object;)V

    .line 131
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

    .line 144
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 145
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkSqlType(I)I

    move-result p3

    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setObject(ILjava/lang/Object;I)V

    .line 146
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

    .line 160
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 161
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkSqlType(I)I

    move-result p3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setObject(ILjava/lang/Object;II)V

    .line 162
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

    .line 175
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 176
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result p3

    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setObject(ILjava/lang/Object;I)V

    .line 177
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

    .line 191
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 192
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result p3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setObject(ILjava/lang/Object;II)V

    .line 193
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 207
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result p3

    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 208
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42CallableStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 223
    :try_start_0
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42CallableStatement;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result p3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setObject(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 224
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
