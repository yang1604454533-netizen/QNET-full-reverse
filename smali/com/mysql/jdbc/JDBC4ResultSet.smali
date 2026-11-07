.class public Lcom/mysql/jdbc/JDBC4ResultSet;
.super Lcom/mysql/jdbc/ResultSetImpl;
.source "JDBC4ResultSet.java"


# direct methods
.method public constructor <init>(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p6}, Lcom/mysql/jdbc/ResultSetImpl;-><init>(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/mysql/jdbc/ResultSetImpl;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    return-void
.end method

.method private final getNClobFromString(Ljava/lang/String;I)Ljava/sql/NClob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 191
    new-instance p2, Lcom/mysql/jdbc/JDBC4NClob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

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

    .line 173
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/JDBC4ResultSet;->isBinaryEncoded:Z

    if-nez v1, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getBytes(I)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 176
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNativeBytes(IZ)[B

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 180
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 183
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported character encoding "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    .line 183
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

    .line 294
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

    .line 70
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->checkColumnBounds(I)V

    .line 72
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "UTF-8"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1

    .line 74
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

    .line 95
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNCharacterStream(I)Ljava/io/Reader;

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

    .line 110
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->checkColumnBounds(I)V

    .line 112
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "UTF-8"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4ResultSet;->isBinaryEncoded:Z

    if-nez v0, :cond_1

    .line 117
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getStringForNClob(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/JDBC4NClob;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/mysql/jdbc/JDBC4NClob;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNativeNClob(I)Ljava/sql/NClob;

    move-result-object p1

    return-object p1

    .line 114
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

    .line 141
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNClob(I)Ljava/sql/NClob;

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

    .line 208
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->checkColumnBounds(I)V

    .line 210
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4ResultSet;->fields:[Lcom/mysql/jdbc/Field;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "UTF-8"

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 212
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

    .line 232
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNString(I)Ljava/lang/String;

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

    .line 156
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getStringForNClob(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 162
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNClobFromString(Ljava/lang/String;I)Ljava/sql/NClob;

    move-result-object p1

    return-object p1
.end method

.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
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

    if-eqz p2, :cond_4

    .line 521
    const-class v0, Ljava/sql/Struct;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 523
    const-class v0, Ljava/sql/RowId;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getRowId(I)Ljava/sql/RowId;

    move-result-object p1

    return-object p1

    .line 525
    :cond_0
    const-class v0, Ljava/sql/NClob;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNClob(I)Ljava/sql/NClob;

    move-result-object p1

    return-object p1

    .line 527
    :cond_1
    const-class v0, Ljava/sql/SQLXML;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getSQLXML(I)Ljava/sql/SQLXML;

    move-result-object p1

    return-object p1

    .line 531
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 522
    :cond_3
    new-instance p1, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {p1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw p1

    .line 518
    :cond_4
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Type parameter can not be null"

    const-string v0, "S1009"

    invoke-static {p2, v0, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getRowId(I)Ljava/sql/RowId;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 298
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

    .line 302
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getRowId(I)Ljava/sql/RowId;

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

    .line 306
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->checkColumnBounds(I)V

    .line 308
    new-instance v0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML;

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

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

    .line 312
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getSQLXML(I)Ljava/sql/SQLXML;

    move-result-object p1

    return-object p1
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

    .line 484
    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ResultSet;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 487
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

    .line 509
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 511
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

    invoke-virtual {p0}, Lcom/mysql/jdbc/JDBC4ResultSet;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

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

    .line 316
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

    .line 326
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

    .line 321
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateAsciiStream(ILjava/io/InputStream;)V

    return-void
.end method

.method public updateAsciiStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateAsciiStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public updateBinaryStream(ILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 335
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

    .line 344
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

    .line 340
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateBinaryStream(ILjava/io/InputStream;)V

    return-void
.end method

.method public updateBinaryStream(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 349
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateBinaryStream(ILjava/io/InputStream;J)V

    return-void
.end method

.method public updateBlob(ILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 353
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

    .line 361
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

    .line 357
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateBlob(ILjava/io/InputStream;)V

    return-void
.end method

.method public updateBlob(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateBlob(ILjava/io/InputStream;J)V

    return-void
.end method

.method public updateCharacterStream(ILjava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 370
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

    .line 379
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

    .line 375
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateCharacterStream(ILjava/io/Reader;)V

    return-void
.end method

.method public updateCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 384
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateClob(ILjava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 388
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

    .line 397
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

    .line 393
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateClob(ILjava/io/Reader;)V

    return-void
.end method

.method public updateClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 402
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateNCharacterStream(ILjava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 406
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateNCharacterStream(ILjava/io/Reader;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 254
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateNCharacterStream(ILjava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 416
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateNCharacterStream(ILjava/io/Reader;)V

    return-void
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateNCharacterStream(ILjava/io/Reader;I)V

    return-void
.end method

.method public updateNCharacterStream(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 421
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateNCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateNClob(ILjava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 430
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

    .line 440
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateNClob(ILjava/sql/NClob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 425
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 435
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateNClob(ILjava/io/Reader;)V

    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 444
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateNClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public updateNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateNClob(ILjava/sql/NClob;)V

    return-void
.end method

.method public updateNString(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 448
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateNString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 453
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateNString(ILjava/lang/String;)V

    return-void
.end method

.method public updateRowId(ILjava/sql/RowId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 286
    new-instance p1, Lcom/mysql/jdbc/NotUpdatable;

    invoke-direct {p1}, Lcom/mysql/jdbc/NotUpdatable;-><init>()V

    throw p1
.end method

.method public updateRowId(Ljava/lang/String;Ljava/sql/RowId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 290
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateRowId(ILjava/sql/RowId;)V

    return-void
.end method

.method public updateSQLXML(ILjava/sql/SQLXML;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 457
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

    .line 462
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4ResultSet;->updateSQLXML(ILjava/sql/SQLXML;)V

    return-void
.end method
