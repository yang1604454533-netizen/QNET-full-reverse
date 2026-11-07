.class public Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;
.super Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;
.source "MysqlXAConnection.java"

# interfaces
.implements Ljavax/sql/XAConnection;
.implements Ljavax/transaction/xa/XAResource;


# static fields
.field private static final JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final MAX_COMMAND_LENGTH:I = 0x12c

.field private static final MYSQL_ERROR_CODES_TO_XA_ERROR_CODES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private log:Lcom/mysql/jdbc/log/Log;

.field protected logXaCommands:Z

.field private underlyingConnection:Lcom/mysql/jdbc/Connection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x575

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x576

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x577

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x578

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x579

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x57a

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a0

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x64d

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x64e

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->MYSQL_ERROR_CODES_TO_XA_ERROR_CODES:Ljava/util/Map;

    .line 92
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.mysql.jdbc.jdbc2.optional.JDBC4MysqlXAConnection"

    .line 94
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/Connection;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    .line 104
    sput-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/Connection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlPooledConnection;-><init>(Lcom/mysql/jdbc/Connection;)V

    .line 122
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    .line 123
    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->log:Lcom/mysql/jdbc/log/Log;

    .line 124
    iput-boolean p2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->logXaCommands:Z

    return-void
.end method

.method private static appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V
    .locals 2

    .line 590
    invoke-interface {p1}, Ljavax/transaction/xa/Xid;->getGlobalTransactionId()[B

    move-result-object v0

    .line 591
    invoke-interface {p1}, Ljavax/transaction/xa/Xid;->getBranchQualifier()[B

    move-result-object v1

    if-eqz v0, :cond_0

    .line 594
    invoke-static {p0, v0}, Lcom/mysql/jdbc/StringUtils;->appendAsHex(Ljava/lang/StringBuilder;[B)V

    :cond_0
    const/16 v0, 0x2c

    .line 597
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    .line 599
    invoke-static {p0, v1}, Lcom/mysql/jdbc/StringUtils;->appendAsHex(Ljava/lang/StringBuilder;[B)V

    .line 602
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 603
    invoke-interface {p1}, Ljavax/transaction/xa/Xid;->getFormatId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/mysql/jdbc/StringUtils;->appendAsHex(Ljava/lang/StringBuilder;I)V

    return-void
.end method

.method private dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 555
    :try_start_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->logXaCommands:Z

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->log:Lcom/mysql/jdbc/log/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing XA statement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/log/Log;->logDebug(Ljava/lang/Object;)V

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 562
    :try_start_1
    invoke-interface {v1, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 564
    invoke-interface {v1}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 572
    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 568
    :goto_0
    :try_start_3
    invoke-static {p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v0, :cond_2

    .line 572
    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3

    .line 570
    :catch_3
    :cond_2
    throw p1
.end method

.method protected static getInstance(Lcom/mysql/jdbc/Connection;Z)Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 109
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;-><init>(Lcom/mysql/jdbc/Connection;Z)V

    return-object v0

    .line 113
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->JDBC_4_XA_CONNECTION_WRAPPER_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;

    return-object p0
.end method

.method protected static mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;
    .locals 4

    .line 580
    sget-object v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->MYSQL_ERROR_CODES_TO_XA_ERROR_CODES:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 583
    new-instance v2, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljavax/transaction/xa/XAException;

    return-object p0

    .line 586
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;

    const/4 v2, -0x7

    const-string v3, "MysqlXAConnection.003"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljavax/transaction/xa/XAException;

    return-object p0
.end method

.method protected static recover(Ljava/sql/Connection;I)[Ljavax/transaction/xa/Xid;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v3, 0x800000

    and-int/2addr v3, p1

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-nez p1, :cond_2

    goto :goto_2

    .line 273
    :cond_2
    new-instance p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;

    const/4 p1, -0x5

    const-string v0, "MysqlXAConnection.001"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v4}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 283
    new-array p0, v2, [Ljavax/transaction/xa/Xid;

    return-object p0

    .line 289
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v0, "XA RECOVER"

    .line 295
    invoke-interface {p0, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 297
    :goto_3
    :try_start_2
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 298
    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v3

    const/4 v5, 0x2

    .line 299
    invoke-interface {v0, v5}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    .line 300
    invoke-interface {v0, v6}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v6

    const/4 v7, 0x4

    .line 301
    invoke-interface {v0, v7}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v7

    .line 303
    new-array v8, v5, [B

    .line 304
    new-array v9, v6, [B

    .line 306
    array-length v10, v7

    add-int v11, v5, v6

    if-ne v10, v11, :cond_5

    .line 310
    invoke-static {v7, v2, v8, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    invoke-static {v7, v5, v9, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    new-instance v5, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;

    invoke-direct {v5, v8, v9, v3}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXid;-><init>([B[BI)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 307
    :cond_5
    new-instance p1, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;

    const/16 v1, 0x69

    const-string v2, "MysqlXAConnection.002"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2, v4}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    if-eqz v0, :cond_7

    .line 320
    :try_start_3
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 322
    invoke-static {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object p0

    throw p0

    :cond_7
    :goto_4
    if-eqz p0, :cond_8

    .line 328
    :try_start_4
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    .line 330
    invoke-static {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object p0

    throw p0

    .line 335
    :cond_8
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 337
    new-array v0, p0, [Ljavax/transaction/xa/Xid;

    .line 338
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    :goto_6
    if-ge v2, p0, :cond_9

    .line 341
    aget-object v1, p1, v2

    check-cast v1, Ljavax/transaction/xa/Xid;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_8

    :catch_2
    move-exception p1

    move-object v4, v0

    goto :goto_7

    :catchall_1
    move-exception p1

    move-object v0, v4

    goto :goto_8

    :catch_3
    move-exception p1

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object p0, v4

    move-object v0, p0

    goto :goto_8

    :catch_4
    move-exception p1

    move-object p0, v4

    .line 316
    :goto_7
    :try_start_5
    invoke-static {p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object p1

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_8
    if-eqz v0, :cond_a

    .line 320
    :try_start_6
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    :catch_5
    move-exception p0

    .line 322
    invoke-static {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object p0

    throw p0

    :cond_a
    :goto_9
    if-eqz p0, :cond_b

    .line 328
    :try_start_7
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 330
    invoke-static {p0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->mapXAExceptionFromSQLException(Ljava/sql/SQLException;)Ljavax/transaction/xa/XAException;

    move-result-object p0

    throw p0

    .line 318
    :cond_b
    :goto_a
    throw p1
.end method


# virtual methods
.method public commit(Ljavax/transaction/xa/Xid;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "XA COMMIT "

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V

    if-eqz p2, :cond_0

    const-string p1, " ONE PHASE"

    .line 541
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p1, 0x0

    .line 545
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    iget-object p2, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {p2, p1}, Lcom/mysql/jdbc/Connection;->setInGlobalTx(Z)V

    return-void

    :catchall_0
    move-exception p2

    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setInGlobalTx(Z)V

    .line 547
    throw p2
.end method

.method public end(Ljavax/transaction/xa/Xid;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "XA END "

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V

    const/high16 p1, 0x2000000

    if-eq p2, p1, :cond_1

    const/high16 p1, 0x4000000

    if-eq p2, p1, :cond_2

    const/high16 p1, 0x20000000

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    new-instance p1, Ljavax/transaction/xa/XAException;

    const/4 p2, -0x5

    invoke-direct {p1, p2}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw p1

    :cond_1
    const-string p1, " SUSPEND"

    .line 456
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;

    return-void
.end method

.method public forget(Ljavax/transaction/xa/Xid;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized getConnection()Ljava/sql/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 613
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->getConnection(ZZ)Ljava/sql/Connection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 612
    monitor-exit p0

    throw v0
.end method

.method public getTransactionTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getXAResource()Ljavax/transaction/xa/XAResource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-object p0
.end method

.method public isSameRM(Ljavax/transaction/xa/XAResource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 199
    instance-of v0, p1, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    check-cast p1, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;

    iget-object p1, p1, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->isSameResource(Lcom/mysql/jdbc/Connection;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public prepare(Ljavax/transaction/xa/Xid;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "XA PREPARE "

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;

    const/4 p1, 0x0

    return p1
.end method

.method public recover(I)[Ljavax/transaction/xa/Xid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->recover(Ljava/sql/Connection;I)[Ljavax/transaction/xa/Xid;

    move-result-object p1

    return-object p1
.end method

.method public rollback(Ljavax/transaction/xa/Xid;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "XA ROLLBACK "

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V

    const/4 p1, 0x0

    .line 413
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/Connection;->setInGlobalTx(Z)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1, p1}, Lcom/mysql/jdbc/Connection;->setInGlobalTx(Z)V

    .line 415
    throw v0
.end method

.method public setTransactionTimeout(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public start(Ljavax/transaction/xa/Xid;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "XA START "

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-static {v0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->appendXid(Ljava/lang/StringBuilder;Ljavax/transaction/xa/Xid;)V

    if-eqz p2, :cond_2

    const/high16 p1, 0x200000

    if-eq p2, p1, :cond_1

    const/high16 p1, 0x8000000

    if-ne p2, p1, :cond_0

    const-string p1, " RESUME"

    .line 500
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 506
    :cond_0
    new-instance p1, Ljavax/transaction/xa/XAException;

    const/4 p2, -0x5

    invoke-direct {p1, p2}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw p1

    :cond_1
    const-string p1, " JOIN"

    .line 497
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->dispatchCommand(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 511
    iget-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/MysqlXAConnection;->underlyingConnection:Lcom/mysql/jdbc/Connection;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/mysql/jdbc/Connection;->setInGlobalTx(Z)V

    return-void
.end method
