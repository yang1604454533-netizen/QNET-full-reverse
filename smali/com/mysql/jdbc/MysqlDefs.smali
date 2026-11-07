.class public final Lcom/mysql/jdbc/MysqlDefs;
.super Ljava/lang/Object;
.source "MysqlDefs.java"


# static fields
.field static final COM_BINLOG_DUMP:I = 0x12

.field static final COM_CHANGE_USER:I = 0x11

.field static final COM_CLOSE_STATEMENT:I = 0x19

.field static final COM_CONNECT_OUT:I = 0x14

.field static final COM_END:I = 0x1d

.field static final COM_EXECUTE:I = 0x17

.field static final COM_FETCH:I = 0x1c

.field static final COM_LONG_DATA:I = 0x18

.field static final COM_PREPARE:I = 0x16

.field static final COM_REGISTER_SLAVE:I = 0x15

.field static final COM_RESET_STMT:I = 0x1a

.field static final COM_SET_OPTION:I = 0x1b

.field static final COM_TABLE_DUMP:I = 0x13

.field static final CONNECT:I = 0xb

.field static final CREATE_DB:I = 0x5

.field static final DEBUG:I = 0xd

.field static final DELAYED_INSERT:I = 0x10

.field static final DROP_DB:I = 0x6

.field static final FIELD_LIST:I = 0x4

.field static final FIELD_TYPE_BIT:I = 0x10

.field public static final FIELD_TYPE_BLOB:I = 0xfc

.field static final FIELD_TYPE_DATE:I = 0xa

.field static final FIELD_TYPE_DATETIME:I = 0xc

.field static final FIELD_TYPE_DECIMAL:I = 0x0

.field static final FIELD_TYPE_DOUBLE:I = 0x5

.field static final FIELD_TYPE_ENUM:I = 0xf7

.field static final FIELD_TYPE_FLOAT:I = 0x4

.field static final FIELD_TYPE_GEOMETRY:I = 0xff

.field static final FIELD_TYPE_INT24:I = 0x9

.field static final FIELD_TYPE_JSON:I = 0xf5

.field static final FIELD_TYPE_LONG:I = 0x3

.field static final FIELD_TYPE_LONGLONG:I = 0x8

.field static final FIELD_TYPE_LONG_BLOB:I = 0xfb

.field static final FIELD_TYPE_MEDIUM_BLOB:I = 0xfa

.field static final FIELD_TYPE_NEWDATE:I = 0xe

.field static final FIELD_TYPE_NEW_DECIMAL:I = 0xf6

.field static final FIELD_TYPE_NULL:I = 0x6

.field static final FIELD_TYPE_SET:I = 0xf8

.field static final FIELD_TYPE_SHORT:I = 0x2

.field static final FIELD_TYPE_STRING:I = 0xfe

.field static final FIELD_TYPE_TIME:I = 0xb

.field static final FIELD_TYPE_TIMESTAMP:I = 0x7

.field static final FIELD_TYPE_TINY:I = 0x1

.field static final FIELD_TYPE_TINY_BLOB:I = 0xf9

.field static final FIELD_TYPE_VARCHAR:I = 0xf

.field static final FIELD_TYPE_VAR_STRING:I = 0xfd

.field static final FIELD_TYPE_YEAR:I = 0xd

.field static final INIT_DB:I = 0x2

.field static final LENGTH_BLOB:J = 0xffffL

.field static final LENGTH_LONGBLOB:J = 0xffffffffL

.field static final LENGTH_MEDIUMBLOB:J = 0xffffffL

.field static final LENGTH_TINYBLOB:J = 0xffL

.field static final MAX_ROWS:I = 0x2faf080

.field public static final NO_CHARSET_INFO:I = -0x1

.field static final OPEN_CURSOR_FLAG:B = 0x1t

.field static final PING:I = 0xe

.field static final PROCESS_INFO:I = 0xa

.field static final PROCESS_KILL:I = 0xc

.field static final QUERY:I = 0x3

.field static final QUIT:I = 0x1

.field static final RELOAD:I = 0x7

.field static final SHUTDOWN:I = 0x8

.field static final SLEEP:I = 0x0

.field static final STATISTICS:I = 0x9

.field static final TIME:I = 0xf

