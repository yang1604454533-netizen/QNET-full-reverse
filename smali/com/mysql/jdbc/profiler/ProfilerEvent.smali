.class public Lcom/mysql/jdbc/profiler/ProfilerEvent;
.super Ljava/lang/Object;
.source "ProfilerEvent.java"


# static fields
.field public static final TYPE_EXECUTE:B = 0x4t

.field public static final TYPE_FETCH:B = 0x5t

.field public static final TYPE_OBJECT_CREATION:B = 0x1t

.field public static final TYPE_PREPARE:B = 0x2t

.field public static final TYPE_QUERY:B = 0x3t

.field public static final TYPE_SLOW_QUERY:B = 0x6t

.field public static final TYPE_WARN:B


# instance fields
.field protected catalog:Ljava/lang/String;

.field protected catalogIndex:I

.field protected connectionId:J

.field protected durationUnits:Ljava/lang/String;

.field protected eventCreationPointDesc:Ljava/lang/String;

.field protected eventCreationPointIndex:I

.field protected eventCreationTime:J

.field protected eventDuration:J

.field protected eventType:B

.field protected hostName:Ljava/lang/String;

.field protected hostNameIndex:I

.field protected message:Ljava/lang/String;

.field protected resultSetId:I

.field protected statementId:I


# direct methods
.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-byte p1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventType:B

    .line 170
    iput-wide p4, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->connectionId:J

    .line 171
    iput p6, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->statementId:I

    .line 172
    iput p7, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->resultSetId:I

    .line 173
    iput-wide p8, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationTime:J

    .line 174
    iput-wide p10, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventDuration:J

    .line 175
    iput-object p12, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->durationUnits:Ljava/lang/String;

    .line 176
    iput-object p13, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationPointDesc:Ljava/lang/String;

    .line 177
    iput-object p15, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->message:Ljava/lang/String;

    return-void
.end method

