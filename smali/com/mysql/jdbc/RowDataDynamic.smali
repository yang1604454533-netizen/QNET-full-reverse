.class public Lcom/mysql/jdbc/RowDataDynamic;
.super Ljava/lang/Object;
.source "RowDataDynamic.java"

# interfaces
.implements Lcom/mysql/jdbc/RowData;


# instance fields
.field private columnCount:I

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private index:I

.field private io:Lcom/mysql/jdbc/MysqlIO;

.field private isAfterEnd:Z

.field private isBinaryEncoded:Z

.field private metadata:[Lcom/mysql/jdbc/Field;

.field private moreResultsExisted:Z

.field private nextRow:Lcom/mysql/jdbc/ResultSetRow;

.field private noMoreRows:Z

.field private owner:Lcom/mysql/jdbc/ResultSetImpl;

.field private streamerClosed:Z

.field private useBufferRowExplicit:Z

.field private wasEmpty:Z


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MysqlIO;I[Lcom/mysql/jdbc/Field;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->isAfterEnd:Z

    .line 46
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->noMoreRows:Z

    .line 48
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->isBinaryEncoded:Z

    .line 54
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->streamerClosed:Z

    .line 56
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->wasEmpty:Z

    .line 79
    iput-object p1, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    .line 80
    iput p2, p0, Lcom/mysql/jdbc/RowDataDynamic;->columnCount:I

    .line 81
    iput-boolean p4, p0, Lcom/mysql/jdbc/RowDataDynamic;->isBinaryEncoded:Z

    .line 82
    iput-object p3, p0, Lcom/mysql/jdbc/RowDataDynamic;->metadata:[Lcom/mysql/jdbc/Field;

    .line 83
    iget-object p1, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {p1}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/RowDataDynamic;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 84
    iget-object p1, p0, Lcom/mysql/jdbc/RowDataDynamic;->metadata:[Lcom/mysql/jdbc/Field;

    invoke-static {p1}, Lcom/mysql/jdbc/MysqlIO;->useBufferRowExplicit([Lcom/mysql/jdbc/Field;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/RowDataDynamic;->useBufferRowExplicit:Z

    return-void
.end method

.method private nextRecord()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 373
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->noMoreRows:Z

    if-nez v1, :cond_0

    .line 374
    iget-object v2, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v3, p0, Lcom/mysql/jdbc/RowDataDynamic;->metadata:[Lcom/mysql/jdbc/Field;

    iget v4, p0, Lcom/mysql/jdbc/RowDataDynamic;->columnCount:I

    iget-boolean v5, p0, Lcom/mysql/jdbc/RowDataDynamic;->isBinaryEncoded:Z

    const/16 v6, 0x3ef

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/mysql/jdbc/RowDataDynamic;->useBufferRowExplicit:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 377
    iget-object v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    if-nez v1, :cond_1

    .line 378
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->noMoreRows:Z

    .line 379
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->isAfterEnd:Z

    .line 380
    iget-object v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    iget-object v2, p0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/MysqlIO;->tackOnMoreStreamingResults(Lcom/mysql/jdbc/ResultSetImpl;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->moreResultsExisted:Z

    .line 382
    iget v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 383
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->wasEmpty:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 387
    iput-object v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    .line 388
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->isAfterEnd:Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RowDataDynamic.7"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RowDataDynamic.8"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RowDataDynamic.9"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/RowDataDynamic;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    const-string v3, "S1000"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 410
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 412
    throw v1

    :catch_1
    move-exception v1

    .line 391
    instance-of v2, v1, Lcom/mysql/jdbc/StreamingNotifiable;

    if-eqz v2, :cond_2

    .line 392
    move-object v2, v1

    check-cast v2, Lcom/mysql/jdbc/StreamingNotifiable;

    invoke-interface {v2}, Lcom/mysql/jdbc/StreamingNotifiable;->setWasStreamingResults()V

    .line 396
    :cond_2
    iput-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->noMoreRows:Z

    .line 399
    throw v1
.end method

.method private notSupported()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 417
    new-instance v0, Lcom/mysql/jdbc/OperationNotSupportedException;

    invoke-direct {v0}, Lcom/mysql/jdbc/OperationNotSupportedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addRow(Lcom/mysql/jdbc/ResultSetRow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    return-void
.end method

.method public afterLast()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    return-void
.end method

.method public beforeFirst()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    return-void
.end method

.method public beforeLast()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    return-void
.end method

.method public close()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 142
    iget-object v0, v1, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, v1, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v0, v0, Lcom/mysql/jdbc/ResultSetImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, v1

    const/4 v0, 0x0

    .line 153
    :goto_0
    monitor-enter v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 155
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/RowDataDynamic;->next()Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v6

    if-eqz v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 159
    rem-int/lit8 v5, v4, 0x64

    if-nez v5, :cond_2

    .line 160
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_a

    .line 165
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClobberStreamingResults()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNetTimeoutForStreamingResults()I

    move-result v6

    if-lez v6, :cond_7

    const-string v6, "net_write_timeout"

    .line 166
    invoke-interface {v0, v6}, Lcom/mysql/jdbc/MySQLConnection;->getServerVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 168
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    const-string v6, "60"

    .line 172
    :cond_5
    iget-object v7, v1, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v7}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 177
    :try_start_1
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->createStatement()Ljava/sql/Statement;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    :try_start_2
    move-object v8, v7

    check-cast v8, Lcom/mysql/jdbc/StatementImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SET net_write_timeout="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v0, v6}, Lcom/mysql/jdbc/StatementImpl;->executeSimpleNonQuery(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_7

    .line 181
    :try_start_3
    invoke-interface {v7}, Ljava/sql/Statement;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/sql/Statement;->close()V

    .line 180
    :cond_6
    throw v0

    .line 186
    :cond_7
    :goto_3
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUsageAdvisor()Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v5, :cond_a

    .line 189
    invoke-static {v0}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v0

    .line 191
    new-instance v15, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v6, 0x0

    const-string v7, ""

    iget-object v5, v1, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v5, v5, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v5, :cond_8

    const-string v5, "N/A"

    :goto_4
    move-object v8, v5

    goto :goto_5

    :cond_8
    iget-object v5, v1, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v5, v5, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    iget-object v5, v5, Lcom/mysql/jdbc/StatementImpl;->currentCatalog:Ljava/lang/String;

    goto :goto_4

    :goto_5
    iget-object v5, v1, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-wide v9, v5, Lcom/mysql/jdbc/ResultSetImpl;->connectionId:J

    iget-object v5, v1, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v5, v5, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    if-nez v5, :cond_9

    const/4 v5, -0x1

    const/4 v11, -0x1

    goto :goto_6

    :cond_9
    iget-object v5, v1, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v5, v5, Lcom/mysql/jdbc/ResultSetImpl;->owningStatement:Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v5}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v5

    move v11, v5

    :goto_6
    const/4 v12, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v16, 0x0

    sget-object v18, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RowDataDynamic.2"

    invoke-static/range {v21 .. v21}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "RowDataDynamic.3"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RowDataDynamic.4"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RowDataDynamic.5"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RowDataDynamic.6"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v2, v2, Lcom/mysql/jdbc/ResultSetImpl;->pointOfOrigin:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v15

    move-object v4, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v2

    invoke-direct/range {v5 .. v20}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 201
    :cond_a
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v2, 0x0

    .line 203
    iput-object v2, v1, Lcom/mysql/jdbc/RowDataDynamic;->metadata:[Lcom/mysql/jdbc/Field;

    .line 204
    iput-object v2, v1, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    return-void

    :catchall_2
    move-exception v0

    .line 201
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public getAt(I)Lcom/mysql/jdbc/ResultSetRow;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentRowNumber()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    const/4 v0, -0x1

    return v0
.end method

.method public getOwner()Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    return-object v0
.end method

.method public hasNext()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 252
    iget-boolean v2, p0, Lcom/mysql/jdbc/RowDataDynamic;->streamerClosed:Z

    if-nez v2, :cond_1

    .line 253
    iget-object v2, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v2, p0}, Lcom/mysql/jdbc/MysqlIO;->closeStreamer(Lcom/mysql/jdbc/RowData;)V

    .line 254
    iput-boolean v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->streamerClosed:Z

    :cond_1
    return v0
.end method

.method public isAfterLast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 268
    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->isAfterEnd:Z

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 279
    iget v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDynamic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    const/4 v0, 0x0

    return v0
.end method

.method public isFirst()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 315
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    const/4 v0, 0x0

    return v0
.end method

.method public isLast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    const/4 v0, 0x0

    return v0
.end method

.method public moveRowRelative(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 342
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    return-void
.end method

.method public next()Lcom/mysql/jdbc/ResultSetRow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 354
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->nextRecord()V

    .line 356
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->streamerClosed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->moreResultsExisted:Z

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->io:Lcom/mysql/jdbc/MysqlIO;

    invoke-virtual {v0, p0}, Lcom/mysql/jdbc/MysqlIO;->closeStreamer(Lcom/mysql/jdbc/RowData;)V

    .line 358
    iput-boolean v1, p0, Lcom/mysql/jdbc/RowDataDynamic;->streamerClosed:Z

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    if-eqz v0, :cond_1

    .line 362
    iget v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_1

    .line 363
    iget v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->index:I

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->nextRow:Lcom/mysql/jdbc/ResultSetRow;

    return-object v0
.end method

.method public removeRow(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 429
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    return-void
.end method

.method public setCurrentRow(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 441
    invoke-direct {p0}, Lcom/mysql/jdbc/RowDataDynamic;->notSupported()V

    return-void
.end method

.method public setMetadata([Lcom/mysql/jdbc/Field;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/mysql/jdbc/RowDataDynamic;->metadata:[Lcom/mysql/jdbc/Field;

    return-void
.end method

.method public setOwner(Lcom/mysql/jdbc/ResultSetImpl;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/mysql/jdbc/RowDataDynamic;->owner:Lcom/mysql/jdbc/ResultSetImpl;

    return-void
.end method

.method public size()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public wasEmpty()Z
    .locals 1

    .line 461
    iget-boolean v0, p0, Lcom/mysql/jdbc/RowDataDynamic;->wasEmpty:Z

    return v0
.end method
