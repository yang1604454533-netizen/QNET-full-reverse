.class public Lcom/mysql/jdbc/JDBC4UpdatableResultSet;
.super Lcom/mysql/jdbc/UpdatableResultSet;
.source "JDBC4UpdatableResultSet.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/UpdatableResultSet;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    return-void
.end method

.method private final getNClobFromString(Ljava/lang/String;I)Ljava/sql/NClob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 450
    new-instance p2, Lcom/mysql/jdbc/JDBC4NClob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/mysql/jdbc/JDBC4NClob;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object p2
.end method

.method private getStringForNClob(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 518
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->isBinaryEncoded:Z

    if-nez v1, :cond_0

    .line 519
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getBytes(I)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 521
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNativeBytes(IZ)[B

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 525
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 528
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported character encoding "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 529
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    .line 528
    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public getHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 336
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "UTF-8"

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1

    .line 378
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Can not call getNCharacterStream() when field\'s charset isn\'t UTF-8"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getNClob(I)Ljava/sql/NClob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "UTF-8"

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->isBinaryEncoded:Z

    if-nez v0, :cond_1

    .line 422
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getStringForNClob(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 428
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/JDBC4NClob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/mysql/jdbc/JDBC4NClob;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0

    .line 431
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNativeNClob(I)Ljava/sql/NClob;

    move-result-object p1

    return-object p1

    .line 418
    :cond_2
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Can not call getNClob() when field\'s charset isn\'t UTF-8"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNClob(Ljava/lang/String;)Ljava/sql/NClob;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 446
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNClob(I)Ljava/sql/NClob;

    move-result-object p1

    return-object p1
.end method

.method public getNString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "UTF-8"

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 470
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Can not call getNString() when field\'s charset isn\'t UTF-8"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 491
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getNativeNClob(I)Ljava/sql/NClob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 351
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getStringForNClob(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 357
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getNClobFromString(Ljava/lang/String;I)Ljava/sql/NClob;

    move-result-object p1

    return-object p1
.end method

.method public getRowId(I)Ljava/sql/RowId;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 495
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRowId(Ljava/lang/String;)Ljava/sql/RowId;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 499
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getRowId(I)Ljava/sql/RowId;

    move-result-object p1

    return-object p1
.end method

.method public getSQLXML(I)Ljava/sql/SQLXML;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 503
    new-instance v0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;-><init>(Lcom/mysql/jdbc/ResultSetInternalMethods;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0
.end method

.method public getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 507
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getSQLXML(I)Ljava/sql/SQLXML;

    move-result-object p1

    return-object p1
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 536
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->isClosed:Z

    return v0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 563
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 588
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 590
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to unwrap to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updateAsciiStream(ILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 48
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateAsciiStream(ILjava/io/InputStream;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 53
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateAsciiStream(ILjava/io/InputStream;)V

    return-void
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateAsciiStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 58
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateBinaryStream(ILjava/io/InputStream;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 63
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateBinaryStream(ILjava/io/InputStream;)V

    return-void
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateBinaryStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public updateBlob(ILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 68
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateBlob(ILjava/io/InputStream;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 72
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateBlob(ILjava/io/InputStream;)V

    return-void
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateBlob(ILjava/io/InputStream;J)V

    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 77
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateCharacterStream(ILjava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 82
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateCharacterStream(ILjava/io/Reader;)V

    return-void
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateClob(ILjava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 87
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateClob(ILjava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 92
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateClob(ILjava/io/Reader;)V

    return-void
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateNCharacterStream(ILjava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 97
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateNCharacterStream(ILjava/io/Reader;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v3, "UTF-8"

    .line 207
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    iget-boolean v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 212
    iget-boolean v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 213
    iput-boolean v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->doingUpdates:Z

    .line 214
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->syncUpdate()V

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    check-cast v1, Lcom/mysql/jdbc/JDBC4PreparedStatement;

    int-to-long v2, p3

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    check-cast v1, Lcom/mysql/jdbc/JDBC4PreparedStatement;

    int-to-long v3, p3

    invoke-virtual {v1, p1, p2, v3, v4}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    if-nez p2, :cond_2

    .line 222
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    const/4 p2, 0x0

    invoke-virtual {p1, v2, p2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    sget-object p2, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->STREAM_DATA_MARKER:[B

    invoke-virtual {p1, v2, p2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 227
    :goto_0
    monitor-exit v0

    return-void

    .line 208
    :cond_3
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Can not call updateNCharacterStream() when field\'s character set isn\'t UTF-8"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 227
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateNCharacterStream(ILjava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    long-to-int p3, p3

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNCharacterStream(ILjava/io/Reader;I)V

    return-void
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNCharacterStream(ILjava/io/Reader;)V

    return-void
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 248
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNCharacterStream(ILjava/io/Reader;I)V

    return-void
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateNClob(ILjava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 107
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateNClob(ILjava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 112
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateNClob(ILjava/sql/NClob;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "UTF-8"

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    .line 262
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNull(I)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-interface {p2}, Ljava/sql/NClob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    invoke-interface {p2}, Ljava/sql/NClob;->length()J

    move-result-wide v2

    long-to-int p2, v2

    invoke-virtual {p0, p1, v1, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNCharacterStream(ILjava/io/Reader;I)V

    .line 266
    :goto_0
    monitor-exit v0

    return-void

    .line 258
    :cond_1
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Can not call updateNClob() when field\'s character set isn\'t UTF-8"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 266
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNClob(ILjava/io/Reader;)V

    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNClob(ILjava/sql/NClob;)V

    return-void
.end method

.method public updateNString(ILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v1, "UTF-8"

    .line 293
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 297
    iget-boolean v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->onInsertRow:Z

    if-nez v1, :cond_1

    .line 298
    iget-boolean v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->doingUpdates:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 299
    iput-boolean v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->doingUpdates:Z

    .line 300
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->syncUpdate()V

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updater:Lcom/mysql/jdbc/PreparedStatement;

    check-cast v1, Lcom/mysql/jdbc/JDBC4PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setNString(ILjava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->inserter:Lcom/mysql/jdbc/PreparedStatement;

    check-cast v1, Lcom/mysql/jdbc/JDBC4PreparedStatement;

    invoke-virtual {v1, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatement;->setNString(ILjava/lang/String;)V

    if-nez p2, :cond_2

    .line 308
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    const/4 p2, 0x0

    invoke-virtual {p1, v2, p2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    goto :goto_0

    .line 310
    :cond_2
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->thisRow:Lcom/mysql/jdbc/ResultSetRow;

    iget-object v4, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 311
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v7

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    move-object v3, p2

    .line 310
    invoke-static/range {v3 .. v8}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/mysql/jdbc/ResultSetRow;->setColumnValue(I[B)V

    .line 314
    :goto_0
    monitor-exit v0

    return-void

    .line 294
    :cond_3
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Can not call updateNString() when field\'s character set isn\'t UTF-8"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 314
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateNString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 332
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateNString(ILjava/lang/String;)V

    return-void
.end method

.method public updateRowId(ILjava/sql/RowId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 121
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateSQLXML(ILjava/sql/SQLXML;)V
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

.method public updateSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4UpdatableResultSet;->updateSQLXML(ILjava/sql/SQLXML;)V

    return-void
.end method