.method private static readBytes([BI)[B
    .locals 3

    .line 418
    invoke-static {p0, p1}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readInt([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    .line 422
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 423
    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static readInt([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 407
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p1, v1

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private static readLong([BI)J
    .locals 5

    add-int/lit8 v0, p1, 0x1

    .line 412
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v1, p1

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    const/16 v0, 0x8

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    const/16 p1, 0x10

    shl-long/2addr v3, p1

    or-long/2addr v0, v3

    add-int/lit8 p1, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    const/16 p1, 0x20

    shl-long/2addr v3, p1

    or-long/2addr v0, v3

    add-int/lit8 p1, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    const/16 p1, 0x30

    shl-long/2addr v3, p1

    or-long/2addr v0, v3

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static unpack([B)Lcom/mysql/jdbc/profiler/ProfilerEvent;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 266
    aget-byte v3, v0, v1

    const/4 v1, 0x1

    .line 267
    invoke-static {v0, v1}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readInt([BI)I

    move-result v1

    int-to-long v6, v1

    const/16 v1, 0x9

    .line 269
    invoke-static {v0, v1}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readInt([BI)I

    move-result v8

    const/16 v1, 0xd

    .line 271
    invoke-static {v0, v1}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readInt([BI)I

    move-result v9

    const/16 v1, 0x11

    .line 273
    invoke-static {v0, v1}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readLong([BI)J

    move-result-wide v10

    const/16 v1, 0x19

    .line 275
    invoke-static {v0, v1}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readLong([BI)J

    move-result-wide v12

    const/16 v1, 0x1d

    .line 278
    invoke-static {v0, v1}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readBytes([BI)[B

    move-result-object v1

    const/16 v2, 0x21

    if-eqz v1, :cond_0

    .line 282
    array-length v4, v1

    add-int/2addr v2, v4

    .line 285
    :cond_0
    invoke-static {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readInt([BI)I

    add-int/lit8 v2, v2, 0x4

    .line 287
    invoke-static {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readBytes([BI)[B

    move-result-object v4

    add-int/lit8 v2, v2, 0x4

    if-eqz v4, :cond_1

    .line 291
    array-length v5, v4

    add-int/2addr v2, v5

    .line 294
    :cond_1
    invoke-static {v0, v2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->readBytes([BI)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 298
    array-length v2, v0

    .line 301
    :cond_2
    new-instance v18, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const-string v5, ""

    const-string v14, ""

    const-string v2, "ISO8859_1"

    invoke-static {v1, v2}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISO8859_1"

    invoke-static {v4, v2}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const-string v2, "ISO8859_1"

    invoke-static {v0, v2}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v2, v18

    move-object v4, v5

    move-object v5, v14

    move-object v14, v1

    invoke-direct/range {v2 .. v17}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v18
.end method

.method private static writeBytes([B[BI)I
    .locals 2

    .line 399
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeInt(I[BI)I

    move-result p2

    .line 401
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    array-length p0, p0

    add-int/2addr p2, p0

    return p2
.end method

.method private static writeInt(I[BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    .line 377
    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 378
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 379
    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    .line 380
    aput-byte p0, p1, v0

    return p2
.end method

.method private static writeLong(J[BI)I
    .locals 3

    add-int/lit8 v0, p3, 0x1

    const-wide/16 v1, 0xff

    and-long/2addr v1, p0

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 386
    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 387
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 388
    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    const/16 v1, 0x18

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 389
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 390
    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    const/16 v1, 0x28

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 391
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    ushr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 392
    aput-byte v1, p2, p3

    add-int/lit8 p3, v0, 0x1

    const/16 v1, 0x38

    ushr-long/2addr p0, v1

    long-to-int p0, p0

    int-to-byte p0, p0

    .line 393
    aput-byte p0, p2, v0

    return p3
.end method


# virtual methods
.method public getCatalog()Ljava/lang/String;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->catalog:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionId()J
    .locals 2

    .line 443
    iget-wide v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->connectionId:J

    return-wide v0
.end method

.method public getDurationUnits()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->durationUnits:Ljava/lang/String;

    return-object v0
.end method

.method public getEventCreationPointAsString()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationPointDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getEventCreationTime()J
    .locals 2

    .line 453
    iget-wide v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationTime:J

    return-wide v0
.end method

.method public getEventDuration()J
    .locals 2

    .line 462
    iget-wide v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventDuration:J

    return-wide v0
.end method

.method public getEventType()B
    .locals 1

    .line 478
    iget-byte v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventType:B

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResultSetId()I
    .locals 1

    .line 487
    iget v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->resultSetId:I

    return v0
.end method

.method public getStatementId()I
    .locals 1

    .line 496
    iget v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->statementId:I

    return v0
.end method

.method public pack()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getEventCreationPointAsString()Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationPointDesc:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationPointDesc:Ljava/lang/String;

    const-string v2, "ISO8859_1"

    invoke-static {v0, v2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 323
    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x1d

    goto :goto_0

    :cond_0
    const/16 v2, 0x21

    move-object v0, v1

    .line 330
    :goto_0
    iget-object v3, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->message:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 331
    iget-object v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->message:Ljava/lang/String;

    const-string v3, "ISO8859_1"

    invoke-static {v1, v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 332
    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x4

    .line 339
    :goto_1
    iget-object v3, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->durationUnits:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 340
    iget-object v3, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->durationUnits:Ljava/lang/String;

    const-string v4, "ISO8859_1"

    invoke-static {v3, v4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 341
    array-length v4, v3

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x4

    const-string v3, ""

    const-string v4, "ISO8859_1"

    .line 344
    invoke-static {v3, v4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 347
    :goto_2
    new-array v2, v2, [B

    const/4 v4, 0x1

    .line 351
    iget-byte v5, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventType:B

    const/4 v6, 0x0

    aput-byte v5, v2, v6

    .line 352
    iget-wide v7, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->connectionId:J

    invoke-static {v7, v8, v2, v4}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeLong(J[BI)I

    move-result v4

    .line 353
    iget v5, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->statementId:I

    invoke-static {v5, v2, v4}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeInt(I[BI)I

    move-result v4

    .line 354
    iget v5, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->resultSetId:I

    invoke-static {v5, v2, v4}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeInt(I[BI)I

    move-result v4

    .line 355
    iget-wide v7, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationTime:J

    invoke-static {v7, v8, v2, v4}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeLong(J[BI)I

    move-result v4

    .line 356
    iget-wide v7, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventDuration:J

    invoke-static {v7, v8, v2, v4}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeLong(J[BI)I

    move-result v4

    .line 357
    invoke-static {v3, v2, v4}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeBytes([B[BI)I

    move-result v3

    .line 358
    iget v4, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationPointIndex:I

    invoke-static {v4, v2, v3}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeInt(I[BI)I

    move-result v3

    if-eqz v0, :cond_3

    .line 361
    invoke-static {v0, v2, v3}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeBytes([B[BI)I

    move-result v0

    goto :goto_3

    .line 363
    :cond_3
    invoke-static {v6, v2, v3}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeInt(I[BI)I

    move-result v0

    :goto_3
    if-eqz v1, :cond_4

    .line 367
    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeBytes([B[BI)I

    goto :goto_4

    .line 369
    :cond_4
    invoke-static {v6, v2, v0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->writeInt(I[BI)I

    :goto_4
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    iget-byte v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventType:B

    packed-switch v1, :pswitch_data_0

    const-string v1, "UNKNOWN"

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const-string v1, "SLOW QUERY"

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v1, "FETCH"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v1, "EXECUTE"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v1, "QUERY"

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string v1, "PREPARE"

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    const-string v1, "CONSTRUCT"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_6
    const-string v1, "WARN"

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " created: "

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " duration: "

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-wide v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " connection: "

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-wide v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->connectionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " statement: "

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->statementId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultset: "

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->resultSetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    iget-object v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->message:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " message: "

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationPointDesc:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "\n\nEvent Created at:\n"

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v1, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;->eventCreationPointDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
