.class public Lcom/mysql/jdbc/ByteArrayRow;
.super Lcom/mysql/jdbc/ResultSetRow;
.source "ByteArrayRow.java"


# instance fields
.field internalRowData:[[B


# direct methods
.method public constructor <init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 0

    .line 46
    invoke-direct {p0, p2}, Lcom/mysql/jdbc/ResultSetRow;-><init>(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 48
    iput-object p1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    return-void
.end method


# virtual methods
.method public closeOpenStreams()V
    .locals 0

    return-void
.end method

.method public getBinaryInputStream(I)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 201
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getBytesSize()I
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 289
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 290
    iget-object v2, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v2, v2, v1

    array-length v2, v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getColumnValue(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getDateFast(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v4, v1, p1

    const/4 v5, 0x0

    array-length v6, v0

    move-object v2, p0

    move v3, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/mysql/jdbc/ByteArrayRow;->getDateFast(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getInt(I)I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->getInt([B)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->getLong([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeDate(ILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v3, v0, p1

    if-nez v3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v4, 0x0

    .line 266
    array-length v5, v3

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeDate(I[BIILcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;Ljava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getNativeDateTimeValue(ILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v12, p0

    .line 249
    iget-object v0, v12, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v2, v0, p1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    .line 255
    array-length v4, v2

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeDateTimeValue(I[BIILjava/util/Calendar;IILjava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNativeDouble(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeDouble([BI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeFloat(I)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeFloat([BI)F

    move-result p1

    return p1
.end method

.method public getNativeInt(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object p1, v0, p1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeInt([BI)I

    move-result p1

    return p1
.end method

.method public getNativeLong(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeShort(I)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object p1, v0, p1

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeShort([BI)S

    move-result p1

    return p1
.end method

.method public getNativeTime(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v10, p0

    .line 272
    iget-object v0, v10, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v2, v0, p1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    .line 278
    array-length v4, v2

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeTime(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getNativeTimestamp(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v9, p0

    .line 181
    iget-object v0, v9, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 187
    array-length v3, v1

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/ByteArrayRow;->getNativeTimestamp([BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getReader(I)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ByteArrayRow;->getBinaryInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 213
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/mysql/jdbc/ByteArrayRow;->metadata:[Lcom/mysql/jdbc/Field;

    aget-object p1, v2, p1

    invoke-virtual {p1}, Lcom/mysql/jdbc/Field;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 215
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 219
    throw v0
.end method

.method public getString(ILjava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v4, v0, p1

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v5, 0x0

    .line 69
    array-length v6, v4

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mysql/jdbc/ByteArrayRow;->getString(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;[BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTimeFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v10, p0

    .line 226
    iget-object v0, v10, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 232
    :cond_0
    iget-object v2, v10, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v2, v2, p1

    const/4 v3, 0x0

    array-length v4, v0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mysql/jdbc/ByteArrayRow;->getTimeFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Time;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampFast(ILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v10, p0

    .line 124
    iget-object v0, v10, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    iget-object v2, v10, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v2, v2, p1

    const/4 v3, 0x0

    array-length v4, v0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/mysql/jdbc/ByteArrayRow;->getTimestampFast(I[BIILjava/util/Calendar;Ljava/util/TimeZone;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ResultSetImpl;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public isFloatingPointNumber(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    .line 81
    iget-object v1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v1, v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object p1, v1, p1

    array-length p1, p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 85
    :goto_0
    array-length v1, v0

    if-ge p1, v1, :cond_3

    .line 86
    aget-byte v1, v0, p1

    int-to-char v1, v1

    const/16 v3, 0x65

    if-eq v1, v3, :cond_2

    aget-byte v1, v0, p1

    int-to-char v1, v1

    const/16 v3, 0x45

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v2

    :cond_4
    :goto_2
    return v2
.end method

.method public isNull(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public length(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aget-object p1, v0, p1

    array-length p1, p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public setColumnValue(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/mysql/jdbc/ByteArrayRow;->internalRowData:[[B

    aput-object p2, v0, p1

    return-void
.end method