.field private static mysqlToJdbcTypesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    .line 487
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "BIT"

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "TINYINT"

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "SMALLINT"

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "MEDIUMINT"

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "INT"

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "INTEGER"

    invoke-static {v3}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "BIGINT"

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "INT24"

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "REAL"

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "FLOAT"

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "DECIMAL"

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "NUMERIC"

    invoke-static {v3}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "DOUBLE"

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "CHAR"

    const/16 v2, 0xfe

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "VARCHAR"

    const/16 v2, 0xfd

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "DATE"

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "TIME"

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "YEAR"

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "TIMESTAMP"

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "DATETIME"

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "TINYBLOB"

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "BLOB"

    const/4 v3, -0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "MEDIUMBLOB"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "LONGBLOB"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "TINYTEXT"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "TEXT"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "MEDIUMTEXT"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "LONGTEXT"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "ENUM"

    const/16 v2, 0xf7

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "SET"

    const/16 v2, 0xf8

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "GEOMETRY"

    const/16 v2, 0xff

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    const-string v1, "JSON"

    const/16 v2, 0xf5

    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final appendJdbcTypeMappingQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    const-string v0, "CASE "

    .line 524
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 526
    sget-object v1, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJdbcTypesMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "BINARY"

    const/4 v2, -0x2

    .line 527
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "VARBINARY"

    const/4 v2, -0x3

    .line 528
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 532
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 533
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " WHEN UPPER("

    .line 534
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")=\'"

    .line 536
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' THEN "

    .line 538
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "DOUBLE"

    .line 541
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "FLOAT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "DECIMAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "NUMERIC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    const-string v3, " WHEN "

    .line 543
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=\'"

    .line 545
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " UNSIGNED\' THEN "

    .line 547
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string p1, " ELSE "

    .line 552
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x457

    .line 553
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " END "

    .line 554
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static mysqlToJavaType(I)I
    .locals 6

    const/16 v0, 0x5d

    const/4 v1, 0x4

    const/16 v2, 0xc

    const/4 v3, -0x4

    const/4 v4, 0x1

    const/16 v5, 0x5b

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    :pswitch_0
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_1
    const/4 v0, -0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, -0x4

    goto :goto_0

    :pswitch_3
    const/4 v0, -0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v0, -0x7

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x5c

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x5b

    goto :goto_0

    :pswitch_8
    const/4 v0, -0x5

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_b
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_c
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_d
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_e
    const/4 v0, -0x6

    goto :goto_0

    :pswitch_f
    const/4 v0, 0x3

    :goto_0
    :pswitch_10
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_10
        :pswitch_8
        :pswitch_c
        :pswitch_7
        :pswitch_6
        :pswitch_10
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf5
        :pswitch_4
        :pswitch_f
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method static mysqlToJavaType(Ljava/lang/String;)I
    .locals 5

    const-string v0, "BIT"

    .line 319
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    .line 320
    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_0
    const-string v0, "TINYINT"

    .line 321
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    .line 322
    invoke-static {p0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_1
    const-string v0, "SMALLINT"

    .line 323
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    .line 324
    invoke-static {p0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_2
    const-string v0, "MEDIUMINT"

    .line 325
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x9

    if-eqz v0, :cond_3

    .line 326
    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_3
    const-string v0, "INT"

    .line 327
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "INTEGER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const-string v0, "BIGINT"

    .line 329
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x8

    .line 330
    invoke-static {p0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_5
    const-string v0, "INT24"

    .line 331
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 332
    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_6
    const-string v0, "REAL"

    .line 333
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x5

    if-eqz v0, :cond_7

    .line 334
    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_7
    const-string v0, "FLOAT"

    .line 335
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x4

    .line 336
    invoke-static {p0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_8
    const-string v0, "DECIMAL"

    .line 337
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    .line 338
    invoke-static {v3}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_9
    const-string v0, "NUMERIC"

    .line 339
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 340
    invoke-static {v3}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_a
    const-string v0, "DOUBLE"

    .line 341
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 342
    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_b
    const-string v0, "CHAR"

    .line 343
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p0, 0xfe

    .line 344
    invoke-static {p0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_c
    const-string v0, "VARCHAR"

    .line 345
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p0, 0xfd

    .line 346
    invoke-static {p0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_d
    const-string v0, "DATE"

    .line 347
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p0, 0xa

    .line 348
    invoke-static {p0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_e
    const-string v0, "TIME"

    .line 349
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p0, 0xb

    .line 350
    invoke-static {p0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_f
    const-string v0, "YEAR"

    .line 351
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, 0xd

    .line 352
    invoke-static {p0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_10
    const-string v0, "TIMESTAMP"

    .line 353
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p0, 0x7

    .line 354
    invoke-static {p0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_11
    const-string v0, "DATETIME"

    .line 355
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0xc

    if-eqz v0, :cond_12

    .line 356
    invoke-static {v2}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_12
    const-string v0, "TINYBLOB"

    .line 357
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, -0x2

    if-eqz v0, :cond_13

    return v3

    :cond_13
    const-string v0, "BLOB"

    .line 359
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, -0x4

    if-eqz v0, :cond_14

    return v4

    :cond_14
    const-string v0, "MEDIUMBLOB"

    .line 361
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v4

    :cond_15
    const-string v0, "LONGBLOB"

    .line 363
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    return v4

    :cond_16
    const-string v0, "TINYTEXT"

    .line 365
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    return v2

    :cond_17
    const-string v0, "TEXT"

    .line 367
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_18

    return v2

    :cond_18
    const-string v0, "MEDIUMTEXT"

    .line 369
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    return v2

    :cond_19
    const-string v0, "LONGTEXT"

    .line 371
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v2

    :cond_1a
    const-string v0, "ENUM"

    .line 373
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 p0, 0xf7

    .line 374
    invoke-static {p0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_1b
    const-string v0, "SET"

    .line 375
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 p0, 0xf8

    .line 376
    invoke-static {p0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_1c
    const-string v0, "GEOMETRY"

    .line 377
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 p0, 0xff

    .line 378
    invoke-static {p0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_1d
    const-string v0, "BINARY"

    .line 379
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return v3

    :cond_1e
    const-string v0, "VARBINARY"

    .line 381
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 p0, -0x3

    return p0

    :cond_1f
    const-string v0, "BIT"

    .line 383
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 384
    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_20
    const-string v0, "JSON"

    .line 385
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/16 p0, 0xf5

    .line 386
    invoke-static {p0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0

    :cond_21
    const/16 p0, 0x457

    return p0

    :cond_22
    :goto_0
    const/4 p0, 0x3

    .line 328
    invoke-static {p0}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(I)I

    move-result p0

    return p0
.end method

.method public static typeToName(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xf5

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Unknown MySQL Type # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "FIELD_TYPE_GEOMETRY"

    return-object p0

    :pswitch_1
    const-string p0, "FIELD_TYPE_STRING"

    return-object p0

    :pswitch_2
    const-string p0, "FIELD_TYPE_VAR_STRING"

    return-object p0

    :pswitch_3
    const-string p0, "FIELD_TYPE_BLOB"

    return-object p0

    :pswitch_4
    const-string p0, "FIELD_TYPE_LONG_BLOB"

    return-object p0

    :pswitch_5
    const-string p0, "FIELD_TYPE_MEDIUM_BLOB"

    return-object p0

    :pswitch_6
    const-string p0, "FIELD_TYPE_TINY_BLOB"

    return-object p0

    :pswitch_7
    const-string p0, "FIELD_TYPE_SET"

    return-object p0

    :pswitch_8
    const-string p0, "FIELD_TYPE_ENUM"

    return-object p0

    :pswitch_9
    const-string p0, "FIELD_TYPE_BIT"

    return-object p0

    :pswitch_a
    const-string p0, "FIELD_TYPE_VARCHAR"

    return-object p0

    :pswitch_b
    const-string p0, "FIELD_TYPE_NEWDATE"

    return-object p0

    :pswitch_c
    const-string p0, "FIELD_TYPE_YEAR"

    return-object p0

    :pswitch_d
    const-string p0, "FIELD_TYPE_DATETIME"

    return-object p0

    :pswitch_e
    const-string p0, "FIELD_TYPE_TIME"

    return-object p0

    :pswitch_f
    const-string p0, "FIELD_TYPE_DATE"

    return-object p0

    :pswitch_10
    const-string p0, "FIELD_TYPE_INT24"

    return-object p0

    :pswitch_11
    const-string p0, "FIELD_TYPE_LONGLONG"

    return-object p0

    :pswitch_12
    const-string p0, "FIELD_TYPE_TIMESTAMP"

    return-object p0

    :pswitch_13
    const-string p0, "FIELD_TYPE_NULL"

    return-object p0

    :pswitch_14
    const-string p0, "FIELD_TYPE_DOUBLE"

    return-object p0

    :pswitch_15
    const-string p0, "FIELD_TYPE_FLOAT"

    return-object p0

    :pswitch_16
    const-string p0, "FIELD_TYPE_LONG"

    return-object p0

    :pswitch_17
    const-string p0, "FIELD_TYPE_SHORT"

    return-object p0

    :pswitch_18
    const-string p0, "FIELD_TYPE_TINY"

    return-object p0

    :pswitch_19
    const-string p0, "FIELD_TYPE_DECIMAL"

    return-object p0

    :cond_0
    const-string p0, "FIELD_TYPE_JSON"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
