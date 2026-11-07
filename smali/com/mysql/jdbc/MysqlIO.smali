.class public Lcom/mysql/jdbc/MysqlIO;
.super Ljava/lang/Object;
.source "MysqlIO.java"


# static fields
.field protected static final AUTH_411_OVERHEAD:I = 0x21

.field private static final CLIENT_CAN_HANDLE_EXPIRED_PASSWORD:I = 0x400000

.field private static final CLIENT_COMPRESS:I = 0x20

.field private static final CLIENT_CONNECT_ATTRS:I = 0x100000

.field protected static final CLIENT_CONNECT_WITH_DB:I = 0x8

.field private static final CLIENT_DEPRECATE_EOF:I = 0x1000000

.field private static final CLIENT_FOUND_ROWS:I = 0x2

.field private static final CLIENT_INTERACTIVE:I = 0x400

.field private static final CLIENT_LOCAL_FILES:I = 0x80

.field private static final CLIENT_LONG_FLAG:I = 0x4

.field private static final CLIENT_LONG_PASSWORD:I = 0x1

.field private static final CLIENT_MULTI_RESULTS:I = 0x20000

.field private static final CLIENT_MULTI_STATEMENTS:I = 0x10000

.field private static final CLIENT_PLUGIN_AUTH:I = 0x80000

.field private static final CLIENT_PLUGIN_AUTH_LENENC_CLIENT_DATA:I = 0x200000

.field private static final CLIENT_PROTOCOL_41:I = 0x200

.field protected static final CLIENT_RESERVED:I = 0x4000

.field protected static final CLIENT_SECURE_CONNECTION:I = 0x8000

.field private static final CLIENT_SESSION_TRACK:I = 0x800000

.field protected static final CLIENT_SSL:I = 0x800

.field private static final CLIENT_TRANSACTIONS:I = 0x2000

.field private static final CODE_PAGE_1252:Ljava/lang/String; = "Cp1252"

.field protected static final COMP_HEADER_LENGTH:I = 0x3

.field private static final EXPLAINABLE_STATEMENT:Ljava/lang/String; = "SELECT"

