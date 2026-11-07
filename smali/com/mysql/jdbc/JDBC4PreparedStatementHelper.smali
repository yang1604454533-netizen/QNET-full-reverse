.class public Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;
.super Ljava/lang/Object;
.source "JDBC4PreparedStatementHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setNClob(Lcom/mysql/jdbc/PreparedStatement;ILjava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;)V

    return-void
.end method

.method static setNClob(Lcom/mysql/jdbc/PreparedStatement;ILjava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/16 p2, 0x7db

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    :goto_0
    return-void
.end method

.method static setNClob(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/NClob;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/16 p2, 0x7db

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {p2}, Ljava/sql/NClob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    invoke-interface {p2}, Ljava/sql/NClob;->length()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    :goto_0
    return-void
.end method

.method static setRowId(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/RowId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method static setSQLXML(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/SQLXML;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/16 p2, 0x7d9

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 93
    :cond_0
    check-cast p2, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;

    invoke-virtual {p2}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;->serializeAsCharacterStream()Ljava/io/Reader;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;)V

    :goto_0
    return-void
.end method
