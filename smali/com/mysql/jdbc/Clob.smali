.class public Lcom/mysql/jdbc/Clob;
.super Ljava/lang/Object;
.source "Clob.java"

# interfaces
.implements Ljava/sql/Clob;
.implements Lcom/mysql/jdbc/OutputStreamWatcher;
.implements Lcom/mysql/jdbc/WriterWatcher;


# instance fields
.field private charData:Ljava/lang/String;

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-void
.end method


# virtual methods
.method public free()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    return-void
.end method

.method public getAsciiStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharacterStream(JJ)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/io/StringReader;

    long-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/Clob;->getSubString(JI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSubString(JI)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    long-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    add-int/2addr p3, p1

    .line 84
    iget-object p2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 85
    iget-object p2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p3, p2, :cond_0

    .line 89
    iget-object p2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Clob.7"

    .line 86
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string p3, "S1009"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    const-string p1, "Clob.6"

    .line 78
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string p3, "S1009"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public position(Ljava/lang/String;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 122
    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_2

    sub-long/2addr p2, v0

    .line 123
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    long-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    int-to-long v3, p1

    :goto_0
    return-wide v3

    :cond_1
    const-string p1, "Clob.10"

    .line 124
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string p3, "S1009"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_2
    return-wide v3

    .line 118
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Clob.8"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "Clob.9"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string p3, "S1009"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public position(Ljava/sql/Clob;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Ljava/sql/Clob;->length()J

    move-result-wide v0

    long-to-int v0, v0

    const-wide/16 v1, 0x1

    invoke-interface {p1, v1, v2, v0}, Ljava/sql/Clob;->getSubString(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/Clob;->position(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public setAsciiStream(J)Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 143
    new-instance v2, Lcom/mysql/jdbc/WatchableOutputStream;

    invoke-direct {v2}, Lcom/mysql/jdbc/WatchableOutputStream;-><init>()V

    .line 144
    invoke-virtual {v2, p0}, Lcom/mysql/jdbc/WatchableOutputStream;->setWatcher(Lcom/mysql/jdbc/OutputStreamWatcher;)V

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-static {v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    sub-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {v2, v3, v4, p1}, Lcom/mysql/jdbc/WatchableOutputStream;->write([BII)V

    :cond_0
    return-object v2

    :cond_1
    const-string p1, "Clob.0"

    .line 140
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setCharacterStream(J)Ljava/io/Writer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 161
    new-instance v3, Lcom/mysql/jdbc/WatchableWriter;

    invoke-direct {v3}, Lcom/mysql/jdbc/WatchableWriter;-><init>()V

    .line 162
    invoke-virtual {v3, p0}, Lcom/mysql/jdbc/WatchableWriter;->setWatcher(Lcom/mysql/jdbc/WriterWatcher;)V

    if-lez v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    const/4 v4, 0x0

    sub-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {v3, v2, v4, p1}, Lcom/mysql/jdbc/WatchableWriter;->write(Ljava/lang/String;II)V

    :cond_0
    return-object v3

    :cond_1
    const-string p1, "Clob.1"

    .line 158
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setString(JLjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    if-eqz p3, :cond_0

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr p1, v0

    .line 190
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    long-to-int v1, p1

    int-to-long v3, v0

    add-long/2addr p1, v3

    long-to-int p1, p1

    .line 192
    invoke-virtual {v2, v1, p1, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    return v0

    :cond_0
    const-string p1, "Clob.3"

    .line 183
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string p3, "S1009"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "Clob.2"

    .line 179
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string p3, "S1009"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setString(JLjava/lang/String;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    if-eqz p3, :cond_0

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr p1, v0

    add-int v0, p4, p5

    .line 216
    :try_start_0
    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    long-to-int p4, p1

    .line 218
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {v2, p4, p1, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    return p5

    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/StringIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string p4, "S1009"

    invoke-static {p2, p4, p1, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_0
    const-string p1, "Clob.5"

    .line 208
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string p3, "S1009"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "Clob.4"

    .line 204
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string p3, "S1009"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public streamClosed(Lcom/mysql/jdbc/WatchableOutputStream;)V
    .locals 8

    .line 232
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableOutputStream;->size()I

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 236
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/mysql/jdbc/WatchableOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :catch_0
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    return-void
.end method

.method public truncate(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    const/4 v1, 0x0

    long-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clob.11"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Clob.12"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "Clob.13"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mysql/jdbc/Clob;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    invoke-static {p1, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public writerClosed(Lcom/mysql/jdbc/WatchableWriter;)V
    .locals 3

    .line 270
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableWriter;->size()I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Lcom/mysql/jdbc/WatchableWriter;->write(Ljava/lang/String;II)V

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/WatchableWriter;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    return-void
.end method

.method public writerClosed([C)V
    .locals 1

    .line 263
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/mysql/jdbc/Clob;->charData:Ljava/lang/String;

    return-void
.end method
