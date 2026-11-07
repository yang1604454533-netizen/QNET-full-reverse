.class public Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;
.super Lcom/mysql/jdbc/ServerPreparedStatement;
.source "JDBC4ServerPreparedStatement.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/ServerPreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public setNCharacterStream(ILjava/io/Reader;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Can not call setNCharacterStream() when connection character set isn\'t UTF-8"

    invoke-static {p2, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    if-nez p2, :cond_2

    const/4 p2, -0x2

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setNull(II)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/16 v1, 0xfc

    .line 59
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 61
    iput-object p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 62
    iput-boolean v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 64
    iget-object p2, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 65
    iput-wide p3, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_1

    :cond_3
    const-wide/16 p2, -0x1

    .line 67
    iput-wide p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    :goto_1
    return-void
.end method

.method public setNClob(ILjava/io/Reader;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Can not call setNClob() when connection character set isn\'t UTF-8"

    invoke-static {p2, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 98
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    if-nez p2, :cond_2

    const/16 p2, 0x7db

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setNull(II)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->getBinding(IZ)Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;

    move-result-object p1

    const/16 v1, 0xfc

    .line 104
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->resetToType(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;I)V

    .line 106
    iput-object p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 107
    iput-boolean v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 109
    iget-object p2, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 110
    iput-wide p3, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    goto :goto_1

    :cond_3
    const-wide/16 p2, -0x1

    .line 112
    iput-wide p2, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    :goto_1
    return-void
.end method

.method public setNClob(ILjava/sql/NClob;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 76
    invoke-interface {p2}, Ljava/sql/NClob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/sql/NClob;->length()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setNClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public setNString(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Can not call setNString() when connection character set isn\'t UTF-8"

    invoke-static {p2, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 122
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ServerPreparedStatement;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public setRowId(ILjava/sql/RowId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 129
    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setRowId(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/RowId;)V

    return-void
.end method

.method public setSQLXML(ILjava/sql/SQLXML;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 133
    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setSQLXML(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/SQLXML;)V

    return-void
.end method
