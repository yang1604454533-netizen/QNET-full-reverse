.class public Lcom/mysql/jdbc/JDBC42ResultSet;
.super Lcom/mysql/jdbc/JDBC4ResultSet;
.source "JDBC42ResultSet.java"


# direct methods
.method public constructor <init>(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p6}, Lcom/mysql/jdbc/JDBC4ResultSet;-><init>(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/JDBC4ResultSet;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    return-void
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

    if-eqz p2, :cond_a

    .line 66
    const-class v0, Ljava/time/LocalDate;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42ResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Ljava/sql/Date;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 69
    :cond_1
    const-class v0, Ljava/time/LocalDateTime;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {p1}, Ljava/sql/Timestamp;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    return-object v1

    .line 72
    :cond_3
    const-class v0, Ljava/time/LocalTime;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42ResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 74
    :cond_4
    invoke-virtual {p1}, Ljava/sql/Time;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    return-object v1

    .line 75
    :cond_5
    const-class v0, Ljava/time/OffsetDateTime;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 78
    :cond_6
    invoke-static {v0}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v1

    .line 82
    :cond_7
    const-class v0, Ljava/time/OffsetTime;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 84
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC42ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_4

    .line 85
    :cond_8
    invoke-static {v0}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    return-object v1

    .line 91
    :catch_0
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 63
    :cond_a
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC42ResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Type parameter can not be null"

    const-string v0, "S1009"

    invoke-static {p2, v0, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateObject(ILjava/lang/Object;Ljava/sql/SQLType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 103
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateObject(ILjava/lang/Object;Ljava/sql/SQLType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 116
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 128
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateObject(Ljava/lang/String;Ljava/lang/Object;Ljava/sql/SQLType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 141
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method
