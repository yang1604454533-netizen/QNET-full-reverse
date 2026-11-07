.class public Lcom/mysql/jdbc/PreparedStatement;
.super Lcom/mysql/jdbc/StatementImpl;
.source "PreparedStatement.java"

# interfaces
.implements Ljava/sql/PreparedStatement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;,
        Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;,
        Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;,
        Lcom/mysql/jdbc/PreparedStatement$ParseInfo;,
        Lcom/mysql/jdbc/PreparedStatement$EndPoint;,
        Lcom/mysql/jdbc/PreparedStatement$BatchParams;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[B

.field private static final JDBC_4_PSTMT_2_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final JDBC_4_PSTMT_3_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final JDBC_4_PSTMT_4_ARG_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field protected batchCommandIndex:I

.field protected batchHasPlainStatements:Z

.field protected batchedValuesClause:Ljava/lang/String;

.field private charsetEncoder:Ljava/nio/charset/CharsetEncoder;

.field private compensateForOnDuplicateKeyUpdate:Z

.field private dbmd:Ljava/sql/DatabaseMetaData;

.field private ddf:Ljava/text/SimpleDateFormat;

.field private doPingInstead:Z

.field protected firstCharOfStmt:C

.field protected isLoadDataQuery:Z

.field protected isNull:[Z

.field private isStream:[Z

.field protected numberOfExecutions:I

.field protected originalSql:Ljava/lang/String;

.field protected parameterCount:I

.field protected parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

.field private parameterStreams:[Ljava/io/InputStream;

.field protected parameterTypes:[I

.field private parameterValues:[[B

.field protected parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

.field private pstmtResultMetaData:Ljava/sql/ResultSetMetaData;

.field protected rewrittenBatchSize:I

.field protected serverSupportsFracSecs:Z

.field private staticSqlStrings:[[B

.field private streamConvertBuf:[B

.field private streamLengths:[I

.field private tdf:Ljava/text/SimpleDateFormat;

.field private tsdf:Ljava/text/SimpleDateFormat;

.field protected useTrueBoolean:Z

.field protected usingAnsiMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 84
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :try_start_0
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.mysql.jdbc.JDBC42PreparedStatement"

    goto :goto_0

    :cond_0
    const-string v0, "com.mysql.jdbc.JDBC4PreparedStatement"

    .line 87
    :goto_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_2_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 88
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v7, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v7, v4, v5

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_3_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 89
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v4, v1, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v2

    const-class v2, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_4_ARG_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    .line 99
    sput-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_2_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 100
    sput-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_3_ARG_CTOR:Ljava/lang/reflect/Constructor;

    .line 101
    sput-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_4_ARG_CTOR:Ljava/lang/reflect/Constructor;

    :goto_1
    const/16 v0, 0x10

    .line 625
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mysql/jdbc/PreparedStatement;->HEX_DIGITS:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 792
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/StatementImpl;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 660
    iput-boolean p1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    const/4 p2, 0x0

    .line 662
    iput-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 668
    iput-char p1, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    .line 671
    iput-boolean p1, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    .line 673
    iput-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    .line 675
    iput-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    .line 677
    iput p1, p0, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I

    .line 680
    iput-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 687
    iput-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    .line 689
    move-object v0, p2

    check-cast v0, [[B

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    .line 695
    iput-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    .line 701
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    .line 703
    iput-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 705
    iput-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    .line 707
    iput-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    .line 716
    iput-boolean p1, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    .line 724
    iput-boolean p1, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    const/4 p2, -0x1

    .line 730
    iput p2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    .line 2236
    iput p1, p0, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    .line 794
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->detectFractionalSecondsSupport()V

    .line 795
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getCompensateOnDuplicateKeyUpdateCounts()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 816
    invoke-direct {p0, p1, p3}, Lcom/mysql/jdbc/StatementImpl;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 660
    iput-boolean p3, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    const/4 v0, 0x0

    .line 662
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 668
    iput-char p3, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    .line 671
    iput-boolean p3, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    .line 673
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    .line 675
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    .line 677
    iput p3, p0, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I

    .line 680
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 687
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    .line 689
    move-object v1, v0

    check-cast v1, [[B

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    .line 695
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    .line 701
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    .line 703
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 705
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    .line 707
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    .line 716
    iput-boolean p3, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    .line 724
    iput-boolean p3, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    const/4 v0, -0x1

    .line 730
    iput v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    .line 2236
    iput p3, p0, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    if-eqz p2, :cond_1

    .line 822
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->detectFractionalSecondsSupport()V

    .line 823
    iput-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 825
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    const-string v0, "/* ping */"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead:Z

    .line 827
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object p3

    iput-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 829
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v0, 0x3

    const/16 v1, 0x15

    const/16 v2, 0x17

    invoke-interface {p3, v0, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result p3

    iput-boolean p3, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    .line 831
    new-instance p3, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-object v0, p3

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;-><init>(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;Ljava/sql/DatabaseMetaData;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;)V

    iput-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 833
    invoke-direct {p0}, Lcom/mysql/jdbc/PreparedStatement;->initializeFromParseInfo()V

    .line 835
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getCompensateOnDuplicateKeyUpdateCounts()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    .line 837
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getRequiresEscapingEncoder()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 838
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    :cond_0
    return-void

    :cond_1
    const-string p1, "PreparedStatement.0"

    .line 819
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string p3, "S1009"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 857
    invoke-direct {p0, p1, p3}, Lcom/mysql/jdbc/StatementImpl;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 660
    iput-boolean p3, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    const/4 v0, 0x0

    .line 662
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 668
    iput-char p3, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    .line 671
    iput-boolean p3, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    .line 673
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    .line 675
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    .line 677
    iput p3, p0, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I

    .line 680
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 687
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    .line 689
    move-object v1, v0

    check-cast v1, [[B

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    .line 695
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    .line 701
    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    .line 703
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 705
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    .line 707
    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    .line 716
    iput-boolean p3, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    .line 724
    iput-boolean p3, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    const/4 v0, -0x1

    .line 730
    iput v0, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    .line 2236
    iput p3, p0, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    if-eqz p2, :cond_1

    .line 863
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->detectFractionalSecondsSupport()V

    .line 864
    iput-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 866
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object p2

    iput-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 868
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 p3, 0x3

    const/16 v0, 0x15

    const/16 v1, 0x17

    invoke-interface {p2, p3, v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result p2

    iput-boolean p2, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    .line 870
    iput-object p4, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    .line 872
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->useAnsiQuotedIdentifiers()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/mysql/jdbc/PreparedStatement;->usingAnsiMode:Z

    .line 874
    invoke-direct {p0}, Lcom/mysql/jdbc/PreparedStatement;->initializeFromParseInfo()V

    .line 876
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getCompensateOnDuplicateKeyUpdateCounts()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    .line 878
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getRequiresEscapingEncoder()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 879
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    :cond_0
    return-void

    :cond_1
    const-string p1, "PreparedStatement.1"

    .line 860
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string p3, "S1009"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected static canRewrite(Ljava/lang/String;ZII)Z
    .locals 10

    const-string v0, "INSERT"

    .line 5082
    invoke-static {p0, v0, p3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_3

    const-string v6, "SELECT"

    const-string v7, "\"\'`"

    const-string v8, "\"\'`"

    .line 5083
    sget-object v9, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    move v4, p3

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result p3

    if-eq p3, v3, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_2

    const-string p1, " UPDATE "

    .line 5087
    invoke-static {p2, p0, p1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_2

    const-string v6, "LAST_INSERT_ID"

    const-string v7, "\"\'`"

    const-string v8, "\"\'`"

    .line 5089
    sget-object v9, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result p0

    if-ne p0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    return v1

    :cond_3
    const-string p1, "REPLACE"

    .line 5095
    invoke-static {p0, p1, p3}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string v6, "SELECT"

    const-string v7, "\"\'`"

    const-string v8, "\"\'`"

    sget-object v9, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    move v4, p3

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result p0

    if-ne p0, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private checkAllParametersSet([BLjava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2211
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PreparedStatement.40"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string p3, "07001"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private doSSPSCompatibleTimezoneShift(ILjava/sql/Timestamp;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4314
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4315
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v1

    .line 4318
    :goto_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4319
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4322
    :try_start_2
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x1

    .line 4324
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    .line 4325
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    const/4 v6, 0x5

    .line 4326
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xb

    .line 4328
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xc

    .line 4329
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v9, 0xd

    .line 4330
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 4332
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x27

    .line 4334
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4335
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    .line 4337
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x30

    const/16 v12, 0xa

    if-ge v5, v12, :cond_1

    .line 4340
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4343
    :cond_1
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2d

    .line 4345
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v6, v12, :cond_2

    .line 4348
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4351
    :cond_2
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    .line 4353
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v7, v12, :cond_3

    .line 4356
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4359
    :cond_3
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    .line 4361
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v8, v12, :cond_4

    .line 4364
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4367
    :cond_4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4369
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v9, v12, :cond_5

    .line 4372
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4375
    :cond_5
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    .line 4377
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4378
    invoke-virtual {p2}, Ljava/sql/Timestamp;->getNanos()I

    move-result p2

    iget-boolean v4, p0, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z

    invoke-static {p2, v4, v3}, Lcom/mysql/jdbc/TimeUtil;->formatNanos(IZZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4379
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4381
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4388
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4386
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4387
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_0
    move-exception p1

    .line 4388
    :try_start_5
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4384
    throw p1

    :catchall_1
    move-exception p1

    .line 4386
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :catchall_2
    move-exception p1

    .line 4387
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method private final escapeblockFast([BLcom/mysql/jdbc/Buffer;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_5

    .line 1037
    aget-byte v2, p1, v0

    const/16 v3, 0x5c

    if-nez v2, :cond_1

    if-le v0, v1, :cond_0

    sub-int v2, v0, v1

    .line 1042
    invoke-virtual {p2, p1, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1046
    :cond_0
    invoke-virtual {p2, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    const/16 v1, 0x30

    .line 1047
    invoke-virtual {p2, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_1
    if-eq v2, v3, :cond_2

    const/16 v4, 0x27

    if-eq v2, v4, :cond_2

    .line 1050
    iget-boolean v4, p0, Lcom/mysql/jdbc/PreparedStatement;->usingAnsiMode:Z

    if-nez v4, :cond_4

    const/16 v4, 0x22

    if-ne v2, v4, :cond_4

    :cond_2
    if-le v0, v1, :cond_3

    sub-int v2, v0, v1

    .line 1053
    invoke-virtual {p2, p1, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1057
    :cond_3
    invoke-virtual {p2, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    move v1, v0

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    if-ge v1, p3, :cond_6

    sub-int/2addr p3, v1

    .line 1065
    invoke-virtual {p2, p1, v1, p3}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    :cond_6
    return-void
.end method

.method private final escapeblockFast([BLjava/io/ByteArrayOutputStream;I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_5

    .line 1073
    aget-byte v2, p1, v0

    const/16 v3, 0x5c

    if-nez v2, :cond_1

    if-le v0, v1, :cond_0

    sub-int v2, v0, v1

    .line 1078
    invoke-virtual {p2, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1082
    :cond_0
    invoke-virtual {p2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0x30

    .line 1083
    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_1
    if-eq v2, v3, :cond_2

    const/16 v4, 0x27

    if-eq v2, v4, :cond_2

    .line 1086
    iget-boolean v4, p0, Lcom/mysql/jdbc/PreparedStatement;->usingAnsiMode:Z

    if-nez v4, :cond_4

    const/16 v4, 0x22

    if-ne v2, v4, :cond_4

    :cond_2
    if-le v0, v1, :cond_3

    sub-int v2, v0, v1

    .line 1089
    invoke-virtual {p2, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1093
    :cond_3
    invoke-virtual {p2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v1, v0

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    if-ge v1, p3, :cond_6

    sub-int/2addr p3, v1

    .line 1101
    invoke-virtual {p2, p1, v1, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_6
    return-void
.end method

.method private generateMultiStatementForBatch(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1456
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1457
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int v2, v2, p1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1459
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-ge v2, v3, :cond_0

    const/16 v3, 0x3b

    .line 1462
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1463
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1466
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1467
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final getDateTimePattern(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2329
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v4, v5, :cond_4

    const/16 v5, 0xa

    if-gt v4, v5, :cond_4

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    .line 2336
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2338
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    const/16 v11, 0x2d

    if-nez v10, :cond_1

    if-eq v9, v11, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    if-ne v9, v11, :cond_2

    add-int/lit8 v8, v8, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_4

    if-ne v8, v6, :cond_4

    const-string v1, "yyyy-MM-dd"

    return-object v1

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_6

    .line 2360
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2362
    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_5

    const/16 v9, 0x3a

    if-eq v8, v9, :cond_5

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_7

    const-string v1, "HH:mm:ss"

    return-object v1

    .line 2379
    :cond_7
    new-instance v4, Ljava/io/StringReader;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2381
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x3

    .line 2382
    new-array v9, v8, [Ljava/lang/Object;

    const/16 v10, 0x79

    .line 2384
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    aput-object v11, v9, v3

    .line 2385
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v11, v9, v7

    .line 2386
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v6

    .line 2387
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v9, 0x68

    if-eqz p2, :cond_8

    .line 2390
    new-array v11, v8, [Ljava/lang/Object;

    .line 2391
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    aput-object v12, v11, v3

    .line 2392
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v12, v11, v7

    .line 2393
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    .line 2394
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2397
    :cond_8
    :goto_5
    invoke-virtual {v4}, Ljava/io/StringReader;->read()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_12

    int-to-char v11, v11

    .line 2399
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v12, :cond_10

    .line 2402
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/Object;

    .line 2403
    aget-object v16, v15, v6

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 2404
    aget-object v16, v15, v3

    check-cast v16, Ljava/lang/Character;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Character;->charValue()C

    move-result v9

    invoke-direct {v0, v9, v10}, Lcom/mysql/jdbc/PreparedStatement;->getSuccessor(CI)C

    move-result v9

    .line 2406
    invoke-static {v11}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v16

    const/16 v13, 0x59

    const/16 v8, 0x58

    if-nez v16, :cond_b

    .line 2407
    aget-object v10, v15, v3

    check-cast v10, Ljava/lang/Character;

    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v10

    if-ne v9, v10, :cond_9

    const/16 v10, 0x53

    if-eq v9, v10, :cond_9

    .line 2408
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 2410
    :cond_9
    aget-object v10, v15, v7

    check-cast v10, Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eq v9, v8, :cond_a

    if-ne v9, v13, :cond_f

    :cond_a
    const/4 v8, 0x4

    .line 2413
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v15, v6

    goto/16 :goto_8

    :cond_b
    const/16 v13, 0x4d

    if-ne v9, v8, :cond_c

    const/4 v8, 0x3

    .line 2419
    new-array v9, v8, [Ljava/lang/Object;

    .line 2420
    new-instance v8, Ljava/lang/StringBuilder;

    aget-object v16, v15, v7

    check-cast v16, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aput-object v8, v9, v7

    .line 2421
    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v9, v3

    .line 2422
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v9, v8

    .line 2423
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v13, 0x79

    goto :goto_7

    :cond_c
    const/16 v6, 0x59

    if-ne v9, v6, :cond_d

    const/4 v6, 0x3

    .line 2426
    new-array v8, v6, [Ljava/lang/Object;

    .line 2427
    new-instance v9, Ljava/lang/StringBuilder;

    aget-object v16, v15, v7

    check-cast v16, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x64

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aput-object v9, v8, v7

    .line 2428
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v8, v3

    .line 2429
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v8, v9

    .line 2430
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    move v13, v9

    .line 2433
    :goto_7
    aget-object v6, v15, v7

    check-cast v6, Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2435
    aget-object v6, v15, v3

    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    if-ne v13, v6, :cond_e

    add-int/lit8 v10, v10, 0x1

    .line 2436
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v15, v8

    goto :goto_8

    :cond_e
    const/4 v8, 0x2

    .line 2438
    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v15, v3

    .line 2439
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v15, v8

    :cond_f
    :goto_8
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x68

    const/16 v10, 0x79

    goto/16 :goto_6

    .line 2444
    :cond_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v6, :cond_11

    .line 2447
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    .line 2448
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 2451
    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x68

    const/16 v10, 0x79

    goto/16 :goto_5

    .line 2454
    :cond_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v4, :cond_1c

    .line 2457
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 2458
    aget-object v9, v8, v3

    check-cast v9, Ljava/lang/Character;

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v9

    const/4 v10, 0x2

    .line 2459
    aget-object v11, v8, v10

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2461
    invoke-direct {v0, v9, v11}, Lcom/mysql/jdbc/PreparedStatement;->getSuccessor(CI)C

    move-result v11

    if-eq v11, v9, :cond_13

    const/4 v11, 0x1

    goto :goto_b

    :cond_13
    const/4 v11, 0x0

    :goto_b
    const/16 v13, 0x73

    if-eq v9, v13, :cond_14

    const/16 v13, 0x6d

    if-eq v9, v13, :cond_14

    const/16 v13, 0x68

    if-ne v9, v13, :cond_15

    if-eqz p2, :cond_15

    goto :goto_c

    :cond_14
    const/16 v13, 0x68

    :goto_c
    if-eqz v11, :cond_15

    const/4 v14, 0x1

    goto :goto_d

    :cond_15
    const/4 v14, 0x0

    :goto_d
    if-eqz v11, :cond_16

    const/16 v11, 0x64

    if-ne v9, v11, :cond_17

    if-nez p2, :cond_17

    const/4 v9, 0x1

    goto :goto_e

    :cond_16
    const/16 v11, 0x64

    :cond_17
    const/4 v9, 0x0

    .line 2464
    :goto_e
    aget-object v15, v8, v7

    check-cast v15, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v10, 0x57

    invoke-virtual {v15, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v12, :cond_18

    const/4 v10, 0x1

    goto :goto_f

    :cond_18
    const/4 v10, 0x0

    :goto_f
    if-nez v14, :cond_19

    if-eqz v9, :cond_1a

    :cond_19
    if-eqz v10, :cond_1b

    .line 2467
    :cond_1a
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 2471
    :cond_1c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v2, :cond_1d

    .line 2474
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 2477
    :cond_1d
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2478
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 2480
    aget-object v1, v1, v7

    check-cast v1, Ljava/lang/StringBuilder;

    .line 2481
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2483
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 742
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    return-object v0

    .line 746
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_2_ARG_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/PreparedStatement;

    return-object p0
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/mysql/jdbc/PreparedStatement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 757
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {v0, p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 761
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_3_ARG_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/PreparedStatement;

    return-object p0
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)Lcom/mysql/jdbc/PreparedStatement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 772
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    new-instance v0, Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V

    return-object v0

    .line 776
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/PreparedStatement;->JDBC_4_PSTMT_4_ARG_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/PreparedStatement;

    return-object p0
.end method

.method private final getSuccessor(CI)C
    .locals 8

    const/16 v0, 0x73

    const/16 v1, 0x6d

    const/16 v2, 0x48

    const/16 v3, 0x64

    const/16 v4, 0x79

    const/16 v5, 0x4d

    const/4 v6, 0x2

    if-ne p1, v4, :cond_0

    if-ne p2, v6, :cond_0

    const/16 v0, 0x58

    goto :goto_4

    :cond_0
    if-ne p1, v4, :cond_1

    const/4 v7, 0x4

    if-ge p2, v7, :cond_1

    const/16 v0, 0x79

    goto :goto_4

    :cond_1
    if-ne p1, v4, :cond_2

    :goto_0
    const/16 v0, 0x4d

    goto :goto_4

    :cond_2
    if-ne p1, v5, :cond_3

    if-ne p2, v6, :cond_3

    const/16 v0, 0x59

    goto :goto_4

    :cond_3
    if-ne p1, v5, :cond_4

    const/4 v4, 0x3

    if-ge p2, v4, :cond_4

    goto :goto_0

    :cond_4
    if-ne p1, v5, :cond_5

    :goto_1
    const/16 v0, 0x64

    goto :goto_4

    :cond_5
    if-ne p1, v3, :cond_6

    if-ge p2, v6, :cond_6

    goto :goto_1

    :cond_6
    if-ne p1, v3, :cond_7

    :goto_2
    const/16 v0, 0x48

    goto :goto_4

    :cond_7
    if-ne p1, v2, :cond_8

    if-ge p2, v6, :cond_8

    goto :goto_2

    :cond_8
    if-ne p1, v2, :cond_9

    :goto_3
    const/16 v0, 0x6d

    goto :goto_4

    :cond_9
    if-ne p1, v1, :cond_a

    if-ge p2, v6, :cond_a

    goto :goto_3

    :cond_a
    if-ne p1, v1, :cond_b

    goto :goto_4

    :cond_b
    if-ne p1, v0, :cond_c

    if-ge p2, v6, :cond_c

    goto :goto_4

    :cond_c
    const/16 v0, 0x57

    :goto_4
    return v0
.end method

.method private final hexEscapeBlock([BLcom/mysql/jdbc/Buffer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 2612
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 2613
    div-int/lit8 v2, v1, 0x10

    .line 2614
    rem-int/lit8 v1, v1, 0x10

    .line 2616
    sget-object v3, Lcom/mysql/jdbc/PreparedStatement;->HEX_DIGITS:[B

    aget-byte v2, v3, v2

    invoke-virtual {p2, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2617
    sget-object v2, Lcom/mysql/jdbc/PreparedStatement;->HEX_DIGITS:[B

    aget-byte v1, v2, v1

    invoke-virtual {p2, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initializeFromParseInfo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2622
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2623
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v1, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->staticSql:[[B

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    .line 2624
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-boolean v1, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->foundLoadData:Z

    iput-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    .line 2625
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-char v1, v1, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->firstStmtChar:C

    iput-char v1, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    .line 2627
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    .line 2629
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    .line 2630
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v1, v1, [Ljava/io/InputStream;

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    .line 2631
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    .line 2632
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    .line 2633
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    .line 2634
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    .line 2636
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2638
    :goto_0
    iget v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    if-ge v2, v3, :cond_0

    .line 2639
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    aput-boolean v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2641
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isEscapeNeededForString(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 4038
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/16 v4, 0xa

    if-eq v2, v4, :cond_0

    const/16 v4, 0xd

    if-eq v2, v4, :cond_0

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_0

    const/16 v4, 0x22

    if-eq v2, v4, :cond_0

    const/16 v4, 0x27

    if-eq v2, v4, :cond_0

    const/16 v4, 0x5c

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v1
.end method

.method private newSetDateInternal(ILjava/sql/Date;Ljava/util/Calendar;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4296
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4297
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_0

    .line 4298
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'\'yyyy-MM-dd\'\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    :cond_0
    if-eqz p3, :cond_1

    .line 4302
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 4303
    :cond_1
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getNoTimezoneConversionForDateType()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 4304
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 4306
    :cond_2
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4309
    :goto_0
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 4310
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private newSetTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4280
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4281
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tdf:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_0

    .line 4282
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'\'HH:mm:ss\'\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tdf:Ljava/text/SimpleDateFormat;

    :cond_0
    if-eqz p3, :cond_1

    .line 4286
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 4288
    :cond_1
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->tdf:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4291
    :goto_0
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->tdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 4292
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private newSetTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4258
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4259
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_0

    .line 4260
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'\'yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    :cond_0
    if-eqz p3, :cond_1

    .line 4264
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 4266
    :cond_1
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4269
    :goto_0
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 4270
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    .line 4271
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4272
    invoke-virtual {p2}, Ljava/sql/Timestamp;->getNanos()I

    move-result p2

    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/TimeUtil;->formatNanos(IZZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p2, 0x27

    .line 4273
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4275
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 4276
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected static readFully(Ljava/io/Reader;[CI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    sub-int v1, p2, v0

    .line 642
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private final readblock(Ljava/io/InputStream;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2652
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2654
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PreparedStatement.56"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1000"

    invoke-static {p2, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p2

    .line 2656
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2658
    throw p2
.end method

.method private final readblock(Ljava/io/InputStream;[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2666
    :try_start_0
    array-length v0, p2

    if-le p3, v0, :cond_0

    .line 2667
    array-length p3, p2

    :cond_0
    const/4 v0, 0x0

    .line 2670
    invoke-virtual {p1, p2, v0, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2672
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PreparedStatement.56"

    invoke-static {p3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p3

    const-string v0, "S1000"

    invoke-static {p2, v0, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p2

    .line 2674
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2676
    throw p2
.end method

.method private setNumericObject(ILjava/lang/Object;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3423
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3424
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    .line 3425
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5

    packed-switch p3, :pswitch_data_0

    packed-switch p3, :pswitch_data_1

    .line 3464
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    goto :goto_1

    .line 3451
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    goto :goto_1

    .line 3457
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    goto :goto_1

    .line 3446
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    goto :goto_1

    .line 3441
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :pswitch_4
    const-string v0, "1"

    .line 3428
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "true"

    .line 3431
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3433
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    .line 3429
    :cond_4
    :goto_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    .line 3467
    :cond_5
    check-cast p2, Ljava/lang/Number;

    :goto_1
    packed-switch p3, :pswitch_data_2

    packed-switch p3, :pswitch_data_3

    goto/16 :goto_3

    .line 3485
    :pswitch_5
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setFloat(IF)V

    goto/16 :goto_3

    .line 3491
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setDouble(ID)V

    goto :goto_3

    .line 3498
    :pswitch_7
    instance-of p3, p2, Ljava/math/BigDecimal;

    if-eqz p3, :cond_6

    .line 3502
    :try_start_0
    move-object p3, p2

    check-cast p3, Ljava/math/BigDecimal;

    invoke-virtual {p3, p4}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3505
    :catch_0
    :try_start_1
    move-object p3, p2

    check-cast p3, Ljava/math/BigDecimal;

    const/4 v0, 0x4

    invoke-virtual {p3, p4, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3512
    :goto_2
    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    goto :goto_3

    .line 3507
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t set scale of \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\' for DECIMAL argument \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string p3, "S1009"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 3513
    :cond_6
    instance-of p3, p2, Ljava/math/BigInteger;

    if-eqz p3, :cond_7

    .line 3514
    new-instance p3, Ljava/math/BigDecimal;

    check-cast p2, Ljava/math/BigInteger;

    invoke-direct {p3, p2, p4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    goto :goto_3

    .line 3516
    :cond_7
    new-instance p3, Ljava/math/BigDecimal;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    goto :goto_3

    .line 3480
    :pswitch_8
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    goto :goto_3

    .line 3475
    :pswitch_9
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x7
        :pswitch_9
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final setSerializableObject(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3822
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3823
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3824
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3825
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 3826
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 3827
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 3828
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3830
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 3831
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3832
    array-length p2, p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 3833
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, -0x2

    aput v0, p2, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3835
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PreparedStatement.54"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1009"

    invoke-static {p2, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p2

    .line 3837
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3839
    throw p2
.end method

.method private setTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x5c

    if-nez p2, :cond_0

    .line 4137
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_1

    .line 4139
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 4141
    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_1

    .line 4142
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->newSetTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;)V

    goto :goto_0

    .line 4144
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object v3

    .line 4146
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v7

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move v8, p5

    invoke-static/range {v2 .. v8}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Time;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Time;

    move-result-object p2

    .line 4148
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/sql/Time;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 4151
    :goto_0
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result p3

    add-int/2addr p1, p3

    aput v0, p2, p1

    :goto_1
    return-void
.end method

.method private setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x5d

    if-nez p2, :cond_0

    .line 4209
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto/16 :goto_3

    .line 4211
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 4213
    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->sendFractionalSeconds:Z

    if-nez v1, :cond_1

    .line 4214
    invoke-static {p2}, Lcom/mysql/jdbc/TimeUtil;->truncateFractionalSeconds(Ljava/sql/Timestamp;)Ljava/sql/Timestamp;

    move-result-object p2

    :cond_1
    move-object v4, p2

    .line 4217
    iget-boolean p2, p0, Lcom/mysql/jdbc/PreparedStatement;->useLegacyDatetimeCode:Z

    const/4 v8, 0x1

    if-nez p2, :cond_2

    .line 4218
    invoke-direct {p0, p1, v4, p3}, Lcom/mysql/jdbc/PreparedStatement;->newSetTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;)V

    goto/16 :goto_2

    .line 4220
    :cond_2
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getUseJDBCCompliantTimezoneShift()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object p2

    :goto_0
    move-object v2, p2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getCalendarInstanceForSessionOrNew()Ljava/util/Calendar;

    move-result-object p2

    goto :goto_0

    .line 4223
    :goto_1
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getServerTimezoneTZ()Ljava/util/TimeZone;

    move-result-object v6

    move-object v3, p3

    move-object v5, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/TimeUtil;->changeTimezone(Lcom/mysql/jdbc/MySQLConnection;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/sql/Timestamp;Ljava/util/TimeZone;Ljava/util/TimeZone;Z)Ljava/sql/Timestamp;

    move-result-object p2

    .line 4225
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSPSCompatibleTimezoneShift()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 4226
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->doSSPSCompatibleTimezoneShift(ILjava/sql/Timestamp;)V

    goto :goto_2

    .line 4228
    :cond_4
    monitor-enter p0

    .line 4229
    :try_start_0
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    if-nez p3, :cond_5

    .line 4230
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string p4, "\'\'yyyy-MM-dd HH:mm:ss"

    sget-object p5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p3, p4, p5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    .line 4233
    :cond_5
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 4234
    iget-object p4, p0, Lcom/mysql/jdbc/PreparedStatement;->tsdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p4, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4236
    iget-boolean p4, p0, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z

    if-eqz p4, :cond_6

    .line 4237
    invoke-virtual {p2}, Ljava/sql/Timestamp;->getNanos()I

    move-result p2

    if-eqz p2, :cond_6

    const/16 p4, 0x2e

    .line 4240
    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4241
    iget-boolean p4, p0, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z

    invoke-static {p2, p4, v8}, Lcom/mysql/jdbc/TimeUtil;->formatNanos(IZZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    const/16 p2, 0x27

    .line 4245
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4247
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 4249
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4253
    :goto_2
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    sub-int/2addr p1, v8

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result p3

    add-int/2addr p1, p3

    aput v0, p2, p1

    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 4249
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final streamToBytes(Lcom/mysql/jdbc/Buffer;Ljava/io/InputStream;ZIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4438
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4440
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    if-nez v1, :cond_0

    const/16 v1, 0x1000

    .line 4441
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 4444
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4449
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/mysql/jdbc/CharsetMapping;->isMultibyteCharset(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, -0x1

    if-ne p4, v2, :cond_3

    const/4 p5, 0x0

    :cond_3
    if-eqz p5, :cond_4

    .line 4466
    :try_start_2
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p2, v2, p4}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[BI)I

    move-result v2

    goto :goto_2

    .line 4468
    :cond_4
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p2, v2}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[B)I

    move-result v2

    :goto_2
    sub-int/2addr p4, v2

    if-eqz v1, :cond_5

    const-string v3, "x"

    .line 4474
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;)V

    goto :goto_3

    .line 4475
    :cond_5
    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v3, v4}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "_binary"

    .line 4476
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;)V

    :cond_6
    :goto_3
    const/16 v3, 0x27

    if-eqz p3, :cond_7

    .line 4480
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    :cond_7
    :goto_4
    if-lez v2, :cond_b

    if-eqz v1, :cond_8

    .line 4485
    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, v5, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->hexEscapeBlock([BLcom/mysql/jdbc/Buffer;I)V

    goto :goto_5

    :cond_8
    if-eqz p3, :cond_9

    .line 4487
    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, v5, p1, v2}, Lcom/mysql/jdbc/PreparedStatement;->escapeblockFast([BLcom/mysql/jdbc/Buffer;I)V

    goto :goto_5

    .line 4489
    :cond_9
    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-virtual {p1, v5, v4, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    :goto_5
    if-eqz p5, :cond_a

    .line 4493
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p2, v2, p4}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[BI)I

    move-result v2

    if-lez v2, :cond_7

    sub-int/2addr p4, v2

    goto :goto_4

    .line 4499
    :cond_a
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p2, v2}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[B)I

    move-result v2

    goto :goto_4

    :cond_b
    if-eqz p3, :cond_c

    .line 4504
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4517
    :cond_c
    :try_start_3
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_d

    .line 4509
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4516
    :catch_0
    :cond_d
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :catch_1
    move-exception p1

    .line 4454
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "S1009"

    const/4 p5, 0x0

    invoke-static {p3, p4, p5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p3

    .line 4455
    invoke-virtual {p3, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4456
    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    .line 4513
    :try_start_7
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

    move-result p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p3, :cond_e

    .line 4509
    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4507
    :catch_2
    :cond_e
    :try_start_9
    throw p1

    :catchall_1
    move-exception p1

    .line 4516
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p1
.end method

.method private final streamToBytes(Ljava/io/InputStream;ZIZ)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4520
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const v1, 0x7fffffff

    .line 4521
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4523
    :try_start_1
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    if-nez v1, :cond_0

    const/16 v1, 0x1000

    .line 4524
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_1

    const/4 p4, 0x0

    .line 4530
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p4, :cond_2

    .line 4535
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p1, v3, p3}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[BI)I

    move-result v3

    goto :goto_0

    .line 4537
    :cond_2
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[B)I

    move-result v3

    :goto_0
    sub-int/2addr p3, v3

    const/16 v4, 0x27

    if-eqz p2, :cond_4

    .line 4543
    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x5f

    .line 4544
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x62

    .line 4545
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x69

    .line 4546
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x6e

    .line 4547
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x61

    .line 4548
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x72

    .line 4549
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x79

    .line 4550
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4553
    :cond_3
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_4
    :goto_1
    if-lez v3, :cond_7

    if-eqz p2, :cond_5

    .line 4558
    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, v5, v1, v3}, Lcom/mysql/jdbc/PreparedStatement;->escapeblockFast([BLjava/io/ByteArrayOutputStream;I)V

    goto :goto_2

    .line 4560
    :cond_5
    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-virtual {v1, v5, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_2
    if-eqz p4, :cond_6

    .line 4564
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p1, v3, p3}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[BI)I

    move-result v3

    if-lez v3, :cond_4

    sub-int/2addr p3, v3

    goto :goto_1

    .line 4570
    :cond_6
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    invoke-direct {p0, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->readblock(Ljava/io/InputStream;[B)I

    move-result v3

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    .line 4575
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4578
    :cond_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4581
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4584
    :catch_0
    :try_start_3
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p3, :cond_9

    .line 4586
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4578
    :catch_1
    :cond_9
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object p2

    :catchall_0
    move-exception p2

    .line 4581
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4584
    :catch_2
    :try_start_7
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getAutoClosePStmtStreams()Z

    move-result p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p3, :cond_a

    .line 4586
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4580
    :catch_3
    :cond_a
    :try_start_9
    throw p2

    :catchall_1
    move-exception p1

    .line 4593
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p1
.end method


# virtual methods
.method public addBatch()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 892
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 893
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    if-nez v1, :cond_0

    .line 894
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    :cond_0
    const/4 v1, 0x0

    .line 897
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 898
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    aget-object v3, v3, v1

    invoke-direct {p0, v2, v3, v1}, Lcom/mysql/jdbc/PreparedStatement;->checkAllParametersSet([BLjava/io/InputStream;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 901
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    new-instance v9, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    iget-object v8, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    move-object v2, v9

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/PreparedStatement$BatchParams;-><init>(Lcom/mysql/jdbc/PreparedStatement;[[B[Ljava/io/InputStream;[Z[I[Z)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addBatch(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 907
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 908
    :try_start_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    .line 910
    invoke-super {p0, p1}, Lcom/mysql/jdbc/StatementImpl;->addBatch(Ljava/lang/String;)V

    .line 911
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public asSql()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 915
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/PreparedStatement;->asSql(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asSql(Z)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 919
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 921
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    :try_start_1
    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    .line 926
    iget v4, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 927
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    iget v4, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_c

    .line 931
    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 932
    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 934
    :cond_1
    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz v3, :cond_2

    .line 938
    instance-of v6, v3, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 939
    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 942
    :cond_2
    iget v6, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    if-ne v6, v5, :cond_3

    .line 943
    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    aget-object v6, v6, v4

    goto :goto_2

    .line 945
    :cond_3
    move-object v6, v3

    check-cast v6, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    iget-object v6, v6, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    aget-object v6, v6, v4

    .line 949
    :goto_2
    iget v7, p0, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    if-ne v7, v5, :cond_4

    .line 950
    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    aget-boolean v7, v7, v4

    goto :goto_3

    .line 952
    :cond_4
    move-object v7, v3

    check-cast v7, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    iget-object v7, v7, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    aget-boolean v7, v7, v4

    :goto_3
    if-nez v6, :cond_6

    if-nez v7, :cond_6

    if-eqz p1, :cond_5

    const-string v6, "\'"

    .line 957
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v6, "** NOT SPECIFIED **"

    .line 960
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_b

    const-string v6, "\'"

    .line 963
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_8

    if-eqz p1, :cond_7

    const-string v6, "\'"

    .line 967
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v6, "** STREAM DATA **"

    .line 970
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_b

    const-string v6, "\'"

    .line 973
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 976
    :cond_8
    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    if-eqz v7, :cond_9

    .line 977
    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    invoke-virtual {v7, v6}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 979
    :cond_9
    iget-object v7, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 980
    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 982
    :cond_a
    invoke-static {v6}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 988
    :cond_c
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    if-eqz p1, :cond_d

    .line 989
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    aget-object p1, p1, v2

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/mysql/jdbc/StringUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 991
    :cond_d
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v2, v3

    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 997
    :goto_5
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 994
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreparedStatement.32"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PreparedStatement.33"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 998
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public canRewriteAsMultiValueInsertAtSqlLevel()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-boolean v0, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->canRewriteAsMultiValueInsert:Z

    return v0
.end method

.method protected checkBounds(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3322
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_3

    .line 3326
    :try_start_0
    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    if-gt p1, v2, :cond_2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Can\'t set IN parameter for return value of stored function call."

    const-string p2, "S1009"

    .line 3333
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 3336
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 3327
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreparedStatement.51"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "PreparedStatement.52"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "PreparedStatement.53"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 3324
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreparedStatement.49"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "PreparedStatement.50"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 3336
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected checkReadOnlySafeStatement()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1112
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1113
    :try_start_0
    iget-char v1, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    const/16 v2, 0x53

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearBatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1003
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1004
    :try_start_0
    iput-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    .line 1006
    invoke-super {p0}, Lcom/mysql/jdbc/StatementImpl;->clearBatch()V

    .line 1007
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearParameters()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1021
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1023
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1024
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 1025
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    aput-object v4, v3, v2

    .line 1026
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    aput-boolean v1, v3, v2

    .line 1027
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    aput-boolean v1, v3, v2

    .line 1028
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1030
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected computeBatchSize(I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1627
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1628
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement;->computeMaxParameterSetSizeAndBatchSize(I)[J

    move-result-object v1

    const/4 v2, 0x0

    .line 1630
    aget-wide v2, v1, v2

    const/4 v4, 0x1

    .line 1631
    aget-wide v4, v1, v4

    .line 1633
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v1

    .line 1635
    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v1, v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 1636
    monitor-exit v0

    return p1

    :cond_0
    const-wide/16 v4, 0x1

    .line 1639
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    int-to-long v6, v1

    div-long/2addr v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-int p1, v1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1640
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected computeMaxParameterSetSizeAndBatchSize(I)[J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1650
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v0, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    :goto_0
    const/4 v10, 0x1

    move/from16 v11, p1

    if-ge v5, v11, :cond_6

    .line 1655
    :try_start_0
    iget-object v12, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    .line 1657
    iget-object v13, v12, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z

    .line 1658
    iget-object v14, v12, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    .line 1662
    :goto_1
    array-length v3, v13

    if-ge v15, v3, :cond_3

    .line 1663
    aget-boolean v3, v13, v15

    if-nez v3, :cond_2

    .line 1665
    aget-boolean v3, v14, v15

    if-eqz v3, :cond_1

    .line 1666
    iget-object v3, v12, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    aget v3, v3, v15

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    mul-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    add-long v16, v16, v3

    goto :goto_2

    .line 1671
    :cond_0
    iget-object v3, v12, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    aget-object v3, v3, v15

    array-length v3, v3

    int-to-long v3, v3

    add-long v16, v16, v3

    goto :goto_2

    .line 1675
    :cond_1
    iget-object v3, v12, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    aget-object v3, v3, v15

    array-length v3, v3

    int-to-long v3, v3

    add-long v16, v16, v3

    goto :goto_2

    :cond_2
    const-wide/16 v3, 0x4

    add-long v16, v16, v3

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1688
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getValuesClause()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1689
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getValuesClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v10

    int-to-long v3, v3

    add-long v16, v16, v3

    goto :goto_3

    .line 1691
    :cond_4
    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v10

    int-to-long v3, v3

    add-long v16, v16, v3

    :goto_3
    const/4 v3, 0x0

    add-long v8, v8, v16

    cmp-long v3, v16, v6

    if-lez v3, :cond_5

    move-wide/from16 v6, v16

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_6
    const/4 v3, 0x2

    .line 1701
    new-array v3, v3, [J

    aput-wide v6, v3, v0

    aput-wide v8, v3, v10

    monitor-exit v2

    return-object v3

    .line 1702
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected containsOnDuplicateKeyUpdateInSQL()Z
    .locals 1

    .line 2107
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-boolean v0, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->isOnDuplicateKeyUpdate:Z

    return v0
.end method

.method protected detectFractionalSecondsSupport()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->serverSupportsFracSecs:Z

    return-void
.end method

.method public execute()Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v8, p0

    .line 1129
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1131
    :try_start_0
    iget-object v0, v8, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 1133
    iget-boolean v1, v8, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead:Z

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkReadOnlySafeStatement()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreparedStatement.20"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PreparedStatement.21"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    const/4 v10, 0x0

    .line 1140
    iput-boolean v10, v8, Lcom/mysql/jdbc/PreparedStatement;->lastQueryIsOnDupKeyUpdate:Z

    .line 1142
    iget-boolean v1, v8, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v1, :cond_2

    .line 1143
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->containsOnDuplicateKeyUpdateInSQL()Z

    move-result v1

    iput-boolean v1, v8, Lcom/mysql/jdbc/PreparedStatement;->lastQueryIsOnDupKeyUpdate:Z

    :cond_2
    const/4 v11, 0x0

    .line 1146
    iput-object v11, v8, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 1148
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1150
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->implicitlyCloseAllOpenResults()V

    .line 1152
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->clearWarnings()V

    .line 1154
    iget-boolean v1, v8, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead:Z

    const/4 v12, 0x1

    if-eqz v1, :cond_3

    .line 1155
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead()V

    .line 1157
    monitor-exit v9

    return v12

    .line 1160
    :cond_3
    invoke-virtual {v8, v0}, Lcom/mysql/jdbc/PreparedStatement;->setupStreamingTimeout(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1162
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->fillSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    .line 1166
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1167
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v1

    .line 1168
    iget-object v2, v8, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    move-object v13, v1

    goto :goto_1

    :cond_4
    move-object v13, v11

    .line 1175
    :goto_1
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1176
    iget-object v1, v8, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;

    move-result-object v1

    move-object v14, v1

    goto :goto_2

    :cond_5
    move-object v14, v11

    :goto_2
    if-eqz v14, :cond_6

    .line 1182
    iget-object v1, v14, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    move-object v6, v1

    goto :goto_3

    :cond_6
    move-object v6, v11

    .line 1187
    :goto_3
    iget-boolean v1, v8, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v1, :cond_7

    .line 1188
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v1

    .line 1189
    invoke-interface {v0, v12}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    move v15, v1

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    .line 1195
    :goto_4
    iget-char v1, v8, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    const/16 v2, 0x53

    if-ne v1, v2, :cond_8

    iget v1, v8, Lcom/mysql/jdbc/PreparedStatement;->maxRows:I

    goto :goto_5

    :cond_8
    const/4 v1, -0x1

    :goto_5
    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 1197
    iget v4, v8, Lcom/mysql/jdbc/PreparedStatement;->maxRows:I

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->createStreamingResultSet()Z

    move-result v5

    iget-char v1, v8, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    if-ne v1, v2, :cond_9

    const/4 v7, 0x1

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    :goto_6
    const/16 v16, 0x0

    move-object/from16 v1, p0

    move v2, v4

    move v4, v5

    move v5, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/PreparedStatement;->executeInternal(ILcom/mysql/jdbc/Buffer;ZZ[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1

    if-eqz v14, :cond_a

    .line 1200
    iget-object v2, v8, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-interface {v0, v2, v14, v1}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    goto :goto_7

    .line 1202
    :cond_a
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1203
    iget-object v2, v8, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-interface {v0, v2, v11, v1}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 1207
    :cond_b
    :goto_7
    iget-boolean v2, v8, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v2, :cond_c

    .line 1208
    invoke-interface {v0, v15}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    .line 1209
    iget-char v2, v8, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setFirstCharOfQuery(C)V

    :cond_c
    if-eqz v13, :cond_d

    .line 1213
    invoke-interface {v0, v13}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    :cond_d
    if-eqz v1, :cond_e

    .line 1217
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v2

    iput-wide v2, v8, Lcom/mysql/jdbc/PreparedStatement;->lastInsertId:J

    .line 1219
    iput-object v1, v8, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    :cond_e
    if-eqz v1, :cond_f

    .line 1222
    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->reallyResult()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v10, 0x1

    :cond_f
    monitor-exit v9

    return v10

    :catchall_0
    move-exception v0

    .line 1223
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected executeBatchInternal()[J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1228
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1230
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1235
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1240
    :cond_0
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->timeoutInMillis:I

    .line 1241
    iput v2, p0, Lcom/mysql/jdbc/PreparedStatement;->timeoutInMillis:I

    .line 1243
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1246
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->statementBegins()V

    .line 1248
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearWarnings()V

    .line 1250
    iget-boolean v3, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getRewriteBatchedStatements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1252
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->canRewriteAsMultiValueInsertAtSqlLevel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1253
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/PreparedStatement;->executeBatchedInserts(I)[J

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1268
    :try_start_2
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1266
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1253
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    .line 1256
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5, v2}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/mysql/jdbc/PreparedStatement;->batchHasPlainStatements:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    .line 1258
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/PreparedStatement;->executePreparedBatchAsMultiStatement(I)[J

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1266
    :try_start_4
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1258
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v1

    .line 1262
    :cond_2
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/PreparedStatement;->executeBatchSerially(I)[J

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1266
    :try_start_6
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1262
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1266
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1264
    throw v1

    .line 1236
    :cond_3
    :goto_0
    new-array v1, v2, [J

    monitor-exit v0

    return-object v1

    .line 1231
    :cond_4
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreparedStatement.25"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PreparedStatement.26"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S1009"

    invoke-direct {v1, v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 1268
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method protected executeBatchSerially(I)[J
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v0, p1

    .line 1714
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1715
    :try_start_0
    iget-object v10, v8, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v10, :cond_0

    .line 1718
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1723
    :cond_0
    iget-object v1, v8, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_b

    .line 1724
    iget-object v1, v8, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    .line 1725
    new-array v13, v12, [J

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v14, -0x3

    if-ge v1, v12, :cond_1

    .line 1728
    aput-wide v14, v13, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, -0x1

    .line 1736
    :try_start_1
    invoke-interface {v10}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    :try_start_2
    invoke-interface {v10, v1, v11, v11}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1737
    new-instance v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v1, v8, v8}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1738
    :try_start_3
    invoke-interface {v10}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v16, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v16, v1

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v2, v1

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_7

    :cond_2
    move-object/from16 v16, v2

    .line 1741
    :goto_1
    :try_start_4
    iget-boolean v0, v8, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_3

    .line 1742
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v8, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v2, v16

    goto/16 :goto_a

    .line 1745
    :cond_3
    :goto_2
    :try_start_6
    iput v11, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    move-object v0, v2

    :goto_3
    iget v1, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-ge v1, v12, :cond_7

    .line 1746
    :try_start_7
    iget-object v1, v8, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    iget v2, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v6, 0x1

    .line 1749
    :try_start_8
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1750
    iget v2, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-boolean v4, v8, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    invoke-virtual {v8, v3, v6, v4}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdateInternal(Ljava/lang/String;ZZ)J

    move-result-wide v3

    aput-wide v3, v13, v2

    .line 1753
    iget-object v2, v8, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getFirstCharOfQuery()C

    move-result v2

    const/16 v3, 0x49

    if-ne v2, v3, :cond_4

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/mysql/jdbc/PreparedStatement;->containsOnDuplicateKeyInString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v8, v1}, Lcom/mysql/jdbc/PreparedStatement;->getBatchedGeneratedKeys(I)V

    const/16 v17, 0x1

    goto :goto_6

    .line 1755
    :cond_5
    check-cast v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    .line 1756
    iget v5, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    iget-object v2, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    iget-object v6, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    iget-object v1, v1, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/16 v18, 0x1

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move/from16 v20, v5

    move-object v5, v6

    const/16 v17, 0x1

    move-object/from16 v6, v19

    move/from16 v7, v18

    :try_start_9
    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdateInternal([[B[Ljava/io/InputStream;[Z[I[ZZ)J

    move-result-wide v1

    aput-wide v1, v13, v20

    .line 1760
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->containsOnDuplicateKeyUpdateInSQL()Z

    move-result v1

    invoke-virtual {v8, v1}, Lcom/mysql/jdbc/PreparedStatement;->getBatchedGeneratedKeys(I)V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    const/16 v17, 0x1

    .line 1763
    :goto_5
    :try_start_a
    iget v1, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    aput-wide v14, v13, v1

    .line 1765
    iget-boolean v1, v8, Lcom/mysql/jdbc/PreparedStatement;->continueBatchOnError:Z

    if-eqz v1, :cond_6

    instance-of v1, v0, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    if-nez v1, :cond_6

    instance-of v1, v0, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    if-nez v1, :cond_6

    invoke-virtual {v8, v0}, Lcom/mysql/jdbc/PreparedStatement;->hasDeadlockOrTimeoutRolledBackTx(Ljava/sql/SQLException;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1745
    :goto_6
    iget v1, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    const/4 v7, -0x1

    goto/16 :goto_3

    .line 1769
    :cond_6
    iget v1, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    new-array v1, v1, [J

    .line 1770
    iget v2, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    invoke-static {v13, v11, v1, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1772
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_7
    if-nez v0, :cond_9

    const/4 v1, -0x1

    .line 1807
    :try_start_b
    iput v1, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    if-eqz v16, :cond_8

    .line 1798
    invoke-virtual/range {v16 .. v16}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1799
    invoke-interface {v10}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1802
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-object v2, v13

    goto :goto_d

    :cond_9
    const/4 v1, -0x1

    .line 1778
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v13, v2}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    :goto_7
    const/4 v1, -0x1

    goto :goto_c

    :catch_5
    move-exception v0

    const/4 v1, -0x1

    :goto_8
    move-object/from16 v2, v16

    goto :goto_b

    :catchall_4
    move-exception v0

    const/4 v1, -0x1

    :goto_9
    move-object/from16 v16, v2

    goto :goto_c

    :catch_6
    move-exception v0

    :goto_a
    const/4 v1, -0x1

    .line 1782
    :goto_b
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1793
    :try_start_e
    throw v0

    :catchall_5
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v3, v0

    .line 1784
    iget v0, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    aput-wide v14, v13, v0

    .line 1786
    iget v0, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    new-array v0, v0, [J

    .line 1788
    iget v4, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    invoke-static {v13, v11, v0, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1790
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1802
    :goto_c
    :try_start_f
    iput v1, v8, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    if-eqz v16, :cond_a

    .line 1798
    invoke-virtual/range {v16 .. v16}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1799
    invoke-interface {v10}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 1802
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1795
    throw v0

    :cond_b
    :goto_d
    if-eqz v2, :cond_c

    goto :goto_e

    .line 1806
    :cond_c
    new-array v2, v11, [J

    :goto_e
    monitor-exit v9

    return-object v2

    :catchall_6
    move-exception v0

    .line 1807
    monitor-exit v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0
.end method

.method protected executeBatchedInserts(I)[J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1480
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1481
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getValuesClause()Ljava/lang/String;

    move-result-object v3

    .line 1483
    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v3, :cond_0

    .line 1486
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/PreparedStatement;->executeBatchSerially(I)[J

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 1489
    :cond_0
    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1491
    iget-boolean v5, v1, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v5, :cond_1

    .line 1492
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 1495
    :cond_1
    invoke-virtual {v1, v3}, Lcom/mysql/jdbc/PreparedStatement;->computeBatchSize(I)I

    move-result v5

    if-ge v3, v5, :cond_2

    move v5, v3

    .line 1510
    :cond_2
    new-array v6, v3, [J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 1514
    :try_start_1
    invoke-virtual {v1, v4, v5}, Lcom/mysql/jdbc/PreparedStatement;->prepareBatchedInsertSQL(Lcom/mysql/jdbc/MySQLConnection;I)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1517
    :try_start_2
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    if-eqz v0, :cond_3

    const/4 v9, 0x5

    invoke-interface {v4, v9, v10, v10}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1518
    new-instance v9, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v9, v1, v8}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1519
    :try_start_3
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v11

    int-to-long v12, v0

    invoke-virtual {v11, v9, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    :goto_0
    if-ge v3, v5, :cond_4

    move v0, v3

    goto :goto_1

    .line 1525
    :cond_4
    div-int v0, v3, v5

    :goto_1
    mul-int v11, v0, v5

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    move-wide/from16 v16, v12

    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    :goto_2
    if-ge v15, v11, :cond_6

    if-eqz v15, :cond_5

    .line 1531
    rem-int v20, v15, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v20, :cond_5

    .line 1533
    :try_start_4
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J

    move-result-wide v20
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v0, 0x0

    add-long v16, v16, v20

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v10, v0

    add-int/lit8 v0, v7, -0x1

    .line 1535
    :try_start_5
    invoke-virtual {v1, v0, v5, v6, v10}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v19

    .line 1538
    :goto_3
    invoke-virtual {v1, v8}, Lcom/mysql/jdbc/PreparedStatement;->getBatchedGeneratedKeys(Ljava/sql/Statement;)V

    .line 1539
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->clearParameters()V

    const/4 v0, 0x1

    .line 1544
    :cond_5
    iget-object v10, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    add-int/lit8 v20, v7, 0x1

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v8, v0, v7}, Lcom/mysql/jdbc/PreparedStatement;->setOneBatchedParameterSet(Ljava/sql/PreparedStatement;ILjava/lang/Object;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v20

    const/4 v10, 0x0

    goto :goto_2

    .line 1548
    :cond_6
    :try_start_6
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J

    move-result-wide v10
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v0, 0x0

    add-long v16, v16, v10

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v10, v0

    add-int/lit8 v0, v7, -0x1

    .line 1550
    :try_start_7
    invoke-virtual {v1, v0, v5, v6, v10}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v19

    .line 1553
    :goto_4
    invoke-virtual {v1, v8}, Lcom/mysql/jdbc/PreparedStatement;->getBatchedGeneratedKeys(Ljava/sql/Statement;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    sub-int v5, v3, v7

    if-eqz v8, :cond_7

    .line 1558
    :try_start_8
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/16 v18, 0x0

    goto :goto_5

    :cond_7
    move-object/from16 v18, v8

    :goto_5
    if-lez v5, :cond_a

    .line 1565
    :try_start_9
    invoke-virtual {v1, v4, v5}, Lcom/mysql/jdbc/PreparedStatement;->prepareBatchedInsertSQL(Lcom/mysql/jdbc/MySQLConnection;I)Lcom/mysql/jdbc/PreparedStatement;

    move-result-object v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v9, :cond_8

    .line 1568
    :try_start_a
    iput-object v8, v9, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_b

    :cond_8
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-ge v7, v3, :cond_9

    .line 1574
    iget-object v10, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    add-int/lit8 v11, v7, 0x1

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v8, v0, v7}, Lcom/mysql/jdbc/PreparedStatement;->setOneBatchedParameterSet(Ljava/sql/PreparedStatement;ILjava/lang/Object;)I

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v7, v11

    goto :goto_7

    .line 1578
    :cond_9
    :try_start_b
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J

    move-result-wide v10
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v0, 0x0

    add-long v16, v16, v10

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v10, v0

    sub-int/2addr v7, v14

    .line 1580
    :try_start_c
    invoke-virtual {v1, v7, v5, v6, v10}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    move-object/from16 v19, v0

    .line 1583
    :goto_8
    invoke-virtual {v1, v8}, Lcom/mysql/jdbc/PreparedStatement;->getBatchedGeneratedKeys(Ljava/sql/Statement;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object/from16 v18, v8

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v8, v18

    goto :goto_b

    :cond_a
    :goto_9
    move-object/from16 v0, v19

    if-nez v0, :cond_10

    if-le v3, v14, :cond_c

    cmp-long v0, v16, v12

    if-lez v0, :cond_b

    const-wide/16 v12, -0x2

    :cond_b
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v3, :cond_d

    .line 1593
    :try_start_d
    aput-wide v12, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_c
    const/4 v3, 0x0

    .line 1596
    aput-wide v16, v6, v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_d
    if-eqz v18, :cond_e

    .line 1601
    :try_start_e
    invoke-virtual/range {v18 .. v18}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :cond_e
    if-eqz v9, :cond_f

    .line 1606
    :try_start_f
    invoke-virtual {v9}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1607
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1610
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1598
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    return-object v6

    .line 1587
    :cond_10
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v0, v6, v3}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :goto_b
    if-eqz v8, :cond_11

    .line 1601
    :try_start_11
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    .line 1600
    :cond_11
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_d

    :catchall_3
    move-exception v0

    goto :goto_c

    :catchall_4
    move-exception v0

    const/4 v8, 0x0

    :goto_c
    const/4 v9, 0x0

    :goto_d
    if-eqz v8, :cond_12

    .line 1558
    invoke-virtual {v8}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    goto :goto_e

    :catchall_5
    move-exception v0

    goto :goto_f

    .line 1557
    :cond_12
    :goto_e
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :goto_f
    if-eqz v9, :cond_13

    .line 1606
    :try_start_12
    invoke-virtual {v9}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1607
    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 1610
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1605
    throw v0

    :catchall_6
    move-exception v0

    .line 1612
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v0
.end method

.method protected executeInternal(ILcom/mysql/jdbc/Buffer;ZZ[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v12, p0

    .line 1837
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 1840
    :try_start_0
    iget-object v14, v12, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 1842
    iget v0, v12, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v12, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/4 v15, 0x0

    const/4 v11, 0x0

    .line 1849
    :try_start_1
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-eqz v0, :cond_0

    :try_start_2
    iget v0, v12, Lcom/mysql/jdbc/PreparedStatement;->timeoutInMillis:I

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-interface {v14, v0, v11, v11}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1850
    new-instance v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {v1, v12, v12}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1851
    :try_start_3
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    iget v2, v12, Lcom/mysql/jdbc/PreparedStatement;->timeoutInMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v10, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v15

    :goto_0
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_0
    move-object v10, v15

    :goto_1
    if-nez p6, :cond_1

    .line 1855
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->statementBegins()V

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v10

    goto :goto_0

    :cond_1
    :goto_2
    const/4 v3, 0x0

    .line 1858
    iget v6, v12, Lcom/mysql/jdbc/PreparedStatement;->resultSetType:I

    iget v7, v12, Lcom/mysql/jdbc/PreparedStatement;->resultSetConcurrency:I

    iget-object v9, v12, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    move-object/from16 v16, v10

    move-object/from16 v10, p5

    move/from16 v11, p6

    :try_start_5
    invoke-interface/range {v1 .. v11}, Lcom/mysql/jdbc/MySQLConnection;->execSQL(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;ILcom/mysql/jdbc/Buffer;IIZLjava/lang/String;[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-object/from16 v1, v16

    if-eqz v1, :cond_3

    .line 1862
    :try_start_6
    invoke-virtual {v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1864
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 1866
    iget-object v2, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-nez v2, :cond_2

    goto :goto_3

    .line 1867
    :cond_2
    iget-object v0, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    move-object v15, v1

    .line 1873
    :goto_3
    :try_start_7
    iget-object v1, v12, Lcom/mysql/jdbc/PreparedStatement;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 1874
    :try_start_8
    iget-boolean v2, v12, Lcom/mysql/jdbc/PreparedStatement;->wasCancelled:Z

    if-eqz v2, :cond_5

    .line 1877
    iget-boolean v0, v12, Lcom/mysql/jdbc/PreparedStatement;->wasCancelledByTimeout:Z

    if-eqz v0, :cond_4

    .line 1878
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v0}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    goto :goto_4

    .line 1880
    :cond_4
    new-instance v0, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v0}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    .line 1883
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1885
    throw v0

    .line 1887
    :cond_5
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez p6, :cond_6

    .line 1890
    :try_start_9
    iget-object v1, v12, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_6
    if-eqz v15, :cond_7

    .line 1894
    invoke-virtual {v15}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1895
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 1899
    :cond_7
    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    return-object v0

    :catchall_3
    move-exception v0

    const/4 v2, 0x0

    .line 1887
    :goto_5
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_0

    :catchall_7
    move-exception v0

    const/4 v2, 0x0

    :goto_6
    move-object v1, v15

    :goto_7
    if-nez p6, :cond_8

    .line 1890
    :try_start_d
    iget-object v3, v12, Lcom/mysql/jdbc/PreparedStatement;->statementExecuting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_8
    if-eqz v1, :cond_9

    .line 1894
    invoke-virtual {v1}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1895
    invoke-interface {v14}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 1889
    :cond_9
    throw v0
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 1901
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 1904
    throw v0

    .line 1906
    :goto_8
    monitor-exit v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    throw v0
.end method

.method public executeLargeUpdate()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5104
    invoke-virtual {p0, v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdateInternal(ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected executePreparedBatchAsMultiStatement(I)[J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1290
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v2

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1292
    :try_start_0
    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedValuesClause:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedValuesClause:Ljava/lang/String;

    .line 1296
    :cond_0
    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 1298
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getAllowMultiQueries()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 1302
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->clearWarnings()V

    .line 1304
    iget-object v6, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 1306
    iget-boolean v7, v1, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v7, :cond_1

    .line 1307
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 1310
    :cond_1
    invoke-virtual {v1, v6}, Lcom/mysql/jdbc/PreparedStatement;->computeBatchSize(I)I

    move-result v7

    if-ge v6, v7, :cond_2

    move v7, v6

    .line 1322
    :cond_2
    new-array v8, v6, [J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-nez v4, :cond_3

    .line 1327
    :try_start_2
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mysql/jdbc/MysqlIO;->enableMultiQueries()V

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto/16 :goto_f

    .line 1330
    :cond_3
    :goto_0
    iget-boolean v9, v1, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    const/4 v10, 0x1

    if-eqz v9, :cond_4

    .line 1331
    invoke-direct {v1, v7}, Lcom/mysql/jdbc/PreparedStatement;->generateMultiStatementForBatch(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9, v10}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object v9

    check-cast v9, Lcom/mysql/jdbc/Wrapper;

    const-class v11, Ljava/sql/PreparedStatement;

    invoke-interface {v9, v11}, Lcom/mysql/jdbc/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/sql/PreparedStatement;

    goto :goto_1

    .line 1334
    :cond_4
    invoke-direct {v1, v7}, Lcom/mysql/jdbc/PreparedStatement;->generateMultiStatementForBatch(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v9

    check-cast v9, Lcom/mysql/jdbc/Wrapper;

    const-class v11, Ljava/sql/PreparedStatement;

    invoke-interface {v9, v11}, Lcom/mysql/jdbc/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/sql/PreparedStatement;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1338
    :goto_1
    :try_start_3
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getEnableQueryTimeouts()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_5

    if-eqz v0, :cond_5

    const/4 v11, 0x5

    invoke-interface {v3, v11, v12, v12}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1339
    new-instance v11, Lcom/mysql/jdbc/StatementImpl$CancelTask;

    move-object v13, v9

    check-cast v13, Lcom/mysql/jdbc/StatementImpl;

    invoke-direct {v11, v1, v13}, Lcom/mysql/jdbc/StatementImpl$CancelTask;-><init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 1340
    :try_start_4
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v13

    int-to-long v14, v0

    invoke-virtual {v13, v11, v14, v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    :goto_2
    if-ge v6, v7, :cond_6

    move v0, v6

    goto :goto_3

    .line 1346
    :cond_6
    div-int v0, v6, v7

    :goto_3
    mul-int v13, v0, v7

    const/4 v0, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_4
    if-ge v12, v13, :cond_8

    if-eqz v12, :cond_7

    .line 1352
    rem-int v17, v12, v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v17, :cond_7

    .line 1354
    :try_start_5
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 1356
    :try_start_6
    invoke-virtual {v1, v14, v7, v8, v5}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v16

    .line 1359
    :goto_5
    move-object v0, v9

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v1, v0, v15, v8}, Lcom/mysql/jdbc/PreparedStatement;->processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I

    move-result v0

    .line 1361
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->clearParameters()V

    move v15, v0

    const/4 v0, 0x1

    .line 1365
    :cond_7
    iget-object v5, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    add-int/lit8 v17, v14, 0x1

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v9, v0, v5}, Lcom/mysql/jdbc/PreparedStatement;->setOneBatchedParameterSet(Ljava/sql/PreparedStatement;ILjava/lang/Object;)I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    add-int/lit8 v12, v12, 0x1

    move/from16 v14, v17

    goto :goto_4

    .line 1369
    :cond_8
    :try_start_7
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v5, v0

    add-int/lit8 v0, v14, -0x1

    .line 1371
    :try_start_8
    invoke-virtual {v1, v0, v7, v8, v5}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v16

    .line 1374
    :goto_6
    move-object v0, v9

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v1, v0, v15, v8}, Lcom/mysql/jdbc/PreparedStatement;->processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I

    move-result v5

    .line 1376
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->clearParameters()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    sub-int v7, v6, v14

    if-eqz v9, :cond_9

    .line 1381
    :try_start_9
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v9, 0x0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v5, v11

    goto/16 :goto_11

    :cond_9
    :goto_7
    if-lez v7, :cond_d

    .line 1389
    :try_start_a
    iget-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz v0, :cond_a

    .line 1390
    invoke-direct {v1, v7}, Lcom/mysql/jdbc/PreparedStatement;->generateMultiStatementForBatch(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v10}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object v0

    :goto_8
    move-object v9, v0

    goto :goto_9

    .line 1392
    :cond_a
    invoke-direct {v1, v7}, Lcom/mysql/jdbc/PreparedStatement;->generateMultiStatementForBatch(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/mysql/jdbc/MySQLConnection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    goto :goto_8

    :goto_9
    if-eqz v11, :cond_b

    .line 1396
    move-object v0, v9

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    iput-object v0, v11, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    :cond_b
    const/4 v0, 0x1

    :goto_a
    if-ge v14, v6, :cond_c

    .line 1402
    iget-object v12, v1, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    add-int/lit8 v13, v14, 0x1

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v9, v0, v12}, Lcom/mysql/jdbc/PreparedStatement;->setOneBatchedParameterSet(Ljava/sql/PreparedStatement;ILjava/lang/Object;)I

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move v14, v13

    goto :goto_a

    .line 1406
    :cond_c
    :try_start_b
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_b

    :catch_2
    move-exception v0

    move-object v6, v0

    sub-int/2addr v14, v10

    .line 1408
    :try_start_c
    invoke-virtual {v1, v14, v7, v8, v6}, Lcom/mysql/jdbc/PreparedStatement;->handleExceptionForBatch(II[JLjava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1411
    :goto_b
    move-object v0, v9

    check-cast v0, Lcom/mysql/jdbc/StatementImpl;

    invoke-virtual {v1, v0, v5, v8}, Lcom/mysql/jdbc/PreparedStatement;->processMultiCountsAndKeys(Lcom/mysql/jdbc/StatementImpl;I[J)I

    .line 1413
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->clearParameters()V

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v5, v11

    goto :goto_e

    :cond_d
    :goto_c
    move-object/from16 v0, v16

    if-eqz v11, :cond_f

    .line 1417
    iget-object v5, v11, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    if-nez v5, :cond_e

    .line 1421
    invoke-virtual {v11}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1423
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Timer;->purge()I

    const/4 v5, 0x0

    goto :goto_d

    .line 1418
    :cond_e
    iget-object v0, v11, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_f
    move-object v5, v11

    :goto_d
    if-nez v0, :cond_13

    if-eqz v9, :cond_10

    .line 1435
    :try_start_d
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :cond_10
    if-eqz v5, :cond_11

    .line 1440
    :try_start_e
    invoke-virtual {v5}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1441
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1444
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    if-nez v4, :cond_12

    .line 1447
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1450
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1432
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    return-object v8

    .line 1429
    :cond_13
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static {v0, v8, v6}, Lcom/mysql/jdbc/SQLError;->createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_3
    move-exception v0

    :goto_e
    if-eqz v9, :cond_14

    .line 1435
    :try_start_10
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->close()V

    .line 1434
    :cond_14
    throw v0

    :catchall_4
    move-exception v0

    move-object v5, v11

    goto :goto_f

    :catchall_5
    move-exception v0

    const/4 v5, 0x0

    :goto_f
    if-eqz v9, :cond_15

    .line 1381
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->close()V

    goto :goto_10

    :catchall_6
    move-exception v0

    goto :goto_11

    .line 1380
    :cond_15
    :goto_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_7
    move-exception v0

    const/4 v5, 0x0

    :goto_11
    if-eqz v5, :cond_16

    .line 1440
    :try_start_11
    invoke-virtual {v5}, Lcom/mysql/jdbc/StatementImpl$CancelTask;->cancel()Z

    .line 1441
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getCancelTimer()Ljava/util/Timer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Timer;->purge()I

    .line 1444
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    if-nez v4, :cond_17

    .line 1447
    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mysql/jdbc/MysqlIO;->disableMultiQueries()V

    .line 1450
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->clearBatch()V

    .line 1439
    throw v0

    :catchall_8
    move-exception v0

    .line 1452
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    throw v0
.end method

.method public executeQuery()Ljava/sql/ResultSet;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1919
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1921
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 1923
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    iget-char v3, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    invoke-virtual {p0, v2, v3}, Lcom/mysql/jdbc/PreparedStatement;->checkForDml(Ljava/lang/String;C)V

    const/4 v2, 0x0

    .line 1925
    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    .line 1927
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 1929
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->implicitlyCloseAllOpenResults()V

    .line 1931
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearWarnings()V

    .line 1933
    iget-boolean v3, p0, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead:Z

    if-eqz v3, :cond_0

    .line 1934
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->doPingInstead()V

    .line 1936
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v0

    return-object v1

    .line 1939
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setupStreamingTimeout(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1941
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->fillSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v5

    .line 1945
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1946
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v3

    .line 1947
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    move-object v10, v3

    goto :goto_0

    :cond_1
    move-object v10, v2

    .line 1954
    :goto_0
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1955
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/mysql/jdbc/MySQLConnection;->getCachedMetaData(Ljava/lang/String;)Lcom/mysql/jdbc/CachedResultSetMetaData;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    :cond_2
    move-object v11, v2

    :goto_1
    if-eqz v11, :cond_3

    .line 1961
    iget-object v3, v11, Lcom/mysql/jdbc/CachedResultSetMetaData;->fields:[Lcom/mysql/jdbc/Field;

    move-object v8, v3

    goto :goto_2

    :cond_3
    move-object v8, v2

    .line 1964
    :goto_2
    iget v3, p0, Lcom/mysql/jdbc/PreparedStatement;->maxRows:I

    invoke-interface {v1, v3}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 1966
    iget v4, p0, Lcom/mysql/jdbc/PreparedStatement;->maxRows:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->createStreamingResultSet()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/mysql/jdbc/PreparedStatement;->executeInternal(ILcom/mysql/jdbc/Buffer;ZZ[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v3

    iput-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    if-eqz v10, :cond_4

    .line 1969
    invoke-interface {v1, v10}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    :cond_4
    if-eqz v11, :cond_5

    .line 1973
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1, v2, v11, v3}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    goto :goto_3

    .line 1975
    :cond_5
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCacheResultSetMetadata()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1976
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1, v3, v2, v4}, Lcom/mysql/jdbc/MySQLConnection;->initializeResultsMetadataFromCache(Ljava/lang/String;Lcom/mysql/jdbc/CachedResultSetMetaData;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 1980
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-interface {v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mysql/jdbc/PreparedStatement;->lastInsertId:J

    .line 1982
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1983
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executeUpdate()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1998
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->executeLargeUpdate()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt(J)I

    move-result v0

    return v0
.end method

.method protected executeUpdateInternal(ZZ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2007
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2009
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->clearWarnings()V

    const/4 p1, 0x0

    .line 2010
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedGeneratedKeys:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2013
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    move-object v1, p0

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/PreparedStatement;->executeUpdateInternal([[B[Ljava/io/InputStream;[Z[I[ZZ)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    .line 2014
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected executeUpdateInternal([[B[Ljava/io/InputStream;[Z[I[ZZ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2039
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object p5

    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object p5

    monitor-enter p5

    .line 2041
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x0

    .line 2043
    invoke-interface {v0, v1}, Lcom/mysql/jdbc/MySQLConnection;->isReadOnly(Z)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2048
    iget-char v2, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    const/16 v3, 0x53

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->isSelectQuery()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "PreparedStatement.37"

    .line 2049
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "01S03"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 2052
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->resetCancelledState()V

    .line 2054
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->implicitlyCloseAllOpenResults()V

    .line 2058
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;->fillSendPacket([[B[Ljava/io/InputStream;[Z[I)Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    const/4 p1, 0x0

    .line 2062
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2063
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object p1

    .line 2064
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    invoke-interface {v0, p2}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    :cond_2
    const/4 p2, -0x1

    .line 2070
    invoke-interface {v0, p2}, Lcom/mysql/jdbc/MySQLConnection;->setSessionMaxRows(I)V

    .line 2074
    iget-boolean p2, p0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz p2, :cond_3

    .line 2075
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v1

    const/4 p2, 0x1

    .line 2076
    invoke-interface {v0, p2}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    move p2, v1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v7, p6

    .line 2079
    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/PreparedStatement;->executeInternal(ILcom/mysql/jdbc/Buffer;ZZ[Lcom/mysql/jdbc/Field;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object p3

    .line 2081
    iget-boolean p4, p0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    if-eqz p4, :cond_4

    .line 2082
    invoke-interface {v0, p2}, Lcom/mysql/jdbc/MySQLConnection;->setReadInfoMsgEnabled(Z)V

    .line 2083
    iget-char p2, p0, Lcom/mysql/jdbc/PreparedStatement;->firstCharOfStmt:C

    invoke-interface {p3, p2}, Lcom/mysql/jdbc/ResultSetInternalMethods;->setFirstCharOfQuery(C)V

    :cond_4
    if-eqz p1, :cond_5

    .line 2087
    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    .line 2090
    :cond_5
    iput-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->results:Lcom/mysql/jdbc/ResultSetInternalMethods;

    .line 2092
    invoke-interface {p3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateCount()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mysql/jdbc/PreparedStatement;->updateCount:J

    .line 2094
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->containsOnDuplicateKeyUpdateInSQL()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    if-eqz p1, :cond_7

    .line 2095
    iget-wide p1, p0, Lcom/mysql/jdbc/PreparedStatement;->updateCount:J

    const-wide/16 v0, 0x2

    cmp-long p1, p1, v0

    if-eqz p1, :cond_6

    iget-wide p1, p0, Lcom/mysql/jdbc/PreparedStatement;->updateCount:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_7

    :cond_6
    const-wide/16 p1, 0x1

    .line 2096
    iput-wide p1, p0, Lcom/mysql/jdbc/PreparedStatement;->updateCount:J

    .line 2100
    :cond_7
    invoke-interface {p3}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getUpdateID()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mysql/jdbc/PreparedStatement;->lastInsertId:J

    .line 2102
    iget-wide p1, p0, Lcom/mysql/jdbc/PreparedStatement;->updateCount:J

    monitor-exit p5

    return-wide p1

    .line 2044
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PreparedStatement.34"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PreparedStatement.35"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 2103
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected fillSendPacket()Lcom/mysql/jdbc/Buffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2120
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2121
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/mysql/jdbc/PreparedStatement;->fillSendPacket([[B[Ljava/io/InputStream;[Z[I)Lcom/mysql/jdbc/Buffer;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected fillSendPacket([[B[Ljava/io/InputStream;[Z[I)Lcom/mysql/jdbc/Buffer;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 2144
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 2145
    :try_start_0
    iget-object v1, v7, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v9

    .line 2147
    invoke-virtual {v9}, Lcom/mysql/jdbc/Buffer;->clear()V

    const/4 v1, 0x3

    .line 2149
    invoke-virtual {v9, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2151
    iget-object v1, v7, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v10

    .line 2158
    iget-object v1, v7, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getStatementComment()Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v11, :cond_1

    .line 2163
    iget-object v1, v7, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    if-eqz v1, :cond_0

    .line 2164
    iget-object v1, v7, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    invoke-virtual {v1, v11}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    .line 2166
    :cond_0
    iget-object v12, v7, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v1, v7, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v3, v7, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v14

    iget-object v3, v7, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v16

    move-object v13, v1

    invoke-static/range {v11 .. v16}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v1

    .line 2170
    :goto_0
    array-length v3, v1

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x6

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move v4, v3

    const/4 v3, 0x0

    .line 2174
    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_3

    .line 2175
    aget-boolean v5, p3, v3

    if-eqz v5, :cond_2

    if-eqz v10, :cond_2

    .line 2176
    aget v5, p4, v3

    add-int/2addr v4, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    .line 2181
    invoke-virtual {v9, v4}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    :cond_4
    if-eqz v1, :cond_5

    .line 2185
    sget-object v3, Lcom/mysql/jdbc/Constants;->SLASH_STAR_SPACE_AS_BYTES:[B

    invoke-virtual {v9, v3}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2186
    invoke-virtual {v9, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2187
    sget-object v1, Lcom/mysql/jdbc/Constants;->SPACE_STAR_SLASH_SPACE_AS_BYTES:[B

    invoke-virtual {v9, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    :cond_5
    const/4 v11, 0x0

    .line 2190
    :goto_3
    array-length v1, v0

    if-ge v11, v1, :cond_7

    .line 2191
    aget-object v1, v0, v11

    aget-object v2, p2, v11

    invoke-direct {v7, v1, v2, v11}, Lcom/mysql/jdbc/PreparedStatement;->checkAllParametersSet([BLjava/io/InputStream;I)V

    .line 2193
    iget-object v1, v7, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    aget-object v1, v1, v11

    invoke-virtual {v9, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2195
    aget-boolean v1, p3, v11

    if-eqz v1, :cond_6

    .line 2196
    aget-object v3, p2, v11

    const/4 v4, 0x1

    aget v5, p4, v11

    move-object/from16 v1, p0

    move-object v2, v9

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/PreparedStatement;->streamToBytes(Lcom/mysql/jdbc/Buffer;Ljava/io/InputStream;ZIZ)V

    goto :goto_4

    .line 2198
    :cond_6
    aget-object v1, v0, v11

    invoke-virtual {v9, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2202
    :cond_7
    iget-object v1, v7, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    array-length v0, v0

    aget-object v0, v1, v0

    invoke-virtual {v9, v0}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2204
    monitor-exit v8

    return-object v9

    :catchall_0
    move-exception v0

    .line 2205
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBytesRepresentation(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2260
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2261
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    aget-boolean v1, v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2262
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    aget p1, v3, p1

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v3

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->streamToBytes(Ljava/io/InputStream;ZIZ)[B

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 2266
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    aget-object p1, v1, p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2269
    monitor-exit v0

    return-object p1

    .line 2272
    :cond_1
    aget-byte v1, p1, v2

    const/16 v3, 0x27

    if-ne v1, v3, :cond_2

    array-length v1, p1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_2

    .line 2273
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    new-array v1, v1, [B

    .line 2274
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2276
    monitor-exit v0

    return-object v1

    .line 2279
    :cond_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2280
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getBytesRepresentationForBatch(II)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2291
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2292
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->batchedArgs:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 2293
    instance-of v1, p2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2295
    :try_start_1
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    .line 2298
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreparedStatement.32"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PreparedStatement.33"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2302
    :cond_0
    check-cast p2, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    .line 2303
    iget-object v1, p2, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    aget-boolean v1, v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2304
    iget-object v1, p2, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    aget-object v1, v1, p1

    iget-object p2, p2, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    aget p1, p2, p1

    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result p2

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->streamToBytes(Ljava/io/InputStream;ZIZ)[B

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 2307
    :cond_1
    iget-object p2, p2, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    aget-object p1, p2, p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 2309
    monitor-exit v0

    return-object p1

    .line 2312
    :cond_2
    aget-byte p2, p1, v2

    const/16 v1, 0x27

    if-ne p2, v1, :cond_3

    array-length p2, p1

    const/4 v3, 0x1

    sub-int/2addr p2, v3

    aget-byte p2, p1, p2

    if-ne p2, v1, :cond_3

    .line 2313
    array-length p2, p1

    add-int/lit8 p2, p2, -0x2

    new-array p2, p2, [B

    .line 2314
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    invoke-static {p1, v3, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2316
    monitor-exit v0

    return-object p2

    .line 2319
    :cond_3
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2320
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1812
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1813
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLocationOfOnDuplicateKeyUpdate()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1276
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget v0, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->locationOfOnDuplicateKeyUpdate:I

    return v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2497
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2505
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->isSelectQuery()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2506
    monitor-exit v0

    return-object v2

    .line 2512
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->pstmtResultMetaData:Ljava/sql/ResultSetMetaData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_8

    .line 2514
    :try_start_1
    new-instance v1, Lcom/mysql/jdbc/PreparedStatement;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x1

    .line 2516
    :try_start_2
    invoke-virtual {v1, v3}, Lcom/mysql/jdbc/PreparedStatement;->setMaxRows(I)V

    .line 2518
    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    array-length v4, v4

    :goto_0
    if-gt v3, v4, :cond_1

    const-string v5, ""

    .line 2521
    invoke-virtual {v1, v3, v5}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2524
    :cond_1
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->execute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2527
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2529
    :try_start_3
    invoke-interface {v3}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v4

    iput-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->pstmtResultMetaData:Ljava/sql/ResultSetMetaData;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    move-object v8, v4

    move-object v4, v1

    move-object v1, v3

    move-object v3, v8

    goto :goto_4

    .line 2531
    :cond_2
    :try_start_4
    new-instance v3, Lcom/mysql/jdbc/ResultSetMetaData;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/mysql/jdbc/Field;

    iget-object v5, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getUseOldAliasMetadataBehavior()Z

    move-result v5

    iget-object v6, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->getYearIsDateType()Z

    move-result v6

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mysql/jdbc/ResultSetMetaData;-><init>([Lcom/mysql/jdbc/Field;ZZLcom/mysql/jdbc/ExceptionInterceptor;)V

    iput-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->pstmtResultMetaData:Ljava/sql/ResultSetMetaData;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_3

    .line 2539
    :try_start_5
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catch_0
    move-exception v2

    .line 2549
    :cond_3
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catch_1
    move-exception v2

    :goto_3
    if-nez v2, :cond_4

    goto :goto_7

    .line 2558
    :cond_4
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_1
    move-exception v3

    move-object v4, v1

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v3

    move-object v1, v2

    move-object v4, v1

    :goto_4
    if-eqz v1, :cond_5

    .line 2539
    :try_start_8
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v2, v1

    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 2549
    :try_start_9
    invoke-virtual {v4}, Lcom/mysql/jdbc/PreparedStatement;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    :catch_3
    move-exception v1

    move-object v2, v1

    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    .line 2558
    :try_start_a
    throw v2

    .line 2535
    :cond_7
    throw v3

    .line 2563
    :cond_8
    :goto_7
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->pstmtResultMetaData:Ljava/sql/ResultSetMetaData;

    monitor-exit v0

    return-object v1

    :catchall_3
    move-exception v1

    .line 2564
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v1
.end method

.method public getNonRewrittenSql()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2243
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2244
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    const-string v2, " of: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2247
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2250
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2251
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getParameterBindings()Lcom/mysql/jdbc/ParameterBindings;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4868
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4869
    :try_start_0
    new-instance v1, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;

    invoke-direct {v1, p0}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;-><init>(Lcom/mysql/jdbc/PreparedStatement;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4870
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getParameterIndexOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2577
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2578
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    if-nez v1, :cond_1

    .line 2579
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getGenerateSimpleParameterMetadata()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2580
    new-instance v1, Lcom/mysql/jdbc/MysqlParameterMetadata;

    iget v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    invoke-direct {v1, v2}, Lcom/mysql/jdbc/MysqlParameterMetadata;-><init>(I)V

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    goto :goto_0

    .line 2582
    :cond_0
    new-instance v1, Lcom/mysql/jdbc/MysqlParameterMetadata;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mysql/jdbc/MysqlParameterMetadata;-><init>([Lcom/mysql/jdbc/Field;ILcom/mysql/jdbc/ExceptionInterceptor;)V

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    .line 2586
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterMetaData:Lcom/mysql/jdbc/MysqlParameterMetadata;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2587
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getParseInfo()Lcom/mysql/jdbc/PreparedStatement$ParseInfo;
    .locals 1

    .line 2591
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    return-object v0
.end method

.method public getPreparedSql()Ljava/lang/String;
    .locals 3

    .line 5049
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5050
    :try_start_1
    iget v1, p0, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    if-nez v1, :cond_0

    .line 5051
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 5055
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->getSqlForBatch(Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    .line 5057
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    .line 5059
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 5061
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRewrittenBatchSize()I
    .locals 1

    .line 2239
    iget v0, p0, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    return v0
.end method

.method public getUpdateCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5067
    invoke-super {p0}, Lcom/mysql/jdbc/StatementImpl;->getUpdateCount()I

    move-result v0

    .line 5069
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->containsOnDuplicateKeyUpdateInSQL()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->compensateForOnDuplicateKeyUpdate:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected getValuesClause()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1616
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    iget-object v0, v0, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->valuesClause:Ljava/lang/String;

    return-object v0
.end method

.method isNull(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2645
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2646
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    aget-boolean p1, v1, p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2647
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected isSelectQuery()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2568
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2569
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    const-string v2, "\'\""

    const-string v3, "\'\""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/StringUtils;->stripComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SELECT"

    invoke-static {v1, v2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2570
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected prepareBatchedInsertSQL(Lcom/mysql/jdbc/MySQLConnection;I)Lcom/mysql/jdbc/PreparedStatement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2220
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2221
    :try_start_0
    new-instance v1, Lcom/mysql/jdbc/PreparedStatement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rewritten batch of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/PreparedStatement;->parseInfo:Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    invoke-virtual {v4, p2}, Lcom/mysql/jdbc/PreparedStatement$ParseInfo;->getParseInfoForBatch(I)Lcom/mysql/jdbc/PreparedStatement$ParseInfo;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V

    .line 2223
    iget-boolean p1, p0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/PreparedStatement;->setRetrieveGeneratedKeys(Z)V

    .line 2224
    iput p2, v1, Lcom/mysql/jdbc/PreparedStatement;->rewrittenBatchSize:I

    .line 2226
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 2227
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected realClose(ZZ)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2691
    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    if-nez v0, :cond_0

    return-void

    .line 2697
    :cond_0
    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2701
    :try_start_0
    iget-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement;->isClosed:Z

    if-eqz v0, :cond_1

    .line 2702
    monitor-exit v2

    return-void

    .line 2705
    :cond_1
    iget-boolean v0, v1, Lcom/mysql/jdbc/PreparedStatement;->useUsageAdvisor:Z

    if-eqz v0, :cond_2

    .line 2706
    iget v0, v1, Lcom/mysql/jdbc/PreparedStatement;->numberOfExecutions:I

    const/4 v3, 0x1

    if-gt v0, v3, :cond_2

    const-string v0, "PreparedStatement.43"

    .line 2707
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2709
    iget-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->eventSink:Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    new-instance v15, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v4, 0x0

    const-string v5, ""

    iget-object v6, v1, Lcom/mysql/jdbc/PreparedStatement;->currentCatalog:Ljava/lang/String;

    iget-wide v7, v1, Lcom/mysql/jdbc/PreparedStatement;->connectionId:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getId()I

    move-result v9

    const/4 v10, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    sget-object v16, Lcom/mysql/jdbc/Constants;->MILLIS_I18N:Ljava/lang/String;

    const/16 v17, 0x0

    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement;->pointOfOrigin:Ljava/lang/String;

    move-object/from16 v19, v3

    move-object v3, v15

    move-object/from16 v20, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v19

    invoke-direct/range {v3 .. v18}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v20

    invoke-interface {v0, v3}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 2714
    :cond_2
    invoke-super/range {p0 .. p2}, Lcom/mysql/jdbc/StatementImpl;->realClose(ZZ)V

    const/4 v0, 0x0

    .line 2716
    iput-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->dbmd:Ljava/sql/DatabaseMetaData;

    .line 2717
    iput-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->originalSql:Ljava/lang/String;

    .line 2718
    move-object v3, v0

    check-cast v3, [[B

    iput-object v3, v1, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    .line 2719
    move-object v3, v0

    check-cast v3, [[B

    iput-object v3, v1, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    .line 2720
    iput-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    .line 2721
    iput-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    .line 2722
    iput-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    .line 2723
    iput-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    .line 2724
    iput-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->streamConvertBuf:[B

    .line 2725
    iput-object v0, v1, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    .line 2726
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setArray(ILjava/sql/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2742
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public setAsciiStream(ILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 4627
    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/16 p2, 0xc

    .line 2768
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 2770
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    :goto_0
    return-void
.end method

.method public setAsciiStream(ILjava/io/InputStream;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    long-to-int p3, p3

    .line 4631
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setAsciiStream(ILjava/io/InputStream;I)V

    .line 4632
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result p3

    add-int/2addr p1, p3

    const/16 p3, 0x7d5

    aput p3, p2, p1

    return-void
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x3

    if-nez p2, :cond_0

    .line 2788
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 2790
    :cond_0
    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->consistentToString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 2792
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v1

    add-int/2addr p1, v1

    aput v0, p2, p1

    :goto_0
    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 4636
    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2816
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p2, :cond_0

    const/4 p2, -0x2

    .line 2818
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 2820
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v1

    const/4 v2, 0x1

    if-lt p1, v2, :cond_3

    .line 2822
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    array-length v3, v3

    if-gt p1, v3, :cond_3

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Can\'t set IN parameter for return value of stored function call."

    const-string p2, "S1009"

    .line 2828
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 2832
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    sub-int/2addr p1, v2

    add-int/2addr v1, p1

    aput-object p2, v3, v1

    .line 2833
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    aput-boolean v2, p2, v1

    .line 2834
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->streamLengths:[I

    aput p3, p2, v1

    .line 2835
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    const/4 p3, 0x0

    aput-boolean p3, p2, v1

    .line 2836
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result p3

    add-int/2addr p1, p3

    const/16 p3, 0x7d4

    aput p3, p2, p1

    .line 2838
    :goto_1
    monitor-exit v0

    return-void

    .line 2823
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PreparedStatement.2"

    invoke-static {p3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "PreparedStatement.3"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement;->staticSqlStrings:[[B

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "PreparedStatement.4"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 2838
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBinaryStream(ILjava/io/InputStream;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    long-to-int p3, p3

    .line 4640
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public setBlob(ILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4644
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;)V

    return-void
.end method

.method public setBlob(ILjava/io/InputStream;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    long-to-int p3, p3

    .line 2842
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    return-void
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x7d4

    if-nez p2, :cond_0

    .line 2858
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 2860
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x27

    .line 2862
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-wide/16 v3, 0x1

    .line 2863
    invoke-interface {p2}, Ljava/sql/Blob;->length()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-interface {p2, v3, v4, v5}, Ljava/sql/Blob;->getBytes(JI)[B

    move-result-object v3

    invoke-interface {p2}, Ljava/sql/Blob;->length()J

    move-result-wide v4

    long-to-int p2, v4

    invoke-direct {p0, v3, v1, p2}, Lcom/mysql/jdbc/PreparedStatement;->escapeblockFast([BLjava/io/ByteArrayOutputStream;I)V

    .line 2864
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2866
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 2868
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v1

    add-int/2addr p1, v1

    aput v0, p2, p1

    :goto_0
    return-void
.end method

.method public setBoolean(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2885
    iget-boolean v0, p0, Lcom/mysql/jdbc/PreparedStatement;->useTrueBoolean:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    .line 2886
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    const-string p2, "\'t\'"

    goto :goto_1

    :cond_2
    const-string p2, "\'f\'"

    .line 2888
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 2890
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v0

    add-int/2addr p1, v0

    const/16 v0, 0x10

    aput v0, p2, p1

    :goto_2
    return-void
.end method

.method public setByte(IB)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2907
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 2909
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, -0x6

    aput v0, p2, p1

    return-void
.end method

.method public setBytes(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2926
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[BZZ)V

    if-eqz p2, :cond_0

    .line 2929
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, -0x2

    aput v0, p2, p1

    :cond_0
    return-void
.end method

.method protected setBytes(I[BZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2934
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p2, :cond_0

    const/4 p2, -0x2

    .line 2936
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 2938
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    :try_start_1
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x27

    if-nez v2, :cond_d

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result p4

    if-eqz p4, :cond_1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/mysql/jdbc/CharsetMapping;->isMultibyteCharset(Ljava/lang/String;)Z

    move-result p4
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p4, :cond_1

    goto/16 :goto_4

    .line 2973
    :cond_1
    :try_start_2
    array-length p4, p2

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    .line 2977
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x4

    invoke-interface {p3, v2, v1, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    const/16 v3, 0x9

    .line 2983
    :cond_3
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    add-int/2addr v3, p4

    invoke-direct {p3, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v2, 0x72

    const/16 v3, 0x6e

    if-eqz v1, :cond_4

    const/16 v1, 0x5f

    .line 2986
    invoke-virtual {p3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0x62

    .line 2987
    invoke-virtual {p3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0x69

    .line 2988
    invoke-virtual {p3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2989
    invoke-virtual {p3, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0x61

    .line 2990
    invoke-virtual {p3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2991
    invoke-virtual {p3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0x79

    .line 2992
    invoke-virtual {p3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2994
    :cond_4
    invoke-virtual {p3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    if-ge v4, p4, :cond_c

    .line 2997
    aget-byte v1, p2, v4

    const/16 v6, 0x5c

    if-eqz v1, :cond_b

    const/16 v7, 0xa

    if-eq v1, v7, :cond_a

    const/16 v7, 0xd

    if-eq v1, v7, :cond_9

    const/16 v7, 0x1a

    if-eq v1, v7, :cond_8

    const/16 v7, 0x22

    if-eq v1, v7, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v6, :cond_5

    .line 3043
    invoke-virtual {p3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 3019
    :cond_5
    invoke-virtual {p3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3020
    invoke-virtual {p3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 3025
    :cond_6
    invoke-virtual {p3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3026
    invoke-virtual {p3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 3031
    :cond_7
    invoke-virtual {p3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3032
    invoke-virtual {p3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 3037
    :cond_8
    invoke-virtual {p3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0x5a

    .line 3038
    invoke-virtual {p3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 3013
    :cond_9
    invoke-virtual {p3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3014
    invoke-virtual {p3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 3007
    :cond_a
    invoke-virtual {p3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3008
    invoke-virtual {p3, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 3001
    :cond_b
    invoke-virtual {p3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0x30

    .line 3002
    invoke-virtual {p3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3047
    :cond_c
    invoke-virtual {p3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3049
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 3051
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 2946
    :cond_d
    :goto_4
    :try_start_3
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    array-length p4, p2

    mul-int/lit8 p4, p4, 0x2

    add-int/lit8 p4, p4, 0x3

    invoke-direct {p3, p4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 p4, 0x78

    .line 2947
    invoke-virtual {p3, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2948
    invoke-virtual {p3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2950
    :goto_5
    array-length p4, p2

    if-ge v4, p4, :cond_e

    .line 2951
    aget-byte p4, p2, v4

    and-int/lit16 p4, p4, 0xff

    div-int/lit8 p4, p4, 0x10

    .line 2952
    aget-byte v1, p2, v4

    and-int/lit16 v1, v1, 0xff

    rem-int/lit8 v1, v1, 0x10

    .line 2954
    sget-object v2, Lcom/mysql/jdbc/PreparedStatement;->HEX_DIGITS:[B

    aget-byte p4, v2, p4

    invoke-virtual {p3, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2955
    sget-object p4, Lcom/mysql/jdbc/PreparedStatement;->HEX_DIGITS:[B

    aget-byte p4, p4, v1

    invoke-virtual {p3, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2958
    :cond_e
    invoke-virtual {p3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2960
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2962
    :try_start_4
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 2967
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "S1009"

    const/4 p4, 0x0

    invoke-static {p2, p3, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p2

    .line 2968
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2969
    throw p2

    :catch_1
    move-exception p1

    .line 2965
    throw p1

    .line 3051
    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method protected setBytesNoEscape(I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3067
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/16 v1, 0x27

    const/4 v2, 0x0

    .line 3068
    aput-byte v1, v0, v2

    .line 3069
    array-length v3, p2

    const/4 v4, 0x1

    invoke-static {p2, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3070
    array-length p2, p2

    add-int/2addr p2, v4

    aput-byte v1, v0, p2

    .line 3072
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    return-void
.end method

.method protected setBytesNoEscapeNoQuotes(I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3076
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 4648
    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3101
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, -0x1

    if-nez p2, :cond_0

    .line 3104
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 3109
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v2

    .line 3111
    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getClobCharacterEncoding()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-eq p3, v1, :cond_2

    .line 3114
    new-array v1, p3, [C

    .line 3116
    invoke-static {p2, v1, p3}, Lcom/mysql/jdbc/PreparedStatement;->readFully(Ljava/io/Reader;[CI)I

    move-result p2

    if-nez v3, :cond_1

    .line 3119
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, v1, v4, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3122
    :cond_1
    :try_start_1
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, v1, v4, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {p3, v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3124
    :catch_1
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported character encoding "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_2
    const/16 p3, 0x1000

    .line 3129
    new-array p3, p3, [C

    .line 3131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3133
    :goto_0
    invoke-virtual {p2, p3}, Ljava/io/Reader;->read([C)I

    move-result v5

    if-eq v5, v1, :cond_3

    .line 3134
    invoke-virtual {v2, p3, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    .line 3138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3141
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3149
    :goto_1
    :try_start_4
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result p3

    add-int/2addr p1, p3

    const/16 p3, 0x7d5

    aput p3, p2, p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3154
    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    .line 3143
    :catch_2
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported character encoding "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3152
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 3154
    :goto_4
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public setCharacterStream(ILjava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    long-to-int p3, p3

    .line 4652
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    return-void
.end method

.method public setClob(ILjava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4657
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;)V

    return-void
.end method

.method public setClob(ILjava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4662
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;->setCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public setClob(ILjava/sql/Clob;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3169
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/16 v1, 0x7d5

    if-nez p2, :cond_0

    .line 3171
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 3174
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getClobCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_1

    .line 3177
    invoke-interface {p2}, Ljava/sql/Clob;->length()J

    move-result-wide v5

    long-to-int v2, v5

    invoke-interface {p2, v3, v4, v2}, Ljava/sql/Clob;->getSubString(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3180
    :cond_1
    :try_start_1
    invoke-interface {p2}, Ljava/sql/Clob;->length()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-interface {p2, v3, v4, v5}, Ljava/sql/Clob;->getSubString(JI)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3187
    :goto_0
    :try_start_2
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr p1, v2

    aput v1, p2, p1

    .line 3189
    :goto_1
    monitor-exit v0

    return-void

    .line 3182
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported character encoding "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 3189
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setDate(ILjava/sql/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3205
    invoke-virtual {p0, p1, p2, v0}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    return-void
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x5b

    if-nez p2, :cond_0

    .line 3224
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 3226
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/PreparedStatement;->useLegacyDatetimeCode:Z

    if-nez v1, :cond_1

    .line 3227
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->newSetDateInternal(ILjava/sql/Date;Ljava/util/Calendar;)V

    goto :goto_0

    .line 3229
    :cond_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3230
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    if-nez v2, :cond_2

    .line 3231
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "\'\'yyyy-MM-dd\'\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    :cond_2
    if-eqz p3, :cond_3

    .line 3234
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3237
    :cond_3
    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->ddf:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3239
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result p3

    add-int/2addr p1, p3

    aput v0, p2, p1

    .line 3240
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDouble(ID)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3258
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3259
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getAllowNanAndInf()Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v1, p2, v1

    if-eqz v1, :cond_0

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v1, p2, v1

    if-eqz v1, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3260
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, "\' is not a valid numeric or approximate numeric value"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 3265
    :cond_1
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3267
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result p3

    add-int/2addr p1, p3

    const/16 p3, 0x8

    aput p3, p2, p1

    .line 3268
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFloat(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3284
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mysql/jdbc/StringUtils;->fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3286
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, 0x6

    aput v0, p2, p1

    return-void
.end method

.method public setInt(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3302
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3304
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, 0x4

    aput v0, p2, p1

    return-void
.end method

.method protected final setInternal(ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3340
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3344
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    if-eqz v1, :cond_0

    .line 3345
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    invoke-virtual {v1, p2}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;)[B

    move-result-object p2

    goto :goto_0

    .line 3347
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v5

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object p2

    .line 3351
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 3352
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final setInternal(I[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3308
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3310
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v1

    .line 3312
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->checkBounds(II)V

    .line 3314
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isStream:[Z

    add-int/lit8 p1, p1, -0x1

    add-int/2addr p1, v1

    const/4 v1, 0x0

    aput-boolean v1, v2, p1

    .line 3315
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    aput-boolean v1, v2, p1

    .line 3316
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterStreams:[Ljava/io/InputStream;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    .line 3317
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterValues:[[B

    aput-object p2, v1, p1

    .line 3318
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLong(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3368
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3370
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result p3

    add-int/2addr p1, p3

    const/4 p3, -0x5

    aput p3, p2, p1

    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 4666
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    return-void
.end method

.method public setNCharacterStream(ILjava/io/Reader;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4803
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, -0x1

    if-nez p2, :cond_0

    .line 4806
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    .line 4812
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getUseStreamLengthsInPrepStmts()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-wide/16 v4, -0x1

    cmp-long v2, p3, v4

    if-eqz v2, :cond_1

    long-to-int p3, p3

    .line 4817
    new-array p4, p3, [C

    .line 4819
    invoke-static {p2, p4, p3}, Lcom/mysql/jdbc/PreparedStatement;->readFully(Ljava/io/Reader;[CI)I

    move-result p2

    .line 4820
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p4, v3, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setNString(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 p3, 0x1000

    .line 4823
    new-array p3, p3, [C

    .line 4825
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4827
    :goto_0
    invoke-virtual {p2, p3}, Ljava/io/Reader;->read([C)I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 4828
    invoke-virtual {p4, p3, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4831
    :cond_2
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNString(ILjava/lang/String;)V

    .line 4834
    :goto_1
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result p3

    add-int/2addr p1, p3

    const/16 p3, 0x7db

    aput p3, p2, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4839
    :goto_2
    :try_start_1
    monitor-exit v0

    return-void

    .line 4837
    :goto_3
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4839
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setNClob(ILjava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4843
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;)V

    return-void
.end method

.method public setNClob(ILjava/io/Reader;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, -0x1

    .line 4861
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 4863
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;->setNCharacterStream(ILjava/io/Reader;J)V

    :goto_0
    return-void
.end method

.method public setNString(ILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4684
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4685
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    const-string v2, "utf8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 4692
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto/16 :goto_3

    .line 4694
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3ff199999999999aL    # 1.1

    mul-double v4, v4, v6

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "_utf8"

    .line 4699
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    .line 4700
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_a

    .line 4707
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-eqz v6, :cond_9

    const/16 v8, 0xa

    if-eq v6, v8, :cond_8

    const/16 v8, 0xd

    if-eq v6, v8, :cond_7

    const/16 v8, 0x1a

    if-eq v6, v8, :cond_6

    const/16 v8, 0x22

    if-eq v6, v8, :cond_4

    if-eq v6, v4, :cond_3

    if-eq v6, v7, :cond_2

    .line 4756
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4729
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4730
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4735
    :cond_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4736
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4741
    :cond_4
    iget-boolean v6, p0, Lcom/mysql/jdbc/PreparedStatement;->usingAnsiMode:Z

    if-eqz v6, :cond_5

    .line 4742
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4745
    :cond_5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4750
    :cond_6
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x5a

    .line 4751
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4723
    :cond_7
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x72

    .line 4724
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4717
    :cond_8
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x6e

    .line 4718
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4711
    :cond_9
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x30

    .line 4712
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4760
    :cond_a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4762
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4766
    iget-boolean p2, p0, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    if-nez p2, :cond_b

    .line 4767
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-string v3, "UTF-8"

    invoke-interface {p2, v3}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object v3

    const-string v4, "UTF-8"

    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v6

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object p2

    goto :goto_2

    .line 4771
    :cond_b
    invoke-static {v2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 4774
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 4776
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v1

    add-int/2addr p1, v1

    const/16 v1, -0x9

    aput v1, p2, p1

    .line 4778
    :goto_3
    monitor-exit v0

    return-void

    .line 4686
    :cond_c
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4687
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 4778
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNull(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3389
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object p2

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    const-string v0, "null"

    .line 3390
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3391
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v2

    add-int/2addr v2, p1

    aput-boolean v1, v0, v2

    .line 3393
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v1

    add-int/2addr p1, v1

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 3394
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNull(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3415
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    .line 3417
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result p3

    add-int/2addr p1, p3

    const/4 p3, 0x0

    aput p3, p2, p1

    return-void
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3524
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p2, :cond_0

    const/16 p2, 0x457

    .line 3526
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 3528
    :cond_0
    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    .line 3529
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    goto/16 :goto_0

    .line 3530
    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3531
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3532
    :cond_2
    instance-of v1, p2, Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    .line 3533
    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    goto/16 :goto_0

    .line 3534
    :cond_3
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_4

    .line 3535
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setShort(IS)V

    goto/16 :goto_0

    .line 3536
    :cond_4
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 3537
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInt(II)V

    goto/16 :goto_0

    .line 3538
    :cond_5
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 3539
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setLong(IJ)V

    goto/16 :goto_0

    .line 3540
    :cond_6
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 3541
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setFloat(IF)V

    goto/16 :goto_0

    .line 3542
    :cond_7
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_8

    .line 3543
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/mysql/jdbc/PreparedStatement;->setDouble(ID)V

    goto/16 :goto_0

    .line 3544
    :cond_8
    instance-of v1, p2, [B

    if-eqz v1, :cond_9

    .line 3545
    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    goto/16 :goto_0

    .line 3546
    :cond_9
    instance-of v1, p2, Ljava/sql/Date;

    if-eqz v1, :cond_a

    .line 3547
    check-cast p2, Ljava/sql/Date;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;)V

    goto/16 :goto_0

    .line 3548
    :cond_a
    instance-of v1, p2, Ljava/sql/Time;

    if-eqz v1, :cond_b

    .line 3549
    check-cast p2, Ljava/sql/Time;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    goto :goto_0

    .line 3550
    :cond_b
    instance-of v1, p2, Ljava/sql/Timestamp;

    if-eqz v1, :cond_c

    .line 3551
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto :goto_0

    .line 3552
    :cond_c
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    .line 3553
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    goto :goto_0

    .line 3554
    :cond_d
    instance-of v1, p2, Ljava/io/InputStream;

    if-eqz v1, :cond_e

    .line 3555
    check-cast p2, Ljava/io/InputStream;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    goto :goto_0

    .line 3556
    :cond_e
    instance-of v1, p2, Ljava/sql/Blob;

    if-eqz v1, :cond_f

    .line 3557
    check-cast p2, Ljava/sql/Blob;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setBlob(ILjava/sql/Blob;)V

    goto :goto_0

    .line 3558
    :cond_f
    instance-of v1, p2, Ljava/sql/Clob;

    if-eqz v1, :cond_10

    .line 3559
    check-cast p2, Ljava/sql/Clob;

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setClob(ILjava/sql/Clob;)V

    goto :goto_0

    .line 3560
    :cond_10
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getTreatUtilDateAsTimestamp()Z

    move-result v1

    if-eqz v1, :cond_11

    instance-of v1, p2, Ljava/util/Date;

    if-eqz v1, :cond_11

    .line 3561
    new-instance v1, Ljava/sql/Timestamp;

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto :goto_0

    .line 3562
    :cond_11
    instance-of v1, p2, Ljava/math/BigInteger;

    if-eqz v1, :cond_12

    .line 3563
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    .line 3565
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setSerializableObject(ILjava/lang/Object;)V

    .line 3568
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setObject(ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3579
    instance-of v0, p2, Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3580
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;II)V

    goto :goto_0

    .line 3582
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/PreparedStatement;->setObject(ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public setObject(ILjava/lang/Object;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3614
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/16 v1, 0x457

    if-nez p2, :cond_0

    .line 3616
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    const/16 v2, 0xc

    if-eq p3, v2, :cond_13

    const/16 v2, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p3, v2, :cond_c

    if-eq p3, v1, :cond_b

    packed-switch p3, :pswitch_data_0

    packed-switch p3, :pswitch_data_1

    packed-switch p3, :pswitch_data_2

    packed-switch p3, :pswitch_data_3

    :try_start_1
    const-string p1, "PreparedStatement.16"

    .line 3753
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p4

    invoke-static {p1, p3, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 3672
    :pswitch_0
    instance-of p3, p2, Ljava/sql/Clob;

    if-eqz p3, :cond_1

    .line 3673
    move-object p3, p2

    check-cast p3, Ljava/sql/Clob;

    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setClob(ILjava/sql/Clob;)V

    goto/16 :goto_3

    .line 3675
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 3735
    :pswitch_1
    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 3736
    new-instance p3, Ljava/text/SimpleDateFormat;

    move-object p4, p2

    check-cast p4, Ljava/lang/String;

    invoke-direct {p0, p4, v3}, Lcom/mysql/jdbc/PreparedStatement;->getDateTimePattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p4

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p3, p4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3737
    new-instance p4, Ljava/sql/Time;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {p4, v1, v2}, Ljava/sql/Time;-><init>(J)V

    invoke-virtual {p0, p1, p4}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    goto/16 :goto_3

    .line 3738
    :cond_2
    instance-of p3, p2, Ljava/sql/Timestamp;

    if-eqz p3, :cond_3

    .line 3739
    move-object p3, p2

    check-cast p3, Ljava/sql/Timestamp;

    .line 3740
    new-instance p4, Ljava/sql/Time;

    invoke-virtual {p3}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v1

    invoke-direct {p4, v1, v2}, Ljava/sql/Time;-><init>(J)V

    invoke-virtual {p0, p1, p4}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    goto/16 :goto_3

    .line 3742
    :cond_3
    move-object p3, p2

    check-cast p3, Ljava/sql/Time;

    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setTime(ILjava/sql/Time;)V

    goto/16 :goto_3

    .line 3701
    :pswitch_2
    instance-of p4, p2, Ljava/lang/String;

    if-eqz p4, :cond_4

    .line 3702
    new-instance p4, Ljava/text/ParsePosition;

    invoke-direct {p4, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3703
    new-instance v1, Ljava/text/SimpleDateFormat;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/mysql/jdbc/PreparedStatement;->getDateTimePattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3704
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p4

    goto :goto_0

    .line 3706
    :cond_4
    move-object p4, p2

    check-cast p4, Ljava/util/Date;

    :goto_0
    const/16 v1, 0x5b

    if-eq p3, v1, :cond_7

    const/16 v1, 0x5d

    if-eq p3, v1, :cond_5

    goto/16 :goto_3

    .line 3722
    :cond_5
    instance-of p3, p4, Ljava/sql/Timestamp;

    if-eqz p3, :cond_6

    .line 3723
    check-cast p4, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p4}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto/16 :goto_3

    .line 3725
    :cond_6
    new-instance p3, Ljava/sql/Timestamp;

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {p3, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;)V

    goto/16 :goto_3

    .line 3712
    :cond_7
    instance-of p3, p4, Ljava/sql/Date;

    if-eqz p3, :cond_8

    .line 3713
    check-cast p4, Ljava/sql/Date;

    invoke-virtual {p0, p1, p4}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;)V

    goto/16 :goto_3

    .line 3715
    :cond_8
    new-instance p3, Ljava/sql/Date;

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {p3, v1, v2}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setDate(ILjava/sql/Date;)V

    goto/16 :goto_3

    .line 3685
    :pswitch_3
    instance-of p3, p2, [B

    if-eqz p3, :cond_9

    .line 3686
    move-object p3, p2

    check-cast p3, [B

    check-cast p3, [B

    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    goto/16 :goto_3

    .line 3687
    :cond_9
    instance-of p3, p2, Ljava/sql/Blob;

    if-eqz p3, :cond_a

    .line 3688
    move-object p3, p2

    check-cast p3, Ljava/sql/Blob;

    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBlob(ILjava/sql/Blob;)V

    goto/16 :goto_3

    .line 3690
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v3, p0, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    iget-object p3, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v5

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    goto/16 :goto_3

    .line 3655
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;->setNumericObject(ILjava/lang/Object;II)V

    goto/16 :goto_3

    .line 3748
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setSerializableObject(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 3625
    :cond_c
    instance-of p3, p2, Ljava/lang/Boolean;

    if-eqz p3, :cond_d

    .line 3626
    move-object p3, p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    goto/16 :goto_3

    .line 3629
    :cond_d
    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_10

    const-string p3, "true"

    .line 3630
    move-object p4, p2

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_f

    const-string p3, "0"

    move-object p4, p2

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_e

    goto :goto_1

    :cond_e
    const/4 v3, 0x0

    :cond_f
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    goto :goto_3

    .line 3633
    :cond_10
    instance-of p3, p2, Ljava/lang/Number;

    if-eqz p3, :cond_12

    .line 3634
    move-object p3, p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-eqz p3, :cond_11

    goto :goto_2

    :cond_11
    const/4 v3, 0x0

    .line 3636
    :goto_2
    invoke-virtual {p0, p1, v3}, Lcom/mysql/jdbc/PreparedStatement;->setBoolean(IZ)V

    goto :goto_3

    .line 3640
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No conversion from "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " to Types.BOOLEAN possible."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p4

    invoke-static {p1, p3, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 3662
    :cond_13
    :pswitch_5
    instance-of p3, p2, Ljava/math/BigDecimal;

    if-eqz p3, :cond_14

    .line 3663
    move-object p3, p2

    check-cast p3, Ljava/math/BigDecimal;

    invoke-static {p3}, Lcom/mysql/jdbc/StringUtils;->consistentToString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/mysql/jdbc/StringUtils;->fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_3

    .line 3665
    :cond_14
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3771
    :goto_3
    :try_start_2
    monitor-exit v0

    return-void

    .line 3757
    :goto_4
    instance-of p3, p1, Ljava/sql/SQLException;

    if-eqz p3, :cond_15

    .line 3758
    check-cast p1, Ljava/sql/SQLException;

    throw p1

    .line 3761
    :cond_15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "PreparedStatement.17"

    invoke-static {p4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PreparedStatement.18"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PreparedStatement.19"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p2

    .line 3766
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3768
    throw p2

    .line 3771
    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7d4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method protected setOneBatchedParameterSet(Ljava/sql/PreparedStatement;ILjava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3775
    check-cast p3, Lcom/mysql/jdbc/PreparedStatement$BatchParams;

    .line 3777
    iget-object v0, p3, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z

    .line 3778
    iget-object v1, p3, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    const/4 v2, 0x0

    move v3, p2

    const/4 p2, 0x0

    .line 3780
    :goto_0
    array-length v4, v0

    if-ge p2, v4, :cond_2

    .line 3781
    aget-boolean v4, v0, p2

    if-eqz v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 3782
    invoke-interface {p1, v3, v2}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_1
    move v3, v4

    goto :goto_2

    .line 3784
    :cond_0
    aget-boolean v4, v1, p2

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 3785
    iget-object v5, p3, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    aget-object v5, v5, p2

    iget-object v6, p3, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    aget v6, v6, p2

    invoke-interface {p1, v3, v5, v6}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    goto :goto_1

    .line 3787
    :cond_1
    move-object v4, p1

    check-cast v4, Lcom/mysql/jdbc/PreparedStatement;

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p3, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    aget-object v6, v6, p2

    invoke-virtual {v4, v3, v6}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    move v3, v5

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public setRef(ILjava/sql/Ref;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3808
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->createSQLFeatureNotSupportedException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected setRetrieveGeneratedKeys(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2231
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2232
    :try_start_0
    iput-boolean p1, p0, Lcom/mysql/jdbc/PreparedStatement;->retrieveGeneratedKeys:Z

    .line 2233
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setShort(IS)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3856
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(ILjava/lang/String;)V

    .line 3858
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, 0x5

    aput v0, p2, p1

    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    .line 3875
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v3

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 3878
    :try_start_0
    invoke-virtual {v1, v0, v3}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 3880
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    .line 3882
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 3884
    iget-object v5, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v5

    const/16 v6, 0x27

    if-eqz v5, :cond_4

    .line 3887
    invoke-direct {v1, v2, v4}, Lcom/mysql/jdbc/PreparedStatement;->isEscapeNeededForString(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3893
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3894
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3895
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3897
    iget-boolean v2, v1, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    if-nez v2, :cond_1

    .line 3898
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v11, v1, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v2, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v12

    iget-object v2, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v2

    goto :goto_0

    .line 3902
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 3905
    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    goto :goto_2

    .line 3909
    :cond_2
    iget-boolean v3, v1, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    if-nez v3, :cond_3

    .line 3910
    iget-object v3, v1, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v4, v1, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v5, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v2

    goto :goto_1

    .line 3914
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 3917
    :goto_1
    invoke-virtual {v1, v0, v2}, Lcom/mysql/jdbc/PreparedStatement;->setBytes(I[B)V

    .line 3920
    :goto_2
    monitor-exit v8

    return-void

    .line 3926
    :cond_4
    iget-boolean v5, v1, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    const/4 v7, 0x0

    if-nez v5, :cond_6

    invoke-direct {v1, v2, v4}, Lcom/mysql/jdbc/PreparedStatement;->isEscapeNeededForString(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move-object v9, v2

    const/4 v7, 0x1

    goto/16 :goto_6

    .line 3929
    :cond_6
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x3ff199999999999aL    # 1.1

    mul-double v9, v9, v11

    double-to-int v9, v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3931
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v4, :cond_11

    .line 3938
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-eqz v10, :cond_10

    const/16 v12, 0xa

    if-eq v10, v12, :cond_f

    const/16 v12, 0xd

    if-eq v10, v12, :cond_e

    const/16 v12, 0x1a

    if-eq v10, v12, :cond_d

    const/16 v12, 0x22

    if-eq v10, v12, :cond_b

    if-eq v10, v6, :cond_a

    if-eq v10, v11, :cond_9

    const/16 v12, 0xa5

    if-eq v10, v12, :cond_7

    const/16 v12, 0x20a9

    if-eq v10, v12, :cond_7

    .line 4003
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3989
    :cond_7
    iget-object v12, v1, Lcom/mysql/jdbc/PreparedStatement;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v12, :cond_8

    .line 3990
    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v12

    .line 3991
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 3992
    invoke-virtual {v12, v10}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 3993
    invoke-virtual {v12, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 3994
    iget-object v14, v1, Lcom/mysql/jdbc/PreparedStatement;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v14, v12, v13, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 3995
    invoke-virtual {v13, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    if-ne v12, v11, :cond_8

    .line 3996
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3999
    :cond_8
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3960
    :cond_9
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3961
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3966
    :cond_a
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3967
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3972
    :cond_b
    iget-boolean v10, v1, Lcom/mysql/jdbc/PreparedStatement;->usingAnsiMode:Z

    if-eqz v10, :cond_c

    .line 3973
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3976
    :cond_c
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3981
    :cond_d
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v10, 0x5a

    .line 3982
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3954
    :cond_e
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v10, 0x72

    .line 3955
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3948
    :cond_f
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v10, 0x6e

    .line 3949
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3942
    :cond_10
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v10, 0x30

    .line 3943
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 4007
    :cond_11
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4009
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 4014
    :goto_6
    iget-boolean v2, v1, Lcom/mysql/jdbc/PreparedStatement;->isLoadDataQuery:Z

    if-nez v2, :cond_13

    if-eqz v7, :cond_12

    const/16 v10, 0x27

    const/16 v11, 0x27

    .line 4016
    iget-object v12, v1, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v13, v1, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v2, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v14

    iget-object v2, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v16

    invoke-static/range {v9 .. v16}, Lcom/mysql/jdbc/StringUtils;->getBytesWrapped(Ljava/lang/String;CCLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v2

    goto :goto_7

    .line 4019
    :cond_12
    iget-object v10, v1, Lcom/mysql/jdbc/PreparedStatement;->charConverter:Lcom/mysql/jdbc/SingleByteCharsetConverter;

    iget-object v11, v1, Lcom/mysql/jdbc/PreparedStatement;->charEncoding:Ljava/lang/String;

    iget-object v2, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v12

    iget-object v2, v1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v2

    goto :goto_7

    .line 4024
    :cond_13
    invoke-static {v9}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 4027
    :goto_7
    invoke-virtual {v1, v0, v2}, Lcom/mysql/jdbc/PreparedStatement;->setInternal(I[B)V

    .line 4029
    iget-object v2, v1, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    sub-int/2addr v0, v3

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0xc

    aput v3, v2, v0

    .line 4031
    :goto_8
    monitor-exit v8

    return-void

    :goto_9
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTime(ILjava/sql/Time;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4115
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v4, 0x0

    .line 4116
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/PreparedStatement;->setTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 4117
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTime(ILjava/sql/Time;Ljava/util/Calendar;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4097
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4098
    :try_start_0
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/PreparedStatement;->setTimeInternal(ILjava/sql/Time;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 4099
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTimestamp(ILjava/sql/Timestamp;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4188
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v4, 0x0

    .line 4189
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/PreparedStatement;->setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 4190
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4170
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->checkClosed()Lcom/mysql/jdbc/MySQLConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4171
    :try_start_0
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/PreparedStatement;->setTimestampInternal(ILjava/sql/Timestamp;Ljava/util/Calendar;Ljava/util/TimeZone;Z)V

    .line 4172
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setURL(ILjava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 4429
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4431
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result v0

    add-int/2addr p1, v0

    const/16 v0, 0x46

    aput v0, p2, p1

    goto :goto_0

    .line 4433
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    :goto_0
    return-void
.end method

.method public setUnicodeStream(ILjava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_0

    const/16 p2, 0xc

    .line 4416
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;->setNull(II)V

    goto :goto_0

    .line 4418
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 4420
    iget-object p2, p0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->getParameterIndexOffset()I

    move-result p3

    add-int/2addr p1, p3

    const/16 p3, 0x7d5

    aput p3, p2, p1

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 4603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4604
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 4605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4608
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/PreparedStatement;->asSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXCEPTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4613
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
