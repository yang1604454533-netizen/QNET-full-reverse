.class public Lcom/mysql/jdbc/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# static fields
.field private static final DEFAULT_TIMEZONE:Ljava/util/TimeZone;

.field static final GMT_TIMEZONE:Ljava/util/TimeZone;

.field private static final TIME_ZONE_MAPPINGS_RESOURCE:Ljava/lang/String; = "/com/mysql/jdbc/TimeZoneMapping.properties"

.field protected static final systemNanoTimeMethod:Ljava/lang/reflect/Method;

.field private static timeZoneMappings:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "GMT"

    .line 42
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/TimeUtil;->GMT_TIMEZONE:Ljava/util/TimeZone;

    .line 45
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/TimeUtil;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    .line 58
    :try_start_0
    const-class v1, Ljava/lang/System;

    const-string v2, "nanoTime"

    move-object v3, v0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 65
    :catch_0
    sput-object v0, Lcom/mysql/jdbc/TimeUtil;->systemNanoTimeMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;
    .locals 1

    if-eqz p0, :cond_2

    .line 109
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseTimezone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getNoTimezoneConversionForTimeType()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    invoke-static {p4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    .line 112
    invoke-virtual {p0, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xf

    .line 114
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/16 p4, 0x10

    invoke-virtual {p0, p4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p2, p0

    .line 115
    invoke-static {p5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    .line 116
    invoke-virtual {p0, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 118
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    add-int/2addr p1, p3

    sub-int/2addr p2, p1

    .line 120
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    if-eqz p6, :cond_0

    int-to-long p2, p2

    add-long/2addr p0, p2

    goto :goto_0

    :cond_0
    int-to-long p2, p2

    sub-long/2addr p0, p2

    .line 128
    :goto_0
    new-instance p2, Ljava/sql/Time;

    invoke-direct {p2, p0, p1}, Ljava/sql/Time;-><init>(J)V

    return-object p2

    .line 131
    :cond_1
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    .line 134
    new-instance p0, Ljava/sql/Time;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/TimeUtil;->jdbcCompliantZoneShift(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Date;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Ljava/sql/Time;-><init>(J)V

    return-object p0

    :cond_2
    return-object p3
.end method

.method public static changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;
    .locals 1

    if-eqz p0, :cond_2

    .line 161
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseTimezone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {p4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    .line 164
    invoke-virtual {p0, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xf

    .line 166
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/16 p4, 0x10

    invoke-virtual {p0, p4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p2, p0

    .line 167
    invoke-static {p5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    .line 168
    invoke-virtual {p0, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 170
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    add-int/2addr p1, p3

    sub-int/2addr p2, p1

    .line 172
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    if-eqz p6, :cond_0

    int-to-long p2, p2

    add-long/2addr p0, p2

    goto :goto_0

    :cond_0
    int-to-long p2, p2

    sub-long/2addr p0, p2

    .line 180
    :goto_0
    new-instance p2, Ljava/sql/Timestamp;

    invoke-direct {p2, p0, p1}, Ljava/sql/Timestamp;-><init>(J)V

    return-object p2

    .line 183
    :cond_1
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    .line 186
    new-instance p0, Ljava/sql/Timestamp;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/TimeUtil;->jdbcCompliantZoneShift(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Date;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 188
    invoke-virtual {p3}, Ljava/sql/Timestamp;->getNanos()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->setNanos(I)V

    return-object p0

    :cond_2
    return-object p3
.end method

.method static final fastDateCreate(IIILjava/util/Calendar;)Ljava/sql/Date;
    .locals 8

    if-nez p3, :cond_0

    .line 264
    new-instance p3, Ljava/util/GregorianCalendar;

    invoke-direct {p3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 266
    :cond_0
    monitor-enter p3

    .line 267
    :try_start_0
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 269
    :try_start_1
    invoke-virtual {p3}, Ljava/util/Calendar;->clear()V

    add-int/lit8 v2, p1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p3

    move v1, p0

    move v3, p2

    .line 272
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p0, 0xe

    const/4 p1, 0x0

    .line 273
    invoke-virtual {p3, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 275
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 277
    new-instance p2, Ljava/sql/Date;

    invoke-direct {p2, p0, p1}, Ljava/sql/Date;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :try_start_2
    invoke-virtual {p3, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 277
    monitor-exit p3

    return-object p2

    :catchall_0
    move-exception p0

    .line 281
    invoke-virtual {p3, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 279
    throw p0

    :catchall_1
    move-exception p0

    .line 281
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method static final fastDateCreate(ZLjava/util/Calendar;Ljava/util/Calendar;III)Ljava/sql/Date;
    .locals 7

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    const-string p0, "GMT"

    .line 237
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    :cond_0
    move-object p2, p1

    .line 243
    :cond_1
    monitor-enter p2

    .line 244
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 246
    :try_start_1
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    const/16 p1, 0xe

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p2, p1, v0}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v2, p4, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move v1, p3

    move v3, p5

    .line 250
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 252
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    .line 254
    new-instance p1, Ljava/sql/Date;

    invoke-direct {p1, p3, p4}, Ljava/sql/Date;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    :try_start_2
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 254
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 258
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 256
    throw p1

    :catchall_1
    move-exception p0

    .line 258
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method static final fastTimeCreate(IIILjava/util/Calendar;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-ltz p0, :cond_3

    const/16 v0, 0x17

    if-gt p0, v0, :cond_3

    if-ltz p1, :cond_2

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_2

    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    if-nez p3, :cond_0

    .line 339
    new-instance p3, Ljava/util/GregorianCalendar;

    invoke-direct {p3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 341
    :cond_0
    monitor-enter p3

    .line 342
    :try_start_0
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 344
    :try_start_1
    invoke-virtual {p3}, Ljava/util/Calendar;->clear()V

    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p3

    move v4, p0

    move v5, p1

    move v6, p2

    .line 347
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 349
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 351
    new-instance p2, Ljava/sql/Time;

    invoke-direct {p2, p0, p1}, Ljava/sql/Time;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :try_start_2
    invoke-virtual {p3, p4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 351
    monitor-exit p3

    return-object p2

    :catchall_0
    move-exception p0

    .line 355
    invoke-virtual {p3, p4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 353
    throw p0

    :catchall_1
    move-exception p0

    .line 355
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 334
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal minute value \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' for java.sql.Time type in value \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S1009"

    invoke-static {p0, p1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    .line 328
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal minute value \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' for java.sql.Time type in value \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S1009"

    invoke-static {p0, p1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    .line 322
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal hour value \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' for java.sql.Time type in value \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S1009"

    invoke-static {p0, p1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method static final fastTimeCreate(Ljava/util/Calendar;IIILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/Time;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-ltz p1, :cond_2

    const/16 v0, 0x18

    if-gt p1, v0, :cond_2

    if-ltz p2, :cond_1

    const/16 v0, 0x3b

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_0

    if-gt p3, v0, :cond_0

    .line 303
    monitor-enter p0

    .line 304
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 306
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    .line 309
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 311
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 313
    new-instance p3, Ljava/sql/Time;

    invoke-direct {p3, p1, p2}, Ljava/sql/Time;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :try_start_2
    invoke-virtual {p0, p4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 313
    monitor-exit p0

    return-object p3

    :catchall_0
    move-exception p1

    .line 317
    invoke-virtual {p0, p4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 315
    throw p1

    :catchall_1
    move-exception p1

    .line 317
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 298
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal minute value \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' for java.sql.Time type in value \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S1009"

    invoke-static {p0, p1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    .line 292
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal minute value \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' for java.sql.Time type in value \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S1009"

    invoke-static {p0, p1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    .line 286
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal hour value \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\' for java.sql.Time type in value \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/TimeUtil;->timeFormattedString(III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S1009"

    invoke-static {p0, p1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method static final fastTimestampCreate(Ljava/util/TimeZone;IIIIIII)Ljava/sql/Timestamp;
    .locals 8

    if-nez p0, :cond_0

    .line 403
    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    move-object p0, v0

    .line 404
    :goto_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    add-int/lit8 v3, p2, -0x1

    move-object v1, p0

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 407
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 409
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    .line 411
    new-instance p2, Ljava/sql/Timestamp;

    invoke-direct {p2, p0, p1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 412
    invoke-virtual {p2, p7}, Ljava/sql/Timestamp;->setNanos(I)V

    return-object p2
.end method

.method static final fastTimestampCreate(ZLjava/util/Calendar;Ljava/util/Calendar;IIIIIII)Ljava/sql/Timestamp;
    .locals 10

    move-object v8, p2

    move/from16 v0, p9

    .line 361
    monitor-enter p2

    .line 362
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 364
    :try_start_1
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    add-int/lit8 v3, p4, -0x1

    move-object v1, p2

    move v2, p3

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 367
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/16 v1, 0xf

    .line 372
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v2, v4

    if-nez p1, :cond_0

    const-string v4, "GMT"

    .line 375
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, p1

    .line 377
    :goto_0
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 379
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 381
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v1, v3

    sub-int v1, v2, v1

    :cond_1
    if-eqz v0, :cond_2

    const/16 v2, 0xe

    const v3, 0xf4240

    .line 386
    div-int v3, v0, v3

    invoke-virtual {p2, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 389
    :cond_2
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 391
    new-instance v4, Ljava/sql/Timestamp;

    int-to-long v5, v1

    add-long/2addr v2, v5

    invoke-direct {v4, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    .line 393
    invoke-virtual {v4, v0}, Ljava/sql/Timestamp;->setNanos(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :try_start_2
    invoke-virtual {p2, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 395
    monitor-exit p2

    return-object v4

    :catchall_0
    move-exception v0

    .line 399
    invoke-virtual {p2, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 397
    throw v0

    :catchall_1
    move-exception v0

    .line 399
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static formatNanos(IZZ)Ljava/lang/String;
    .locals 3

    const v0, 0x3b9ac9ff

    if-le p0, v0, :cond_0

    const v0, 0x5f5e100

    .line 488
    rem-int/2addr p0, v0

    :cond_0
    if-eqz p2, :cond_1

    .line 492
    div-int/lit16 p0, p0, 0x3e8

    :cond_1
    if-eqz p1, :cond_6

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    const/4 p1, 0x6

    goto :goto_0

    :cond_3
    const/16 p1, 0x9

    .line 501
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_4

    const-string p2, "000000"

    goto :goto_1

    :cond_4
    const-string p2, "000000000"

    .line 504
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    .line 508
    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x30

    if-ne p2, v0, :cond_5

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 512
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_3
    const-string p0, "0"

    return-object p0
.end method

.method public static getCanonicalTimezone(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 433
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 436
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_2

    .line 437
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GMT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 442
    :cond_2
    const-class v0, Lcom/mysql/jdbc/TimeUtil;

    monitor-enter v0

    .line 443
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    if-nez v1, :cond_3

    .line 444
    invoke-static {p1}, Lcom/mysql/jdbc/TimeUtil;->loadTimeZoneMappings(Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 446
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    sget-object v0, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    .line 453
    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string p0, "TimeUtil.UnrecognizedTimezoneId"

    invoke-static {p0, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "01S00"

    invoke-static {p0, v0, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    .line 446
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getCurrentTimeNanosOrMillis()J
    .locals 3

    .line 77
    sget-object v0, Lcom/mysql/jdbc/TimeUtil;->systemNanoTimeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 79
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/TimeUtil;->systemNanoTimeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 89
    :catch_0
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getDefaultTimeZone(Z)Ljava/util/TimeZone;
    .locals 0

    if-eqz p0, :cond_0

    .line 73
    sget-object p0, Lcom/mysql/jdbc/TimeUtil;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    :goto_0
    invoke-virtual {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    goto :goto_0

    :goto_1
    check-cast p0, Ljava/util/TimeZone;

    return-object p0
.end method

.method private static jdbcCompliantZoneShift(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Date;)J
    .locals 4

    if-nez p0, :cond_0

    .line 200
    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 203
    :cond_0
    monitor-enter p0

    .line 206
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 210
    :try_start_1
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p2, 0x1

    .line 212
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, p2, v2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x2

    .line 213
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, p2, v2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x5

    .line 214
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, p2, v2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xb

    .line 216
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, p2, v2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 217
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, p2, v2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xd

    .line 218
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, p2, v2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xe

    .line 219
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, p2, v2}, Ljava/util/Calendar;->set(II)V

    .line 221
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 225
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 221
    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception p2

    .line 225
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 224
    throw p2

    :catchall_1
    move-exception p1

    .line 227
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private static loadTimeZoneMappings(Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 524
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    .line 526
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    const-class v1, Lcom/mysql/jdbc/TimeUtil;

    const-string v2, "/com/mysql/jdbc/TimeZoneMapping.properties"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 533
    sget-object v3, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 534
    sget-object v3, Lcom/mysql/jdbc/TimeUtil;->timeZoneMappings:Ljava/util/Properties;

    invoke-virtual {v3, v2, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    const-string v0, "TimeUtil.LoadTimeZoneMappingError"

    .line 528
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "01S00"

    invoke-static {v0, v1, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static nanoTimeAvailable()Z
    .locals 1

    .line 69
    sget-object v0, Lcom/mysql/jdbc/TimeUtil;->systemNanoTimeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static timeFormattedString(III)Ljava/lang/String;
    .locals 3

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    const-string v2, "0"

    .line 462
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    .line 466
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p1, v1, :cond_1

    const-string p0, "0"

    .line 469
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    .line 473
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p2, v1, :cond_2

    const-string p0, "0"

    .line 476
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static truncateFractionalSeconds(Ljava/sql/Timestamp;)Ljava/sql/Timestamp;
    .locals 3

    .line 540
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    const/4 p0, 0x0

    .line 541
    invoke-virtual {v0, p0}, Ljava/sql/Timestamp;->setNanos(I)V

    return-object v0
.end method
