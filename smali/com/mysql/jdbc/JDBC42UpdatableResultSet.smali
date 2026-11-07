.class public Lcom/mysql/jdbc/JDBC42UpdatableResultSet;
.super Lcom/mysql/jdbc/JDBC4UpdatableResultSet;
.source "JDBC42UpdatableResultSet.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    return-void
.end method

.method private translateAndCheckSqlType(Ljava/sql/SQLType;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/JDBC42Helper;->translateAndCheckSqlType(Ljava/sql/SQLType;Lcom/mysql/jdbc/ExceptionInterceptor;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p2, :cond_5

    .line 69
    :try_start_0
    const-class v1, Ljava/time/LocalDate;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/sql/Date;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 71
    :cond_0
    const-class v1, Ljava/time/LocalDateTime;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p1

    invoke-virtual {p1}, Ljava/sql/Timestamp;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 73
    :cond_1
    const-class v1, Ljava/time/LocalTime;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object p1

    invoke-virtual {p1}, Ljava/sql/Time;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 75
    :cond_2
    const-class v1, Ljava/time/OffsetDateTime;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 77
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 81
    :cond_3
    const-class v1, Ljava/time/OffsetTime;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 83
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catch Ljava/time/format/DateTimeParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object v1

    .line 89
    :catch_0
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_5
    const-string p1, "Type parameter can not be null"

    const-string p2, "S1009"

    .line 66
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 90
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public updateObject(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 102
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateObject(ILjava/lang/Object;)V

    return-void
.end method

.method public updateObject(ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 115
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateObject(ILjava/lang/Object;I)V

    return-void
.end method

.method public updateObject(ILjava/lang/Object;Ljava/sql/SQLType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 153
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V

    return-void
.end method

.method public updateObject(ILjava/lang/Object;Ljava/sql/SQLType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 167
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V

    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 127
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 140
    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateObject(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V

    return-void
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2}, Lcom/mysql/jdbc/JDBC42Helper;->convertJavaTimeToJavaSql(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/mysql/jdbc/JDBC42UpdatableResultSet;->translateAndCheckSqlType(Ljava/sql/SQLType;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateObjectInternal(ILjava/lang/Object;Ljava/lang/Integer;I)V

    return-void
.end method