.field private static final EXPLAINABLE_STATEMENT_EXTENSION:[Ljava/lang/String;

.field private static final FALSE_SCRAMBLE:Ljava/lang/String; = "xxxxxxxx"

.field protected static final HEADER_LENGTH:I = 0x4

.field protected static final INITIAL_PACKET_SIZE:I = 0x400

.field private static final MAX_PACKET_DUMP_LENGTH:I = 0x400

.field protected static final MAX_QUERY_SIZE_TO_EXPLAIN:I = 0x100000

.field protected static final MAX_QUERY_SIZE_TO_LOG:I = 0x400

.field protected static final MIN_COMPRESS_LEN:I = 0x32

.field private static final NONE:Ljava/lang/String; = "none"

.field protected static final NULL_LENGTH:I = -0x1

.field public static final SEED_LENGTH:I = 0x14

.field static final SERVER_MORE_RESULTS_EXISTS:I = 0x8

.field private static final SERVER_QUERY_NO_GOOD_INDEX_USED:I = 0x10

.field private static final SERVER_QUERY_NO_INDEX_USED:I = 0x20

.field private static final SERVER_QUERY_WAS_SLOW:I = 0x800

.field private static final SERVER_STATUS_AUTOCOMMIT:I = 0x2

.field private static final SERVER_STATUS_CURSOR_EXISTS:I = 0x40

.field private static final SERVER_STATUS_IN_TRANS:I = 0x1

.field protected static final ZERO_DATETIME_VALUE_MARKER:Ljava/lang/String; = "0000-00-00 00:00:00"

.field protected static final ZERO_DATE_VALUE_MARKER:Ljava/lang/String; = "0000-00-00"

.field private static jvmPlatformCharset:Ljava/lang/String; = null

.field private static maxBufferSize:I = 0xffff


# instance fields
.field private authPluginDataLength:I

.field private authenticationPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/AuthenticationPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private autoGenerateTestcaseScript:Z

.field private checkPacketSequence:Z

.field private clientDefaultAuthenticationPlugin:Ljava/lang/String;

.field private clientDefaultAuthenticationPluginName:Ljava/lang/String;

.field protected clientParam:J

.field private colDecimalNeedsBump:Z

.field private commandCount:I

.field private compressBufRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/mysql/jdbc/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private compressedPacketSequence:B

.field protected connection:Lcom/mysql/jdbc/MySQLConnection;

.field private deflater:Ljava/util/zip/Deflater;

.field private disabledAuthenticationPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private enablePacketDebug:Z

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field private hadWarnings:Z

.field private has41NewNewProt:Z

.field private hasLongColumnInfo:Z

.field protected host:Ljava/lang/String;

.field private isInteractiveClient:Z

.field protected lastPacketReceivedTimeMs:J

.field protected lastPacketSentTimeMs:J

.field private loadFileBufRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/mysql/jdbc/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private logSlowQueries:Z

.field private maxAllowedPacket:I

.field protected maxThreeBytes:I

.field public mysqlConnection:Ljava/net/Socket;

.field protected mysqlInput:Ljava/io/InputStream;

.field protected mysqlOutput:Ljava/io/BufferedOutputStream;

.field private needToGrabQueryFromPacket:Z

.field private oldServerStatus:I

.field private packetDebugRingBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private packetHeaderBuf:[B

.field private packetSequence:B

.field private packetSequenceReset:Z

.field private platformDbCharsetMatches:Z

.field protected port:I

.field private profileSql:Z

.field private protocolVersion:B

.field private queryBadIndexUsed:Z

.field private queryNoIndexUsed:Z

.field private queryTimingUnits:Ljava/lang/String;

.field private readPacketSequence:B

.field private reusablePacket:Lcom/mysql/jdbc/Buffer;

.field protected seed:Ljava/lang/String;

.field private sendPacket:Lcom/mysql/jdbc/Buffer;

.field protected serverCapabilities:I

.field protected serverCharsetIndex:I

.field private serverDefaultAuthenticationPluginName:Ljava/lang/String;

.field private serverMajorVersion:I

.field private serverMinorVersion:I

.field private serverQueryWasSlow:Z

.field private serverStatus:I

.field private serverSubMinorVersion:I

.field private serverVersion:Ljava/lang/String;

.field private sharedSendPacket:Lcom/mysql/jdbc/Buffer;

.field private slowQueryThreshold:J

.field protected socketFactory:Lcom/mysql/jdbc/SocketFactory;

.field private socketFactoryClassName:Ljava/lang/String;

.field private splitBufRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/mysql/jdbc/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private statementExecutionDepth:I

.field private statementInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/StatementInterceptorV2;",
            ">;"
        }
    .end annotation
.end field

.field private streamingData:Lcom/mysql/jdbc/RowData;

.field private threadId:J

.field private traceProtocol:Z

.field private use41Extensions:Z

.field private useAutoSlowLog:Z

.field private useBufferRowSizeThreshold:I

.field private useCompression:Z

.field private useConnectWithDb:Z

.field private useDirectRowUnpack:Z

.field private useNanosForElapsedTime:Z

.field private useNewLargePackets:Z

.field private useNewUpdateCounts:Z

.field private warningCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "INSERT"

    const-string v1, "UPDATE"

    const-string v2, "REPLACE"

    const-string v3, "DELETE"

    .line 128
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/MysqlIO;->EXPLAINABLE_STATEMENT_EXTENSION:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 138
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/MysqlIO;->jvmPlatformCharset:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :catchall_1
    move-exception v1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 141
    :catch_1
    :cond_0
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    const/4 v1, 0x0

    .line 159
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    .line 160
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    .line 161
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    .line 164
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    .line 166
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    .line 167
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 168
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    .line 169
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    .line 172
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    .line 173
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    .line 188
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    .line 190
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    .line 191
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactoryClassName:Ljava/lang/String;

    const/4 v2, 0x4

    .line 192
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    .line 193
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->colDecimalNeedsBump:Z

    .line 194
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 195
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    .line 198
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo:Z

    .line 199
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->isInteractiveClient:Z

    .line 200
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z

    const/4 v2, 0x1

    .line 206
    iput-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->platformDbCharsetMatches:Z

    .line 207
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    .line 208
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->queryBadIndexUsed:Z

    .line 209
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->queryNoIndexUsed:Z

    .line 210
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverQueryWasSlow:Z

    .line 213
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    .line 214
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    .line 215
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNewLargePackets:Z

    .line 216
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNewUpdateCounts:Z

    .line 217
    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 218
    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    const/4 v3, -0x1

    .line 219
    iput-byte v3, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 220
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    .line 221
    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    const/high16 v3, 0x100000

    .line 222
    iput v3, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    const v3, 0xfd02ff

    .line 223
    iput v3, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    const/16 v3, 0xcea

    .line 224
    iput v3, p0, Lcom/mysql/jdbc/MysqlIO;->port:I

    .line 226
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverMajorVersion:I

    .line 227
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverMinorVersion:I

    .line 228
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 229
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 230
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverSubMinorVersion:I

    .line 231
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    const-wide/16 v3, 0x0

    .line 232
    iput-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 233
    iput-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    .line 234
    iput-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    .line 235
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    .line 236
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    .line 244
    iput-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->useDirectRowUnpack:Z

    .line 246
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->commandCount:I

    .line 249
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    .line 1390
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->authenticationPlugins:Ljava/util/Map;

    .line 1395
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    .line 1399
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    .line 1403
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    .line 1407
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverDefaultAuthenticationPluginName:Ljava/lang/String;

    .line 2552
    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    .line 275
    iput-object p5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    .line 277
    iget-object p5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getEnablePacketDebug()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 278
    new-instance p5, Ljava/util/LinkedList;

    invoke-direct {p5}, Ljava/util/LinkedList;-><init>()V

    iput-object p5, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    .line 280
    :cond_0
    iget-object p5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getTraceProtocol()Z

    move-result p5

    iput-boolean p5, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    .line 282
    iget-object p5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getAutoSlowLog()Z

    move-result p5

    iput-boolean p5, p0, Lcom/mysql/jdbc/MysqlIO;->useAutoSlowLog:Z

    .line 284
    iput p7, p0, Lcom/mysql/jdbc/MysqlIO;->useBufferRowSizeThreshold:I

    .line 285
    iget-object p5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getUseDirectRowUnpack()Z

    move-result p5

    iput-boolean p5, p0, Lcom/mysql/jdbc/MysqlIO;->useDirectRowUnpack:Z

    .line 287
    iget-object p5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getLogSlowQueries()Z

    move-result p5

    iput-boolean p5, p0, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z

    .line 289
    new-instance p5, Lcom/mysql/jdbc/Buffer;

    const/16 p7, 0x400

    invoke-direct {p5, p7}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object p5, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    .line 290
    new-instance p5, Lcom/mysql/jdbc/Buffer;

    invoke-direct {p5, p7}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object p5, p0, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    .line 292
    iput p2, p0, Lcom/mysql/jdbc/MysqlIO;->port:I

    .line 293
    iput-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    .line 295
    iput-object p4, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactoryClassName:Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->createSocketFactory()Lcom/mysql/jdbc/SocketFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    .line 297
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 300
    :try_start_0
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    iget-object p2, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    iget p4, p0, Lcom/mysql/jdbc/MysqlIO;->port:I

    invoke-interface {p1, p2, p4, p3}, Lcom/mysql/jdbc/SocketFactory;->connect(Ljava/lang/String;ILjava/util/Properties;)Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p6, :cond_1

    .line 304
    :try_start_1
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {p1, p6}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 310
    :catch_0
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    invoke-interface {p1}, Lcom/mysql/jdbc/SocketFactory;->beforeHandshake()Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    .line 312
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getUseReadAheadInput()Z

    move-result p1

    const/16 p2, 0x4000

    if-eqz p1, :cond_2

    .line 313
    new-instance p1, Lcom/mysql/jdbc/util/ReadAheadInputStream;

    iget-object p3, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    iget-object p4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getTraceProtocol()Z

    move-result p4

    iget-object p5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object p5

    invoke-direct {p1, p3, p2, p4, p5}, Lcom/mysql/jdbc/util/ReadAheadInputStream;-><init>(Ljava/io/InputStream;IZLcom/mysql/jdbc/log/Log;)V

    iput-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    goto :goto_0

    .line 315
    :cond_2
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->useUnbufferedInput()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 316
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    goto :goto_0

    .line 318
    :cond_3
    new-instance p1, Ljava/io/BufferedInputStream;

    iget-object p3, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 321
    :goto_0
    new-instance p1, Ljava/io/BufferedOutputStream;

    iget-object p3, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    .line 323
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getInteractiveClient()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/MysqlIO;->isInteractiveClient:Z

    .line 324
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getProfileSql()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    .line 325
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getAutoGenerateTestcaseScript()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mysql/jdbc/MysqlIO;->autoGenerateTestcaseScript:Z

    .line 327
    iget-boolean p1, p0, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/mysql/jdbc/MysqlIO;->autoGenerateTestcaseScript:Z

    if-eqz p1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->needToGrabQueryFromPacket:Z

    .line 329
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getUseNanosForElapsedTime()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/mysql/jdbc/TimeUtil;->nanoTimeAvailable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 330
    iput-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->useNanosForElapsedTime:Z

    const-string p1, "Nanoseconds"

    .line 332
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string p1, "Milliseconds"

    .line 334
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    .line 337
    :goto_1
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getLogSlowQueries()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 338
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->calculateSlowQueryThreshold()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    return-void

    :catch_1
    move-exception p1

    move-object v5, p1

    .line 341
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1507
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1508
    invoke-interface {p1}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v1

    .line 1509
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1510
    :goto_0
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v2, :cond_3

    if-eqz v5, :cond_2

    goto :goto_2

    .line 1519
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->authenticationPlugins:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1521
    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    goto :goto_4

    .line 1514
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1515
    new-array p1, v3, [Ljava/lang/Object;

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    aput-object v0, p1, v4

    const-string v0, "Connection.BadDisabledAuthenticationPlugin"

    invoke-static {v0, p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_5
    const/4 v3, 0x0

    :goto_4
    return v3
.end method

.method private adjustStartForFieldLength(II)I
    .locals 2

    const/16 v0, 0xfb

    if-ge p2, v0, :cond_0

    return p1

    :cond_0
    const/high16 v1, 0x10000

    if-lt p2, v0, :cond_1

    if-ge p2, v1, :cond_1

    add-int/lit8 p1, p1, 0x2

    return p1

    :cond_1
    if-lt p2, v1, :cond_2

    const/high16 v0, 0x1000000

    if-ge p2, v0, :cond_2

    add-int/lit8 p1, p1, 0x3

    return p1

    :cond_2
    add-int/lit8 p1, p1, 0x8

    return p1
.end method

.method private alignPacketSize(II)I
    .locals 0

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, -0x1

    not-int p2, p2

    and-int/2addr p1, p2

    return p1
.end method

.method private appendCharsetByteForHandshake(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 5033
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {p2, v0}, Lcom/mysql/jdbc/CharsetMapping;->getCollationIndexForJavaEncoding(Ljava/lang/String;Ljava/sql/Connection;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/16 v0, 0x21

    :cond_1
    const/16 v1, 0xff

    if-gt v0, v1, :cond_2

    int-to-byte p2, v0

    .line 5042
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    return-void

    .line 5039
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid character set index for encoding: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private appendDeadlockStatusInformation(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3994
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIncludeInnodbStatusInDeadlockExceptions()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const-string v0, "40"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "41"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SHOW ENGINE INNODB STATUS"

    .line 3999
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x3eb

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/MysqlIO;->sqlQueryDirect(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;IIIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4002
    :try_start_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\n\n"

    .line 4003
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Status"

    .line 4004
    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "\n\n"

    .line 4006
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MysqlIO.NoInnoDBStatusFound"

    .line 4007
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v0, :cond_3

    .line 4016
    :goto_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    :goto_2
    :try_start_2
    const-string v1, "\n\n"

    .line 4010
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MysqlIO.InnoDBStatusFailed"

    .line 4011
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    .line 4012
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4013
    invoke-static {p1}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v0, :cond_2

    .line 4016
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    .line 4015
    :cond_2
    throw p1

    .line 4021
    :cond_3
    :goto_4
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getIncludeThreadDumpInDeadlockExceptions()Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "\n\n*** Java threads running at time of deadlock ***\n\n"

    .line 4022
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4024
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object p1

    .line 4025
    invoke-interface {p1}, Ljava/lang/management/ThreadMXBean;->getAllThreadIds()[J

    move-result-object v0

    const v1, 0x7fffffff

    .line 4027
    invoke-interface {p1, v0, v1}, Ljava/lang/management/ThreadMXBean;->getThreadInfo([JI)[Ljava/lang/management/ThreadInfo;

    move-result-object p1

    .line 4028
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4030
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_5

    aget-object v4, p1, v3

    if-eqz v4, :cond_4

    .line 4032
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4036
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/management/ThreadInfo;

    const/16 v1, 0x22

    .line 4039
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4040
    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getThreadName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" tid="

    .line 4041
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4042
    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getThreadId()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 4043
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4044
    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getThreadState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4046
    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getLockName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 4047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " on lock="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getLockName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4049
    :cond_7
    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->isSuspended()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, " (suspended)"

    .line 4050
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4052
    :cond_8
    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->isInNative()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, " (running in native)"

    .line 4053
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4056
    :cond_9
    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 4058
    array-length v3, v1

    if-lez v3, :cond_a

    const-string v3, " in "

    .line 4059
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4060
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    .line 4061
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4062
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "()"

    .line 4063
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v3, "\n"

    .line 4066
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4068
    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 4069
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t owned by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/management/ThreadInfo;->getLockOwnerId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 4070
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const/4 v0, 0x0

    .line 4073
    :goto_6
    array-length v3, v1

    if-ge v0, v3, :cond_6

    .line 4074
    aget-object v3, v1, v0

    .line 4075
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 4076
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    return-void
.end method

.method private buildResultSetWithRows(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;IIZ)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    packed-switch p6, :pswitch_data_0

    .line 3143
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object p1

    return-object p1

    .line 3138
    :pswitch_0
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object p1

    goto :goto_0

    .line 3129
    :pswitch_1
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object p1

    if-eqz p7, :cond_0

    .line 3132
    invoke-virtual {p1}, Lcom/mysql/jdbc/ResultSetImpl;->setBinaryEncoded()V

    .line 3146
    :cond_0
    :goto_0
    invoke-virtual {p1, p5}, Lcom/mysql/jdbc/ResultSetImpl;->setResultSetType(I)V

    .line 3147
    invoke-virtual {p1, p6}, Lcom/mysql/jdbc/ResultSetImpl;->setResultSetConcurrency(I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x3ef
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private buildResultSetWithUpdates(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3158
    :try_start_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNewUpdateCounts:Z

    if-eqz v0, :cond_0

    .line 3159
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    move-result-wide v0

    .line 3160
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    move-result-wide v2

    :goto_0
    move-wide v4, v0

    move-wide v6, v2

    goto :goto_1

    .line 3162
    :cond_0
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->readLength()J

    move-result-wide v0

    .line 3163
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->readLength()J

    move-result-wide v2

    goto :goto_0

    .line 3166
    :goto_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v0, :cond_2

    .line 3168
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 3170
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    .line 3172
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 3174
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 3175
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 3178
    :cond_1
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 3180
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->setServerSlowQueryFlags()V

    .line 3183
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3184
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getErrorMessageEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    .line 3194
    :goto_2
    iget-object v8, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(JJLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 3197
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p2}, Lcom/mysql/jdbc/ResultSetImpl;->setServerInfo(Ljava/lang/String;)V

    .line 3200
    :cond_4
    check-cast p1, Lcom/mysql/jdbc/ResultSetImpl;

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "S1000"

    .line 3187
    invoke-static {p2}, Lcom/mysql/jdbc/SQLError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "S1000"

    invoke-static {p2, v2, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p2

    .line 3189
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3191
    throw p2
.end method

.method private calculateSlowQueryThreshold()V
    .locals 4

    .line 2898
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSlowQueryThresholdMillis()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    .line 2900
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseNanosForElapsedTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2901
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getSlowQueryThresholdNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2904
    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    goto :goto_0

    .line 2906
    :cond_0
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    :cond_1
    :goto_0
    return-void
.end method

.method private changeDatabaseTo(Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-eqz v9, :cond_2

    .line 1955
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 1960
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1962
    iget-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCreateDatabaseIfNotExist()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    .line 1963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE DATABASE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    const/4 v2, 0x2

    move-object/from16 v3, p1

    .line 1964
    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    :goto_0
    return-void

    .line 1966
    :cond_1
    iget-object v9, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v10, v8, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v12, v8, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    move-object v14, v1

    invoke-static/range {v9 .. v15}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method private checkConfidentiality(Lcom/mysql/jdbc/AuthenticationPlugin;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1570
    invoke-interface {p1}, Lcom/mysql/jdbc/AuthenticationPlugin;->requiresConfidentiality()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isSSLEstablished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1571
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Connection.AuthenticationPluginRequiresSSL"

    invoke-static {p1, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private checkErrorPacket(I)Lcom/mysql/jdbc/Buffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 3895
    iput p1, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 3900
    :try_start_0
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    invoke-direct {p0, p1}, Lcom/mysql/jdbc/MysqlIO;->reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/Buffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3909
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket(Lcom/mysql/jdbc/Buffer;)V

    return-object p1

    :catch_0
    move-exception p1

    move-object v5, p1

    .line 3905
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3903
    throw p1
.end method

.method private checkErrorPacket(Lcom/mysql/jdbc/Buffer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3916
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 3923
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    const/16 v2, 0x9

    if-le v0, v2, :cond_6

    .line 3924
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    .line 3928
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getErrorMessageEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 3930
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    .line 3933
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    .line 3934
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3935
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "HY000"

    .line 3937
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3938
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseSqlStateCodes()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState(IZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3941
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseSqlStateCodes()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState(IZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3944
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseSqlStateCodes()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState(IZ)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    move-object v4, v1

    .line 3947
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 3949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3951
    invoke-static {v4}, Lcom/mysql/jdbc/SQLError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3953
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseOnlyServerErrorMessages()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 3955
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MysqlIO.68"

    .line 3956
    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3960
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3962
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getUseOnlyServerErrorMessages()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v2, :cond_4

    const-string p1, "\""

    .line 3964
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3968
    :cond_4
    invoke-direct {p0, v4, v1}, Lcom/mysql/jdbc/MysqlIO;->appendDeadlockStatusInformation(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    if-eqz v4, :cond_5

    const-string p1, "22"

    .line 3970
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3971
    new-instance p1, Lcom/mysql/jdbc/MysqlDataTruncation;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/mysql/jdbc/MysqlDataTruncation;-><init>(Ljava/lang/String;IZZIII)V

    throw p1

    .line 3973
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    iget-object v8, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move v5, v0

    invoke-static/range {v3 .. v8}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 3976
    :cond_6
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getErrorMessageEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object p1

    .line 3977
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    const-string v0, "MysqlIO.70"

    .line 3979
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 3980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S0022"

    invoke-static {v1}, Lcom/mysql/jdbc/SQLError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    iget-object v7, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-string v3, "S0022"

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 3984
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MysqlIO.72"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3985
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    .line 3986
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3988
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S1000"

    invoke-static {v1}, Lcom/mysql/jdbc/SQLError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    iget-object v6, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-string v2, "S1000"

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_8
    return-void
.end method

.method private checkForOutstandingStreamingData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3210
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    if-eqz v0, :cond_1

    .line 3211
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClobberStreamingResults()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3219
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    invoke-interface {v0}, Lcom/mysql/jdbc/RowData;->getOwner()Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->realClose(Z)V

    .line 3222
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    goto :goto_0

    .line 3214
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.39"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "MysqlIO.40"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MysqlIO.41"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MysqlIO.42"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private checkPacketSequencing(B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, -0x80

    if-ne p1, v0, :cond_1

    .line 3634
    iget-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3635
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v6, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    new-instance v8, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Packets out of order, expected packet # -128, but received packet # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v8, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 3639
    :cond_1
    :goto_0
    iget-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    .line 3640
    :cond_2
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v6, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    new-instance v8, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Packets out of order, expected packet # -1, but received packet # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v8, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    if-eq p1, v0, :cond_5

    .line 3644
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    if-eq v0, v2, :cond_5

    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 3645
    :cond_4
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    new-instance v6, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Packets out of order, expected packet # "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v7, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", but received packet # "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method private checkTransactionState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4960
    :goto_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->inTransactionOnServer()Z

    move-result p1

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 4963
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->transactionCompleted()V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 4965
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->transactionBegun()V

    :cond_2
    :goto_1
    return-void
.end method

.method private compressPacket(Lcom/mysql/jdbc/Buffer;II)Lcom/mysql/jdbc/Buffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x32

    if-ge p3, v1, :cond_0

    .line 3245
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object p1

    :goto_0
    move-object v2, p1

    const/4 p1, 0x0

    goto :goto_1

    .line 3248
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    .line 3249
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 3251
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    if-nez v3, :cond_1

    .line 3252
    new-instance v3, Ljava/util/zip/Deflater;

    invoke-direct {v3}, Ljava/util/zip/Deflater;-><init>()V

    iput-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    .line 3254
    :cond_1
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->reset()V

    .line 3255
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3, v1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 3256
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 3258
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v1

    if-le v1, p3, :cond_2

    .line 3262
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object p1

    goto :goto_0

    :cond_2
    move p1, p3

    move p3, v1

    const/4 p2, 0x0

    .line 3270
    :goto_1
    new-instance v1, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v3, p3, 0x7

    invoke-direct {v1, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 3272
    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3273
    invoke-virtual {v1, p3}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 3274
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 3275
    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 3276
    invoke-virtual {v1, v2, p2, p3}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    return-object v1
.end method

.method private createSocketFactory()Lcom/mysql/jdbc/SocketFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3323
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactoryClassName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3328
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactoryClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/SocketFactory;

    check-cast v0, Lcom/mysql/jdbc/SocketFactory;

    return-object v0

    :cond_0
    const-string v0, "MysqlIO.75"

    .line 3324
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "08001"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 3330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MysqlIO.76"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactoryClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MysqlIO.77"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "08001"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    .line 3333
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3335
    throw v1
.end method

.method private enqueuePacketForDebugging(ZZI[BLcom/mysql/jdbc/Buffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3341
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getPacketDebugBufferSize()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 3342
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    const/16 v0, 0x400

    if-nez p1, :cond_2

    .line 3348
    invoke-virtual {p5}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3350
    new-instance p3, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v1, p1, 0x4

    invoke-direct {p3, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    const/4 v1, 0x0

    .line 3352
    invoke-virtual {p3, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3353
    invoke-virtual {p3, p4}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 3354
    invoke-virtual {p5, v1, p1}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 3356
    invoke-virtual {p3, p1}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    move-result-object p3

    .line 3358
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x60

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Server "

    .line 3360
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p2, "(re-used) "

    goto :goto_0

    :cond_1
    const-string p2, "(new) "

    .line 3362
    :goto_0
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3364
    invoke-virtual {p5}, Lcom/mysql/jdbc/Buffer;->toSuperString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --------------------> Client\n"

    .line 3365
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\nPacket payload:\n\n"

    .line 3366
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3367
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v0, :cond_3

    .line 3370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\nNote: Packet of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes truncated to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes.\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3373
    :cond_2
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3375
    invoke-virtual {p5, p1}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    move-result-object p2

    .line 3377
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x44

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Client "

    .line 3379
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3380
    invoke-virtual {p5}, Lcom/mysql/jdbc/Buffer;->toSuperString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "--------------------> Server\n"

    .line 3381
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "\nPacket payload:\n\n"

    .line 3382
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3383
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v0, :cond_3

    .line 3386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\nNote: Packet of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes truncated to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes.\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3390
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    invoke-virtual {p1, p4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private final extractNativeEncodedColumn(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;I[[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4489
    aget-object v0, p2, p3

    .line 4491
    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    .line 4558
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "MysqlIO.97"

    invoke-static {p4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "MysqlIO.98"

    invoke-static {p4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "MysqlIO.99"

    invoke-static {p3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "MysqlIO.100"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string p3, "S1000"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4524
    :pswitch_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    long-to-int p2, v0

    .line 4526
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object p1

    aput-object p1, p4, p3

    goto :goto_0

    .line 4531
    :pswitch_1
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    long-to-int p2, v0

    .line 4533
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object p1

    aput-object p1, p4, p3

    goto :goto_0

    .line 4512
    :pswitch_2
    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object p1

    aput-object p1, p4, p3

    goto :goto_0

    .line 4538
    :pswitch_3
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v0

    long-to-int p2, v0

    .line 4540
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object p1

    aput-object p1, p4, p3

    goto :goto_0

    .line 4520
    :pswitch_4
    invoke-virtual {p1, v2}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object p1

    aput-object p1, p4, p3

    goto :goto_0

    .line 4516
    :pswitch_5
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object p1

    aput-object p1, p4, p3

    goto :goto_0

    .line 4508
    :pswitch_6
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object p1

    aput-object p1, p4, p3

    goto :goto_0

    :pswitch_7
    const/4 p2, 0x2

    .line 4503
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object p1

    aput-object p1, p4, p3

    goto :goto_0

    :pswitch_8
    const/4 p2, 0x1

    .line 4497
    new-array p2, p2, [B

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result p1

    aput-byte p1, p2, v4

    aput-object p2, p4, p3

    goto :goto_0

    .line 4554
    :pswitch_9
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->readLenByteArray(I)[B

    move-result-object p1

    aput-object p1, p4, p3

    :goto_0
    :pswitch_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf5
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1546
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->authenticationPlugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/AuthenticationPlugin;

    if-eqz p1, :cond_0

    .line 1548
    invoke-interface {p1}, Lcom/mysql/jdbc/AuthenticationPlugin;->isReusable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1550
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/AuthenticationPlugin;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1551
    :try_start_1
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_0
    const/4 v1, 0x1

    .line 1553
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Connection.BadAuthenticationPlugin"

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 1555
    invoke-virtual {v0, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1556
    throw v0

    :cond_0
    :goto_1
    return-object p1
.end method

.method private getConnectionAttributesAsProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1908
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    if-eqz p1, :cond_1

    const-string v1, ","

    .line 1911
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1912
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    const-string v5, ":"

    .line 1913
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    add-int/lit8 v6, v5, 0x1

    .line 1914
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 1915
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "_client_name"

    const-string v1, "MySQL Connector Java"

    .line 1923
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "_client_version"

    const-string v1, "5.1.43"

    .line 1924
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "_runtime_vendor"

    .line 1925
    sget-object v1, Lcom/mysql/jdbc/NonRegisteringDriver;->RUNTIME_VENDOR:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "_runtime_version"

    .line 1926
    sget-object v1, Lcom/mysql/jdbc/NonRegisteringDriver;->RUNTIME_VERSION:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "_client_license"

    const-string v1, "GPL"

    .line 1927
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method static getMaxBuf()I
    .locals 1

    .line 969
    sget v0, Lcom/mysql/jdbc/MysqlIO;->maxBufferSize:I

    return v0
.end method

.method private static final getPacketDumpToLog(Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    .line 2988
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2991
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2992
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MysqlIO.36"

    .line 2993
    invoke-static {p0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2994
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "MysqlIO.37"

    .line 2995
    invoke-static {p0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2997
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private loadAuthenticationPlugins()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1428
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDefaultAuthenticationPlugin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    .line 1429
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    const-string v0, ""

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1436
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getDisabledAuthenticationPlugins()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, ""

    .line 1437
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1438
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    const-string v3, ","

    .line 1439
    invoke-static {v0, v3, v2}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 1440
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1441
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1442
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->disabledAuthenticationPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1446
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->authenticationPlugins:Ljava/util/Map;

    .line 1449
    new-instance v0, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;

    invoke-direct {v0}, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;-><init>()V

    .line 1450
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 1451
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v0

    .line 1453
    new-instance v3, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;

    invoke-direct {v3}, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;-><init>()V

    .line 1454
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 1455
    invoke-direct {p0, v3}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 1459
    :cond_1
    new-instance v3, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;

    invoke-direct {v3}, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;-><init>()V

    .line 1460
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 1461
    invoke-direct {p0, v3}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 1465
    :cond_2
    new-instance v3, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;

    invoke-direct {v3}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;-><init>()V

    .line 1466
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/mysql/jdbc/AuthenticationPlugin;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 1467
    invoke-direct {p0, v3}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    .line 1472
    :cond_3
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getAuthenticationPlugins()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, ""

    .line 1473
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1475
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object v5

    const-string v6, "Connection.BadAuthenticationPlugin"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static {v4, v5, v3, v6, v7}, Lcom/mysql/jdbc/Util;->loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;

    move-result-object v3

    .line 1478
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/Extension;

    .line 1479
    check-cast v4, Lcom/mysql/jdbc/AuthenticationPlugin;

    .line 1480
    invoke-direct {p0, v4}, Lcom/mysql/jdbc/MysqlIO;->addAuthenticationPlugin(Lcom/mysql/jdbc/AuthenticationPlugin;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    return-void

    .line 1488
    :cond_6
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Connection.DefaultAuthenticationPluginIsNotListed"

    invoke-static {v1, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1430
    :cond_7
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPlugin:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Connection.BadDefaultAuthenticationPlugin"

    invoke-static {v1, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private negotiateSSLConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4878
    invoke-static {}, Lcom/mysql/jdbc/ExportControlled;->enabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4882
    iget p1, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const p2, 0x8000

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    .line 4883
    iget-wide p1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v0, 0x8000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 4886
    :cond_0
    iget-wide p1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v0, 0x800

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 4888
    new-instance p1, Lcom/mysql/jdbc/Buffer;

    invoke-direct {p1, p4}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 4890
    iget-boolean p2, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz p2, :cond_1

    .line 4891
    iget-wide p2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {p1, p2, p3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4892
    iget p2, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4893
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getEncodingForHandshake()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/MysqlIO;->appendCharsetByteForHandshake(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;)V

    const/16 p2, 0x17

    .line 4894
    new-array p2, p2, [B

    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    goto :goto_0

    .line 4896
    :cond_1
    iget-wide p2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 4899
    :goto_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 4901
    invoke-static {p0}, Lcom/mysql/jdbc/ExportControlled;->transformSocketToSSLSocket(Lcom/mysql/jdbc/MysqlIO;)V

    return-void

    .line 4879
    :cond_2
    new-instance p1, Lcom/mysql/jdbc/ConnectionFeatureNotAvailableException;

    iget-object p2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide p3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/mysql/jdbc/ConnectionFeatureNotAvailableException;-><init>(Lcom/mysql/jdbc/MySQLConnection;JLjava/lang/Exception;)V

    throw p1
.end method

.method private preserveOldTransactionState()V
    .locals 2

    .line 4970
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    return-void
.end method

.method private proceedHandshakeWithPluggableAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    .line 1601
    iget-object v3, v1, Lcom/mysql/jdbc/MysqlIO;->authenticationPlugins:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 1602
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->loadAuthenticationPlugins()V

    :cond_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1607
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 1608
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x10

    add-int/2addr v4, v6

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x21

    .line 1614
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v7, 0x64

    move-object/from16 v10, p4

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    add-int/lit8 v14, v7, -0x1

    const/4 v15, 0x1

    if-lez v7, :cond_27

    const/high16 v7, 0x200000

    const/high16 v16, 0x80000

    const-wide/32 v17, 0x100000

    if-nez v9, :cond_10

    if-eqz v10, :cond_e

    .line 1628
    invoke-virtual {v10}, Lcom/mysql/jdbc/Buffer;->isOKPacket()Z

    move-result v9

    if-nez v9, :cond_d

    .line 1636
    iget-wide v8, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v20, 0xaa201

    or-long v8, v8, v20

    iput-wide v8, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1641
    iget-object v8, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getAllowMultiQueries()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1642
    iget-wide v8, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v20, 0x10000

    or-long v8, v8, v20

    iput-wide v8, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1645
    :cond_3
    iget v8, v1, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v9, 0x400000

    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    iget-object v8, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getDisconnectOnExpiredPasswords()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1646
    iget-wide v8, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v20, 0x400000

    or-long v8, v8, v20

    iput-wide v8, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1648
    :cond_4
    iget v8, v1, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v9, 0x100000

    and-int/2addr v8, v9

    if-eqz v8, :cond_5

    const-string v8, "none"

    iget-object v9, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v9}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionAttributes()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1649
    iget-wide v8, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    or-long v8, v8, v17

    iput-wide v8, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1651
    :cond_5
    iget v8, v1, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/2addr v8, v7

    if-eqz v8, :cond_6

    .line 1652
    iget-wide v8, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v20, 0x200000

    or-long v8, v8, v20

    iput-wide v8, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1655
    :cond_6
    iput-boolean v15, v1, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    .line 1656
    iput-boolean v15, v1, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    .line 1658
    iget-object v8, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSL()Z

    move-result v8

    if-eqz v8, :cond_7

    move-object/from16 v8, p2

    .line 1659
    invoke-direct {v1, v0, v8, v2, v4}, Lcom/mysql/jdbc/MysqlIO;->negotiateSSLConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_7
    move-object/from16 v8, p2

    .line 1664
    :goto_3
    iget v9, v1, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int v9, v9, v16

    if-eqz v9, :cond_a

    const/16 v9, 0xa

    const/4 v11, 0x5

    .line 1665
    invoke-virtual {v1, v11, v11, v9}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x6

    invoke-virtual {v1, v11, v9, v3}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v19

    if-eqz v19, :cond_8

    const/4 v7, 0x2

    invoke-virtual {v1, v11, v9, v7}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_4

    :cond_8
    const-string v7, "ASCII"

    .line 1668
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-virtual {v10, v7, v9}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_9
    :goto_4
    const-string v7, "ASCII"

    .line 1666
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    iget v11, v1, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    invoke-virtual {v10, v7, v9, v11}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    .line 1672
    :goto_5
    invoke-direct {v1, v7}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v9

    if-nez v9, :cond_b

    .line 1677
    iget-object v7, v1, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    invoke-direct {v1, v7}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v9

    goto :goto_6

    .line 1678
    :cond_b
    sget-object v11, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->PLUGIN_NAME:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->isSSLEstablished()Z

    move-result v11

    if-nez v11, :cond_c

    iget-object v11, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v11}, Lcom/mysql/jdbc/MySQLConnection;->getServerRSAPublicKeyFile()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_c

    iget-object v11, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v11}, Lcom/mysql/jdbc/MySQLConnection;->getAllowPublicKeyRetrieval()Z

    move-result v11

    if-nez v11, :cond_c

    .line 1686
    iget-object v9, v1, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    invoke-direct {v1, v9}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v9

    .line 1687
    iget-object v11, v1, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v12, v7, 0x1

    .line 1690
    :cond_c
    :goto_6
    invoke-interface {v9}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/mysql/jdbc/MysqlIO;->serverDefaultAuthenticationPluginName:Ljava/lang/String;

    .line 1692
    invoke-direct {v1, v9}, Lcom/mysql/jdbc/MysqlIO;->checkConfidentiality(Lcom/mysql/jdbc/AuthenticationPlugin;)V

    .line 1693
    new-instance v7, Lcom/mysql/jdbc/Buffer;

    iget-object v11, v1, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-static {v11}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v7, v11}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v11, v9

    move-object v9, v7

    goto/16 :goto_b

    .line 1629
    :cond_d
    new-array v0, v15, [Ljava/lang/Object;

    invoke-interface {v11}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "Connection.UnexpectedAuthenticationApproval"

    invoke-static {v2, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_e
    move-object/from16 v8, p2

    .line 1696
    iget-object v7, v1, Lcom/mysql/jdbc/MysqlIO;->serverDefaultAuthenticationPluginName:Ljava/lang/String;

    if-nez v7, :cond_f

    iget-object v7, v1, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    goto :goto_7

    :cond_f
    iget-object v7, v1, Lcom/mysql/jdbc/MysqlIO;->serverDefaultAuthenticationPluginName:Ljava/lang/String;

    :goto_7
    invoke-direct {v1, v7}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v7

    .line 1699
    invoke-direct {v1, v7}, Lcom/mysql/jdbc/MysqlIO;->checkConfidentiality(Lcom/mysql/jdbc/AuthenticationPlugin;)V

    .line 1704
    new-instance v9, Lcom/mysql/jdbc/Buffer;

    iget-object v11, v1, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-static {v11}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v11, v7

    goto/16 :goto_b

    :cond_10
    move-object/from16 v8, p2

    .line 1710
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v7

    .line 1712
    iget-byte v9, v1, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    add-int/2addr v9, v15

    int-to-byte v9, v9

    iput-byte v9, v1, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 1713
    iget-byte v9, v1, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    add-int/2addr v9, v15

    int-to-byte v9, v9

    iput-byte v9, v1, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    if-nez v11, :cond_12

    .line 1718
    iget-object v9, v1, Lcom/mysql/jdbc/MysqlIO;->serverDefaultAuthenticationPluginName:Ljava/lang/String;

    if-eqz v9, :cond_11

    iget-object v9, v1, Lcom/mysql/jdbc/MysqlIO;->serverDefaultAuthenticationPluginName:Ljava/lang/String;

    goto :goto_8

    :cond_11
    iget-object v9, v1, Lcom/mysql/jdbc/MysqlIO;->clientDefaultAuthenticationPluginName:Ljava/lang/String;

    :goto_8
    invoke-direct {v1, v9}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v11

    .line 1722
    :cond_12
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->isOKPacket()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1724
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    .line 1725
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    .line 1727
    iget v0, v1, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v0, v1, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 1728
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    iput v0, v1, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 1731
    invoke-interface {v11}, Lcom/mysql/jdbc/AuthenticationPlugin;->destroy()V

    goto/16 :goto_16

    .line 1734
    :cond_13
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->isAuthMethodSwitchRequestPacket()Z

    move-result v9

    if-eqz v9, :cond_16

    const-string v9, "ASCII"

    .line 1738
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v9

    .line 1741
    invoke-interface {v11}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    .line 1742
    invoke-interface {v11}, Lcom/mysql/jdbc/AuthenticationPlugin;->destroy()V

    .line 1743
    invoke-direct {v1, v9}, Lcom/mysql/jdbc/MysqlIO;->getAuthenticationPlugin(Ljava/lang/String;)Lcom/mysql/jdbc/AuthenticationPlugin;

    move-result-object v11

    if-eqz v11, :cond_14

    goto :goto_9

    .line 1746
    :cond_14
    new-array v0, v15, [Ljava/lang/Object;

    aput-object v9, v0, v3

    const-string v2, "Connection.BadAuthenticationPlugin"

    invoke-static {v2, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1751
    :cond_15
    :goto_9
    invoke-direct {v1, v11}, Lcom/mysql/jdbc/MysqlIO;->checkConfidentiality(Lcom/mysql/jdbc/AuthenticationPlugin;)V

    .line 1752
    new-instance v9, Lcom/mysql/jdbc/Buffer;

    const-string v10, "ASCII"

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v10, v7

    const/4 v12, 0x0

    :goto_a
    const/4 v13, 0x0

    goto :goto_b

    :cond_16
    const/4 v9, 0x5

    .line 1756
    invoke-virtual {v1, v9, v9, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1757
    new-instance v9, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v10

    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v13

    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v15

    sub-int/2addr v13, v15

    invoke-virtual {v7, v10, v13}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v10, v7

    goto :goto_a

    .line 1760
    :cond_17
    new-instance v9, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v10

    sub-int/2addr v10, v15

    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v13

    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v19

    sub-int v13, v13, v19

    add-int/2addr v13, v15

    invoke-virtual {v7, v10, v13}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    move-object v10, v7

    const/4 v13, 0x1

    :goto_b
    if-eqz v12, :cond_18

    const/4 v7, 0x0

    goto :goto_c

    :cond_18
    move-object v7, v8

    .line 1768
    :goto_c
    :try_start_0
    invoke-interface {v11, v0, v7}, Lcom/mysql/jdbc/AuthenticationPlugin;->setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    invoke-interface {v11, v9, v5}, Lcom/mysql/jdbc/AuthenticationPlugin;->nextAuthenticationStep(Lcom/mysql/jdbc/Buffer;Ljava/util/List;)Z

    move-result v9
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1775
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_25

    const-wide/16 v19, 0x0

    if-nez v10, :cond_1d

    .line 1777
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getEncodingForHandshake()Ljava/lang/String;

    move-result-object v7

    .line 1780
    new-instance v15, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v6, v4, 0x1

    invoke-direct {v15, v6}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    const/16 v6, 0x11

    .line 1781
    invoke-virtual {v15, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1784
    iget-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v15, v0, v7, v6}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1787
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v6

    const/16 v8, 0x100

    if-ge v6, v8, :cond_19

    .line 1789
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v15, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1790
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v6

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v8

    invoke-virtual {v15, v6, v3, v8}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    goto :goto_d

    .line 1792
    :cond_19
    invoke-virtual {v15, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1795
    :goto_d
    iget-boolean v6, v1, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v6, :cond_1a

    .line 1796
    iget-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v15, v2, v7, v6}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_e

    .line 1799
    :cond_1a
    invoke-virtual {v15, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1802
    :goto_e
    invoke-direct {v1, v15, v7}, Lcom/mysql/jdbc/MysqlIO;->appendCharsetByteForHandshake(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;)V

    .line 1804
    invoke-virtual {v15, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1807
    iget v6, v1, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int v6, v6, v16

    if-eqz v6, :cond_1b

    .line 1808
    invoke-interface {v11}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v15, v6, v7, v8}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    :cond_1b
    move/from16 v22, v4

    .line 1812
    iget-wide v3, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    and-long v3, v3, v17

    cmp-long v3, v3, v19

    if-eqz v3, :cond_1c

    .line 1813
    iget-object v3, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-direct {v1, v15, v7, v3}, Lcom/mysql/jdbc/MysqlIO;->sendConnectionAttributes(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    const/4 v3, 0x0

    .line 1814
    invoke-virtual {v15, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    goto :goto_f

    :cond_1c
    const/4 v3, 0x0

    .line 1817
    :goto_f
    invoke-virtual {v15}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    invoke-direct {v1, v15, v4}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    goto :goto_10

    :cond_1d
    move/from16 v22, v4

    .line 1819
    invoke-virtual {v10}, Lcom/mysql/jdbc/Buffer;->isAuthMethodSwitchRequestPacket()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1821
    new-instance v4, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-direct {v4, v6}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 1822
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v6}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v6

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v7

    invoke-virtual {v4, v6, v3, v7}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1823
    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    invoke-direct {v1, v4, v3}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    :goto_10
    move/from16 v6, v22

    goto/16 :goto_15

    .line 1825
    :cond_1e
    invoke-virtual {v10}, Lcom/mysql/jdbc/Buffer;->isRawPacket()Z

    move-result v3

    if-nez v3, :cond_24

    if-eqz v13, :cond_1f

    goto/16 :goto_13

    .line 1835
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getEncodingForHandshake()Ljava/lang/String;

    move-result-object v3

    .line 1837
    new-instance v4, Lcom/mysql/jdbc/Buffer;

    move/from16 v6, v22

    invoke-direct {v4, v6}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 1838
    iget-wide v7, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {v4, v7, v8}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1839
    iget v7, v1, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v7, v7

    invoke-virtual {v4, v7, v8}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1841
    invoke-direct {v1, v4, v3}, Lcom/mysql/jdbc/MysqlIO;->appendCharsetByteForHandshake(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;)V

    const/16 v7, 0x17

    .line 1843
    new-array v7, v7, [B

    invoke-virtual {v4, v7}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 1846
    iget-object v7, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v4, v0, v3, v7}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1848
    iget v7, v1, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v8, 0x200000

    and-int/2addr v7, v8

    if-eqz v7, :cond_20

    const/4 v7, 0x0

    .line 1850
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v15}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v15

    invoke-virtual {v8, v15}, Lcom/mysql/jdbc/Buffer;->getBytes(I)[B

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/mysql/jdbc/Buffer;->writeLenBytes([B)V

    goto :goto_11

    :cond_20
    const/4 v7, 0x0

    .line 1853
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v4, v8}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1854
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v8

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v15}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v15

    invoke-virtual {v4, v8, v7, v15}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1857
    :goto_11
    iget-boolean v8, v1, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v8, :cond_21

    .line 1858
    iget-object v8, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v4, v2, v3, v8}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_12

    .line 1861
    :cond_21
    invoke-virtual {v4, v7}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1864
    :goto_12
    iget v7, v1, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int v7, v7, v16

    if-eqz v7, :cond_22

    .line 1865
    invoke-interface {v11}, Lcom/mysql/jdbc/AuthenticationPlugin;->getProtocolPluginName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v4, v7, v3, v8}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1869
    :cond_22
    iget-wide v7, v1, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    and-long v7, v7, v17

    cmp-long v7, v7, v19

    if-eqz v7, :cond_23

    .line 1870
    iget-object v7, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-direct {v1, v4, v3, v7}, Lcom/mysql/jdbc/MysqlIO;->sendConnectionAttributes(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1873
    :cond_23
    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    invoke-direct {v1, v4, v3}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    goto :goto_15

    :cond_24
    :goto_13
    move/from16 v6, v22

    .line 1827
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/Buffer;

    .line 1828
    new-instance v7, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    invoke-direct {v7, v8}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 1829
    invoke-virtual {v4}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v15}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v15

    invoke-virtual {v7, v4, v8, v15}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 1830
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    invoke-direct {v1, v7, v4}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    goto :goto_14

    :cond_25
    move v6, v4

    :cond_26
    :goto_15
    const/4 v8, 0x0

    move v4, v6

    move v7, v14

    const/4 v3, 0x0

    const/16 v6, 0x10

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 1771
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_27
    :goto_16
    if-eqz v14, :cond_2a

    .line 1887
    iget v0, v1, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_28

    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseCompression()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/mysql/jdbc/CompressedInputStream;

    if-nez v0, :cond_28

    .line 1889
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    iput-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    .line 1890
    iput-boolean v15, v1, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    .line 1891
    new-instance v0, Lcom/mysql/jdbc/CompressedInputStream;

    iget-object v3, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {v0, v3, v4}, Lcom/mysql/jdbc/CompressedInputStream;-><init>(Lcom/mysql/jdbc/Connection;Ljava/io/InputStream;)V

    iput-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 1894
    :cond_28
    iget-boolean v0, v1, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-nez v0, :cond_29

    .line 1895
    invoke-direct {v1, v2}, Lcom/mysql/jdbc/MysqlIO;->changeDatabaseTo(Ljava/lang/String;)V

    .line 1899
    :cond_29
    :try_start_1
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    invoke-interface {v0}, Lcom/mysql/jdbc/SocketFactory;->afterHandshake()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object v7, v0

    .line 1901
    iget-object v2, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v3, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v5, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_2a
    const-string v0, "CommunicationsException.TooManyAuthenticationPluginNegotiations"

    .line 1881
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private final readFully(Ljava/io/InputStream;[BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p4, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_1

    add-int v2, p3, v1

    sub-int v3, p4, v1

    .line 3008
    invoke-virtual {p1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    .line 3011
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const/4 p3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const-string p3, "MysqlIO.EOF"

    invoke-static {p3, p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v1

    .line 3002
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private readRemainingMultiPackets(Lcom/mysql/jdbc/Buffer;B)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3581
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v1

    if-lt v1, v3, :cond_5

    .line 3587
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v5, 0x2

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    if-nez v0, :cond_1

    .line 3589
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 3592
    :cond_1
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->useNewLargePackets:Z

    if-nez v2, :cond_2

    if-ne v1, v3, :cond_2

    .line 3593
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    goto :goto_0

    :cond_2
    add-int/2addr p2, v3

    int-to-byte p2, p2

    .line 3598
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v5, 0x3

    aget-byte v2, v2, v5

    if-ne p2, v2, :cond_4

    .line 3603
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3606
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 3609
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v2

    .line 3612
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {p0, v5, v2, v4, v1}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v5

    if-ne v5, v1, :cond_3

    .line 3621
    invoke-virtual {p1, v2, v4, v1}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 3622
    iget v2, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    if-eq v1, v2, :cond_0

    .line 3624
    :goto_0
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3625
    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->setWasMultiPacket(Z)V

    return v1

    .line 3615
    :cond_3
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v6, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v8, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MysqlIO.50"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "MysqlIO.51"

    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v10

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v11

    move-object v5, p1

    invoke-static/range {v5 .. v11}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 3599
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MysqlIO.49"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3583
    :cond_5
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 3584
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MysqlIO.47"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final readServerStatusForResultSets(Lcom/mysql/jdbc/Buffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3282
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v0, :cond_4

    .line 3283
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 3285
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3287
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    .line 3288
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->newReadLength()J

    .line 3290
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 3291
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 3292
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    .line 3294
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 3295
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    if-lez v0, :cond_0

    .line 3296
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 3299
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 3301
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->isReadInfoMsgEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3302
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getErrorMessageEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    goto :goto_0

    .line 3307
    :cond_1
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 3308
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    if-lez v0, :cond_2

    .line 3309
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 3312
    :cond_2
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 3313
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result p1

    iput p1, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 3314
    iget p1, p0, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    invoke-direct {p0, p1}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    .line 3317
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->setServerSlowQueryFlags()V

    :cond_4
    return-void
.end method

.method private readSingleRowSet(JIIZ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/RowData;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move/from16 v0, p3

    .line 3395
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3397
    invoke-static/range {p6 .. p6}, Lcom/mysql/jdbc/MysqlIO;->useBufferRowExplicit([Lcom/mysql/jdbc/Field;)Z

    move-result v11

    move-wide v2, p1

    long-to-int v12, v2

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object/from16 v3, p6

    move v4, v12

    move/from16 v5, p5

    move/from16 v6, p4

    move v8, v11

    .line 3400
    invoke-virtual/range {v2 .. v10}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3405
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v13, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object/from16 v3, p6

    move v4, v12

    move/from16 v5, p5

    move/from16 v6, p4

    move v8, v11

    .line 3410
    invoke-virtual/range {v2 .. v10}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    if-ge v13, v0, :cond_1

    .line 3414
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 3420
    :cond_3
    new-instance v0, Lcom/mysql/jdbc/RowDataStatic;

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/RowDataStatic;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private reclaimLargeReusablePacket()V
    .locals 2

    .line 3447
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getCapacity()I

    move-result v0

    const/high16 v1, 0x100000

    if-le v0, v1, :cond_0

    .line 3448
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    :cond_0
    return-void
.end method

.method private reclaimLargeSharedSendPacket()V
    .locals 2

    .line 4177
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getCapacity()I

    move-result v0

    const/high16 v1, 0x100000

    if-le v0, v1, :cond_0

    .line 4178
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    :cond_0
    return-void
.end method

.method private final reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 3459
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/MysqlIO;->reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/Buffer;

    move-result-object p1

    return-object p1
.end method

.method private final reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/Buffer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3465
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->setWasMultiPacket(Z)V

    const/4 v2, -0x1

    const/4 v3, 0x4

    if-ne p2, v2, :cond_1

    .line 3469
    iget-object p2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    invoke-direct {p0, p2, v2, v1, v3}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result p2

    if-lt p2, v3, :cond_0

    .line 3476
    iget-object p2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte p2, p2, v1

    and-int/lit16 p2, p2, 0xff

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr p2, v2

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v4, 0x2

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr p2, v2

    goto :goto_0

    .line 3472
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 3473
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MysqlIO.43"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3481
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v2, :cond_2

    .line 3482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MysqlIO.44"

    .line 3484
    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3485
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "MysqlIO.45"

    .line 3486
    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3487
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    invoke-static {v4, v3}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3489
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 3492
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    .line 3494
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    if-nez v3, :cond_3

    .line 3495
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    if-eqz v3, :cond_4

    .line 3496
    invoke-direct {p0, v2}, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequencing(B)V

    goto :goto_1

    .line 3499
    :cond_3
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    .line 3502
    :cond_4
    :goto_1
    iput-byte v2, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 3505
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3511
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v3

    array-length v3, v3

    if-gt v3, p2, :cond_5

    add-int/lit8 v3, p2, 0x1

    .line 3512
    new-array v3, v3, [B

    invoke-virtual {p1, v3}, Lcom/mysql/jdbc/Buffer;->setByteBuffer([B)V

    .line 3516
    :cond_5
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 3519
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v4

    invoke-direct {p0, v3, v4, v1, p2}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v3

    if-ne v3, p2, :cond_b

    .line 3525
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v3, :cond_6

    .line 3526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MysqlIO.46"

    .line 3528
    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3529
    invoke-static {p1, p2}, Lcom/mysql/jdbc/MysqlIO;->getPacketDumpToLog(Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3531
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 3534
    :cond_6
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v3, :cond_7

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3535
    iget-object v8, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    move-object v4, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/mysql/jdbc/MysqlIO;->enqueuePacketForDebugging(ZZI[BLcom/mysql/jdbc/Buffer;)V

    .line 3540
    :cond_7
    iget v3, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    if-ne p2, v3, :cond_8

    .line 3541
    iget p2, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 3546
    invoke-direct {p0, p1, v2}, Lcom/mysql/jdbc/MysqlIO;->readRemainingMultiPackets(Lcom/mysql/jdbc/Buffer;B)I

    move-result p2

    move v2, p2

    const/4 p2, 0x1

    goto :goto_2

    :cond_8
    move v2, p2

    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_9

    .line 3550
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object p2

    aput-byte v1, p2, v2

    .line 3553
    :cond_9
    iget-object p2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getMaintainTimeStats()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 3554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    :cond_a
    return-object p1

    .line 3522
    :cond_b
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Short read, expected "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes, only read "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 3564
    :try_start_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3568
    :catch_1
    :try_start_2
    iget-object p2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2, v1, v1, v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->realClose(ZZZLjava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3571
    :catch_2
    throw p1

    :catch_3
    move-exception p1

    move-object v5, p1

    .line 3559
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private secureAuth(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 4207
    new-instance p1, Lcom/mysql/jdbc/Buffer;

    invoke-direct {p1, p2}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eqz p6, :cond_3

    .line 4211
    iget-boolean p6, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz p6, :cond_2

    .line 4212
    invoke-virtual {p0, v1, v0, v0}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result p6

    if-eqz p6, :cond_1

    .line 4213
    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {p1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4214
    iget p6, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v2, p6

    invoke-virtual {p1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    const/16 p6, 0x8

    .line 4217
    invoke-virtual {p1, p6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    const/16 p6, 0x17

    .line 4220
    new-array p6, p6, [B

    invoke-virtual {p1, p6}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    goto :goto_0

    .line 4222
    :cond_1
    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {p1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4223
    iget p6, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v2, p6

    invoke-virtual {p1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    goto :goto_0

    .line 4226
    :cond_2
    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    long-to-int p6, v2

    invoke-virtual {p1, p6}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 4227
    iget p6, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    invoke-virtual {p1, p6}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    :cond_3
    :goto_0
    const-string p6, "Cp1252"

    .line 4232
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p1, p3, p6, v2}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4234
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "xxxxxxxx"

    const-string p6, "Cp1252"

    .line 4236
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p1, p3, p6, v2}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_1

    :cond_4
    const-string p3, ""

    const-string p6, "Cp1252"

    .line 4239
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p1, p3, p6, v2}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4242
    :goto_1
    iget-boolean p3, p0, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz p3, :cond_5

    const-string p3, "Cp1252"

    .line 4243
    iget-object p6, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p1, p5, p3, p6}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4246
    :cond_5
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 4251
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    .line 4252
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object p1

    const/4 p3, 0x0

    .line 4254
    invoke-virtual {p1, p3}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 4256
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object p1

    .line 4258
    array-length p5, p1

    const/16 p6, 0x18

    if-ne p5, p6, :cond_7

    aget-byte p5, p1, p3

    if-eqz p5, :cond_7

    .line 4260
    aget-byte p5, p1, p3

    const/16 v2, 0x2a

    const/16 v3, 0x14

    if-eq p5, v2, :cond_6

    .line 4263
    :try_start_0
    invoke-static {p4}, Lcom/mysql/jdbc/Security;->passwordHashStage1(Ljava/lang/String;)[B

    move-result-object p2

    .line 4266
    array-length p4, p2

    new-array p4, p4, [B

    .line 4267
    array-length p5, p2

    invoke-static {p2, p3, p4, p3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4270
    invoke-static {p4, p1}, Lcom/mysql/jdbc/Security;->passwordHashStage2([B[B)[B

    move-result-object p4

    .line 4272
    array-length p5, p1

    sub-int/2addr p5, v1

    new-array p5, p5, [B

    .line 4274
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v1, p5, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4276
    new-array p1, v3, [B

    .line 4279
    invoke-static {p5, p1, p4, v3}, Lcom/mysql/jdbc/Security;->xorString([B[B[BI)V

    .line 4282
    invoke-static {p1, p2, p2, v3}, Lcom/mysql/jdbc/Security;->xorString([B[B[BI)V

    .line 4284
    new-instance p1, Lcom/mysql/jdbc/Buffer;

    const/16 p3, 0x19

    invoke-direct {p1, p3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 4285
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 4287
    iget-byte p2, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    add-int/2addr p2, v0

    int-to-byte p2, p2

    iput-byte p2, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 4289
    invoke-direct {p0, p1, p6}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 4291
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MysqlIO.91"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "MysqlIO.92"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string p3, "S1000"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4297
    :cond_6
    :try_start_1
    invoke-static {p4}, Lcom/mysql/jdbc/Security;->createKeyFromOldPassword(Ljava/lang/String;)[B

    move-result-object p5

    .line 4300
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    .line 4302
    array-length v4, p1

    sub-int/2addr v4, v1

    invoke-static {p1, v1, v2, p3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4304
    new-array p1, v3, [B

    .line 4307
    invoke-static {v2, p1, p5, v3}, Lcom/mysql/jdbc/Security;->xorString([B[B[BI)V

    .line 4310
    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/mysql/jdbc/Util;->scramble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4312
    new-instance p3, Lcom/mysql/jdbc/Buffer;

    invoke-direct {p3, p2}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    const-string p2, "Cp1252"

    .line 4313
    iget-object p4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p3, p1, p2, p4}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4314
    iget-byte p1, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    add-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 4316
    invoke-direct {p0, p3, p6}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 4318
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MysqlIO.91"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "MysqlIO.92"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string p3, "S1000"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_7
    :goto_2
    return-void
.end method

.method private final send(Lcom/mysql/jdbc/Buffer;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3677
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    if-gt p2, v0, :cond_0

    goto :goto_0

    .line 3678
    :cond_0
    new-instance p1, Lcom/mysql/jdbc/PacketTooBigException;

    int-to-long v0, p2

    iget p2, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    int-to-long v2, p2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/mysql/jdbc/PacketTooBigException;-><init>(JJ)V

    throw p1

    .line 3681
    :cond_1
    :goto_0
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverMajorVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    add-int/lit8 v0, p2, -0x4

    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    if-ge v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    add-int/lit8 v1, v1, -0x3

    if-lt v0, v1, :cond_3

    .line 3683
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/MysqlIO;->sendSplitPackets(Lcom/mysql/jdbc/Buffer;I)V

    goto/16 :goto_2

    .line 3686
    :cond_3
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    const/4 v0, 0x0

    .line 3689
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    add-int/lit8 v1, p2, -0x4

    .line 3690
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 3691
    iget-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 3693
    iget-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v1, :cond_5

    .line 3694
    iget-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 3697
    invoke-direct {p0, p1, v0, p2}, Lcom/mysql/jdbc/MysqlIO;->compressPacket(Lcom/mysql/jdbc/Buffer;II)Lcom/mysql/jdbc/Buffer;

    move-result-object v1

    .line 3698
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    .line 3700
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v3, :cond_4

    .line 3701
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MysqlIO.57"

    .line 3703
    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3704
    invoke-static {v1, v2}, Lcom/mysql/jdbc/MysqlIO;->getPacketDumpToLog(Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "MysqlIO.58"

    .line 3705
    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3706
    invoke-static {p1, p2}, Lcom/mysql/jdbc/MysqlIO;->getPacketDumpToLog(Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3708
    iget-object p2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object p2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    :cond_4
    move p2, v2

    goto :goto_1

    .line 3712
    :cond_5
    iget-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v1, :cond_6

    .line 3713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MysqlIO.59"

    .line 3715
    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "host: \'"

    .line 3716
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3717
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' threadId: \'"

    .line 3718
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3719
    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->threadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\'\n"

    .line 3720
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3721
    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->dump(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3723
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    :cond_6
    move-object v1, p1

    .line 3727
    :goto_1
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    invoke-virtual {v2, v1, v0, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 3728
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 3731
    :goto_2
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    const/4 v3, 0x0

    add-int/lit8 v4, p2, 0x5

    .line 3732
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/mysql/jdbc/MysqlIO;->enqueuePacketForDebugging(ZZI[BLcom/mysql/jdbc/Buffer;)V

    .line 3738
    :cond_7
    iget-object p2, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    if-ne p1, p2, :cond_8

    .line 3739
    invoke-direct {p0}, Lcom/mysql/jdbc/MysqlIO;->reclaimLargeSharedSendPacket()V

    .line 3742
    :cond_8
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getMaintainTimeStats()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    :catch_0
    move-exception p1

    move-object v5, p1

    .line 3746
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private sendConnectionAttributes(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1933
    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getConnectionAttributes()Ljava/lang/String;

    move-result-object v0

    .line 1935
    new-instance v8, Lcom/mysql/jdbc/Buffer;

    const/16 v1, 0x64

    invoke-direct {v8, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 1938
    :try_start_0
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->getConnectionAttributesAsProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 1940
    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1941
    move-object v2, v10

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v6

    move-object v1, v8

    move-object v3, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/Buffer;->writeLenString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;ZLcom/mysql/jdbc/MySQLConnection;)V

    .line 1942
    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v6

    move-object v1, v8

    move-object v3, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/Buffer;->writeLenString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;ZLcom/mysql/jdbc/MySQLConnection;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1949
    :catch_0
    :cond_0
    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p2

    const/4 p3, 0x4

    sub-int/2addr p2, p3

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 1950
    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object p2

    invoke-virtual {v8}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-virtual {p1, p2, p3, v0}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    return-void
.end method

.method private final sendFileToServer(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3762
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v0, :cond_0

    .line 3763
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 3766
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->loadFileBufRef:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->loadFileBufRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Buffer;

    .line 3768
    :goto_0
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v2

    add-int/lit8 v2, v2, -0xc

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v3

    add-int/lit8 v3, v3, -0x10

    const/16 v4, 0x1000

    invoke-direct {p0, v3, v4}, Lcom/mysql/jdbc/MysqlIO;->alignPacketSize(II)I

    move-result v3

    add-int/lit8 v3, v3, -0xc

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const v3, 0xffff4

    const v5, 0xffff0

    .line 3773
    invoke-direct {p0, v5, v4}, Lcom/mysql/jdbc/MysqlIO;->alignPacketSize(II)I

    move-result v4

    add-int/lit8 v4, v4, -0xc

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3775
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-nez v0, :cond_2

    .line 3779
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v3, v2, 0x4

    invoke-direct {v0, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 3780
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->loadFileBufRef:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3782
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not allocate packet of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes required for LOAD DATA LOCAL INFILE operation."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Try increasing max heap allocation for JVM or decreasing server variable \'max_allowed_packet\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "S1001"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 3790
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->clear()V

    const/4 v3, 0x0

    .line 3791
    invoke-direct {p0, v0, v3}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 3793
    new-array v2, v2, [B

    .line 3798
    :try_start_1
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getAllowLoadLocalInfile()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p1, :cond_3

    .line 3806
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getLocalInfileInputStream()Ljava/io/InputStream;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v1

    :goto_2
    const/4 v5, -0x1

    if-eqz v4, :cond_4

    .line 3810
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_3
    move-object v1, v6

    goto :goto_5

    .line 3811
    :cond_4
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getAllowUrlInLocalInfile()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3812
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_4
    move-object v1, v4

    goto :goto_5

    :cond_5
    const/16 v4, 0x3a

    .line 3815
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v4, v5, :cond_6

    .line 3817
    :try_start_2
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3818
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 3821
    :catch_1
    :try_start_3
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_4

    .line 3824
    :cond_6
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_4

    .line 3830
    :goto_5
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    if-eq v4, v5, :cond_7

    .line 3831
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 3832
    invoke-virtual {v0, v2, v3, v4}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([BII)V

    .line 3833
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 3855
    :cond_7
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3873
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 3874
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p2

    invoke-direct {p0, v0, p2}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 3876
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object p2

    .line 3878
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/MysqlIO;->buildResultSetWithUpdates(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    const-string p2, "MysqlIO.65"

    .line 3857
    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1000"

    invoke-static {p2, v1, p1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    .line 3860
    throw p1

    :cond_8
    :try_start_5
    const-string p1, "MysqlIO.LoadDataLocalNotAllowed"

    .line 3799
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "S1000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_3
    move-exception p1

    .line 3836
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MysqlIO.60"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_9

    .line 3838
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getParanoid()Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "\'"

    .line 3839
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3840
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    .line 3841
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string p2, "MysqlIO.63"

    .line 3844
    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3846
    iget-object p2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getParanoid()Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "MysqlIO.64"

    .line 3847
    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3848
    invoke-static {p1}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3851
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_6
    if-eqz v1, :cond_b

    .line 3855
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_7

    :catch_4
    move-exception p1

    const-string p2, "MysqlIO.65"

    .line 3857
    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "S1000"

    invoke-static {p2, v1, p1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    .line 3860
    throw p1

    .line 3866
    :cond_b
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 3867
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p2

    invoke-direct {p0, v0, p2}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 3868
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    .line 3853
    :goto_7
    throw p1
.end method

.method private final sendSplitPackets(Lcom/mysql/jdbc/Buffer;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4092
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->splitBufRef:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->splitBufRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/Buffer;

    .line 4093
    :goto_0
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->compressBufRef:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->compressBufRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/Buffer;

    :cond_2
    :goto_1
    const/4 v2, 0x4

    if-nez v0, :cond_3

    .line 4100
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    iget v3, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    add-int/2addr v3, v2

    invoke-direct {v0, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 4101
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->splitBufRef:Ljava/lang/ref/SoftReference;

    .line 4103
    :cond_3
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v3, :cond_5

    .line 4104
    iget v3, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    div-int v3, p2, v3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v3, p2

    if-nez v1, :cond_4

    .line 4106
    new-instance v1, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v1, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 4107
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->compressBufRef:Ljava/lang/ref/SoftReference;

    goto :goto_2

    .line 4108
    :cond_4
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    if-ge v4, v3, :cond_5

    .line 4109
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 4110
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/mysql/jdbc/Buffer;->ensureCapacity(I)V

    :cond_5
    :goto_2
    sub-int/2addr p2, v2

    .line 4115
    iget v3, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    .line 4117
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    :goto_3
    if-ltz p2, :cond_9

    .line 4123
    iget-byte v7, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    iput-byte v7, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    if-ge p2, v3, :cond_6

    move v3, p2

    .line 4129
    :cond_6
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 4130
    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 4131
    iget-byte v7, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    invoke-virtual {v0, v7}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    if-lez p2, :cond_7

    .line 4133
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v7

    invoke-static {p1, v6, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4136
    :cond_7
    iget-boolean v7, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v7, :cond_8

    .line 4137
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v7

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v8

    add-int/lit8 v9, v3, 0x4

    invoke-static {v7, v4, v8, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v9

    goto :goto_4

    .line 4140
    :cond_8
    iget-object v7, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v8

    add-int/lit8 v9, v3, 0x4

    invoke-virtual {v7, v8, v4, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 4141
    iget-object v7, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    :goto_4
    add-int/2addr v6, v3

    .line 4145
    iget v7, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    sub-int/2addr p2, v7

    goto :goto_3

    .line 4150
    :cond_9
    iget-boolean p1, p0, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz p1, :cond_b

    .line 4153
    iget p1, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    add-int/lit8 p1, p1, -0x3

    const/4 p2, 0x0

    :goto_5
    if-ltz v5, :cond_b

    .line 4155
    iget-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    if-ge v5, p1, :cond_a

    move p1, v5

    .line 4161
    :cond_a
    invoke-direct {p0, v1, p2, p1}, Lcom/mysql/jdbc/MysqlIO;->compressPacket(Lcom/mysql/jdbc/Buffer;II)Lcom/mysql/jdbc/Buffer;

    move-result-object v0

    .line 4162
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    .line 4163
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 4164
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    add-int/2addr p2, p1

    .line 4167
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x3

    sub-int/2addr v5, v0

    goto :goto_5

    :cond_b
    return-void

    :catch_0
    move-exception p1

    move-object v5, p1

    .line 4171
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private setServerSlowQueryFlags()V
    .locals 3

    .line 3204
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->queryBadIndexUsed:Z

    .line 3205
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->queryNoIndexUsed:Z

    .line 3206
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverQueryWasSlow:Z

    return-void
.end method

.method private final skipFully(Ljava/io/InputStream;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    move-wide v2, v0

    :goto_0
    cmp-long v4, v2, p2

    if-gez v4, :cond_1

    sub-long v4, p2, v2

    .line 3028
    invoke-virtual {p1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-ltz v6, :cond_0

    add-long/2addr v2, v4

    goto :goto_0

    .line 3031
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "MysqlIO.EOF"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-wide v2

    .line 3022
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Negative skip length not allowed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final skipLengthEncodedInteger(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3041
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const-wide/16 v2, 0x8

    .line 3051
    invoke-direct {p0, p1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide v2

    long-to-int p1, v2

    add-int/2addr p1, v1

    return p1

    :pswitch_1
    const-wide/16 v2, 0x3

    .line 3048
    invoke-direct {p0, p1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide v2

    long-to-int p1, v2

    add-int/2addr p1, v1

    return p1

    :pswitch_2
    const-wide/16 v2, 0x2

    .line 3045
    invoke-direct {p0, p1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide v2

    long-to-int p1, v2

    add-int/2addr p1, v1

    return p1

    :pswitch_data_0
    .packed-switch 0xfc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final unpackBinaryResultSetRow([Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/ResultSetRow;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4450
    array-length v0, p1

    .line 4452
    new-array v1, v0, [[B

    add-int/lit8 v2, v0, 0x9

    .line 4458
    div-int/lit8 v2, v2, 0x8

    .line 4459
    invoke-virtual {p2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    add-int/2addr v2, v3

    .line 4460
    invoke-virtual {p2, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    const/4 v2, 0x4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 4468
    invoke-virtual {p2, v3}, Lcom/mysql/jdbc/Buffer;->readByte(I)B

    move-result v5

    and-int/2addr v5, v2

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    .line 4469
    aput-object v5, v1, v4

    goto :goto_1

    :cond_0
    const/16 v5, 0x3f0

    if-eq p3, v5, :cond_1

    .line 4472
    invoke-direct {p0, p2, p1, v4, v1}, Lcom/mysql/jdbc/MysqlIO;->extractNativeEncodedColumn(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;I[[B)V

    goto :goto_1

    .line 4474
    :cond_1
    invoke-direct {p0, p2, p1, v4, v1}, Lcom/mysql/jdbc/MysqlIO;->unpackNativeEncodedColumn(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;I[[B)V

    :goto_1
    shl-int/lit8 v2, v2, 0x1

    and-int/lit16 v5, v2, 0xff

    if-nez v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4485
    :cond_3
    new-instance p1, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object p1
.end method

.method private final unpackNativeEncodedColumn(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;I[[B)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 4566
    aget-object v4, v1, v2

    .line 4568
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v5

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v12, 0x3a

    const/16 v13, 0x8

    const/4 v14, 0x4

    const/4 v15, 0x1

    const/4 v11, 0x0

    const/16 v6, 0xa

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    packed-switch v5, :pswitch_data_3

    .line 4859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MysqlIO.97"

    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->getMysqlType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "MysqlIO.98"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "MysqlIO.99"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MysqlIO.100"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    const-string v3, "S1000"

    invoke-static {v1, v3, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    :pswitch_0
    move-object/from16 v1, p1

    goto/16 :goto_6

    .line 4648
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v4

    long-to-int v1, v4

    if-eqz v1, :cond_0

    .line 4655
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 4656
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readLong()J

    .line 4657
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v4

    .line 4658
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v5

    .line 4659
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v16

    if-le v1, v13, :cond_1

    .line 4662
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readLong()J

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    .line 4666
    :cond_1
    :goto_0
    new-array v1, v13, [B

    .line 4668
    div-int/lit8 v13, v4, 0xa

    invoke-static {v13, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v1, v11

    .line 4669
    rem-int/2addr v4, v6

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v15

    aput-byte v12, v1, v10

    .line 4673
    div-int/lit8 v4, v5, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v9

    .line 4674
    rem-int/2addr v5, v6

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v14

    aput-byte v12, v1, v8

    .line 4678
    div-int/lit8 v4, v16, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v7

    .line 4679
    rem-int/lit8 v4, v16, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x7

    aput-byte v4, v1, v5

    .line 4681
    aput-object v1, p4, v2

    goto/16 :goto_7

    .line 4686
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v4

    long-to-int v1, v4

    if-eqz v1, :cond_2

    .line 4697
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v1

    .line 4698
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v4

    .line 4699
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-nez v1, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    const-string v1, "convertToNull"

    .line 4703
    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 4704
    aput-object v1, p4, v2

    goto/16 :goto_7

    :cond_3
    const-string v1, "exception"

    .line 4707
    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    goto :goto_2

    .line 4708
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "Value \'0000-00-00\' can not be represented as java.sql.Date"

    const-string v3, "S1009"

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 4717
    :cond_5
    :goto_2
    new-array v12, v6, [B

    .line 4719
    div-int/lit16 v13, v1, 0x3e8

    invoke-static {v13, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v12, v11

    .line 4721
    rem-int/lit16 v1, v1, 0x3e8

    .line 4723
    div-int/lit8 v11, v1, 0x64

    invoke-static {v11, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v12, v15

    .line 4725
    rem-int/lit8 v1, v1, 0x64

    .line 4727
    div-int/lit8 v11, v1, 0xa

    invoke-static {v11, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v12, v10

    .line 4728
    rem-int/2addr v1, v6

    invoke-static {v1, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v12, v9

    const/16 v1, 0x2d

    aput-byte v1, v12, v14

    .line 4732
    div-int/lit8 v9, v4, 0xa

    invoke-static {v9, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v12, v8

    .line 4733
    rem-int/2addr v4, v6

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v12, v7

    const/4 v4, 0x7

    aput-byte v1, v12, v4

    .line 4737
    div-int/lit8 v1, v5, 0xa

    invoke-static {v1, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    int-to-byte v1, v1

    const/16 v4, 0x8

    aput-byte v1, v12, v4

    const/16 v1, 0x9

    .line 4738
    rem-int/2addr v5, v6

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v12, v1

    .line 4740
    aput-object v12, p4, v2

    goto/16 :goto_7

    .line 4618
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readLongLong()J

    move-result-wide v5

    .line 4620
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v1

    if-nez v1, :cond_6

    .line 4621
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, p4, v2

    goto/16 :goto_7

    .line 4623
    :cond_6
    invoke-static {v5, v6}, Lcom/mysql/jdbc/ResultSetImpl;->convertLongToUlong(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 4625
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, p4, v2

    goto/16 :goto_7

    .line 4746
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v4

    long-to-int v1, v4

    if-eqz v1, :cond_8

    .line 4759
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v4

    .line 4760
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v5

    .line 4761
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v13

    if-le v1, v14, :cond_7

    .line 4764
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v1

    .line 4765
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v17

    .line 4766
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v18

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_3
    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_4
    if-nez v4, :cond_b

    if-nez v5, :cond_b

    if-nez v13, :cond_b

    const-string v4, "convertToNull"

    .line 4775
    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v1, 0x0

    .line 4776
    aput-object v1, p4, v2

    goto/16 :goto_7

    :cond_9
    const-string v4, "exception"

    .line 4779
    iget-object v5, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getZeroDateTimeBehavior()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v13, 0x1

    goto :goto_5

    .line 4780
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "Value \'0000-00-00\' can not be represented as java.sql.Timestamp"

    const-string v3, "S1009"

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1

    .line 4791
    :cond_b
    :goto_5
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 4793
    array-length v7, v12

    add-int/2addr v7, v15

    const/16 v19, 0x13

    add-int/lit8 v7, v7, 0x13

    .line 4795
    new-array v7, v7, [B

    .line 4797
    div-int/lit16 v8, v4, 0x3e8

    invoke-static {v8, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v7, v11

    .line 4799
    rem-int/lit16 v4, v4, 0x3e8

    .line 4801
    div-int/lit8 v8, v4, 0x64

    invoke-static {v8, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v7, v15

    .line 4803
    rem-int/lit8 v4, v4, 0x64

    .line 4805
    div-int/lit8 v8, v4, 0xa

    invoke-static {v8, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v7, v10

    .line 4806
    rem-int/2addr v4, v6

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v7, v9

    const/16 v4, 0x2d

    .line 4808
    aput-byte v4, v7, v14

    .line 4810
    div-int/lit8 v8, v5, 0xa

    invoke-static {v8, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    int-to-byte v8, v8

    const/4 v9, 0x5

    aput-byte v8, v7, v9

    .line 4811
    rem-int/2addr v5, v6

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    const/4 v8, 0x6

    aput-byte v5, v7, v8

    const/4 v5, 0x7

    .line 4813
    aput-byte v4, v7, v5

    .line 4815
    div-int/lit8 v4, v13, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    int-to-byte v4, v4

    const/16 v5, 0x8

    aput-byte v4, v7, v5

    const/16 v4, 0x9

    .line 4816
    rem-int/2addr v13, v6

    invoke-static {v13, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v7, v4

    const/16 v4, 0x20

    .line 4818
    aput-byte v4, v7, v6

    const/16 v4, 0xb

    .line 4820
    div-int/lit8 v5, v1, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v7, v4

    const/16 v4, 0xc

    .line 4821
    rem-int/2addr v1, v6

    invoke-static {v1, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v7, v4

    const/16 v1, 0xd

    const/16 v4, 0x3a

    .line 4823
    aput-byte v4, v7, v1

    const/16 v1, 0xe

    .line 4825
    div-int/lit8 v4, v17, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v7, v1

    const/16 v1, 0xf

    .line 4826
    rem-int/lit8 v4, v17, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v7, v1

    const/16 v1, 0x10

    const/16 v4, 0x3a

    .line 4828
    aput-byte v4, v7, v1

    const/16 v1, 0x11

    .line 4830
    div-int/lit8 v4, v18, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v7, v1

    const/16 v1, 0x12

    .line 4831
    rem-int/lit8 v4, v18, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v7, v1

    const/16 v1, 0x2e

    .line 4833
    aput-byte v1, v7, v19

    const/16 v1, 0x14

    .line 4837
    array-length v4, v12

    invoke-static {v12, v11, v7, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4839
    aput-object v7, p4, v2

    goto/16 :goto_7

    .line 4640
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readLongLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 4642
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, p4, v2

    goto/16 :goto_7

    .line 4632
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readIntAsLong()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 4634
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, p4, v2

    goto/16 :goto_7

    .line 4604
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v5

    long-to-int v1, v5

    .line 4606
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v4

    if-nez v4, :cond_c

    .line 4607
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, p4, v2

    goto :goto_7

    :cond_c
    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 4611
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, p4, v2

    goto :goto_7

    .line 4589
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v1

    int-to-short v1, v1

    .line 4591
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v4

    if-nez v4, :cond_d

    .line 4592
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, p4, v2

    goto :goto_7

    :cond_d
    const v4, 0xffff

    and-int/2addr v1, v4

    .line 4596
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, p4, v2

    goto :goto_7

    .line 4574
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v1

    .line 4576
    invoke-virtual {v4}, Lcom/mysql/jdbc/Field;->isUnsigned()Z

    move-result v4

    if-nez v4, :cond_e

    .line 4577
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, p4, v2

    goto :goto_7

    :cond_e
    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 4581
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, p4, v2

    goto :goto_7

    .line 4854
    :goto_6
    invoke-virtual {v1, v11}, Lcom/mysql/jdbc/Buffer;->readLenByteArray(I)[B

    move-result-object v1

    aput-object v1, p4, v2

    :goto_7
    :pswitch_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf5
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static useBufferRowExplicit([Lcom/mysql/jdbc/Field;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 3430
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 3431
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v2

    const/4 v3, -0x4

    if-eq v2, v3, :cond_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7d4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected changeUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 809
    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 810
    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 813
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 814
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x7

    const/4 v2, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v5, v1, 0x21

    .line 818
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 820
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/MysqlIO;->proceedHandshakeWithPluggableAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;)V

    goto/16 :goto_3

    .line 822
    :cond_2
    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const v3, 0x8000

    and-int/2addr v1, v3

    const/16 v3, 0x11

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 823
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v1, v5, 0x1

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 824
    invoke-virtual {v0, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 826
    invoke-virtual {p0, v2, v4, v4}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    .line 827
    invoke-virtual/range {v3 .. v9}, Lcom/mysql/jdbc/MysqlIO;->secureAuth411(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    .line 829
    invoke-direct/range {v3 .. v9}, Lcom/mysql/jdbc/MysqlIO;->secureAuth(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 833
    :cond_4
    new-instance v1, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v1, v5}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 834
    invoke-virtual {v1, v3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 837
    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 839
    iget-byte p1, p0, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    const/16 v2, 0x9

    if-le p1, v2, :cond_5

    .line 840
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p1, v2}, Lcom/mysql/jdbc/Util;->newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 842
    :cond_5
    iget-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/mysql/jdbc/Util;->oldCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 845
    :goto_2
    iget-boolean p1, p0, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    .line 848
    invoke-virtual {v1, p3}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 854
    :cond_7
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 855
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    if-nez v0, :cond_8

    .line 858
    invoke-direct {p0, p3}, Lcom/mysql/jdbc/MysqlIO;->changeDatabaseTo(Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

.method protected checkErrorPacket()Lcom/mysql/jdbc/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 873
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket(I)Lcom/mysql/jdbc/Buffer;

    move-result-object v0

    return-object v0
.end method

.method protected checkForCharsetMismatch()V
    .locals 2

    .line 880
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 881
    sget-object v0, Lcom/mysql/jdbc/MysqlIO;->jvmPlatformCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "file.encoding"

    .line 884
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 888
    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->platformDbCharsetMatches:Z

    goto :goto_0

    .line 890
    :cond_1
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->platformDbCharsetMatches:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected clearInputStream()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 901
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 905
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method closeStreamer(Lcom/mysql/jdbc/RowData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2280
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    if-eqz v0, :cond_1

    .line 2284
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2289
    iput-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    return-void

    .line 2285
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.19"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "MysqlIO.20"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MysqlIO.21"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MysqlIO.22"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 2281
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MysqlIO.17"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "MysqlIO.18"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method disableMultiQueries()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3661
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    .line 3663
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->clear()V

    const/16 v0, 0x1b

    .line 3664
    invoke-virtual {v3, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    const/4 v0, 0x1

    .line 3665
    invoke-virtual {v3, v0}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    const/16 v1, 0x1b

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 3666
    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    return-void
.end method

.method doHandshake(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    const/4 v1, 0x0

    .line 1013
    iput-boolean v1, v8, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    .line 1014
    iput-byte v1, v8, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 1016
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v2

    .line 1019
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v3

    iput-byte v3, v8, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    .line 1021
    iget-byte v3, v8, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    const/4 v4, -0x1

    if-eq v3, v4, :cond_30

    const-string v3, "ASCII"

    .line 1043
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    .line 1046
    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v10, 0x1

    if-eq v3, v4, :cond_2

    .line 1050
    :try_start_0
    iget-object v7, v8, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    invoke-virtual {v7, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1051
    iput v7, v8, Lcom/mysql/jdbc/MysqlIO;->serverMajorVersion:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    :catch_0
    iget-object v7, v8, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    add-int/2addr v3, v10

    iget-object v11, v8, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1057
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v4, :cond_2

    .line 1061
    :try_start_1
    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1062
    iput v4, v8, Lcom/mysql/jdbc/MysqlIO;->serverMinorVersion:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/2addr v6, v10

    .line 1067
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1071
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 1072
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-lt v6, v7, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x39

    if-le v6, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1080
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1081
    iput v3, v8, Lcom/mysql/jdbc/MysqlIO;->serverSubMinorVersion:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    :cond_2
    :goto_2
    const/16 v3, 0x8

    const/4 v11, 0x4

    .line 1088
    invoke-virtual {v8, v11, v1, v3}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0xffffff

    .line 1089
    iput v4, v8, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    .line 1090
    iput-boolean v10, v8, Lcom/mysql/jdbc/MysqlIO;->useNewLargePackets:Z

    goto :goto_3

    :cond_3
    const v4, 0xfd02ff

    .line 1092
    iput v4, v8, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    .line 1093
    iput-boolean v1, v8, Lcom/mysql/jdbc/MysqlIO;->useNewLargePackets:Z

    :goto_3
    const/16 v4, 0x17

    const/4 v6, 0x3

    .line 1096
    invoke-virtual {v8, v6, v4, v1}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v7

    iput-boolean v7, v8, Lcom/mysql/jdbc/MysqlIO;->colDecimalNeedsBump:Z

    const/16 v7, 0xf

    .line 1097
    invoke-virtual {v8, v6, v4, v7}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v7

    xor-int/2addr v7, v10

    iput-boolean v7, v8, Lcom/mysql/jdbc/MysqlIO;->colDecimalNeedsBump:Z

    const/16 v7, 0x16

    const/4 v12, 0x5

    .line 1098
    invoke-virtual {v8, v6, v7, v12}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v7

    iput-boolean v7, v8, Lcom/mysql/jdbc/MysqlIO;->useNewUpdateCounts:Z

    .line 1101
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v13

    iput-wide v13, v8, Lcom/mysql/jdbc/MysqlIO;->threadId:J

    .line 1103
    iget-byte v7, v8, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    const/16 v13, 0x9

    if-le v7, v13, :cond_4

    const-string v7, "ASCII"

    .line 1105
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-virtual {v2, v7, v14, v3}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    .line 1107
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->readByte()B

    goto :goto_4

    :cond_4
    const-string v7, "ASCII"

    .line 1110
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-virtual {v2, v7, v14}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    .line 1113
    :goto_4
    iput v1, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    .line 1116
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v7

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v14

    if-ge v7, v14, :cond_5

    .line 1117
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v7

    iput v7, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    .line 1120
    :cond_5
    invoke-virtual {v8, v11, v10, v10}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v7

    const/high16 v14, 0x80000

    const v15, 0x8000

    if-nez v7, :cond_6

    iget-byte v7, v8, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v7, v13, :cond_9

    iget v7, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v7, v7, 0x200

    if-eqz v7, :cond_9

    .line 1124
    :cond_6
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    iput v7, v8, Lcom/mysql/jdbc/MysqlIO;->serverCharsetIndex:I

    .line 1126
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v7

    iput v7, v8, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 1127
    invoke-direct {v8, v1}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    .line 1130
    iget v7, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v16

    shl-int/lit8 v16, v16, 0x10

    or-int v7, v7, v16

    iput v7, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    .line 1132
    iget v7, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/2addr v7, v14

    if-eqz v7, :cond_7

    .line 1134
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    iput v7, v8, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    goto :goto_5

    .line 1137
    :cond_7
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 1140
    :goto_5
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v7

    add-int/lit8 v7, v7, 0xa

    invoke-virtual {v2, v7}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 1142
    iget v7, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/2addr v7, v15

    if-eqz v7, :cond_9

    .line 1146
    iget v7, v8, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    if-lez v7, :cond_8

    const-string v7, "ASCII"

    .line 1153
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    iget v15, v8, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    sub-int/2addr v15, v3

    invoke-virtual {v2, v7, v4, v15}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;I)Ljava/lang/String;

    move-result-object v4

    .line 1154
    new-instance v7, Ljava/lang/StringBuilder;

    iget v15, v8, Lcom/mysql/jdbc/MysqlIO;->authPluginDataLength:I

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_6

    :cond_8
    const-string v4, "ASCII"

    .line 1156
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v4

    .line 1157
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v15, 0x14

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1159
    :goto_6
    iget-object v15, v8, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    .line 1165
    :cond_9
    iget v4, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_a

    iget-object v4, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getUseCompression()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1166
    iget-wide v3, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v15, 0x20

    or-long/2addr v3, v15

    iput-wide v3, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    :cond_a
    if-eqz v9, :cond_b

    .line 1169
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getCreateDatabaseIfNotExist()Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x1

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :goto_7
    iput-boolean v3, v8, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    .line 1171
    iget-boolean v3, v8, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v3, :cond_c

    .line 1172
    iget-wide v3, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v15, 0x8

    or-long/2addr v3, v15

    iput-wide v3, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    :cond_c
    const/4 v3, 0x7

    .line 1176
    invoke-virtual {v8, v12, v3, v1}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSL()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->isUseSSLExplicit()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1177
    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v10}, Lcom/mysql/jdbc/MySQLConnection;->setUseSSL(Z)V

    .line 1178
    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v1}, Lcom/mysql/jdbc/MySQLConnection;->setVerifyServerCertificate(Z)V

    .line 1179
    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v3

    const-string v4, "MysqlIO.SSLWarning"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    .line 1183
    :cond_d
    iget v3, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v3, v3, 0x800

    if-nez v3, :cond_f

    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSL()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1184
    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getRequireSSL()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1191
    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v1}, Lcom/mysql/jdbc/MySQLConnection;->setUseSSL(Z)V

    goto :goto_8

    .line 1185
    :cond_e
    iget-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->close()V

    .line 1186
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    const-string v0, "MysqlIO.15"

    .line 1187
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "08001"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1194
    :cond_f
    :goto_8
    iget v3, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/2addr v3, v11

    if-eqz v3, :cond_10

    .line 1196
    iget-wide v3, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v15, 0x4

    or-long/2addr v3, v15

    iput-wide v3, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1197
    iput-boolean v10, v8, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo:Z

    .line 1201
    :cond_10
    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseAffectedRows()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1202
    iget-wide v3, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v15, 0x2

    or-long/2addr v3, v15

    iput-wide v3, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1205
    :cond_11
    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getAllowLoadLocalInfile()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1206
    iget-wide v3, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v15, 0x80

    or-long/2addr v3, v15

    iput-wide v3, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1209
    :cond_12
    iget-boolean v3, v8, Lcom/mysql/jdbc/MysqlIO;->isInteractiveClient:Z

    if-eqz v3, :cond_13

    .line 1210
    iget-wide v3, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v15, 0x400

    or-long/2addr v3, v15

    iput-wide v3, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1213
    :cond_13
    iget v3, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    .line 1218
    iget v3, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_14

    .line 1219
    iget-wide v3, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v15, 0x1000000

    or-long/2addr v3, v15

    iput-wide v3, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1225
    :cond_14
    iget v3, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/2addr v3, v14

    if-eqz v3, :cond_15

    .line 1226
    invoke-direct {v8, v0, v5, v9, v2}, Lcom/mysql/jdbc/MysqlIO;->proceedHandshakeWithPluggableAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;)V

    return-void

    .line 1231
    :cond_15
    iget-byte v2, v8, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v2, v13, :cond_16

    .line 1232
    iget-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v14, 0x1

    or-long/2addr v2, v14

    iput-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    goto :goto_9

    .line 1234
    :cond_16
    iget-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v14, -0x2

    and-long/2addr v2, v14

    iput-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1240
    :goto_9
    invoke-virtual {v8, v11, v10, v1}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v2

    if-nez v2, :cond_17

    iget-byte v2, v8, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v2, v13, :cond_1b

    iget v2, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_1b

    .line 1241
    :cond_17
    invoke-virtual {v8, v11, v10, v10}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v2

    if-nez v2, :cond_19

    iget-byte v2, v8, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v2, v13, :cond_18

    iget v2, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_18

    goto :goto_a

    .line 1258
    :cond_18
    iget-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v14, 0x4000

    or-long/2addr v2, v14

    iput-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1259
    iput-boolean v1, v8, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    goto :goto_b

    .line 1242
    :cond_19
    :goto_a
    iget-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v14, 0x200

    or-long/2addr v2, v14

    iput-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1243
    iput-boolean v10, v8, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    .line 1246
    iget-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v14, 0x2000

    or-long/2addr v2, v14

    iput-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1249
    iget-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v14, 0x20000

    or-long/2addr v2, v14

    iput-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1254
    iget-object v2, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getAllowMultiQueries()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1255
    iget-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v14, 0x10000

    or-long/2addr v2, v14

    iput-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1262
    :cond_1a
    :goto_b
    iput-boolean v10, v8, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    :cond_1b
    if-eqz v0, :cond_1c

    .line 1266
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_c

    :cond_1c
    const/4 v2, 0x0

    :goto_c
    if-eqz v9, :cond_1d

    .line 1267
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1d
    add-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x7

    add-int/2addr v2, v11

    add-int/lit8 v3, v2, 0x21

    .line 1273
    iget-object v1, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseSSL()Z

    move-result v1

    if-nez v1, :cond_26

    .line 1274
    iget v1, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_20

    .line 1275
    iget-wide v1, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v6, 0x8000

    or-long/2addr v1, v6

    iput-wide v1, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    .line 1277
    invoke-virtual {v8, v11, v10, v10}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-byte v1, v8, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v1, v13, :cond_1e

    iget v1, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1e

    goto :goto_d

    :cond_1e
    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 1280
    invoke-direct/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->secureAuth(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_13

    :cond_1f
    :goto_d
    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 1278
    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->secureAuth411(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_13

    .line 1284
    :cond_20
    new-instance v1, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v1, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 1286
    iget-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/16 v6, 0x4000

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_23

    .line 1287
    invoke-virtual {v8, v11, v10, v10}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v2

    if-nez v2, :cond_22

    iget-byte v2, v8, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v2, v13, :cond_21

    iget v2, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_21

    goto :goto_e

    .line 1297
    :cond_21
    iget-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1298
    iget v2, v8, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    goto :goto_f

    .line 1288
    :cond_22
    :goto_e
    iget-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1289
    iget v2, v8, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    const/16 v2, 0x8

    .line 1292
    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    const/16 v2, 0x17

    .line 1295
    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    goto :goto_f

    .line 1301
    :cond_23
    iget-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 1302
    iget v2, v8, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    :goto_f
    const-string v2, "Cp1252"

    .line 1306
    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v0, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1308
    iget-byte v0, v8, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v0, v13, :cond_24

    .line 1309
    iget-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    iget-object v2, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcom/mysql/jdbc/Util;->newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Cp1252"

    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v0, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_10

    .line 1311
    :cond_24
    iget-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/mysql/jdbc/Util;->oldCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Cp1252"

    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v0, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1314
    :goto_10
    iget-boolean v0, v8, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz v0, :cond_25

    const-string v0, "Cp1252"

    .line 1315
    iget-object v2, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v1, v9, v0, v2}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 1318
    :cond_25
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    invoke-direct {v8, v1, v0}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    goto/16 :goto_13

    .line 1321
    :cond_26
    invoke-direct {v8, v0, v5, v9, v3}, Lcom/mysql/jdbc/MysqlIO;->negotiateSSLConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1323
    iget v1, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_28

    .line 1324
    invoke-virtual {v8, v11, v10, v10}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 1325
    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->secureAuth411(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_13

    :cond_27
    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 1327
    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->secureAuth411(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_13

    .line 1331
    :cond_28
    new-instance v1, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v1, v3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 1333
    iget-boolean v2, v8, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v2, :cond_29

    .line 1334
    iget-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 1335
    iget v2, v8, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    goto :goto_11

    .line 1337
    :cond_29
    iget-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 1338
    iget v2, v8, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    .line 1342
    :goto_11
    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 1344
    iget-byte v0, v8, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v0, v13, :cond_2a

    .line 1345
    iget-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    iget-object v2, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcom/mysql/jdbc/Util;->newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    goto :goto_12

    .line 1347
    :cond_2a
    iget-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/mysql/jdbc/Util;->oldCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 1350
    :goto_12
    iget v0, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-eqz v0, :cond_2b

    if-eqz v9, :cond_2b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b

    .line 1351
    invoke-virtual {v1, v9}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 1354
    :cond_2b
    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    invoke-direct {v8, v1, v0}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 1359
    :goto_13
    invoke-virtual {v8, v11, v10, v10}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-byte v0, v8, Lcom/mysql/jdbc/MysqlIO;->protocolVersion:B

    if-le v0, v13, :cond_2c

    iget v0, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2d

    .line 1360
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    .line 1366
    :cond_2d
    iget v0, v8, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2e

    iget-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseCompression()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/mysql/jdbc/CompressedInputStream;

    if-nez v0, :cond_2e

    .line 1368
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    iput-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    .line 1369
    iput-boolean v10, v8, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    .line 1370
    new-instance v0, Lcom/mysql/jdbc/CompressedInputStream;

    iget-object v1, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v2, v8, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/CompressedInputStream;-><init>(Lcom/mysql/jdbc/Connection;Ljava/io/InputStream;)V

    iput-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 1373
    :cond_2e
    iget-boolean v0, v8, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-nez v0, :cond_2f

    .line 1374
    invoke-direct {v8, v9}, Lcom/mysql/jdbc/MysqlIO;->changeDatabaseTo(Ljava/lang/String;)V

    .line 1378
    :cond_2f
    :try_start_3
    iget-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    invoke-interface {v0}, Lcom/mysql/jdbc/SocketFactory;->afterHandshake()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception v0

    move-object v6, v0

    .line 1380
    iget-object v1, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v2, v8, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v4, v8, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1023
    :cond_30
    :try_start_4
    iget-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1030
    :catch_4
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v0

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v3, "ASCII"

    invoke-virtual {v2, v3, v1}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v1

    .line 1034
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MysqlIO.10"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 1036
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    iget-object v1, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseSqlStateCodes()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState(IZ)Ljava/lang/String;

    move-result-object v1

    .line 1040
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/mysql/jdbc/SQLError;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected dumpPacketRingBuffer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEnablePacketDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " packets received from server, from oldest->newest:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 919
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetDebugRingBuffer:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 922
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 923
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 926
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method enableMultiQueries()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3652
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getSharedSendPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    .line 3654
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->clear()V

    const/16 v0, 0x1b

    .line 3655
    invoke-virtual {v3, v0}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    const/4 v0, 0x0

    .line 3656
    invoke-virtual {v3, v0}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    const/16 v1, 0x1b

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 3657
    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    return-void
.end method

.method protected explainSlowQuery([BLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "SELECT"

    .line 939
    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/mysql/jdbc/MysqlIO;->EXPLAINABLE_STATEMENT_EXTENSION:[Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    :cond_0
    const/4 v0, 0x0

    .line 946
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const-string v2, "EXPLAIN ?"

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/PreparedStatement;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x1

    .line 947
    :try_start_1
    invoke-virtual {v1, v2, p1}, Lcom/mysql/jdbc/PreparedStatement;->setBytesNoEscapeNoQuotes(I[B)V

    .line 948
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 950
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MysqlIO.8"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "MysqlIO.9"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 952
    invoke-static {v0, p1}, Lcom/mysql/jdbc/util/ResultSetUtil;->appendResultSetSlashGStyle(Ljava/lang/StringBuilder;Ljava/sql/ResultSet;)Ljava/lang/StringBuilder;

    .line 954
    iget-object p2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 958
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    :cond_1
    if-eqz v1, :cond_5

    .line 962
    :goto_0
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-object p1, v0

    goto :goto_2

    :catchall_2
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    :goto_1
    if-eqz p1, :cond_2

    .line 958
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    :cond_2
    if-eqz v1, :cond_3

    .line 962
    invoke-virtual {v1}, Lcom/mysql/jdbc/PreparedStatement;->close()V

    .line 957
    :cond_3
    throw p2

    :catch_1
    move-object p1, v0

    move-object v1, p1

    :catch_2
    :goto_2
    if-eqz p1, :cond_4

    .line 958
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method protected fetchRowsViaCursor(Ljava/util/List;J[Lcom/mysql/jdbc/Field;IZ)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;J[",
            "Lcom/mysql/jdbc/Field;",
            "IZ)",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v9, p0

    move/from16 v0, p5

    if-nez p1, :cond_0

    .line 4916
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v1

    goto :goto_0

    .line 4918
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    move-object v10, p1

    .line 4921
    :goto_0
    iget-object v1, v9, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 4923
    iget-object v1, v9, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 4924
    iget-object v1, v9, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    move-wide v2, p2

    invoke-virtual {v1, p2, p3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4925
    iget-object v1, v9, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    const/16 v1, 0x1c

    const/4 v2, 0x0

    .line 4927
    iget-object v3, v9, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    move-object/from16 v11, p4

    .line 4931
    :goto_1
    array-length v2, v11

    const/4 v3, 0x1

    const/16 v4, 0x3ef

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4932
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v10
.end method

.method protected final forceClose()V
    .locals 2

    const/4 v0, 0x0

    .line 493
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getNetworkResources()Lcom/mysql/jdbc/NetworkResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mysql/jdbc/NetworkResources;->forceClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    .line 496
    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 497
    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    .line 496
    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 497
    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    .line 495
    throw v1
.end method

.method protected getCommandCount()I
    .locals 1

    .line 4955
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->commandCount:I

    return v0
.end method

.method protected getCurrentTimeNanosOrMillis()J
    .locals 2

    .line 2912
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNanosForElapsedTime:Z

    if-eqz v0, :cond_0

    .line 2913
    invoke-static {}, Lcom/mysql/jdbc/TimeUtil;->getCurrentTimeNanosOrMillis()J

    move-result-wide v0

    return-wide v0

    .line 2916
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method getEncodingForHandshake()Ljava/lang/String;
    .locals 1

    .line 5007
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    :cond_0
    return-object v0
.end method

.method protected getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .line 4978
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method getHost()Ljava/lang/String;
    .locals 1

    .line 2923
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    return-object v0
.end method

.method protected getLastPacketReceivedTimeMs()J
    .locals 2

    .line 371
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    return-wide v0
.end method

.method protected getLastPacketSentTimeMs()J
    .locals 2

    .line 367
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    return-wide v0
.end method

.method protected getNetworkResources()Lcom/mysql/jdbc/NetworkResources;
    .locals 4

    .line 485
    new-instance v0, Lcom/mysql/jdbc/NetworkResources;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1, v2, v3}, Lcom/mysql/jdbc/NetworkResources;-><init>(Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method protected getQueryTimingUnits()Ljava/lang/String;
    .locals 1

    .line 4951
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    return-object v0
.end method

.method protected getResultSet(Lcom/mysql/jdbc/StatementImpl;JIIIZLjava/lang/String;Z[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v8, p0

    move-wide v1, p2

    move/from16 v7, p9

    const/4 v0, 0x0

    if-nez p10, :cond_0

    long-to-int v3, v1

    .line 412
    new-array v3, v3, [Lcom/mysql/jdbc/Field;

    const/4 v4, 0x0

    :goto_0
    int-to-long v5, v4

    cmp-long v5, v5, v1

    if-gez v5, :cond_2

    .line 417
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->readPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v5

    .line 418
    invoke-virtual {p0, v5, v0}, Lcom/mysql/jdbc/MysqlIO;->unpackField(Lcom/mysql/jdbc/Buffer;Z)Lcom/mysql/jdbc/Field;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-gez v4, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->skipPacket()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :cond_2
    move-object v9, v3

    .line 427
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x5

    if-eqz v3, :cond_3

    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v5, v0, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->isCursorRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 431
    :cond_3
    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    invoke-direct {p0, v3}, Lcom/mysql/jdbc/MysqlIO;->reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/Buffer;

    move-result-object v3

    .line 432
    invoke-direct {p0, v3}, Lcom/mysql/jdbc/MysqlIO;->readServerStatusForResultSets(Lcom/mysql/jdbc/Buffer;)V

    .line 439
    :cond_4
    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v5, v0, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseCursorFetch()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v7, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getFetchSize()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getResultSetType()I

    move-result v3

    const/16 v4, 0x3eb

    if-ne v3, v4, :cond_8

    .line 441
    move-object v3, p1

    check-cast v3, Lcom/mysql/jdbc/ServerPreparedStatement;

    .line 450
    iget-object v4, v8, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4, v5, v0, v5}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    .line 451
    iget v4, v8, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    move v10, v5

    goto :goto_3

    :cond_6
    const/4 v10, 0x1

    :goto_3
    if-eqz v10, :cond_8

    .line 455
    new-instance v4, Lcom/mysql/jdbc/RowDataCursor;

    invoke-direct {v4, p0, v3, v9}, Lcom/mysql/jdbc/RowDataCursor;-><init>(Lcom/mysql/jdbc/MysqlIO;Lcom/mysql/jdbc/ServerPreparedStatement;[Lcom/mysql/jdbc/Field;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p8

    move-object v3, v9

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p9

    .line 457
    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/MysqlIO;->buildResultSetWithRows(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;IIZ)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    if-eqz v10, :cond_7

    .line 460
    invoke-virtual {p1}, Lcom/mysql/jdbc/StatementImpl;->getFetchSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/ResultSetImpl;->setFetchSize(I)V

    :cond_7
    return-object v0

    :cond_8
    if-nez p7, :cond_a

    if-nez p10, :cond_9

    move-object v6, v9

    goto :goto_4

    :cond_9
    move-object/from16 v6, p10

    :goto_4
    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move/from16 v4, p6

    move/from16 v5, p9

    .line 470
    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/MysqlIO;->readSingleRowSet(JIIZ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/RowData;

    move-result-object v0

    :goto_5
    move-object v4, v0

    goto :goto_7

    .line 472
    :cond_a
    new-instance v0, Lcom/mysql/jdbc/RowDataDynamic;

    long-to-int v1, v1

    if-nez p10, :cond_b

    move-object v2, v9

    goto :goto_6

    :cond_b
    move-object/from16 v2, p10

    :goto_6
    invoke-direct {v0, p0, v1, v2, v7}, Lcom/mysql/jdbc/RowDataDynamic;-><init>(Lcom/mysql/jdbc/MysqlIO;I[Lcom/mysql/jdbc/Field;Z)V

    .line 473
    iput-object v0, v8, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    goto :goto_5

    :goto_7
    if-nez p10, :cond_c

    move-object v3, v9

    goto :goto_8

    :cond_c
    move-object/from16 v3, p10

    :goto_8
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p8

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p9

    .line 476
    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/MysqlIO;->buildResultSetWithRows(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;IIZ)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    return-object v0
.end method

.method final getServerMajorVersion()I
    .locals 1

    .line 976
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverMajorVersion:I

    return v0
.end method

.method final getServerMinorVersion()I
    .locals 1

    .line 983
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverMinorVersion:I

    return v0
.end method

.method protected getServerStatus()I
    .locals 1

    .line 4909
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    return v0
.end method

.method final getServerSubMinorVersion()I
    .locals 1

    .line 990
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverSubMinorVersion:I

    return v0
.end method

.method getServerVersion()Ljava/lang/String;
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverVersion:Ljava/lang/String;

    return-object v0
.end method

.method getSharedSendPacket()Lcom/mysql/jdbc/Buffer;
    .locals 2

    .line 2272
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    if-nez v0, :cond_0

    .line 2273
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    .line 2276
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->sharedSendPacket:Lcom/mysql/jdbc/Buffer;

    return-object v0
.end method

.method protected getSlowQueryThreshold()J
    .locals 2

    .line 4947
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    return-wide v0
.end method

.method protected getThreadId()J
    .locals 2

    .line 4939
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->threadId:J

    return-wide v0
.end method

.method hadWarnings()Z
    .locals 1

    .line 4183
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    return v0
.end method

.method public hasLongColumnInfo()Z
    .locals 1

    .line 351
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo:Z

    return v0
.end method

.method protected inTransactionOnServer()Z
    .locals 2

    .line 796
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method invokeStatementInterceptorsPost(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;ZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v0, p0

    .line 2876
    iget-object v1, v0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v13, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 2877
    iget-object v4, v0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/StatementInterceptorV2;

    .line 2879
    invoke-interface {v4}, Lcom/mysql/jdbc/StatementInterceptorV2;->executeTopLevelOnly()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 2880
    iget v7, v0, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    if-eq v7, v6, :cond_2

    if-nez p4, :cond_2

    :cond_0
    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 2885
    iget-object v8, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget v9, v0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    iget-boolean v10, v0, Lcom/mysql/jdbc/MysqlIO;->queryNoIndexUsed:Z

    iget-boolean v11, v0, Lcom/mysql/jdbc/MysqlIO;->queryBadIndexUsed:Z

    move-object v5, p1

    move-object/from16 v6, p2

    move-object v7, v13

    move-object/from16 v12, p5

    invoke-interface/range {v4 .. v12}, Lcom/mysql/jdbc/StatementInterceptorV2;->postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;IZZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object v13, v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v13
.end method

.method invokeStatementInterceptorsPre(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2848
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 2849
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mysql/jdbc/StatementInterceptorV2;

    .line 2851
    invoke-interface {v4}, Lcom/mysql/jdbc/StatementInterceptorV2;->executeTopLevelOnly()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 2852
    iget v7, p0, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    if-eq v7, v6, :cond_2

    if-nez p3, :cond_2

    :cond_0
    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 2862
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4, p1, p2, v5}, Lcom/mysql/jdbc/StatementInterceptorV2;->preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method protected isDataAvailable()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 358
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isEOFDeprecated()Z
    .locals 4

    .line 5046
    iget-wide v0, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v2, 0x1000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSSLEstablished()Z
    .locals 1

    .line 4905
    invoke-static {}, Lcom/mysql/jdbc/ExportControlled;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/mysql/jdbc/ExportControlled;->isSSLEstablished(Lcom/mysql/jdbc/MysqlIO;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isSetNeededForAutoCommitMode(Z)Z
    .locals 4

    .line 779
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getElideSetAutoCommits()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 780
    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 v3, 0x5

    .line 782
    invoke-virtual {p0, v3, v2, v2}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 786
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->inTransactionOnServer()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_1
    if-eq v0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    return v1
.end method

.method isVersion(III)Z
    .locals 1

    .line 2941
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMajorVersion()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMinorVersion()I

    move-result p1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerSubMinorVersion()I

    move-result p1

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1988
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useDirectRowUnpack:Z

    if-eqz v0, :cond_0

    if-nez p8, :cond_0

    if-nez p3, :cond_0

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    .line 1989
    invoke-virtual/range {p0 .. p7}, Lcom/mysql/jdbc/MysqlIO;->nextRowFast([Lcom/mysql/jdbc/Field;IZIZZZ)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-nez p8, :cond_1

    .line 1996
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object p8

    if-nez p6, :cond_2

    if-eqz p5, :cond_2

    .line 1999
    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    iget v2, p0, Lcom/mysql/jdbc/MysqlIO;->useBufferRowSizeThreshold:I

    if-le v1, v2, :cond_2

    const/4 p6, 0x1

    goto :goto_0

    .line 2006
    :cond_1
    invoke-direct {p0, p8}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket(Lcom/mysql/jdbc/Buffer;)V

    :cond_2
    :goto_0
    const/16 v1, 0x3f0

    const/4 v2, 0x0

    if-nez p3, :cond_a

    .line 2013
    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {p8, p3}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2015
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->isEOFPacket()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->isResultSetOKPacket()Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_1

    .line 2035
    :cond_4
    invoke-direct {p0, p8}, Lcom/mysql/jdbc/MysqlIO;->readServerStatusForResultSets(Lcom/mysql/jdbc/Buffer;)V

    return-object v2

    :cond_5
    :goto_1
    const/4 p3, 0x0

    if-eq p4, v1, :cond_8

    if-nez p5, :cond_6

    if-nez p6, :cond_6

    goto :goto_2

    :cond_6
    if-nez p7, :cond_7

    .line 2028
    new-instance p2, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result p4

    invoke-direct {p2, p4}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object p2, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    .line 2031
    :cond_7
    new-instance p2, Lcom/mysql/jdbc/BufferRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p4

    invoke-direct {p2, p8, p1, p3, p4}, Lcom/mysql/jdbc/BufferRow;-><init>(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;ZLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object p2

    .line 2018
    :cond_8
    :goto_2
    new-array p1, p2, [[B

    const/4 p4, 0x0

    :goto_3
    if-ge p4, p2, :cond_9

    .line 2021
    invoke-virtual {p8, p3}, Lcom/mysql/jdbc/Buffer;->readLenByteArray(I)[B

    move-result-object p5

    aput-object p5, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 2024
    :cond_9
    new-instance p2, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object p2

    .line 2043
    :cond_a
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->isEOFPacket()Z

    move-result p2

    if-nez p2, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->isResultSetOKPacket()Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_4

    .line 2055
    :cond_c
    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p8, p1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2056
    invoke-direct {p0, p8}, Lcom/mysql/jdbc/MysqlIO;->readServerStatusForResultSets(Lcom/mysql/jdbc/Buffer;)V

    return-object v2

    :cond_d
    :goto_4
    if-eq p4, v1, :cond_10

    if-nez p5, :cond_e

    if-nez p6, :cond_e

    goto :goto_5

    :cond_e
    if-nez p7, :cond_f

    .line 2049
    new-instance p2, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p8}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result p3

    invoke-direct {p2, p3}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object p2, p0, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    .line 2052
    :cond_f
    new-instance p2, Lcom/mysql/jdbc/BufferRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p3

    invoke-direct {p2, p8, p1, v0, p3}, Lcom/mysql/jdbc/BufferRow;-><init>(Lcom/mysql/jdbc/Buffer;[Lcom/mysql/jdbc/Field;ZLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object p2

    .line 2045
    :cond_10
    :goto_5
    invoke-direct {p0, p1, p8, p4}, Lcom/mysql/jdbc/MysqlIO;->unpackBinaryResultSetRow([Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object p1

    return-object p1
.end method

.method final nextRowFast([Lcom/mysql/jdbc/Field;IZIZZZ)Lcom/mysql/jdbc/ResultSetRow;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v0, p2

    .line 2064
    :try_start_0
    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v2, v10, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v10, v1, v2, v4, v3}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v1

    if-lt v1, v3, :cond_e

    .line 2071
    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v1, v1, v4

    const/16 v2, 0xff

    and-int/2addr v1, v2

    iget-object v5, v10, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    and-int/2addr v5, v2

    const/16 v7, 0x8

    shl-int/2addr v5, v7

    add-int/2addr v1, v5

    iget-object v5, v10, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v8, 0x2

    aget-byte v5, v5, v8

    and-int/2addr v5, v2

    const/16 v9, 0x10

    shl-int/2addr v5, v9

    add-int/2addr v1, v5

    .line 2074
    iget v5, v10, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    if-ne v1, v5, :cond_0

    .line 2075
    iget-object v2, v10, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    invoke-direct {v10, v2, v1}, Lcom/mysql/jdbc/MysqlIO;->reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/Buffer;

    .line 2078
    iget-object v9, v10, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    return-object v0

    .line 2084
    :cond_0
    iget v5, v10, Lcom/mysql/jdbc/MysqlIO;->useBufferRowSizeThreshold:I

    if-le v1, v5, :cond_1

    .line 2085
    iget-object v2, v10, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    invoke-direct {v10, v2, v1}, Lcom/mysql/jdbc/MysqlIO;->reuseAndReadPacket(Lcom/mysql/jdbc/Buffer;I)Lcom/mysql/jdbc/Buffer;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2088
    iget-object v9, v10, Lcom/mysql/jdbc/MysqlIO;->reusablePacket:Lcom/mysql/jdbc/Buffer;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v9}, Lcom/mysql/jdbc/MysqlIO;->nextRow([Lcom/mysql/jdbc/Field;IZIZZZLcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v5, 0x0

    .line 2095
    move-object v11, v5

    check-cast v11, [[B

    move v12, v1

    move-object v14, v11

    const/4 v11, 0x0

    const/4 v13, 0x1

    :goto_0
    if-ge v11, v0, :cond_c

    .line 2099
    iget-object v15, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v15

    and-int/2addr v15, v2

    add-int/lit8 v12, v12, -0x1

    if-eqz v13, :cond_8

    if-ne v15, v2, :cond_2

    .line 2106
    new-instance v13, Lcom/mysql/jdbc/Buffer;

    add-int/lit8 v14, v1, 0x4

    invoke-direct {v13, v14}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    .line 2107
    invoke-virtual {v13, v4}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2108
    iget-object v14, v10, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v14, v14, v4

    invoke-virtual {v13, v14}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2109
    iget-object v14, v10, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v14, v14, v6

    invoke-virtual {v13, v14}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2110
    iget-object v14, v10, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v14, v14, v8

    invoke-virtual {v13, v14}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2111
    invoke-virtual {v13, v6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    int-to-byte v14, v15

    .line 2112
    invoke-virtual {v13, v14}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2113
    iget-object v14, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v13}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v8

    const/4 v4, 0x5

    add-int/lit8 v9, v1, -0x1

    invoke-direct {v10, v14, v8, v4, v9}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    .line 2114
    invoke-virtual {v13, v3}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2115
    invoke-direct {v10, v13}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket(Lcom/mysql/jdbc/Buffer;)V

    :cond_2
    const/16 v4, 0xfe

    if-ne v15, v4, :cond_7

    const v4, 0xffffff

    if-ge v1, v4, :cond_7

    .line 2125
    iget-boolean v0, v10, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v0, :cond_6

    .line 2126
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->isEOFDeprecated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2128
    iget-object v0, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {v10, v0}, Lcom/mysql/jdbc/MysqlIO;->skipLengthEncodedInteger(Ljava/io/InputStream;)I

    move-result v0

    sub-int/2addr v12, v0

    .line 2129
    iget-object v0, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {v10, v0}, Lcom/mysql/jdbc/MysqlIO;->skipLengthEncodedInteger(Ljava/io/InputStream;)I

    move-result v0

    sub-int/2addr v12, v0

    .line 2131
    iget v0, v10, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v0, v10, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 2132
    iget-object v0, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/2addr v0, v2

    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/2addr v1, v2

    shl-int/2addr v1, v7

    or-int/2addr v0, v1

    iput v0, v10, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 2133
    iget v0, v10, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    invoke-direct {v10, v0}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    add-int/lit8 v12, v12, -0x2

    .line 2136
    iget-object v0, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/2addr v0, v2

    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/2addr v1, v2

    shl-int/2addr v1, v7

    or-int/2addr v0, v1

    iput v0, v10, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    add-int/lit8 v12, v12, -0x2

    .line 2139
    iget v0, v10, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    if-lez v0, :cond_5

    .line 2140
    iput-boolean v6, v10, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    goto :goto_1

    .line 2145
    :cond_3
    iget-object v0, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/2addr v0, v2

    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/2addr v1, v2

    shl-int/2addr v1, v7

    or-int/2addr v0, v1

    iput v0, v10, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    add-int/lit8 v12, v12, -0x2

    .line 2148
    iget v0, v10, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    if-lez v0, :cond_4

    .line 2149
    iput-boolean v6, v10, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 2152
    :cond_4
    iget v0, v10, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v0, v10, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 2154
    iget-object v0, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/2addr v0, v2

    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/2addr v1, v2

    shl-int/2addr v1, v7

    or-int/2addr v0, v1

    iput v0, v10, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 2155
    iget v0, v10, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    invoke-direct {v10, v0}, Lcom/mysql/jdbc/MysqlIO;->checkTransactionState(I)V

    add-int/lit8 v12, v12, -0x2

    .line 2160
    :cond_5
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->setServerSlowQueryFlags()V

    if-lez v12, :cond_6

    .line 2163
    iget-object v0, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    int-to-long v1, v12

    invoke-direct {v10, v0, v1, v2}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    :cond_6
    return-object v5

    .line 2170
    :cond_7
    new-array v4, v0, [[B

    move-object v14, v4

    const/4 v13, 0x0

    :cond_8
    const/4 v4, -0x1

    packed-switch v15, :pswitch_data_0

    :goto_2
    const/16 v8, 0x10

    goto/16 :goto_3

    .line 2194
    :pswitch_0
    iget-object v8, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    and-int/2addr v8, v2

    int-to-long v8, v8

    iget-object v15, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v15

    and-int/2addr v15, v2

    int-to-long v5, v15

    shl-long/2addr v5, v7

    or-long/2addr v5, v8

    iget-object v8, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    and-int/2addr v8, v2

    int-to-long v8, v8

    const/16 v15, 0x10

    shl-long/2addr v8, v15

    or-long/2addr v5, v8

    iget-object v8, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    and-int/2addr v8, v2

    int-to-long v8, v8

    const/16 v15, 0x18

    shl-long/2addr v8, v15

    or-long/2addr v5, v8

    iget-object v8, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    and-int/2addr v8, v2

    int-to-long v8, v8

    const/16 v15, 0x20

    shl-long/2addr v8, v15

    or-long/2addr v5, v8

    iget-object v8, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    and-int/2addr v8, v2

    int-to-long v8, v8

    const/16 v15, 0x28

    shl-long/2addr v8, v15

    or-long/2addr v5, v8

    iget-object v8, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    and-int/2addr v8, v2

    int-to-long v8, v8

    const/16 v15, 0x30

    shl-long/2addr v8, v15

    or-long/2addr v5, v8

    iget-object v8, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v8

    and-int/2addr v8, v2

    int-to-long v8, v8

    const/16 v15, 0x38

    shl-long/2addr v8, v15

    or-long/2addr v5, v8

    long-to-int v15, v5

    add-int/lit8 v12, v12, -0x8

    goto :goto_2

    .line 2188
    :pswitch_1
    iget-object v5, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/2addr v5, v2

    iget-object v6, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    and-int/2addr v6, v2

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    iget-object v6, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    and-int/2addr v6, v2

    const/16 v8, 0x10

    shl-int/2addr v6, v8

    or-int v15, v5, v6

    add-int/lit8 v12, v12, -0x3

    goto :goto_3

    :pswitch_2
    const/16 v8, 0x10

    .line 2183
    iget-object v5, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/2addr v5, v2

    iget-object v6, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    and-int/2addr v6, v2

    shl-int/2addr v6, v7

    or-int v15, v5, v6

    add-int/lit8 v12, v12, -0x2

    goto :goto_3

    :pswitch_3
    const/16 v8, 0x10

    const/4 v15, -0x1

    :goto_3
    if-ne v15, v4, :cond_9

    const/4 v4, 0x0

    .line 2206
    aput-object v4, v14, v11

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    if-nez v15, :cond_a

    .line 2208
    sget-object v5, Lcom/mysql/jdbc/Constants;->EMPTY_BYTE_ARRAY:[B

    aput-object v5, v14, v11

    :goto_4
    const/4 v9, 0x0

    goto :goto_5

    .line 2210
    :cond_a
    new-array v5, v15, [B

    aput-object v5, v14, v11

    .line 2212
    iget-object v5, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    aget-object v6, v14, v11

    const/4 v9, 0x0

    invoke-direct {v10, v5, v6, v9, v15}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v5

    if-ne v5, v15, :cond_b

    sub-int/2addr v12, v5

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object v5, v4

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/16 v9, 0x10

    goto/16 :goto_0

    .line 2215
    :cond_b
    iget-object v0, v10, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v1, v10, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v3, v10, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    new-instance v5, Ljava/io/IOException;

    const-string v6, "MysqlIO.43"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    move-object/from16 p1, v0

    move-wide/from16 p2, v1

    move-wide/from16 p4, v3

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    invoke-static/range {p1 .. p7}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_c
    if-lez v12, :cond_d

    .line 2224
    iget-object v0, v10, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    int-to-long v1, v12

    invoke-direct {v10, v0, v1, v2}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    .line 2227
    :cond_d
    new-instance v0, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-direct {v0, v14, v1}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object v0

    .line 2067
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 2068
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MysqlIO.43"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 2229
    iget-object v1, v10, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v2, v10, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v4, v10, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    move-object/from16 p1, v1

    move-wide/from16 p2, v2

    move-wide/from16 p4, v4

    move-object/from16 p6, v0

    move-object/from16 p7, v6

    invoke-static/range {p1 .. p7}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xfb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final quit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2244
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2246
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2252
    :try_start_2
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v1

    const-string v2, "Caught while disconnecting..."

    invoke-interface {v1, v2, v0}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2255
    :catch_1
    :cond_0
    :goto_0
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    const/4 v1, -0x1

    .line 2256
    iput-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 2257
    iput-byte v1, p0, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    const/4 v1, 0x1

    .line 2258
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 2259
    invoke-virtual {v0}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2263
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 2261
    throw v0
.end method

.method readAllResults(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v12, p0

    .line 2339
    invoke-virtual/range {p7 .. p7}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v0

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    move-object/from16 v1, p7

    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2341
    invoke-virtual/range {p0 .. p11}, Lcom/mysql/jdbc/MysqlIO;->readResultsForQueryOrUpdate(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v14

    .line 2346
    iget-wide v0, v12, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    const-wide/32 v2, 0x20000

    and-long/2addr v0, v2

    const/4 v11, 0x0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2348
    :goto_0
    iget v1, v12, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    if-eqz p5, :cond_3

    .line 2358
    invoke-virtual {v14}, Lcom/mysql/jdbc/ResultSetImpl;->getUpdateCount()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2359
    invoke-virtual {v12, v14}, Lcom/mysql/jdbc/MysqlIO;->tackOnMoreStreamingResults(Lcom/mysql/jdbc/ResultSetImpl;)Z

    .line 2362
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->reclaimLargeReusablePacket()V

    return-object v14

    :cond_3
    and-int/2addr v0, v1

    move-object v9, v14

    :goto_2
    if-eqz v0, :cond_5

    .line 2370
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v7

    .line 2371
    invoke-virtual {v7, v11}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p8

    move-object v13, v9

    move-wide/from16 v9, p9

    const/4 v15, 0x0

    move-object/from16 v11, p11

    .line 2373
    invoke-virtual/range {v0 .. v11}, Lcom/mysql/jdbc/MysqlIO;->readResultsForQueryOrUpdate(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v9

    .line 2376
    invoke-virtual {v13, v9}, Lcom/mysql/jdbc/ResultSetImpl;->setNextResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 2380
    iget v0, v12, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    const/4 v11, 0x0

    const/4 v13, 0x1

    goto :goto_2

    :cond_5
    if-nez p5, :cond_6

    .line 2384
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    .line 2387
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->reclaimLargeReusablePacket()V

    return-object v14
.end method

.method protected final readPacket()Lcom/mysql/jdbc/Buffer;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 567
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v4, 0x4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v2

    if-lt v2, v4, :cond_8

    .line 574
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v5, 0x2

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    .line 576
    iget v3, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    if-gt v2, v3, :cond_7

    .line 580
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v3, :cond_0

    .line 581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MysqlIO.2"

    .line 583
    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "MysqlIO.3"

    .line 585
    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    invoke-static {v5, v4}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 591
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    .line 593
    iget-boolean v4, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    if-nez v4, :cond_1

    .line 594
    iget-boolean v4, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    if-eqz v4, :cond_2

    .line 595
    invoke-direct {p0, v3}, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequencing(B)V

    goto :goto_0

    .line 598
    :cond_1
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    .line 601
    :cond_2
    :goto_0
    iput-byte v3, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 604
    new-array v3, v2, [B

    .line 605
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-direct {p0, v4, v3, v1, v2}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v2, :cond_6

    .line 611
    new-instance v4, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v4, v3}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 613
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v3, :cond_3

    .line 614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MysqlIO.4"

    .line 616
    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-static {v4, v2}, Lcom/mysql/jdbc/MysqlIO;->getPacketDumpToLog(Lcom/mysql/jdbc/Buffer;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 622
    :cond_3
    iget-boolean v2, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v2, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 623
    iget-object v9, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    move-object v5, p0

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/mysql/jdbc/MysqlIO;->enqueuePacketForDebugging(ZZI[BLcom/mysql/jdbc/Buffer;)V

    .line 626
    :cond_4
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getMaintainTimeStats()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    :cond_5
    return-object v4

    .line 608
    :cond_6
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Short read, expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes, only read "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 577
    :cond_7
    new-instance v3, Lcom/mysql/jdbc/PacketTooBigException;

    int-to-long v4, v2

    iget v2, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    int-to-long v6, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mysql/jdbc/PacketTooBigException;-><init>(JJ)V

    throw v3

    .line 570
    :cond_8
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 571
    new-instance v2, Ljava/io/IOException;

    const-string v3, "MysqlIO.1"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 636
    :try_start_1
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v1, v1, v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->realClose(ZZZLjava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 639
    :catch_1
    throw v2

    :catch_2
    move-exception v0

    move-object v6, v0

    .line 632
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected final readResultsForQueryOrUpdate(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v11, p0

    move-object v1, p1

    move-object/from16 v0, p7

    .line 3091
    invoke-virtual/range {p7 .. p7}, Lcom/mysql/jdbc/Buffer;->readFieldLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 3094
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/MysqlIO;->buildResultSetWithUpdates(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/Buffer;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    const/4 v2, 0x0

    .line 3098
    iget-object v3, v11, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3099
    iget-object v2, v11, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 3104
    :cond_1
    iget-boolean v3, v11, Lcom/mysql/jdbc/MysqlIO;->platformDbCharsetMatches:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    .line 3105
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mysql/jdbc/Buffer;->readString(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p7 .. p7}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3107
    :cond_3
    invoke-virtual/range {p7 .. p7}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3110
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/MysqlIO;->sendFileToServer(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v10, p11

    .line 3112
    invoke-virtual/range {v0 .. v10}, Lcom/mysql/jdbc/MysqlIO;->getResultSet(Lcom/mysql/jdbc/StatementImpl;JIIIZLjava/lang/String;Z[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    return-object v0
.end method

.method protected releaseResources()V
    .locals 1

    .line 4996
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    if-eqz v0, :cond_0

    .line 4997
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    const/4 v0, 0x0

    .line 4998
    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->deflater:Ljava/util/zip/Deflater;

    :cond_0
    return-void
.end method

.method resetMaxBuf()V
    .locals 1

    .line 2396
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMaxAllowedPacket()I

    move-result v0

    iput v0, p0, Lcom/mysql/jdbc/MysqlIO;->maxAllowedPacket:I

    return-void
.end method

.method protected resetReadPacketSequence()V
    .locals 1

    const/4 v0, 0x0

    .line 911
    iput-byte v0, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    return-void
.end method

.method scanForAndThrowDataTruncation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4187
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->streamingData:Lcom/mysql/jdbc/RowData;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getJdbcCompliantTruncation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    if-lez v0, :cond_0

    .line 4188
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget v1, p0, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->convertShowWarningsToSQLWarnings(Lcom/mysql/jdbc/Connection;IZ)Ljava/sql/SQLWarning;

    :cond_0
    return-void
.end method

.method secureAuth411(Lcom/mysql/jdbc/Buffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4339
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getEncodingForHandshake()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 4359
    new-instance p1, Lcom/mysql/jdbc/Buffer;

    invoke-direct {p1, p2}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    :cond_0
    const/4 p2, 0x1

    if-eqz p6, :cond_3

    .line 4363
    iget-boolean p6, p0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz p6, :cond_2

    const/4 p6, 0x4

    .line 4364
    invoke-virtual {p0, p6, p2, p2}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result p6

    if-eqz p6, :cond_1

    .line 4365
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {p1, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4366
    iget p6, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v1, p6

    invoke-virtual {p1, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4368
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/MysqlIO;->appendCharsetByteForHandshake(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;)V

    const/16 p6, 0x17

    .line 4371
    new-array p6, p6, [B

    invoke-virtual {p1, p6}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    goto :goto_0

    .line 4373
    :cond_1
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    invoke-virtual {p1, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    .line 4374
    iget p6, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    int-to-long v1, p6

    invoke-virtual {p1, v1, v2}, Lcom/mysql/jdbc/Buffer;->writeLong(J)V

    goto :goto_0

    .line 4377
    :cond_2
    iget-wide v1, p0, Lcom/mysql/jdbc/MysqlIO;->clientParam:J

    long-to-int p6, v1

    invoke-virtual {p1, p6}, Lcom/mysql/jdbc/Buffer;->writeInt(I)V

    .line 4378
    iget p6, p0, Lcom/mysql/jdbc/MysqlIO;->maxThreeBytes:I

    invoke-virtual {p1, p6}, Lcom/mysql/jdbc/Buffer;->writeLongInt(I)V

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 4384
    iget-object p6, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p1, p3, v0, p6}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4387
    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p6, 0x0

    if-eqz p3, :cond_5

    const/16 p3, 0x14

    .line 4388
    invoke-virtual {p1, p3}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 4391
    :try_start_0
    iget-object p3, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, p3, v1}, Lcom/mysql/jdbc/Security;->scramble411(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4396
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MysqlIO.91"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "MysqlIO.92"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string p3, "S1000"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4393
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MysqlIO.91"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "MysqlIO.92"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string p3, "S1000"

    invoke-static {p1, p3, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4401
    :cond_5
    invoke-virtual {p1, p6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 4404
    :goto_1
    iget-boolean p3, p0, Lcom/mysql/jdbc/MysqlIO;->useConnectWithDb:Z

    if-eqz p3, :cond_6

    .line 4405
    iget-object p3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p1, p5, v0, p3}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_2

    .line 4408
    :cond_6
    invoke-virtual {p1, p6}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    .line 4412
    :goto_2
    iget p3, p0, Lcom/mysql/jdbc/MysqlIO;->serverCapabilities:I

    const/high16 p5, 0x100000

    and-int/2addr p3, p5

    if-eqz p3, :cond_7

    .line 4413
    iget-object p3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-direct {p0, p1, v0, p3}, Lcom/mysql/jdbc/MysqlIO;->sendConnectionAttributes(Lcom/mysql/jdbc/Buffer;Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4416
    :cond_7
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 4418
    iget-byte p3, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    add-int/2addr p3, p2

    int-to-byte p2, p3

    iput-byte p2, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 4420
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object p3

    .line 4422
    invoke-virtual {p3}, Lcom/mysql/jdbc/Buffer;->isAuthMethodSwitchRequestPacket()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 4426
    iput-byte p2, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 4427
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 4429
    iget-object p2, p0, Lcom/mysql/jdbc/MysqlIO;->seed:Ljava/lang/String;

    const/16 p3, 0x8

    invoke-virtual {p2, p6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 4430
    iget-object p3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p2, p3}, Lcom/mysql/jdbc/Util;->newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mysql/jdbc/Buffer;->writeString(Ljava/lang/String;)V

    .line 4431
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    .line 4434
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    :cond_8
    return-void
.end method

.method final sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v2, p3

    move/from16 v8, p6

    .line 2427
    iget v4, v1, Lcom/mysql/jdbc/MysqlIO;->commandCount:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v1, Lcom/mysql/jdbc/MysqlIO;->commandCount:I

    .line 2433
    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getEnablePacketDebug()Z

    move-result v4

    iput-boolean v4, v1, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    const/4 v10, 0x0

    .line 2434
    iput-byte v10, v1, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    if-eqz v8, :cond_0

    .line 2440
    :try_start_0
    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getSoTimeout()I

    move-result v4

    .line 2441
    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v5, v8}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v4

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    .line 2443
    iget-object v11, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v12, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v14, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v17

    invoke-static/range {v11 .. v17}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v11, 0x0

    .line 2450
    :goto_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->checkForOutstandingStreamingData()V

    .line 2453
    iget v4, v1, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    iput v4, v1, Lcom/mysql/jdbc/MysqlIO;->oldServerStatus:I

    .line 2454
    iput v10, v1, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    .line 2455
    iput-boolean v10, v1, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    .line 2456
    iput v10, v1, Lcom/mysql/jdbc/MysqlIO;->warningCount:I

    .line 2458
    iput-boolean v10, v1, Lcom/mysql/jdbc/MysqlIO;->queryNoIndexUsed:Z

    .line 2459
    iput-boolean v10, v1, Lcom/mysql/jdbc/MysqlIO;->queryBadIndexUsed:Z

    .line 2460
    iput-boolean v10, v1, Lcom/mysql/jdbc/MysqlIO;->serverQueryWasSlow:Z

    .line 2465
    iget-boolean v4, v1, Lcom/mysql/jdbc/MysqlIO;->useCompression:Z

    if-eqz v4, :cond_1

    .line 2466
    iget-object v4, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    if-lez v4, :cond_1

    .line 2469
    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2474
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->clearInputStream()V

    const/4 v4, -0x1

    if-nez v2, :cond_7

    if-eqz v3, :cond_2

    .line 2482
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x8

    const/4 v5, 0x2

    add-int/2addr v2, v5

    .line 2484
    iget-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    if-nez v6, :cond_3

    .line 2485
    new-instance v6, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v6, v2}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    .line 2488
    :cond_3
    iput-byte v4, v1, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 2489
    iput-byte v4, v1, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 2490
    iput-byte v10, v1, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 2491
    iput-boolean v9, v1, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    .line 2492
    iget-object v2, v1, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 2494
    iget-object v2, v1, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    int-to-byte v4, v0

    invoke-virtual {v2, v4}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    if-eq v0, v5, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/16 v2, 0x16

    if-ne v0, v2, :cond_6

    :cond_4
    if-nez p5, :cond_5

    .line 2498
    iget-object v2, v1, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;)V

    goto :goto_2

    .line 2500
    :cond_5
    iget-object v2, v1, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    iget-object v5, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v6}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v6

    iget-object v7, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    invoke-virtual/range {v2 .. v7}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)V

    .line 2505
    :cond_6
    :goto_2
    iget-object v2, v1, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    iget-object v3, v1, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V

    goto :goto_3

    .line 2507
    :cond_7
    iput-byte v4, v1, Lcom/mysql/jdbc/MysqlIO;->packetSequence:B

    .line 2508
    iput-byte v4, v1, Lcom/mysql/jdbc/MysqlIO;->compressedPacketSequence:B

    .line 2509
    invoke-virtual/range {p3 .. p3}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/mysql/jdbc/MysqlIO;->send(Lcom/mysql/jdbc/Buffer;I)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    const/4 v2, 0x0

    if-nez p4, :cond_a

    const/16 v2, 0x17

    if-eq v0, v2, :cond_8

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_9

    .line 2523
    :cond_8
    :try_start_3
    iput-byte v10, v1, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 2524
    iput-boolean v9, v1, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    .line 2527
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket(I)Lcom/mysql/jdbc/Buffer;

    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    if-eqz v8, :cond_b

    .line 2543
    :try_start_4
    iget-object v0, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0, v11}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v8, v0

    .line 2545
    iget-object v3, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v4, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v6, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_b
    :goto_4
    return-object v2

    :catch_2
    move-exception v0

    move-object/from16 v17, v0

    .line 2515
    :try_start_5
    iget-object v12, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v13, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v2, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v18

    move-wide v15, v2

    invoke-static/range {v12 .. v18}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :catch_3
    move-exception v0

    .line 2513
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    .line 2537
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->preserveOldTransactionState()V

    .line 2538
    throw v0

    :catch_5
    move-exception v0

    move-object/from16 v17, v0

    .line 2532
    invoke-direct/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->preserveOldTransactionState()V

    .line 2533
    iget-object v12, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v13, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v2, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v18

    move-wide v15, v2

    invoke-static/range {v12 .. v18}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_5
    if-eqz v8, :cond_c

    .line 2543
    :try_start_7
    iget-object v2, v1, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v2, v11}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v8, v0

    .line 2545
    iget-object v3, v1, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v4, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v6, v1, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 2541
    :cond_c
    :goto_6
    throw v0
.end method

.method protected setSocketTimeout(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4983
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 4984
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 4987
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Invalid socket timeout value or state"

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 4989
    invoke-virtual {v0, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4991
    throw v0
.end method

.method protected setStatementInterceptors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/StatementInterceptorV2;",
            ">;)V"
        }
    .end annotation

    .line 4974
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    return-void
.end method

.method protected shouldIntercept()Z
    .locals 1

    .line 2556
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final skipPacket()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 511
    :try_start_0
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v4, 0x4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/mysql/jdbc/MysqlIO;->readFully(Ljava/io/InputStream;[BII)I

    move-result v2

    if-lt v2, v4, :cond_3

    .line 518
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v5, 0x2

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    .line 520
    iget-boolean v3, p0, Lcom/mysql/jdbc/MysqlIO;->traceProtocol:Z

    if-eqz v3, :cond_0

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MysqlIO.2"

    .line 523
    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "MysqlIO.3"

    .line 525
    invoke-static {v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    invoke-static {v5, v4}, Lcom/mysql/jdbc/StringUtils;->dumpAsHex([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/mysql/jdbc/log/Log;->logTrace(Ljava/lang/Object;)V

    .line 531
    :cond_0
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->packetHeaderBuf:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    .line 533
    iget-boolean v4, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    if-nez v4, :cond_1

    .line 534
    iget-boolean v4, p0, Lcom/mysql/jdbc/MysqlIO;->enablePacketDebug:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequence:Z

    if-eqz v4, :cond_2

    .line 535
    invoke-direct {p0, v3}, Lcom/mysql/jdbc/MysqlIO;->checkPacketSequencing(B)V

    goto :goto_0

    .line 538
    :cond_1
    iput-boolean v1, p0, Lcom/mysql/jdbc/MysqlIO;->packetSequenceReset:Z

    .line 541
    :cond_2
    :goto_0
    iput-byte v3, p0, Lcom/mysql/jdbc/MysqlIO;->readPacketSequence:B

    .line 543
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    int-to-long v4, v2

    invoke-direct {p0, v3, v4, v5}, Lcom/mysql/jdbc/MysqlIO;->skipFully(Ljava/io/InputStream;J)J

    return-void

    .line 514
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->forceClose()V

    .line 515
    new-instance v2, Ljava/io/IOException;

    const-string v3, "MysqlIO.1"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 549
    :try_start_1
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v1, v1, v0, v2}, Lcom/mysql/jdbc/MySQLConnection;->realClose(ZZZLjava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 552
    :catch_1
    throw v2

    :catch_2
    move-exception v0

    move-object v6, v0

    .line 545
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    iget-wide v2, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketSentTimeMs:J

    iget-wide v4, p0, Lcom/mysql/jdbc/MysqlIO;->lastPacketReceivedTimeMs:J

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method final sqlQueryDirect(Lcom/mysql/jdbc/StatementImpl;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Buffer;IIIZLjava/lang/String;[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 62
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    .line 2579
    iget v1, v13, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v13, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    .line 2582
    :try_start_0
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    .line 2583
    invoke-virtual {v13, v15, v14, v12}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPre(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Z)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2841
    iget v2, v13, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v13, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    return-object v1

    .line 2593
    :cond_0
    :try_start_1
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getStatementComment()Ljava/lang/String;

    move-result-object v1

    .line 2595
    iget-object v2, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getIncludeThreadNamesAsStatementComment()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "java thread: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v8, v1

    const/16 v17, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v11, 0x5

    if-eqz v15, :cond_9

    .line 2602
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v11

    add-int/lit8 v1, v1, 0x2

    if-eqz v8, :cond_3

    const/4 v3, 0x0

    .line 2607
    iget-object v2, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    move-object v2, v8

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object v2

    .line 2610
    array-length v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_3
    move-object v2, v9

    .line 2614
    :goto_1
    iget-object v3, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    if-nez v3, :cond_4

    .line 2615
    new-instance v3, Lcom/mysql/jdbc/Buffer;

    invoke-direct {v3, v1}, Lcom/mysql/jdbc/Buffer;-><init>(I)V

    iput-object v3, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    goto :goto_2

    .line 2617
    :cond_4
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1}, Lcom/mysql/jdbc/Buffer;->clear()V

    .line 2620
    :goto_2
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1, v10}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    if-eqz v2, :cond_5

    .line 2623
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    sget-object v3, Lcom/mysql/jdbc/Constants;->SLASH_STAR_SPACE_AS_BYTES:[B

    invoke-virtual {v1, v3}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2624
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    .line 2625
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    sget-object v2, Lcom/mysql/jdbc/Constants;->SPACE_STAR_SLASH_SPACE_AS_BYTES:[B

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    :cond_5
    if-eqz p3, :cond_8

    .line 2629
    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->platformDbCharsetMatches:Z

    if-eqz v1, :cond_6

    .line 2630
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    iget-object v2, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v5

    iget-object v6, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_3

    :cond_6
    const-string v1, "LOAD DATA"

    .line 2633
    invoke-static {v15, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2634
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-static/range {p2 .. p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/Buffer;->writeBytesNoNull([B)V

    goto :goto_3

    .line 2636
    :cond_7
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    iget-object v2, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v5

    iget-object v6, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;)V

    goto :goto_3

    .line 2641
    :cond_8
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    invoke-virtual {v1, v15}, Lcom/mysql/jdbc/Buffer;->writeStringNoNull(Ljava/lang/String;)V

    .line 2644
    :goto_3
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->sendPacket:Lcom/mysql/jdbc/Buffer;

    move-object v7, v1

    goto :goto_4

    :cond_9
    move-object/from16 v7, p4

    .line 2650
    :goto_4
    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->needToGrabQueryFromPacket:Z

    const-wide/16 v18, 0x0

    if-eqz v1, :cond_a

    .line 2651
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v1

    .line 2654
    invoke-virtual {v7}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    .line 2656
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v3

    move-object v6, v1

    move v5, v2

    move-wide/from16 v20, v3

    goto :goto_5

    :cond_a
    move-object v6, v9

    move-wide/from16 v20, v18

    const/4 v5, 0x0

    .line 2659
    :goto_5
    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->autoGenerateTestcaseScript:Z

    if-eqz v1, :cond_d

    if-eqz v15, :cond_c

    if-eqz v8, :cond_b

    .line 2664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/* "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " */ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_b
    move-object v1, v15

    goto :goto_6

    :cond_c
    add-int/lit8 v1, v5, -0x5

    .line 2669
    invoke-static {v6, v11, v1}, Lcom/mysql/jdbc/StringUtils;->toString([BII)Ljava/lang/String;

    move-result-object v1

    .line 2672
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2673
    iget-object v3, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v2}, Lcom/mysql/jdbc/MySQLConnection;->generateConnectionCommentBlock(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 2674
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    .line 2675
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2676
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->dumpTestcaseQuery(Ljava/lang/String;)V

    :cond_d
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v1, p0

    move-object v4, v7

    move v10, v5

    move v5, v8

    move-object v8, v6

    move-object/from16 v6, v22

    move-object/from16 v24, v7

    move/from16 v7, v23

    .line 2680
    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/MysqlIO;->sendCommand(ILjava/lang/String;Lcom/mysql/jdbc/Buffer;ZLjava/lang/String;I)Lcom/mysql/jdbc/Buffer;

    move-result-object v22

    .line 2689
    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-nez v1, :cond_f

    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z

    if-eqz v1, :cond_e

    goto :goto_7

    :cond_e
    move-wide/from16 v25, v18

    move-wide/from16 v41, v25

    const/16 v18, 0x0

    goto/16 :goto_d

    .line 2690
    :cond_f
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v18

    .line 2694
    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_8
    const/4 v2, 0x0

    goto :goto_a

    .line 2696
    :cond_10
    iget-boolean v1, v13, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z

    if-eqz v1, :cond_13

    sub-long v1, v18, v20

    .line 2701
    iget-boolean v3, v13, Lcom/mysql/jdbc/MysqlIO;->useAutoSlowLog:Z

    if-nez v3, :cond_12

    .line 2702
    iget-object v3, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getSlowQueryThresholdMillis()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    goto :goto_9

    .line 2704
    :cond_12
    iget-object v3, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->isAbonormallyLongQuery(J)Z

    move-result v3

    .line 2706
    iget-object v4, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4, v1, v2}, Lcom/mysql/jdbc/MySQLConnection;->reportQueryTime(J)V

    move v1, v3

    :goto_9
    if-eqz v1, :cond_13

    const/4 v1, 0x1

    const/4 v2, 0x1

    goto :goto_a

    :cond_13
    const/4 v1, 0x0

    goto :goto_8

    :goto_a
    if-eqz v1, :cond_16

    .line 2721
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMaxQuerySizeToLog()I

    move-result v1

    if-le v10, v1, :cond_14

    .line 2722
    iget-object v1, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMaxQuerySizeToLog()I

    move-result v1

    add-int/lit8 v5, v1, 0x5

    const/4 v1, 0x1

    goto :goto_b

    :cond_14
    move v5, v10

    const/4 v1, 0x0

    :goto_b
    sub-int/2addr v5, v11

    .line 2726
    invoke-static {v8, v11, v5}, Lcom/mysql/jdbc/StringUtils;->toString([BII)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_15

    .line 2729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MysqlIO.25"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_c

    :cond_15
    move-object v9, v3

    :cond_16
    :goto_c
    move-wide/from16 v25, v18

    move-wide/from16 v41, v25

    move/from16 v18, v2

    :goto_d
    const/16 v19, 0x0

    const-wide/16 v27, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, v22

    move-object/from16 v43, v9

    move/from16 v9, v19

    move/from16 v44, v10

    move-wide/from16 v10, v27

    const/16 v19, 0x0

    move-object/from16 v12, p10

    .line 2736
    invoke-virtual/range {v1 .. v12}, Lcom/mysql/jdbc/MysqlIO;->readAllResults(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v1

    const/16 v2, 0x3e7

    if-eqz v18, :cond_1a

    .line 2739
    iget-boolean v3, v13, Lcom/mysql/jdbc/MysqlIO;->serverQueryWasSlow:Z

    if-nez v3, :cond_1a

    .line 2740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "MysqlIO.SlowQuery"

    const/4 v5, 0x3

    .line 2742
    new-array v5, v5, [Ljava/lang/Object;

    iget-boolean v6, v13, Lcom/mysql/jdbc/MysqlIO;->useAutoSlowLog:Z

    if-eqz v6, :cond_17

    const-string v6, " 95% of all queries "

    goto :goto_e

    :cond_17
    iget-wide v6, v13, Lcom/mysql/jdbc/MysqlIO;->slowQueryThreshold:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_e
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v19

    iget-object v6, v13, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    aput-object v6, v5, v16

    const/4 v6, 0x0

    sub-long v6, v25, v20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v17

    invoke-static {v4, v5}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v43

    .line 2745
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2747
    iget-object v4, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v4}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v4

    .line 2749
    new-instance v5, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/16 v47, 0x6

    const-string v48, ""

    iget-object v8, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v50

    if-eqz v14, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v8

    move/from16 v52, v8

    goto :goto_f

    :cond_18
    const/16 v52, 0x3e7

    :goto_f
    move-object v8, v1

    check-cast v8, Lcom/mysql/jdbc/ResultSetImpl;

    iget v8, v8, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v54

    long-to-int v6, v6

    int-to-long v6, v6

    iget-object v10, v13, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    const/16 v59, 0x0

    new-instance v11, Ljava/lang/Throwable;

    invoke-direct {v11}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v11}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v60

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v46, v5

    move-object/from16 v49, p9

    move/from16 v53, v8

    move-wide/from16 v56, v6

    move-object/from16 v58, v10

    invoke-direct/range {v46 .. v61}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 2754
    iget-object v3, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getExplainSlowQueries()Z

    move-result v3

    if-eqz v3, :cond_1b

    const/high16 v3, 0x100000

    move/from16 v12, v44

    if-ge v12, v3, :cond_19

    const/4 v4, 0x5

    add-int/lit8 v5, v12, -0x5

    move-object/from16 v3, v24

    .line 2756
    invoke-virtual {v3, v4, v5}, Lcom/mysql/jdbc/Buffer;->getBytes(II)[B

    move-result-object v3

    invoke-virtual {v13, v3, v9}, Lcom/mysql/jdbc/MysqlIO;->explainSlowQuery([BLjava/lang/String;)V

    goto :goto_10

    .line 2758
    :cond_19
    iget-object v4, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getLog()Lcom/mysql/jdbc/log/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MysqlIO.28"

    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "MysqlIO.29"

    invoke-static {v3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/mysql/jdbc/log/Log;->logWarn(Ljava/lang/Object;)V

    goto :goto_10

    :cond_1a
    move-object/from16 v9, v43

    .line 2763
    :cond_1b
    :goto_10
    iget-boolean v3, v13, Lcom/mysql/jdbc/MysqlIO;->logSlowQueries:Z

    if-eqz v3, :cond_21

    .line 2765
    iget-object v3, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v3}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v3

    .line 2767
    iget-boolean v4, v13, Lcom/mysql/jdbc/MysqlIO;->queryBadIndexUsed:Z

    if-eqz v4, :cond_1d

    iget-boolean v4, v13, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-eqz v4, :cond_1d

    .line 2768
    new-instance v4, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/16 v44, 0x6

    const-string v45, ""

    iget-object v5, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v47

    if-eqz v14, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v5

    move/from16 v49, v5

    goto :goto_11

    :cond_1c
    const/16 v49, 0x3e7

    :goto_11
    move-object v5, v1

    check-cast v5, Lcom/mysql/jdbc/ResultSetImpl;

    iget v5, v5, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v51

    const/4 v6, 0x0

    sub-long v53, v25, v20

    iget-object v6, v13, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    const/16 v56, 0x0

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v7}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v57

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MysqlIO.33"

    invoke-static {v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v43, v4

    move-object/from16 v46, p9

    move/from16 v50, v5

    move-object/from16 v55, v6

    invoke-direct/range {v43 .. v58}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 2774
    :cond_1d
    iget-boolean v4, v13, Lcom/mysql/jdbc/MysqlIO;->queryNoIndexUsed:Z

    if-eqz v4, :cond_1f

    iget-boolean v4, v13, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-eqz v4, :cond_1f

    .line 2775
    new-instance v4, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/16 v44, 0x6

    const-string v45, ""

    iget-object v5, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v47

    if-eqz v14, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v5

    move/from16 v49, v5

    goto :goto_12

    :cond_1e
    const/16 v49, 0x3e7

    :goto_12
    move-object v5, v1

    check-cast v5, Lcom/mysql/jdbc/ResultSetImpl;

    iget v5, v5, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v51

    const/4 v6, 0x0

    sub-long v53, v25, v20

    iget-object v6, v13, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    const/16 v56, 0x0

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v7}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v57

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MysqlIO.35"

    invoke-static {v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v43, v4

    move-object/from16 v46, p9

    move/from16 v50, v5

    move-object/from16 v55, v6

    invoke-direct/range {v43 .. v58}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 2781
    :cond_1f
    iget-boolean v4, v13, Lcom/mysql/jdbc/MysqlIO;->serverQueryWasSlow:Z

    if-eqz v4, :cond_21

    iget-boolean v4, v13, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-eqz v4, :cond_21

    .line 2782
    new-instance v4, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/16 v44, 0x6

    const-string v45, ""

    iget-object v5, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v47

    if-eqz v14, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v5

    move/from16 v49, v5

    goto :goto_13

    :cond_20
    const/16 v49, 0x3e7

    :goto_13
    move-object v5, v1

    check-cast v5, Lcom/mysql/jdbc/ResultSetImpl;

    iget v5, v5, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v51

    const/4 v6, 0x0

    sub-long v53, v25, v20

    iget-object v6, v13, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    const/16 v56, 0x0

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v7}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v57

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MysqlIO.ServerSlowQuery"

    invoke-static {v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v43, v4

    move-object/from16 v46, p9

    move/from16 v50, v5

    move-object/from16 v55, v6

    invoke-direct/range {v43 .. v58}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 2789
    :cond_21
    iget-boolean v3, v13, Lcom/mysql/jdbc/MysqlIO;->profileSql:Z

    if-eqz v3, :cond_24

    .line 2790
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->getCurrentTimeNanosOrMillis()J

    move-result-wide v3

    .line 2792
    iget-object v5, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v5}, Lcom/mysql/jdbc/ProfilerEventHandlerFactory;->getInstance(Lcom/mysql/jdbc/MySQLConnection;)Lcom/mysql/jdbc/profiler/ProfilerEventHandler;

    move-result-object v5

    .line 2794
    new-instance v6, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/4 v7, 0x3

    const-string v27, ""

    iget-object v8, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v8}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v29

    if-eqz v14, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v8

    move/from16 v31, v8

    goto :goto_14

    :cond_22
    const/16 v31, 0x3e7

    :goto_14
    move-object v8, v1

    check-cast v8, Lcom/mysql/jdbc/ResultSetImpl;

    iget v8, v8, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    const/4 v10, 0x0

    sub-long v35, v25, v20

    iget-object v10, v13, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    const/16 v38, 0x0

    new-instance v11, Ljava/lang/Throwable;

    invoke-direct {v11}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v11}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v28, p9

    move/from16 v32, v8

    move-object/from16 v37, v10

    move-object/from16 v40, v9

    invoke-direct/range {v25 .. v40}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 2798
    new-instance v6, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    const/16 v44, 0x5

    const-string v45, ""

    iget-object v7, v13, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v47

    if-eqz v14, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->getId()I

    move-result v2

    move/from16 v49, v2

    goto :goto_15

    :cond_23
    const/16 v49, 0x3e7

    :goto_15
    move-object v2, v1

    check-cast v2, Lcom/mysql/jdbc/ResultSetImpl;

    iget v2, v2, Lcom/mysql/jdbc/ResultSetImpl;->resultId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v51

    const/4 v7, 0x0

    sub-long v53, v3, v41

    iget-object v3, v13, Lcom/mysql/jdbc/MysqlIO;->queryTimingUnits:Ljava/lang/String;

    const/16 v56, 0x0

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v57

    const/16 v58, 0x0

    move-object/from16 v43, v6

    move-object/from16 v46, p9

    move/from16 v50, v2

    move-object/from16 v55, v3

    invoke-direct/range {v43 .. v58}, Lcom/mysql/jdbc/profiler/ProfilerEvent;-><init>(BLjava/lang/String;Ljava/lang/String;JIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/mysql/jdbc/profiler/ProfilerEventHandler;->consumeEvent(Lcom/mysql/jdbc/profiler/ProfilerEvent;)V

    .line 2803
    :cond_24
    iget-boolean v2, v13, Lcom/mysql/jdbc/MysqlIO;->hadWarnings:Z

    if-eqz v2, :cond_25

    .line 2804
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->scanForAndThrowDataTruncation()V

    .line 2807
    :cond_25
    iget-object v2, v13, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    if-eqz v2, :cond_26

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 p3, p0

    move-object/from16 p4, p2

    move-object/from16 p5, p1

    move-object/from16 p6, v1

    move/from16 p7, v2

    move-object/from16 p8, v3

    .line 2808
    invoke-virtual/range {p3 .. p8}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPost(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;ZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_26

    move-object v1, v2

    .line 2841
    :cond_26
    iget v2, v13, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v13, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_18

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2817
    :try_start_2
    iget-object v2, v13, Lcom/mysql/jdbc/MysqlIO;->statementInterceptors:Ljava/util/List;

    if-eqz v2, :cond_27

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 p3, p0

    move-object/from16 p4, p2

    move-object/from16 p5, p1

    move-object/from16 p6, v2

    move/from16 p7, v3

    move-object/from16 p8, v1

    .line 2818
    invoke-virtual/range {p3 .. p8}, Lcom/mysql/jdbc/MysqlIO;->invokeStatementInterceptorsPost(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;ZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    :cond_27
    if-eqz v14, :cond_2a

    .line 2822
    iget-object v2, v14, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2823
    :try_start_3
    iget-boolean v3, v14, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    if-eqz v3, :cond_29

    .line 2826
    iget-boolean v1, v14, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    if-eqz v1, :cond_28

    .line 2827
    new-instance v1, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;

    invoke-direct {v1}, Lcom/mysql/jdbc/exceptions/MySQLTimeoutException;-><init>()V

    goto :goto_16

    .line 2829
    :cond_28
    new-instance v1, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    invoke-direct {v1}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>()V

    .line 2832
    :goto_16
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/StatementImpl;->resetCancelledState()V

    .line 2834
    throw v1

    .line 2836
    :cond_29
    monitor-exit v2

    goto :goto_17

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    .line 2839
    :cond_2a
    :goto_17
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2841
    :goto_18
    iget v2, v13, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v13, Lcom/mysql/jdbc/MysqlIO;->statementExecutionDepth:I

    throw v1
.end method

.method tackOnMoreStreamingResults(Lcom/mysql/jdbc/ResultSetImpl;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v12, p0

    .line 2293
    iget v0, v12, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v0, v0, 0x8

    const/4 v13, 0x0

    if-eqz v0, :cond_4

    const/4 v14, 0x1

    move-object/from16 v15, p1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    .line 2300
    invoke-virtual {v15}, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2306
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/MysqlIO;->checkErrorPacket()Lcom/mysql/jdbc/Buffer;

    move-result-object v7

    .line 2307
    invoke-virtual {v7, v13}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 2309
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/ResultSetImpl;->getStatement()Ljava/sql/Statement;

    move-result-object v0

    .line 2311
    invoke-interface {v0}, Ljava/sql/Statement;->getMaxRows()I

    move-result v2

    .line 2315
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/StatementImpl;

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetType()I

    move-result v3

    invoke-interface {v0}, Ljava/sql/Statement;->getResultSetConcurrency()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/sql/Statement;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Connection;->getCatalog()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v11, p1

    iget-boolean v8, v11, Lcom/mysql/jdbc/ResultSetImpl;->isBinaryEncoded:Z

    const-wide/16 v9, -0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v11, v16

    invoke-virtual/range {v0 .. v11}, Lcom/mysql/jdbc/MysqlIO;->readResultsForQueryOrUpdate(Lcom/mysql/jdbc/StatementImpl;IIIZLjava/lang/String;Lcom/mysql/jdbc/Buffer;ZJ[Lcom/mysql/jdbc/Field;)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object v0

    .line 2319
    invoke-virtual {v15, v0}, Lcom/mysql/jdbc/ResultSetImpl;->setNextResultSet(Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    .line 2323
    iget v1, v12, Lcom/mysql/jdbc/MysqlIO;->serverStatus:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2325
    :goto_1
    invoke-virtual {v0}, Lcom/mysql/jdbc/ResultSetImpl;->reallyResult()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    return v13

    :cond_2
    move-object v15, v0

    move v0, v1

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    :goto_2
    return v14

    :cond_4
    return v13
.end method

.method protected final unpackField(Lcom/mysql/jdbc/Buffer;Z)Lcom/mysql/jdbc/Field;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 657
    iget-boolean v1, v0, Lcom/mysql/jdbc/MysqlIO;->use41Extensions:Z

    if-eqz v1, :cond_4

    .line 660
    iget-boolean v1, v0, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    if-eqz v1, :cond_0

    .line 662
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 663
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v2

    .line 664
    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    .line 667
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 668
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v6

    .line 669
    invoke-direct {v0, v1, v6}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v5

    .line 671
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 672
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v8

    .line 673
    invoke-direct {v0, v1, v8}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v7

    .line 676
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 677
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v10

    .line 678
    invoke-direct {v0, v1, v10}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v9

    .line 681
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 682
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v12

    .line 684
    invoke-direct {v0, v1, v12}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v11

    .line 687
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 688
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v14

    .line 689
    invoke-direct {v0, v1, v14}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v13

    .line 691
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 693
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v1

    int-to-short v1, v1

    .line 697
    iget-boolean v2, v0, Lcom/mysql/jdbc/MysqlIO;->has41NewNewProt:Z

    if-eqz v2, :cond_1

    .line 698
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readLong()J

    move-result-wide v2

    :goto_0
    move-wide v15, v2

    goto :goto_1

    .line 700
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readLongInt()I

    move-result v2

    int-to-long v2, v2

    goto :goto_0

    .line 703
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v4, v2, 0xff

    .line 707
    iget-boolean v2, v0, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo:Z

    if-eqz v2, :cond_2

    .line 708
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v2

    int-to-short v2, v2

    :goto_2
    move/from16 v18, v2

    goto :goto_3

    .line 710
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    goto :goto_2

    .line 713
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v3, v2, 0xff

    const/4 v2, -0x1

    if-eqz p2, :cond_3

    .line 719
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 720
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v17

    move/from16 v20, v2

    move/from16 v21, v17

    goto :goto_4

    :cond_3
    const/16 v20, -0x1

    const/16 v21, -0x1

    .line 723
    :goto_4
    new-instance v23, Lcom/mysql/jdbc/Field;

    move-object/from16 v2, v23

    move/from16 v24, v3

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    move/from16 v19, v24

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v17

    move/from16 v22, v4

    move-object/from16 v4, v17

    move/from16 v17, v22

    move/from16 v22, v1

    invoke-direct/range {v2 .. v22}, Lcom/mysql/jdbc/Field;-><init>(Lcom/mysql/jdbc/MySQLConnection;[BIIIIIIIIIIJISIIII)V

    return-object v23

    .line 730
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 731
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v8

    .line 732
    invoke-direct {v0, v1, v8}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v7

    .line 734
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 735
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->fastSkipLenString()I

    move-result v6

    .line 736
    invoke-direct {v0, v1, v6}, Lcom/mysql/jdbc/MysqlIO;->adjustStartForFieldLength(II)I

    move-result v5

    .line 738
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readnBytes()I

    move-result v9

    .line 739
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readnBytes()I

    move-result v10

    .line 740
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    .line 744
    iget-boolean v1, v0, Lcom/mysql/jdbc/MysqlIO;->hasLongColumnInfo:Z

    if-eqz v1, :cond_5

    .line 745
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readInt()I

    move-result v1

    int-to-short v1, v1

    :goto_5
    move v11, v1

    goto :goto_6

    .line 747
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    goto :goto_5

    .line 750
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 752
    iget-boolean v2, v0, Lcom/mysql/jdbc/MysqlIO;->colDecimalNeedsBump:Z

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    move v12, v1

    .line 756
    new-instance v1, Lcom/mysql/jdbc/Field;

    iget-object v3, v0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual/range {p1 .. p1}, Lcom/mysql/jdbc/Buffer;->getByteBuffer()[B

    move-result-object v4

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lcom/mysql/jdbc/Field;-><init>(Lcom/mysql/jdbc/MySQLConnection;[BIIIIIISI)V

    return-object v1
.end method

.method protected useNanosForElapsedTime()Z
    .locals 1

    .line 4943
    iget-boolean v0, p0, Lcom/mysql/jdbc/MysqlIO;->useNanosForElapsedTime:Z

    return v0
.end method

.method versionMeetsMinimum(III)Z
    .locals 3

    .line 2953
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMajorVersion()I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p1, :cond_4

    .line 2954
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMajorVersion()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_3

    .line 2955
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMinorVersion()I

    move-result p1

    if-lt p1, p2, :cond_2

    .line 2956
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerMinorVersion()I

    move-result p1

    if-ne p1, p2, :cond_1

    .line 2957
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerSubMinorVersion()I

    move-result p1

    if-lt p1, p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    return v1
.end method
